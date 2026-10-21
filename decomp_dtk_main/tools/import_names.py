#!/usr/bin/env python3

###
# Imports function names into a dtk symbols.txt, replacing auto-generated
# names only.
#
# Usage:
#   python3 tools/import_names.py NAMES_FILE                 # dry run, summary
#   python3 tools/import_names.py NAMES_FILE --apply         # write symbols.txt
#   python3 tools/import_names.py NAMES_FILE --verbose       # list every skip
#   python3 tools/import_names.py NAMES_FILE --module stage01
#   python3 tools/import_names.py NAMES_FILE --symbols path/to/symbols.txt
#
# NAMES_FILE holds, line by line, either:
#   ADDRESS SIZE NAME         hexadecimal address and size ("0x" optional);
#                             "#" starts a comment
#   a dtk symbols.txt line    NAME = SECTION:0xADDR; // type:function size:0x..
#                             (only type:function entries are used)
# Both formats can be mixed. A line of the second format also gives the
# section, which is then matched too (useful for REL modules, whose addresses
# are section offsets).
#
# Target: config/<version>/symbols.txt by default, the symbols.txt of a REL
# module with --module (looked up in config/<version>/config.yml by the REL
# file stem), or any file with --symbols.
#
# A name is applied only when all of these hold, else the entry is skipped and
# the reason is reported:
#   - the address (and section, when given) is the start of a type:function
#     entry, and only one such entry matches;
#   - the size given in NAMES_FILE equals the size of that entry;
#   - that entry is auto-named: fn_XXXXXXXX (DOL), fn_N_XXX (REL), and, with
#     --include-zz, zz_XXXXXXXX_* names; a real name is never overwritten;
#   - the new name is a plausible symbol name: printable ASCII, no space,
#     none of ; = " ' / \ , and, when it looks like a CodeWarrior mangled
#     name (base__<qualifier>F<params>), its qualifier lengths are consistent;
#   - the new name is not used by any other symbol of the file, unless that
#     symbol is scope:local; it is not given to two addresses in NAMES_FILE;
#     the address is not given two different names in NAMES_FILE;
#   - the old name is not referenced in src/ or include/ (see below).
#
# Sources: some C/C++ files refer to functions by their auto names (calls,
# extern declarations, inline asm, comments). Renaming such a function in
# symbols.txt alone would break the link of a Matching unit (undefined
# symbol) or the comparison of a NonMatching one, so by default these entries
# are skipped ("referenced in sources"). With --rename-in-src (and --apply),
# the old name is also replaced, as a whole word, in those files, but only
# when the new name is a plain C identifier (not mangled) and no occurrence is
# used as a C++ member (after "::" or in a "virtual" declaration): the symbol
# of a member function is its mangled name, which a textual replacement would
# not keep in step. Other cases stay skipped and must be renamed by hand.
#
# Never touched: names that are not auto-generated, splits.txt, the generated
# linker script. Exit code: 0, or 1 on a usage error.
#
# Python standard library only. Released under CC0 1.0.
###

import argparse
import os
import re
import sys
from collections import Counter, defaultdict
from typing import Dict, List, Optional, Tuple

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.realpath(__file__)), ".."))

SYMBOL_RE = re.compile(r"^\s*(\S+)\s*=\s*(\S+):0x([0-9A-Fa-f]+);(.*)$")
SIZE_RE = re.compile(r"size:0x([0-9A-Fa-f]+)")
TYPE_RE = re.compile(r"type:(\w+)")
SCOPE_RE = re.compile(r"scope:(\w+)")
PLAIN_RE = re.compile(r"^\s*(?:0x)?([0-9A-Fa-f]+)\s+(?:0x)?([0-9A-Fa-f]+)\s+(\S+)\s*$")

AUTO_RE = re.compile(r"^fn_(?:[0-9A-Fa-f]{8}|\d+_[0-9A-Fa-f]+)$")
ZZ_RE = re.compile(r"^zz_[0-9A-Fa-f]{8}_")
IDENT_RE = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*$")
SRC_EXTS = (".c", ".cp", ".cpp", ".cc", ".h", ".hpp", ".inc", ".s")
FORBIDDEN_CHARS = set(';="\'/\\,')


def is_auto(name: str, include_zz: bool) -> bool:
    return bool(AUTO_RE.match(name) or (include_zz and ZZ_RE.match(name)))


def _parse_qualifier(s: str, i: int) -> Optional[int]:
    """Parses <len><name> or Q<n><len><name>... at s[i]; returns the new index."""
    def one(j: int) -> Optional[int]:
        m = re.match(r"\d+", s[j:])
        if not m:
            return None
        n = int(m.group(0))
        j += len(m.group(0))
        if n == 0 or j + n > len(s):
            return None
        return j + n

    if i < len(s) and s[i] == "Q":
        if i + 1 >= len(s) or not s[i + 1].isdigit():
            return None
        count = int(s[i + 1])
        j = i + 2
        if count < 2:
            return None
        for _ in range(count):
            j = one(j)
            if j is None:
                return None
        return j
    return one(i)


def name_problem(name: str) -> Optional[str]:
    """Returns why a name is not a plausible symbol name, or None."""
    if not name or len(name) > 2048:
        return "empty or too long"
    for c in name:
        if ord(c) < 0x21 or ord(c) > 0x7E:
            return "space, control or non-ASCII character"
        if c in FORBIDDEN_CHARS:
            return f"forbidden character {c!r}"
    # CodeWarrior mangling: base__<qualifier>[C]F<params>, base__<qualifier>
    # (static data member) or base__F<params> (free function).
    p = name.find("__", 1)
    while p != -1 and p + 2 < len(name) and name[p + 2] == "_":
        p += 1
    if p == -1 or p + 2 >= len(name):
        return None
    nxt = name[p + 2]
    if not (nxt.isdigit() or nxt in "QF"):
        return None  # not mangled-looking, a plain name with "__" inside
    i = p + 2
    if nxt != "F":
        i = _parse_qualifier(name, i)
        if i is None:
            return "implausible mangled name (bad qualifier lengths)"
        if i == len(name):
            return None  # static data member
        if name[i] == "C":
            i += 1
    if i >= len(name) or name[i] != "F":
        return "implausible mangled name (no F after the qualifier)"
    if i + 1 >= len(name):
        return "implausible mangled name (empty parameter list)"
    return None


class Entry:
    __slots__ = ("line_no", "name", "section", "addr", "size", "type", "scope")

    def __init__(self, line_no, name, section, addr, size, typ, scope):
        self.line_no, self.name, self.section, self.addr = line_no, name, section, addr
        self.size, self.type, self.scope = size, typ, scope


def parse_symbols_lines(lines: List[str]) -> List[Entry]:
    entries = []
    for i, line in enumerate(lines):
        m = SYMBOL_RE.match(line)
        if not m:
            continue
        rest = m.group(4)
        sm, tm, scm = SIZE_RE.search(rest), TYPE_RE.search(rest), SCOPE_RE.search(rest)
        entries.append(Entry(i, m.group(1), m.group(2), int(m.group(3), 16),
                             int(sm.group(1), 16) if sm else None,
                             tm.group(1) if tm else None,
                             scm.group(1) if scm else "global"))
    return entries


def read_names(path: str) -> Tuple[List[Tuple[int, Optional[str], int, str, int]], int]:
    """Returns ([(addr, section or None, size, name, line)], ignored line count)."""
    out, ignored = [], 0
    with open(path, encoding="utf-8") as f:
        for n, raw in enumerate(f, 1):
            m = SYMBOL_RE.match(raw)
            if m:
                rest = m.group(4)
                tm = TYPE_RE.search(rest)
                if not tm or tm.group(1) != "function":
                    ignored += 1
                    continue
                sm = SIZE_RE.search(rest)
                out.append((int(m.group(3), 16), m.group(2), int(sm.group(1), 16) if sm else 0,
                            m.group(1), n))
                continue
            line = raw.split("#", 1)[0]
            if not line.strip():
                continue
            m = PLAIN_RE.match(line)
            if not m:
                ignored += 1
                continue
            out.append((int(m.group(1), 16), None, int(m.group(2), 16), m.group(3), n))
    return out, ignored


def read_config_modules(path: str) -> Dict[str, str]:
    """Maps REL file stem -> symbols path, from a dtk config.yml."""
    mods, current = {}, None
    with open(path, encoding="utf-8") as f:
        for raw in f:
            line = raw.split("#", 1)[0].rstrip()
            m = re.match(r"^\s*(-\s+)?(\w+):\s*(.*)$", line)
            if not m:
                continue
            dash, key, value = m.group(1), m.group(2), m.group(3).strip().strip("'\"")
            if dash:
                current = {}
            if current is None:
                continue
            current[key] = value
            if "object" in current and "symbols" in current:
                stem = os.path.splitext(os.path.basename(current["object"]))[0]
                mods[stem] = current["symbols"]
    return mods


def scan_sources(roots: List[str], names: set) -> Dict[str, List[Tuple[str, int, str]]]:
    """Finds whole-word occurrences of the given names: name -> [(file, line, text)]."""
    found = defaultdict(list)
    if not names:
        return found
    word = re.compile(r"\b(" + "|".join(re.escape(n) for n in sorted(names)) + r")\b")
    for root in roots:
        if not os.path.isdir(root):
            continue
        for dirpath, _dirs, files in os.walk(root):
            for fn in sorted(files):
                if not fn.lower().endswith(SRC_EXTS):
                    continue
                path = os.path.join(dirpath, fn)
                with open(path, encoding="utf-8", errors="replace") as f:
                    for n, text in enumerate(f, 1):
                        for m in word.finditer(text):
                            found[m.group(1)].append((path, n, text.rstrip("\n")))
    return found


def member_use(name: str, text: str) -> bool:
    return bool(re.search(r"::\s*" + re.escape(name) + r"\b", text) or
                re.search(r"\bvirtual\b", text))


def main() -> int:
    ap = argparse.ArgumentParser(description="Import function names into a dtk symbols.txt "
                                             "(auto-named entries only).")
    ap.add_argument("names", help="names file (ADDRESS SIZE NAME lines or dtk symbols.txt)")
    ap.add_argument("--version", default="GGTE01")
    ap.add_argument("--module", help="REL module (file stem, e.g. stage01)")
    ap.add_argument("--symbols", help="target symbols.txt (overrides --version/--module)")
    ap.add_argument("--apply", action="store_true", help="write the changes (default: dry run)")
    ap.add_argument("--include-zz", action="store_true", help="also replace zz_XXXXXXXX_* names")
    ap.add_argument("--rename-in-src", action="store_true",
                    help="also rename referenced auto names in src/ and include/ when safe")
    ap.add_argument("--verbose", action="store_true", help="list every skipped entry")
    ap.add_argument("--examples", type=int, default=5, help="skips listed per reason (default 5)")
    args = ap.parse_args()

    if args.symbols:
        target = args.symbols
    elif args.module:
        cfg = os.path.join(ROOT, "config", args.version, "config.yml")
        mods = read_config_modules(cfg)
        if args.module not in mods:
            print(f"error: module {args.module} not found in {cfg}", file=sys.stderr)
            return 1
        target = os.path.join(ROOT, mods[args.module])
    else:
        target = os.path.join(ROOT, "config", args.version, "symbols.txt")
    if not os.path.exists(target):
        print(f"error: {target} not found", file=sys.stderr)
        return 1

    with open(target, encoding="utf-8", newline="") as f:
        lines = f.read().splitlines(keepends=True)
    entries = parse_symbols_lines(lines)
    funcs_by_addr = defaultdict(list)
    for e in entries:
        if e.type == "function":
            funcs_by_addr[e.addr].append(e)
    by_name = defaultdict(list)
    for e in entries:
        by_name[e.name].append(e)
    func_ranges = sorted((e.addr, e.addr + (e.size or 0), e) for e in entries if e.type == "function")

    names, ignored_lines = read_names(args.names)
    skips = defaultdict(list)  # reason -> [text]
    candidates = []  # (entry, new_name, src_line)

    def skip(reason: str, text: str):
        skips[reason].append(text)

    # Conflicts inside the names file itself.
    names_per_addr = defaultdict(set)
    addrs_per_name = defaultdict(set)
    for addr, sec, _size, name, _n in names:
        names_per_addr[(sec, addr)].add(name)
        addrs_per_name[name].add((sec, addr))

    already = 0
    for addr, sec, size, name, n in names:
        where = f"{sec + ':' if sec else ''}0x{addr:08X} {name} (line {n})"
        if is_auto(name, True):
            skip("name in the names file is itself auto-generated", where)
            continue
        if len(names_per_addr[(sec, addr)]) > 1:
            skip("address given several names in the names file", where)
            continue
        if len(addrs_per_name[name]) > 1:
            skip("name given to several addresses in the names file", where)
            continue
        cands = [e for e in funcs_by_addr.get(addr, []) if sec is None or e.section == sec]
        if not cands:
            inside = [e for (a, b, e) in func_ranges if a < addr < b and (sec is None or e.section == sec)]
            other = [e for e in by_name_values_at(entries, addr, sec)]
            if inside:
                skip("address inside a function, not its start", f"{where} (in {inside[0].name})")
            elif other:
                skip("address is not a function", f"{where} ({other[0].name}, type:{other[0].type})")
            else:
                skip("no symbol at this address", where)
            continue
        if len(cands) > 1:
            skip("several functions at this address (give the section)", where)
            continue
        e = cands[0]
        if e.name == name:
            already += 1
            continue
        if not is_auto(e.name, args.include_zz):
            skip("target already has a real name", f"{where} (has {e.name})")
            continue
        if size == 0:
            skip("no size in the names file", where)
            continue
        if e.size != size:
            skip("size mismatch", f"{where} (symbols.txt size 0x{(e.size or 0):X}, names file 0x{size:X})")
            continue
        problem = name_problem(name)
        if problem:
            skip("implausible name", f"{where}: {problem}")
            continue
        users = [u for u in by_name.get(name, []) if u is not e]
        if any(u.scope != "local" for u in users):
            u = next(u for u in users if u.scope != "local")
            skip("name already used in symbols.txt", f"{where} (used at {u.section}:0x{u.addr:08X})")
            continue
        candidates.append((e, name, n, bool(users)))

    # Source references of the old names.
    src_roots = [os.path.join(ROOT, "src"), os.path.join(ROOT, "include")]
    refs = scan_sources(src_roots, {e.name for e, _nn, _n, _l in candidates})
    final, src_edits = [], []  # src_edits: (old, new, occurrences)
    for e, new, n, local_twin in candidates:
        where = f"{e.section}:0x{e.addr:08X} {new} (line {n})"
        occ = refs.get(e.name, [])
        if occ:
            files = sorted({os.path.relpath(p, ROOT) for p, _l, _t in occ})
            if not args.rename_in_src:
                skip("referenced in sources (use --rename-in-src)", f"{where}: {e.name} in {', '.join(files)}")
                continue
            if not IDENT_RE.match(new) or name_problem(new) is not None or re.search(r"__[0-9QF]", new):
                skip("referenced in sources, new name is not a plain C identifier",
                     f"{where}: {e.name} in {', '.join(files)}")
                continue
            if any(member_use(e.name, t) for _p, _l, t in occ):
                skip("referenced in sources as a C++ member", f"{where}: {e.name} in {', '.join(files)}")
                continue
            src_edits.append((e.name, new, occ))
        final.append((e, new, local_twin))

    # Report.
    print(f"target: {os.path.relpath(target, ROOT)}")
    print(f"names file: {len(names)} function entries, {ignored_lines} other lines ignored")
    print(f"already named the same: {already}")
    print(f"to rename: {len(final)}" + ("" if args.apply else " (dry run, use --apply to write)"))
    twins = sum(1 for _e, _n, t in final if t)
    if twins:
        print(f"  of which share their name with a scope:local symbol: {twins}")
    if src_edits:
        print(f"  of which also renamed in sources: {len(src_edits)}")
    total_skips = sum(len(v) for v in skips.values())
    print(f"skipped: {total_skips}")
    for reason, items in sorted(skips.items(), key=lambda kv: -len(kv[1])):
        print(f"  {len(items):5d}  {reason}")
        shown = items if args.verbose else items[:args.examples]
        for t in shown:
            print(f"           {t}")
        if len(shown) < len(items):
            print(f"           ... {len(items) - len(shown)} more (--verbose)")

    if not args.apply:
        return 0

    for e, new, _t in final:
        line = lines[e.line_no]
        m = SYMBOL_RE.match(line)
        start = line.index(m.group(1))
        lines[e.line_no] = line[:start] + new + line[start + len(m.group(1)):]
    with open(target, "w", encoding="utf-8", newline="") as f:
        f.write("".join(lines))
    print(f"wrote {os.path.relpath(target, ROOT)}")

    per_file = defaultdict(list)
    for old, new, occ in src_edits:
        for p in {p for p, _l, _t in occ}:
            per_file[p].append((old, new))
    for p, pairs in sorted(per_file.items()):
        with open(p, encoding="utf-8", newline="") as f:
            text = f.read()
        for old, new in pairs:
            text = re.sub(r"\b" + re.escape(old) + r"\b", new, text)
        with open(p, "w", encoding="utf-8", newline="") as f:
            f.write(text)
        print(f"wrote {os.path.relpath(p, ROOT)} ({len(pairs)} name(s))")
    return 0


def by_name_values_at(entries: List[Entry], addr: int, sec: Optional[str]) -> List[Entry]:
    return [e for e in entries if e.addr == addr and (sec is None or e.section == sec)]


if __name__ == "__main__":
    sys.exit(main())
