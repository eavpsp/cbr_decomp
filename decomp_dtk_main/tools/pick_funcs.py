#!/usr/bin/env python3

###
# Helps pick the next functions to decompile.
#
# Builds a call graph from symbols.txt and the branch instructions found in the
# original DOL (and, optionally, the REL modules), then lists "easy targets":
# functions that are not in a Matching unit yet, sorted by a simple score.
#
# Usage:
#   python3 tools/pick_funcs.py                         # top easy targets (DOL)
#   python3 tools/pick_funcs.py --max-size 0x40 --leaf --unnamed --limit 50
#   python3 tools/pick_funcs.py --range 0x80100000-0x80110000 --csv
#   python3 tools/pick_funcs.py --callers memcpy        # who calls memcpy
#   python3 tools/pick_funcs.py --callees 0x80013580    # what this function calls
#   python3 tools/pick_funcs.py --summary               # counts and self-check
#   python3 tools/pick_funcs.py --module stage01        # a REL module instead
#   python3 tools/pick_funcs.py --with-modules          # count REL -> DOL calls too
#
# Other tools can import this file and call load_graph() (see tools/decomp_func.py).
#
# Score (0-100, higher = better target), for each function:
#   S = 1 / (1 + instructions / 32)        small is easy (32 instructions -> 0.5)
#   K = 1 if leaf, else the share of its distinct callees that are "known"
#       (given a real name, i.e. not fn_*, already in a Matching unit, or a
#       fn_* holding named labels such as _savegpr_NN)
#   U = min(1, log2(1 + callers) / log2(17))   used a lot -> more useful
#   score = 50*S + 30*K + 20*U
#
# Only addresses, sizes and symbol names (from config/) are printed; no game
# bytes or strings are printed or stored.
#
# Only opcode 18 (b/bl/ba/bla) is decoded. "bl" (and "bla") gives a call edge;
# a "b" whose target lies outside the current function is counted as a tail
# call. Calls through pointers (bctrl/blrl) are not seen.
#
# REL modules: branch targets come from the R_PPC_REL24 relocations of the REL
# (targets in the DOL, in the module itself or in another module), or from the
# instruction itself when no relocation covers it.
#
# License: CC0-1.0 (public domain dedication).
###

import argparse
import csv
import json
import math
import os
import re
import struct
import sys
import time
from bisect import bisect_right
from typing import Dict, List, Optional, Tuple

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = os.path.abspath(os.path.join(script_dir, ".."))

AUTO_NAME = re.compile(r"^fn_")
SYMBOL_LINE = re.compile(
    r"^\s*(?P<name>\S+)\s*=\s*(?P<section>[^:\s]+):0x(?P<addr>[0-9A-Fa-f]+);\s*//(?P<attrs>.*)$"
)

# REL relocation types (Dolphin REL format).
R_PPC_REL24 = 10
R_DOLPHIN_NOP = 201
R_DOLPHIN_SECTION = 202
R_DOLPHIN_END = 203

# (module, section, address) of every type:label symbol inside a function.
LABEL_ADDRS = set()


class Func:
    __slots__ = (
        "module", "section", "addr", "size", "name", "unit", "lib", "status",
        "callees", "callers", "tail", "labels",
    )

    def __init__(self, module: str, section: str, addr: int, size: int, name: str):
        self.module = module
        self.section = section
        self.addr = addr
        self.size = size
        self.name = name
        self.unit = "unsplit"
        self.lib = ""
        self.status = "unsplit"
        self.callees: Dict["Func", int] = {}  # callee -> call sites
        self.callers: Dict["Func", int] = {}
        self.tail = 0  # tail-call edges among callees
        self.labels: List[str] = []  # type:label symbols inside the function

    @property
    def named(self) -> bool:
        return not AUTO_NAME.match(self.name)

    @property
    def known(self) -> bool:
        # A fn_* holding named labels (e.g. _savegpr_NN) is a known helper.
        return (self.named or self.status == "Matching"
                or any(not AUTO_NAME.match(l) for l in self.labels))

    def where(self) -> str:
        if self.module == "main":
            return f"0x{self.addr:08X}"
        return f"{self.module}:{self.section}:0x{self.addr:X}"


# ---------------------------------------------------------------- config files


def parse_symbols(path: str, module: str) -> List[Func]:
    funcs = []
    labels: List[Tuple[str, int, str]] = []
    with open(path, encoding="utf-8") as f:
        for line in f:
            m = SYMBOL_LINE.match(line)
            if not m:
                continue
            if "type:label" in m.group("attrs"):
                labels.append((m.group("section"), int(m.group("addr"), 16), m.group("name")))
                continue
            if "type:function" not in m.group("attrs"):
                continue
            sm = re.search(r"size:0x([0-9A-Fa-f]+)", m.group("attrs"))
            size = int(sm.group(1), 16) if sm else 0
            funcs.append(Func(module, m.group("section"), int(m.group("addr"), 16),
                              size, m.group("name")))
    # Fill missing sizes with the distance to the next function of the section.
    by_sec: Dict[str, List[Func]] = {}
    for fn in funcs:
        by_sec.setdefault(fn.section, []).append(fn)
    for lst in by_sec.values():
        lst.sort(key=lambda x: x.addr)
        for i, fn in enumerate(lst):
            if fn.size == 0 and i + 1 < len(lst):
                fn.size = lst[i + 1].addr - fn.addr
    for sec, addr, name in labels:
        lst = by_sec.get(sec, [])
        i = bisect_right([x.addr for x in lst], addr) - 1
        if i >= 0 and lst[i].addr < addr < lst[i].addr + lst[i].size:
            lst[i].labels.append(name)
            LABEL_ADDRS.add((module, sec, addr))
    return funcs


def parse_splits(path: str) -> List[Tuple[str, str, int, int]]:
    """Returns (unit, section, start, end) for each split range."""
    out = []
    unit = None
    if not os.path.exists(path):
        return out
    with open(path, encoding="utf-8") as f:
        for line in f:
            if not line.strip():
                continue
            if not line[0].isspace():
                unit = line.strip()[:-1] if line.strip().endswith(":") else None
                if unit == "Sections":
                    unit = None
                continue
            if unit is None:
                continue
            m = re.match(r"\s*(\S+)\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
            if m:
                out.append((unit, m.group(1), int(m.group(2), 16), int(m.group(3), 16)))
    return out


def unit_key(name: str) -> str:
    """Unit names in splits.txt and configure.py may differ by extension (.o/.s/.c)."""
    return os.path.splitext(name)[0].lower()


def parse_configure(path: str) -> Dict[str, Tuple[str, str]]:
    """Returns unit_key -> (status, lib) from the Object(...) list of configure.py.

    The file is read as text (not imported) so that no build logic runs."""
    out: Dict[str, Tuple[str, str]] = {}
    if not os.path.exists(path):
        return out
    with open(path, encoding="utf-8") as f:
        text = f.read()
    token = re.compile(
        r'"lib"\s*:\s*"(?P<lib>[^"]+)"'
        r'|\b(?:DolphinLib|Rel)\(\s*"(?P<lib2>[^"]+)"'
        r'|\bObject\(\s*(?P<st>\w+)\s*,\s*"(?P<obj>[^"]+)"'
    )
    lib = ""
    for m in token.finditer(text):
        if m.group("lib") or m.group("lib2"):
            lib = m.group("lib") or m.group("lib2")
        else:
            st = m.group("st")
            if st not in ("Matching", "NonMatching", "Equivalent"):
                st = "configured"
            out[unit_key(m.group("obj"))] = (st, lib)
    return out


def parse_config_yml(path: str) -> Tuple[Optional[str], List[Dict[str, str]]]:
    """Minimal reader for the keys used here (object, symbols, splits)."""
    dol = None
    modules: List[Dict[str, str]] = []
    cur: Optional[Dict[str, str]] = None
    in_modules = False
    with open(path, encoding="utf-8") as f:
        for raw in f:
            line = raw.split("#", 1)[0].rstrip()
            if not line.strip():
                continue
            if not line[0].isspace() and not line.startswith("-"):
                in_modules = line.startswith("modules:")
                m = re.match(r"object:\s*(\S+)", line)
                if m:
                    dol = m.group(1)
                continue
            if not in_modules:
                continue
            m = re.match(r"\s*(-\s+)?(\w+):\s*(\S+)", line)
            if not m:
                continue
            if m.group(1):
                cur = {}
                modules.append(cur)
            if cur is not None:
                cur[m.group(2)] = m.group(3)
    for mod in modules:
        if "object" in mod:
            mod["name"] = os.path.splitext(os.path.basename(mod["object"]))[0]
    return dol, [m for m in modules if "name" in m]


def assign_units(funcs: List[Func], splits, conf) -> None:
    ranges: Dict[str, List[Tuple[int, int, str]]] = {}
    for unit, sec, start, end in splits:
        ranges.setdefault(sec, []).append((start, end, unit))
    for lst in ranges.values():
        lst.sort()
    starts = {s: [r[0] for r in lst] for s, lst in ranges.items()}
    for fn in funcs:
        lst = ranges.get(fn.section)
        if not lst:
            continue
        i = bisect_right(starts[fn.section], fn.addr) - 1
        if i >= 0 and lst[i][0] <= fn.addr < lst[i][1]:
            fn.unit = lst[i][2]
            st, lib = conf.get(unit_key(fn.unit), ("unconfigured", ""))
            fn.status, fn.lib = st, lib


# ---------------------------------------------------------------- binaries


def load_dol(path: str) -> List[Tuple[int, bytes]]:
    """Returns (address, data) for each text section of a DOL."""
    with open(path, "rb") as f:
        data = f.read()
    offs = struct.unpack(">7I", data[0x00:0x1C])
    addrs = struct.unpack(">7I", data[0x48:0x64])
    sizes = struct.unpack(">7I", data[0x90:0xAC])
    return [(a, data[o:o + s]) for o, a, s in zip(offs, addrs, sizes) if s]


def branch_target(word: int, pc: int) -> Optional[Tuple[int, bool]]:
    """Decodes opcode 18 (b/ba/bl/bla). Returns (target, is_link) or None."""
    if word >> 26 != 18:
        return None
    li = word & 0x03FFFFFC
    if li & 0x02000000:
        li -= 0x04000000
    target = li if word & 2 else pc + li
    return target & 0xFFFFFFFF, bool(word & 1)


class Stats:
    def __init__(self):
        self.bl = 0          # bl seen
        self.bl_on_start = 0  # bl landing exactly on a known function start
        self.bl_label = 0     # ... on a type:label inside a function (_savegpr_NN...)
        self.bl_inside = 0    # ... elsewhere inside a known function
        self.bl_outside = 0   # bl landing outside every known function
        self.tail = 0         # b to another function (tail calls)
        self.relocs = 0       # REL24 relocations used


class Index:
    """Address -> function lookup for one address space (DOL, or one REL section)."""

    def __init__(self, funcs: List[Func]):
        self.funcs = sorted(funcs, key=lambda x: x.addr)
        self.starts = [f.addr for f in self.funcs]
        self.by_start = {f.addr: f for f in self.funcs}

    def containing(self, addr: int) -> Optional[Func]:
        i = bisect_right(self.starts, addr) - 1
        if i >= 0:
            fn = self.funcs[i]
            if addr < fn.addr + max(fn.size, 4):
                return fn
        return None


def add_edge(src: Func, dst: Func, tail: bool) -> None:
    src.callees[dst] = src.callees.get(dst, 0) + 1
    dst.callers[src] = dst.callers.get(src, 0) + 1
    if tail:
        src.tail += 1


def resolve(target_fn: Optional[Func], target: int, is_link: bool, src: Func,
            stats: Stats) -> None:
    if is_link:
        stats.bl += 1
        if target_fn is None:
            stats.bl_outside += 1
            return
        if target_fn.addr == target:
            stats.bl_on_start += 1
        elif (target_fn.module, target_fn.section, target) in LABEL_ADDRS:
            stats.bl_label += 1
        else:
            stats.bl_inside += 1
        add_edge(src, target_fn, False)
    elif target_fn is not None and target_fn is not src:
        stats.tail += 1
        add_edge(src, target_fn, True)


def scan_dol(dol_path: str, funcs: List[Func], stats: Stats) -> None:
    idx = Index(funcs)
    for base, data in load_dol(dol_path):
        end = base + len(data)
        for fn in idx.funcs:
            if not (base <= fn.addr < end) or fn.size < 4:
                continue
            o = fn.addr - base
            n = min(fn.size, len(data) - o) // 4
            words = struct.unpack_from(f">{n}I", data, o)
            pc = fn.addr
            for w in words:
                if w >> 26 == 18:
                    target, link = branch_target(w, pc)
                    if not link and fn.addr <= target < fn.addr + fn.size:
                        pc += 4
                        continue  # local jump
                    resolve(idx.containing(target), target, link, fn, stats)
                pc += 4


def read_rel(path: str):
    """Parses a REL. Returns (module id, sections [(offset, size, exec)],
    relocations {section: {offset: (target module, target section, addend)}})."""
    with open(path, "rb") as f:
        data = f.read()
    (mid, _nxt, _prv, nsec, sec_off, _noff, _nsz, _ver, _bss, _reloff, imp_off,
     imp_size) = struct.unpack_from(">12I", data, 0)
    sections = []
    for i in range(nsec):
        off, size = struct.unpack_from(">2I", data, sec_off + i * 8)
        sections.append((off & ~1, size, bool(off & 1)))
    relocs: Dict[int, Dict[int, Tuple[int, int, int]]] = {}
    for i in range(imp_size // 8):
        tmod, roff = struct.unpack_from(">2I", data, imp_off + i * 8)
        cur_sec, pos = 0, 0
        while roff + 8 <= len(data):
            delta, typ, sec, addend = struct.unpack_from(">HBBI", data, roff)
            roff += 8
            if typ == R_DOLPHIN_END:
                break
            if typ == R_DOLPHIN_SECTION:
                cur_sec, pos = sec, 0
                continue
            pos += delta
            if typ == R_PPC_REL24:
                relocs.setdefault(cur_sec, {})[pos] = (tmod, sec, addend)
    return mid, sections, relocs, data


def scan_rel(name: str, path: str, funcs: List[Func], dol_idx: Optional[Index],
             mod_lookup, stats: Stats, warnings: List[str]) -> None:
    """mod_lookup(module_id, section, offset) -> Func or None, for other modules."""
    mid, sections, relocs, data = read_rel(path)
    exec_secs = [i for i, s in enumerate(sections) if s[2] and s[1]]
    if not exec_secs:
        return
    if len(exec_secs) > 1:
        warnings.append(f"{name}: {len(exec_secs)} code sections, only the first is "
                        "matched to .text")
    tsec = exec_secs[0]
    toff, tsize, _ = sections[tsec]
    own = [f for f in funcs if f.section == ".text"]
    idx = Index(own)
    sec_relocs = relocs.get(tsec, {})
    for fn in idx.funcs:
        if fn.size < 4 or fn.addr + fn.size > tsize:
            continue
        n = fn.size // 4
        words = struct.unpack_from(f">{n}I", data, toff + fn.addr)
        pc = fn.addr
        for w in words:
            if w >> 26 == 18:
                link = bool(w & 1)
                r = sec_relocs.get(pc)
                if r is not None:
                    stats.relocs += 1
                    tmod, tsec2, addend = r
                    if tmod == 0:
                        tfn = dol_idx.containing(addend) if dol_idx else None
                        target = addend
                    elif tmod == mid and tsec2 == tsec:
                        tfn, target = idx.containing(addend), addend
                    else:
                        tfn, target = mod_lookup(tmod, tsec2, addend), addend
                    if not link and tfn is fn:
                        pc += 4
                        continue
                    resolve(tfn, target, link, fn, stats)
                else:
                    target, link = branch_target(w, pc)
                    if not link and fn.addr <= target < fn.addr + fn.size:
                        pc += 4
                        continue
                    if target != pc or link:  # unrelocated "bl ." would be odd
                        resolve(idx.containing(target), target, link, fn, stats)
            pc += 4


# ---------------------------------------------------------------- analysis


def score(fn: Func) -> float:
    ninstr = max(fn.size, 4) // 4
    s = 1.0 / (1.0 + ninstr / 32.0)
    callees = [c for c in fn.callees if c is not fn]
    if not callees:
        k = 1.0
    else:
        k = sum(1 for c in callees if c.known) / len(callees)
    u = min(1.0, math.log2(1 + len(fn.callers)) / math.log2(17))
    return 50 * s + 30 * k + 20 * u


def row(fn: Func) -> Dict[str, object]:
    callees = [c for c in fn.callees if c is not fn]
    return {
        "address": fn.where(),
        "name": fn.name,
        "size": f"0x{fn.size:X}",
        "unit": fn.unit,
        "status": fn.status,
        "callees": len(callees),
        "callers": len(fn.callers),
        "leaf": not callees,
        "callees_known": sum(1 for c in callees if c.known),
        "callees_matching": sum(1 for c in callees if c.status == "Matching"),
        "score": round(score(fn), 1),
    }


COLUMNS = ["address", "size", "score", "callers", "callees", "callees_known",
           "callees_matching", "status", "unit", "name"]


def output(rows: List[Dict[str, object]], fmt: str, columns=COLUMNS) -> None:
    if fmt == "json":
        print(json.dumps(rows, indent=1))
        return
    if fmt == "csv":
        w = csv.DictWriter(sys.stdout, fieldnames=list(rows[0].keys()) if rows else columns,
                           lineterminator="\n")
        w.writeheader()
        w.writerows(rows)
        return
    if not rows:
        print("(no function)")
        return
    cols = [c for c in columns if c in rows[0]]
    widths = {c: max(len(c), *(len(str(r[c])) for r in rows)) for c in cols}
    print("  ".join(c.ljust(widths[c]) for c in cols).rstrip())
    for r in rows:
        print("  ".join(str(r[c]).ljust(widths[c]) for c in cols).rstrip())


def find_func(funcs: List[Func], key: str) -> Func:
    k = key.strip()
    if re.match(r"^(0x)?[0-9A-Fa-f]+$", k) and not any(f.name == k for f in funcs):
        addr = int(k, 16)
        for fn in funcs:
            if fn.addr <= addr < fn.addr + max(fn.size, 4):
                return fn
        sys.exit(f"No function at {k}")
    hits = [f for f in funcs if f.name == k]
    if not hits:
        sys.exit(f"No function named {k}")
    if len(hits) > 1:
        print(f"Note: {len(hits)} functions named {k}, using the first", file=sys.stderr)
    return hits[0]


def summary(funcs: List[Func], stats: Stats, args, elapsed: float, warnings) -> None:
    def pct(a, b):
        return f"{100.0 * a / b:.1f}%" if b else "n/a"

    total = len(funcs)
    named = sum(1 for f in funcs if f.named)
    nbytes = sum(f.size for f in funcs)
    by_status: Dict[str, List[int]] = {}
    for f in funcs:
        s = by_status.setdefault(f.status, [0, 0])
        s[0] += 1
        s[1] += f.size
    edges = sum(len(f.callees) for f in funcs)
    leaves = sum(1 for f in funcs if not [c for c in f.callees if c is not f])
    print(f"Functions:        {total}  ({nbytes:#x} bytes)")
    print(f"  named:          {named} ({pct(named, total)})")
    print(f"  fn_*:           {total - named} ({pct(total - named, total)})")
    print(f"  leaf:           {leaves}")
    print("By status (functions / bytes / share of bytes):")
    for st in sorted(by_status):
        n, b = by_status[st]
        print(f"  {st:<14}  {n:>6}  {b:#10x}  {pct(b, nbytes)}")
    units: Dict[Tuple[str, str, str], List[int]] = {}
    for f in funcs:
        if f.unit == "unsplit":
            continue
        u = units.setdefault((f.lib or "-", f.unit, f.status), [0, 0])
        u[0] += 1
        u[1] += f.size
    if units:
        print("Split units (lib / unit / status: functions, bytes):")
        for (lib, unit, st), (n, b) in sorted(units.items()):
            print(f"  {lib:<20} {unit:<45} {st:<12} {n:>4}  {b:#x}")
    libs: Dict[str, List[int]] = {}
    for (lib, _u, _s), (n, b) in units.items():
        l = libs.setdefault(lib, [0, 0])
        l[0] += n
        l[1] += b
    if libs:
        print("By library (functions, bytes):")
        for lib, (n, b) in sorted(libs.items()):
            print(f"  {lib:<20} {n:>5}  {b:#x}")
    print(f"Call graph:       {edges} distinct edges, {stats.tail} tail-call sites")
    print(f"Self-check:       {stats.bl} bl; on a function start: {stats.bl_on_start} "
          f"({pct(stats.bl_on_start, stats.bl)}); on a label: {stats.bl_label}; "
          f"elsewhere inside a function: {stats.bl_inside}; "
          f"outside any function: {stats.bl_outside}")
    print(f"                  on a function start or label: "
          f"{pct(stats.bl_on_start + stats.bl_label, stats.bl)}")
    if stats.relocs:
        print(f"REL24 relocations used: {stats.relocs}")
    for w in warnings:
        print(f"Warning: {w}")
    print(f"Time:             {elapsed:.2f} s")


def load_graph(version: str = "GGTE01", module: Optional[str] = None,
               with_modules: bool = False) -> Tuple[List[Func], Stats, List[str]]:
    """Loads symbols, units and the call graph.

    Returns (functions of the DOL, or of `module` when given; stats; warnings).
    Also used by other tools (e.g. tools/decomp_func.py)."""
    cfg_dir = os.path.join(root_dir, "config", version)
    dol_rel, modules = parse_config_yml(os.path.join(cfg_dir, "config.yml"))
    conf = parse_configure(os.path.join(root_dir, "configure.py"))
    stats = Stats()
    warnings: List[str] = []

    dol_funcs = parse_symbols(os.path.join(cfg_dir, "symbols.txt"), "main")
    assign_units(dol_funcs, parse_splits(os.path.join(cfg_dir, "splits.txt")), conf)
    dol_path = os.path.join(root_dir, dol_rel or f"orig/{version}/sys/main.dol")
    if not os.path.exists(dol_path):
        sys.exit(f"DOL not found: {dol_path} (see the README for orig/ setup)")

    mods_by_name = {m["name"]: m for m in modules}
    if module and module not in mods_by_name:
        sys.exit(f"Unknown module {module}; known: {', '.join(sorted(mods_by_name))}")

    want_rels = with_modules or module
    rel_funcs: Dict[str, List[Func]] = {}
    rel_ids: Dict[int, str] = {}
    if want_rels:
        for m in modules:
            fs = parse_symbols(os.path.join(root_dir, m["symbols"]), m["name"])
            assign_units(fs, parse_splits(os.path.join(root_dir, m.get("splits", ""))), conf)
            rel_funcs[m["name"]] = fs
            rp = os.path.join(root_dir, m["object"])
            if os.path.exists(rp):
                with open(rp, "rb") as f:
                    rel_ids[struct.unpack(">I", f.read(4))[0]] = m["name"]
            else:
                warnings.append(f"{m['name']}: {m['object']} not found")

    dol_stats = stats if not module else Stats()
    scan_dol(dol_path, dol_funcs, dol_stats)
    dol_idx = Index(dol_funcs)

    if want_rels:
        rel_idx = {n: Index([f for f in fs if f.section == ".text"])
                   for n, fs in rel_funcs.items()}

        def mod_lookup(mid: int, _sec: int, off: int) -> Optional[Func]:
            n = rel_ids.get(mid)
            return rel_idx[n].containing(off) if n in rel_idx else None

        names = [module] if module else [m["name"] for m in modules]
        for n in names:
            m = mods_by_name[n]
            rp = os.path.join(root_dir, m["object"])
            if os.path.exists(rp):
                scan_rel(n, rp, rel_funcs[n], dol_idx, mod_lookup,
                         stats, warnings)

    funcs = rel_funcs[module] if module else dol_funcs
    return funcs, stats, warnings


def main() -> None:
    p = argparse.ArgumentParser(
        description="List easy functions to decompile next (call graph from the DOL/RELs).",
        epilog="Score = 50*S + 30*K + 20*U; see the header of this file.")
    p.add_argument("--version", default="GGTE01", help="game version (config/<version>)")
    p.add_argument("--module", metavar="NAME",
                   help="analyse a REL module (e.g. stage01, ahk) instead of the DOL")
    p.add_argument("--with-modules", action="store_true",
                   help="also scan every REL and count its calls into the DOL")
    p.add_argument("--all", action="store_true",
                   help="also list functions already in Matching units")
    p.add_argument("--max-size", type=lambda s: int(s, 0), metavar="N",
                   help="keep functions of at most N bytes (0x.. allowed)")
    g = p.add_mutually_exclusive_group()
    g.add_argument("--unnamed", action="store_true", help="only fn_* functions")
    g.add_argument("--named", action="store_true", help="only named functions")
    p.add_argument("--leaf", action="store_true", help="only functions with no call")
    p.add_argument("--unit", metavar="REGEX", help="unit name matches REGEX ('unsplit' too)")
    p.add_argument("--range", metavar="A-B", help="address range, e.g. 0x80100000-0x80110000")
    p.add_argument("--sort", choices=["score", "size", "callers", "address"], default="score")
    p.add_argument("--limit", type=int, default=40, help="rows to print (0 = all)")
    fmt = p.add_mutually_exclusive_group()
    fmt.add_argument("--csv", action="store_true")
    fmt.add_argument("--json", action="store_true")
    q = p.add_mutually_exclusive_group()
    q.add_argument("--callers", metavar="NAME|ADDR", help="list the callers of a function")
    q.add_argument("--callees", metavar="NAME|ADDR", help="list the callees of a function")
    q.add_argument("--summary", action="store_true", help="counts and branch self-check")
    args = p.parse_args()

    t0 = time.time()
    funcs, stats, warnings = load_graph(args.version, args.module, args.with_modules)
    out_fmt = "json" if args.json else "csv" if args.csv else "text"

    if args.summary:
        summary(funcs, stats, args, time.time() - t0, warnings)
        return

    if args.callers or args.callees:
        fn = find_func(funcs, args.callers or args.callees)
        rel = fn.callers if args.callers else fn.callees
        rows = []
        for other, sites in sorted(rel.items(), key=lambda kv: (kv[0].module, kv[0].addr)):
            r = row(other)
            r["sites"] = sites
            rows.append(r)
        if out_fmt == "text":
            what = "callers" if args.callers else "callees"
            print(f"{what} of {fn.name} ({fn.where()}, size 0x{fn.size:X}, {fn.unit}, "
                  f"{fn.status}): {len(rows)}")
        output(rows, out_fmt, ["address", "size", "sites", "callers", "callees",
                               "status", "unit", "name"])
        return

    sel = [f for f in funcs if args.all or f.status != "Matching"]
    if args.max_size is not None:
        sel = [f for f in sel if f.size <= args.max_size]
    if args.unnamed:
        sel = [f for f in sel if not f.named]
    if args.named:
        sel = [f for f in sel if f.named]
    if args.leaf:
        sel = [f for f in sel if not [c for c in f.callees if c is not f]]
    if args.unit:
        rx = re.compile(args.unit)
        sel = [f for f in sel if rx.search(f.unit)]
    if args.range:
        m = re.match(r"^\s*(\w+)\s*-\s*(\w+)\s*$", args.range)
        if not m:
            sys.exit("--range expects A-B, e.g. 0x80100000-0x80110000")
        lo, hi = int(m.group(1), 16), int(m.group(2), 16)
        sel = [f for f in sel if lo <= f.addr < hi]
    keys = {
        "score": lambda f: (-score(f), f.addr),
        "size": lambda f: (f.size, f.addr),
        "callers": lambda f: (-len(f.callers), f.addr),
        "address": lambda f: f.addr,
    }
    sel.sort(key=keys[args.sort])
    if args.limit:
        sel = sel[:args.limit]
    output([row(f) for f in sel], out_fmt)


if __name__ == "__main__":
    main()
