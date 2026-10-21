#!/usr/bin/env python3

###
# First C draft of a function, in one command, with m2c.
#
# Takes one function of the DOL (or of a REL module) from the assembly that
# dtk writes to build/<version>/asm (build/<version>/<module>/asm for modules),
# keeps only that function and the data objects it reads (jump tables, float
# constants, strings...), builds a context header with tools/decompctx.py and
# runs m2c (target ppc-mwcc) on it.
#
# m2c is NOT part of this repository (it is GPL-3.0). Install or clone it
# yourself: https://github.com/matt-kempster/m2c
# It is looked up, in this order, with:
#   --m2c PATH       path to m2c.py, to the m2c clone folder, or to an m2c
#                    executable (the entry point installed by pip)
#   M2C              environment variable, same meaning
#   the "m2c" Python module, if importable by this Python
#   an "m2c" executable on the PATH
# When PATH is a clone holding a virtual environment (.venv or venv), its
# Python runs m2c.py; otherwise this Python does (m2c needs no package
# outside its own folder, except graphviz for --visualize).
#
# Usage (from decomp_dtk_main, after `python configure.py && ninja`):
#   python3 tools/decomp_func.py ParseStageData__5CGameFiPc
#   python3 tools/decomp_func.py 0x80013580 --out build/draft.cpp
#   python3 tools/decomp_func.py fn_1_310 --module ahk
#   python3 tools/decomp_func.py fn_80011BD8 --calls
#   python3 tools/decomp_func.py fn_80005A2C --unit src/game/game.cpp
#   python3 tools/decomp_func.py fn_80005A2C -- --valid-syntax --stack-structs
#   python3 tools/decomp_func.py --list-unit game/game.cpp
#   python3 tools/decomp_func.py --list-unit auto_03_8001364C_text --limit 20
#   python3 tools/decomp_func.py --list-unit 0x80013580-0x80013700
#
# Options:
#   --unit SRC        source file used to build the context (default: the
#                     source of the function's unit when it exists in src/,
#                     else a default header set, see DEFAULT_HEADERS)
#   --no-context      run m2c without any context
#   --lang c|c++      m2c language (default: c for a .c unit, else c++)
#   --out FILE        write the draft to FILE instead of standard output
#   --calls           list callers and callees in the header (call graph of
#                     tools/pick_funcs.py)
#   --list-unit U     draft every function of a unit (name from splits.txt),
#                     of an asm file (its name without .s, e.g. an auto_*
#                     file of an unsplit range) or of an address range A-B;
#                     the functions go through m2c together, which lets it
#                     infer a few types across them
#   --limit N         with --list-unit, at most N functions (0 = all)
#   -- ARGS...        everything after "--" is passed to m2c as is
#
# Context: tools/decompctx.py inlines the #includes; m2c only parses C (no
# C++, no preprocessor), so this tool then evaluates #if/#ifdef (with M2C and
# M2CTX defined, __cplusplus not defined) and drops the other directives. When
# m2c still cannot parse the context (C++ classes, unexpanded macros), the
# draft is made again without context and the header says so.
#
# Jump tables: dtk may write jump table entries as "function+offset"; m2c
# needs local labels, so those entries are rewritten to .L_<address> labels
# added inside the extracted function. m2c finds a jump table by its name
# prefix (jtbl, jpt_, lbl_, jumptable_), so a table with another name is
# renamed, and other lbl_* symbols of a function with a jump table are
# hidden from that search (their names are restored in the output).
#
# Every intermediate file (extracted .s, context) is kept in
# build/<version>/m2c/ for reuse (e.g. on decomp.me). The drafts are derived
# from the game: keep them out of Git (build/ is ignored).
#
# Python standard library only. Released under CC0 1.0.
###

import argparse
import contextlib
import io
import importlib.util
import os
import re
import shutil
import subprocess
import sys
from typing import Dict, List, Optional, Set, Tuple

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = os.path.abspath(os.path.join(script_dir, ".."))
sys.path.insert(0, script_dir)

import pick_funcs  # noqa: E402  (same folder)

# Context used when the function has no source file yet.
DEFAULT_HEADERS = ["types.h", "Dolphin/os.h", "Dolphin/gx.h", "Dolphin/mtx.h",
                   "Dolphin/vec.h", "Dolphin/dvd.h", "Dolphin/pad.h", "Dolphin/vi.h",
                   "stl/string.h", "stl/math.h"]

JTBL_PREFIXES = ("jtbl", "jpt_", "lbl_", "jumptable_")
HIDE_PREFIX = "m2chide__"

FN_LINE = re.compile(r'^\.fn\s+("(?:[^"\\]|\\.)*"|[^\s,]+)\s*,')
ENDFN_LINE = re.compile(r'^\.endfn\s+')
OBJ_LINE = re.compile(r'^\.obj\s+("(?:[^"\\]|\\.)*"|[^\s,]+)\s*,')
ENDOBJ_LINE = re.compile(r'^\.endobj\s+')
SECTION_LINE = re.compile(r'^\.(section\s+([.\w]+)|text|data|rodata|bss)\b')
INS_ADDR = re.compile(r'^/\*\s*([0-9A-Fa-f]{8})\s')
LABEL_LINE = re.compile(r'^(\.L_[0-9A-Fa-f]+):')
SYMBOL_TOKEN = r'"(?:[^"\\]|\\.)*"|[A-Za-z_$.][\w$.?]*'
RELOC_REF = re.compile(r'(' + SYMBOL_TOKEN + r')@(?:ha|h|l|sda21|sda2)\b')
SUBI_RELOC = re.compile(r'^(.*?\*/\s*)subi(\s+r\d+\s*,\s*r\d+\s*,\s*(?:' + SYMBOL_TOKEN
                        + r')@(?:l|sda21|sda2)\s*)$')
MAX_OBJ_LINES = 512
WORD_ENTRY = re.compile(r'^(\s*\.4byte\s+)(' + SYMBOL_TOKEN + r')(?:\s*\+\s*(0x[0-9A-Fa-f]+|\d+))?\s*$')


def fail(msg: str) -> None:
    sys.exit(f"decomp_func: error: {msg}")


def unquote(name: str) -> str:
    return name[1:-1] if len(name) >= 2 and name[0] == '"' and name[-1] == '"' else name


def strip_comment(line: str) -> str:
    """Instruction text without the leading /* address bytes */ comment."""
    return re.sub(r'/\*.*?\*/', '', line).split('#', 1)[0].strip()


# ---------------------------------------------------------------- asm index


class AsmObj:
    __slots__ = ("name", "section", "lines", "path")

    def __init__(self, name: str, section: str, lines: List[str], path: str):
        self.name, self.section, self.lines, self.path = name, section, lines, path


class AsmIndex:
    """Functions and data objects of every .s file of one asm folder."""

    def __init__(self, asm_dir: str):
        self.asm_dir = asm_dir
        self.funcs: Dict[str, AsmObj] = {}
        self.objs: Dict[str, AsmObj] = {}
        self.file_funcs: Dict[str, List[str]] = {}  # file stem -> function names
        for dirpath, _dirs, files in os.walk(asm_dir):
            for fname in sorted(files):
                if fname.endswith(".s"):
                    self._load(os.path.join(dirpath, fname))

    def _load(self, path: str) -> None:
        stem = os.path.relpath(path, self.asm_dir)[:-2].replace(os.sep, "/")
        section = ".text"
        cur: Optional[AsmObj] = None
        is_fn = False
        with open(path, encoding="utf-8", errors="replace") as f:
            for raw in f:
                line = raw.rstrip("\n")
                if cur is None:
                    m = SECTION_LINE.match(line)
                    if m:
                        section = m.group(2) or "." + m.group(1)
                        continue
                    m = FN_LINE.match(line)
                    if m:
                        cur, is_fn = AsmObj(unquote(m.group(1)), section, [line], path), True
                        continue
                    m = OBJ_LINE.match(line)
                    if m:
                        cur, is_fn = AsmObj(unquote(m.group(1)), section, [line], path), False
                    continue
                cur.lines.append(line)
                if (ENDFN_LINE if is_fn else ENDOBJ_LINE).match(line):
                    if is_fn:
                        self.funcs.setdefault(cur.name, cur)
                        self.file_funcs.setdefault(stem, []).append(cur.name)
                    else:
                        self.objs.setdefault(cur.name, cur)
                    cur = None


def m2c_section(section: str) -> str:
    """Section directive that m2c understands for a dtk section name."""
    if section in (".text", ".init") or section.startswith(".text"):
        return ".text"
    if section in (".rodata", ".sdata2", ".sbss2"):
        return ".rodata"
    if section in (".bss", ".sbss"):
        return ".bss"
    return ".data"


def func_start(fn: AsmObj) -> Optional[int]:
    for line in fn.lines:
        m = INS_ADDR.match(line)
        if m:
            return int(m.group(1), 16)
    return None


def referenced_symbols(fn: AsmObj) -> Set[str]:
    out: Set[str] = set()
    for line in fn.lines[1:-1]:
        text = strip_comment(line)
        for m in RELOC_REF.finditer(text):
            out.add(unquote(m.group(1)))
    return out


def build_asm(fns: List[AsmObj], index: AsmIndex) -> Tuple[str, Dict[str, str]]:
    """Assembly text for m2c, and the renames to undo in its output."""
    # dtk prints "addi rD, rA, sym@l" as "subi" when the unrelocated field is
    # negative; the relocation replaces the field, so it is an addi.
    # dtk names the CR bits of cr0 (cror eq, gt, eq); m2c's float compare
    # patterns expect numbers (cror 2, 1, 2).
    fn_lines: Dict[str, List[str]] = {
        f.name: [cr_bits_to_numbers(SUBI_RELOC.sub(r"\1addi\2", l)) for l in f.lines]
        for f in fns}
    renames: Dict[str, str] = {}  # new name -> original name
    data_names: List[str] = []
    for fn in fns:
        for sym in sorted(referenced_symbols(fn)):
            if sym in index.objs and sym not in data_names:
                # Very large objects are left out (m2c then sees an extern),
                # unless they hold jump table entries into this function.
                obj = index.objs[sym]
                if (len(obj.lines) > MAX_OBJ_LINES and not any(
                        (m := WORD_ENTRY.match(l)) and unquote(m.group(2)) == fn.name
                        for l in obj.lines)):
                    continue
                data_names.append(sym)
    data_lines: Dict[str, List[str]] = {n: list(index.objs[n].lines) for n in data_names}

    for fn in fns:
        start = func_start(fn)
        if start is None:
            continue
        lines = fn_lines[fn.name]
        refs = referenced_symbols(fn)
        jtbls: List[str] = []
        new_labels: Dict[int, str] = {}
        for name in data_names:
            if name not in refs:
                continue
            obj = data_lines[name]
            hit = False
            for i, line in enumerate(obj):
                m = WORD_ENTRY.match(line)
                if not m or unquote(m.group(2)) != fn.name:
                    continue
                addr = start + (int(m.group(3), 0) if m.group(3) else 0)
                label = f".L_{addr:08X}"
                new_labels[addr] = label
                obj[i] = f"{m.group(1)}{label}"
                hit = True
            if hit:
                jtbls.append(name)
        if not jtbls:
            continue
        # Add the missing labels inside the function.
        have = {LABEL_LINE.match(l).group(1).upper() for l in lines if LABEL_LINE.match(l)}
        out: List[str] = []
        for line in lines:
            m = INS_ADDR.match(line)
            if m:
                lab = new_labels.get(int(m.group(1), 16))
                if lab and lab.upper() not in have:
                    out.append(f"{lab}:")
                    have.add(lab.upper())
            out.append(line)
        lines = out
        # Jump table names must carry a prefix m2c looks for; other lbl_*
        # symbols would make the table ambiguous, so they are hidden.
        rename: Dict[str, str] = {}
        for name in jtbls:
            if not name.startswith(JTBL_PREFIXES):
                new = "jumptable_" + re.sub(r"[^\w]", "_", name).strip("_")
                rename[name] = new
        for sym in refs:
            if sym not in jtbls and sym.startswith(JTBL_PREFIXES):
                rename[sym] = HIDE_PREFIX + sym
        for old, new in rename.items():
            renames[new] = old
            pat = re.compile(r'(?<![\w$."])' + re.escape(quote_if_needed(old)) + r'(?=@)')
            lines = [pat.sub(new, l) for l in lines]
            if old in data_lines:
                obj = data_lines[old]
                obj[0] = OBJ_LINE.sub(f".obj {new},", obj[0], count=1)
                obj[-1] = f".endobj {new}"
        fn_lines[fn.name] = lines

    parts = [".text"]
    for fn in fns:
        parts.append("")
        parts.extend(fn_lines[fn.name])
    for name in data_names:
        parts.append("")
        parts.append(m2c_section(index.objs[name].section))
        parts.extend(data_lines[name])
    return "\n".join(parts) + "\n", renames


CR_BIT_INS = re.compile(r'^(.*?\*/\s*)(cr(?:and|andc|eqv|nand|nor|or|orc|xor))\s+(\w+)\s*,\s*(\w+)\s*,\s*(\w+)\s*$')
CR0_BITS = {"lt": "0", "gt": "1", "eq": "2", "so": "3", "un": "3"}


def cr_bits_to_numbers(line: str) -> str:
    m = CR_BIT_INS.match(line)
    if not m:
        return line
    ops = [CR0_BITS.get(x, x) for x in m.group(3, 4, 5)]
    return f"{m.group(1)}{m.group(2)} {', '.join(ops)}"


def quote_if_needed(name: str) -> str:
    return name if re.fullmatch(r'[A-Za-z_$.][\w$.?]*', name) else f'"{name}"'


# ---------------------------------------------------------------- context


Macro = Tuple[Optional[List[str]], str]  # (parameters, or None if object-like; body)
PP_TOKEN = re.compile(r'"(?:\\.|[^\\"])*"|\'(?:\\.|[^\\\'])*\'|[A-Za-z_]\w*|\s+|.', re.S)
IDENT = re.compile(r'[A-Za-z_]\w*')


def split_args(text: str, pos: int) -> Tuple[Optional[List[str]], int]:
    """Arguments of a macro call; text[pos] is "(". Returns (args, end) or (None, pos)."""
    depth, args, cur, i = 0, [], [], pos
    while i < len(text):
        m = PP_TOKEN.match(text, i)
        tok = m.group(0)
        i = m.end()
        if tok == "(":
            depth += 1
            if depth == 1:
                continue
        elif tok == ")":
            depth -= 1
            if depth == 0:
                args.append("".join(cur).strip())
                return args, i
        elif tok == "," and depth == 1:
            args.append("".join(cur).strip())
            cur = []
            continue
        cur.append(tok)
    return None, pos


def substitute(body: str, params: List[str], args: List[str]) -> str:
    named = {}
    for k, p in enumerate(params):
        if p == "...":
            named["__VA_ARGS__"] = ", ".join(args[k:])
        elif p.endswith("..."):
            named[p[:-3]] = ", ".join(args[k:])
        else:
            named[p] = args[k] if k < len(args) else ""
    body = re.sub(r'#\s*([A-Za-z_]\w*)',
                  lambda m: '"' + named[m.group(1)].replace('"', '\\"') + '"'
                  if m.group(1) in named else m.group(0), body)
    body = IDENT.sub(lambda m: named.get(m.group(0), m.group(0)), body)
    return re.sub(r'\s*##\s*', '', body)


def expand(text: str, macros: Dict[str, Macro], active: frozenset = frozenset(),
           depth: int = 0) -> str:
    """Object-like and function-like macro expansion (no full C semantics)."""
    if depth > 16 or not (set(IDENT.findall(text)) & macros.keys()):
        return text
    res, pos = [], 0
    while pos < len(text):
        m = PP_TOKEN.match(text, pos)
        tok = m.group(0)
        pos = m.end()
        if tok in macros and tok not in active:
            params, body = macros[tok]
            if params is None:
                res.append(expand(body, macros, active | {tok}, depth + 1))
                continue
            j = pos
            while j < len(text) and text[j] in " \t":
                j += 1
            if j < len(text) and text[j] == "(":
                args, end = split_args(text, j)
                if args is not None:
                    if args == [""] and not params:
                        args = []
                    args = [expand(a, macros, active, depth + 1) for a in args]
                    res.append(expand(substitute(body, params, args), macros,
                                      active | {tok}, depth + 1))
                    pos = end
                    continue
        res.append(tok)
    return "".join(res)


def preprocess(text: str, defined: Dict[str, Macro]) -> str:
    """Small C preprocessor for m2c contexts (the #includes are already inlined):
    conditionals, #define/#undef and macro expansion; other directives dropped."""
    text = re.sub(r'/\*.*?\*/|//[^\n]*|"(?:\\.|[^\\"\n])*"|\'(?:\\.|[^\\\'\n])*\'',
                  lambda m: m.group(0) if m.group(0)[0] in "\"'"
                  else " " + "\n" * m.group(0).count("\n"), text, flags=re.S)
    lines = text.split("\n")
    out: List[str] = []
    stack: List[Tuple[bool, bool, bool]] = []  # (parent active, active, taken)
    active = True
    i = 0
    while i < len(lines):
        line = lines[i]
        n = 1
        if line.lstrip().startswith("#"):
            while line.endswith("\\") and i + n < len(lines):
                line = line[:-1] + " " + lines[i + n]
                n += 1
            m = re.match(r'\s*#\s*(\w*)\s*(.*)$', line)
            kw, rest = (m.group(1), m.group(2).strip()) if m else ("", "")
            if kw in ("ifdef", "ifndef"):
                name = rest.split()[0] if rest else ""
                cond = (name in defined) == (kw == "ifdef")
                stack.append((active, cond, cond))
                active = active and cond
            elif kw == "if":
                cond = eval_if(rest, defined)
                stack.append((active, cond, cond))
                active = active and cond
            elif kw == "elif" and stack:
                parent, _a, taken = stack[-1]
                cond = not taken and eval_if(rest, defined)
                stack[-1] = (parent, cond, taken or cond)
                active = parent and cond
            elif kw == "else" and stack:
                parent, _a, taken = stack[-1]
                stack[-1] = (parent, not taken, True)
                active = parent and not taken
            elif kw == "endif" and stack:
                active = stack.pop()[0]
            elif active and kw == "define":
                dm = re.match(r'(\w+)(\(([^)]*)\))?\s*(.*)$', rest)
                if dm:
                    params = ([p.strip() for p in dm.group(3).split(",") if p.strip()]
                              if dm.group(2) is not None else None)
                    defined[dm.group(1)] = (params, dm.group(4).strip())
            elif active and kw == "undef":
                defined.pop(rest.split()[0] if rest else "", None)
            out.extend([""] * n)
        else:
            out.append(expand(line, defined) if active else "")
        i += n
    return "\n".join(out)


def eval_if(expr: str, defined: Dict[str, Macro]) -> bool:
    e = re.sub(r'defined\s*\(\s*(\w+)\s*\)|defined\s+(\w+)',
               lambda m: " 1 " if (m.group(1) or m.group(2)) in defined else " 0 ", expr)

    def ident(m):
        word = m.group(0)
        mac = defined.get(word)
        val = mac[1].strip() if mac and mac[0] is None else "0"
        val = re.sub(r'(?<=\d)[uUlL]+\b', '', val)
        return f" ({val}) " if re.fullmatch(r'-?(0x[0-9A-Fa-f]+|\d+)', val) else " 0 "
    e = re.sub(r'(?<=\d)[uUlL]+\b', '', e)
    e = re.sub(r'\b(?!0x)[A-Za-z_]\w*\b', ident, e)
    e = e.replace("&&", " and ").replace("||", " or ")
    e = re.sub(r'!(?!=)', ' not ', e)
    try:
        return bool(eval(e, {"__builtins__": {}}, {}))  # only numbers and operators left
    except Exception:
        print(f"decomp_func: note: cannot evaluate #if {expr!r}, taken as false",
              file=sys.stderr)
        return False


def build_context(src: Optional[str], work_dir: str, tag: str) -> Tuple[str, str]:
    """Writes a preprocessed context. Returns (path, description)."""
    import decompctx  # same folder; dtk-template tool
    if src:
        src_abs = os.path.abspath(os.path.join(root_dir, src)) \
            if not os.path.isabs(src) else src
        if not os.path.exists(src_abs):
            fail(f"--unit source not found: {src}")
        try:
            desc = os.path.relpath(src_abs, root_dir).replace(os.sep, "/")
        except ValueError:
            fail(f"--unit must be a file of the project (on the same drive): {src}")
    else:
        tag += ".default"
        src_abs = os.path.join(work_dir, "default_headers.c")
        with open(src_abs, "w", encoding="utf-8") as f:
            for h in DEFAULT_HEADERS:
                if os.path.exists(os.path.join(root_dir, "include", h)):
                    f.write(f'#include "{h}"\n')
        desc = "default headers: " + ", ".join(DEFAULT_HEADERS)
    decompctx.defines.clear()
    old_cwd = os.getcwd()
    buf = io.StringIO()
    try:
        os.chdir(root_dir)  # decompctx opens paths relative to the project root
        with contextlib.redirect_stdout(buf):
            text = decompctx.import_c_file(src_abs)
    except SystemExit:
        fail("tools/decompctx.py could not build the context:\n" + buf.getvalue()[-2000:])
    finally:
        os.chdir(old_cwd)
    text = preprocess(text, {"M2C": (None, "1"), "M2CTX": (None, "1")})
    # Two C++ leftovers that are cheap to turn into C: access specifiers
    # inside structs, and the bool type.
    text = re.sub(r'^[ \t]*(?:public|private|protected)[ \t]*:', '', text, flags=re.M)
    if re.search(r'\bbool\b', text):
        text = "typedef int bool;\n" + text
    path = os.path.join(work_dir, f"{tag}.ctx.c")
    with open(path, "w", encoding="utf-8") as f:
        f.write(text)
    return path, desc


# ---------------------------------------------------------------- m2c


def find_m2c(opt: Optional[str]) -> Tuple[List[str], str, str]:
    """Returns (command prefix, description, version)."""
    spec = opt or os.environ.get("M2C")
    if spec:
        path = os.path.abspath(spec)
        if os.path.isdir(path):
            path = os.path.join(path, "m2c.py")
        if not os.path.exists(path):
            fail(f"m2c not found at {spec} (expected m2c.py, its folder or an executable)")
        if path.endswith(".py"):
            folder = os.path.dirname(path)
            py = sys.executable
            for venv in (".venv", "venv"):
                for rel in (("Scripts", "python.exe"), ("bin", "python")):
                    cand = os.path.join(folder, venv, *rel)
                    if os.path.exists(cand):
                        py = cand
                        break
                else:
                    continue
                break
            return [py, path], path, m2c_version(folder)
        return [path], path, "unknown"
    if importlib.util.find_spec("m2c") is not None:
        try:
            from importlib.metadata import version
            ver = version("m2c")
        except Exception:
            ver = "unknown"
        return ([sys.executable, "-c", "from m2c.main import main; main()"],
                "Python module m2c", ver)
    exe = shutil.which("m2c")
    if exe:
        return [exe], exe, "unknown"
    fail("m2c not found. Install or clone it (https://github.com/matt-kempster/m2c), "
         "then pass --m2c path/to/m2c.py or set the M2C environment variable.")
    raise AssertionError


def m2c_version(folder: str) -> str:
    ver = "unknown"
    pp = os.path.join(folder, "pyproject.toml")
    if os.path.exists(pp):
        with open(pp, encoding="utf-8") as f:
            m = re.search(r'^version\s*=\s*"([^"]+)"', f.read(), re.M)
            if m:
                ver = m.group(1)
    try:
        rev = subprocess.run(["git", "-C", folder, "rev-parse", "--short=12", "HEAD"],
                             capture_output=True, text=True, timeout=10)
        if rev.returncode == 0 and rev.stdout.strip():
            ver += f" (git {rev.stdout.strip()})"
    except (OSError, subprocess.SubprocessError):
        pass
    return ver


def run_m2c(cmd: List[str], asm_path: str, ctx: Optional[str], lang: str,
            funcs: List[str], extra: List[str]) -> Tuple[int, str, str]:
    args = list(cmd) + ["-t", f"ppc-mwcc-{lang}"]
    if ctx:
        args += ["--context", ctx]
    for f in funcs:
        args += ["-f", f]
    args += extra + [asm_path]
    p = subprocess.run(args, capture_output=True, text=True, encoding="utf-8",
                       errors="replace")
    return p.returncode, p.stdout, p.stderr


# ---------------------------------------------------------------- main


def rel(path: str) -> str:
    return os.path.relpath(path, root_dir).replace(os.sep, "/")


def safe_name(name: str) -> str:
    s = re.sub(r"[^A-Za-z0-9_.-]", "_", name)
    return s[:80]


def asm_dir_for(version: str, module: Optional[str]) -> str:
    if module:
        return os.path.join(root_dir, "build", version, module, "asm")
    return os.path.join(root_dir, "build", version, "asm")


def select_unit_funcs(spec: str, funcs: List[pick_funcs.Func], index: AsmIndex) -> List[str]:
    m = re.match(r"^\s*(0x[0-9A-Fa-f]+|[0-9A-Fa-f]{8})\s*-\s*(0x[0-9A-Fa-f]+|[0-9A-Fa-f]{8})\s*$",
                 spec)
    if m:
        lo, hi = int(m.group(1), 16), int(m.group(2), 16)
        return [f.name for f in sorted(funcs, key=lambda f: f.addr)
                if lo <= f.addr < hi and f.section == ".text"]
    key = pick_funcs.unit_key(spec)
    by_unit = [f for f in funcs if pick_funcs.unit_key(f.unit) == key]
    if by_unit:
        return [f.name for f in sorted(by_unit, key=lambda f: f.addr)]
    stem = spec[:-2] if spec.endswith(".s") else spec
    if stem in index.file_funcs:
        return list(index.file_funcs[stem])
    fail(f"--list-unit: no unit, asm file or address range matches {spec!r} "
         f"(asm files are in {rel(index.asm_dir)})")
    raise AssertionError


def default_lang(fn: Optional[pick_funcs.Func], src: Optional[str]) -> str:
    unit_src = src or (fn.unit if fn and fn.unit != "unsplit" else "")
    return "c" if unit_src.endswith(".c") else "c++"


def unit_source(fn: pick_funcs.Func) -> Optional[str]:
    if fn.unit == "unsplit":
        return None
    for cand in (fn.unit, os.path.splitext(fn.unit)[0] + ".cpp",
                 os.path.splitext(fn.unit)[0] + ".c"):
        p = os.path.join(root_dir, "src", cand)
        if os.path.exists(p):
            return os.path.join("src", cand).replace(os.sep, "/")
    return None


def main() -> None:
    argv = sys.argv[1:]
    extra: List[str] = []
    if "--" in argv:
        i = argv.index("--")
        argv, extra = argv[:i], argv[i + 1:]
    p = argparse.ArgumentParser(
        description="First C draft of a function with m2c (see the header of this file).")
    p.add_argument("function", nargs="?", help="function name or address (0x...)")
    p.add_argument("--version", default="GGTE01", help="game version (config/<version>)")
    p.add_argument("--module", metavar="NAME", help="REL module (e.g. stage01, ahk)")
    p.add_argument("--unit", metavar="SRC", help="source file for the context")
    p.add_argument("--no-context", action="store_true", help="run m2c without context")
    p.add_argument("--lang", choices=["c", "c++"], help="m2c language")
    p.add_argument("--out", metavar="FILE", help="write the draft to FILE")
    p.add_argument("--m2c", metavar="PATH", help="m2c.py, its folder, or an m2c executable")
    p.add_argument("--calls", action="store_true", help="list callers and callees")
    p.add_argument("--list-unit", metavar="UNIT",
                   help="draft every function of a unit, asm file or range A-B")
    p.add_argument("--limit", type=int, default=0, help="with --list-unit: at most N functions")
    args = p.parse_args(argv)
    if not args.function and not args.list_unit:
        p.error("give a function (name or 0xADDR) or --list-unit")

    cmd, m2c_desc, m2c_ver = find_m2c(args.m2c)

    if not os.path.exists(os.path.join(root_dir, "config", args.version, "config.yml")):
        fail(f"unknown version {args.version} (no config/{args.version}/config.yml)")
    funcs, _stats, warnings = pick_funcs.load_graph(args.version, args.module, False)
    for w in warnings:
        print(f"decomp_func: note: {w}", file=sys.stderr)

    asm_dir = asm_dir_for(args.version, args.module)
    if not os.path.isdir(asm_dir):
        fail(f"no dtk assembly in {rel(asm_dir)}. From decomp_dtk_main, "
             "run `python configure.py` then `ninja` (the default target splits the "
             "DOL and the RELs and writes the assembly).")
    index = AsmIndex(asm_dir)
    by_name = {}
    for f in funcs:
        by_name.setdefault(f.name, f)

    if args.list_unit:
        names = select_unit_funcs(args.list_unit, funcs, index)
        if args.limit:
            names = names[:args.limit]
        target: Optional[pick_funcs.Func] = None
        title = f"unit {args.list_unit}"
    else:
        target = pick_funcs.find_func(funcs, args.function)
        names = [target.name]
        title = target.name

    missing = [n for n in names if n not in index.funcs]
    if missing:
        hint = ("the assembly may be older than config/ (rebuild with `ninja`)"
                if len(missing) < len(names) or not args.list_unit else "")
        fail(f"not found in {rel(asm_dir)}: {', '.join(missing[:10])}"
             f"{' ...' if len(missing) > 10 else ''}. {hint}".rstrip())
    asm_fns = [index.funcs[n] for n in names]
    if not asm_fns:
        fail("no function selected")

    work_dir = os.path.join(root_dir, "build", args.version, "m2c")
    os.makedirs(work_dir, exist_ok=True)
    tag = safe_name((args.module + "_" if args.module else "") +
                    (f"unit_{args.list_unit}" if args.list_unit else names[0]))

    asm_text, renames = build_asm(asm_fns, index)
    asm_path = os.path.join(work_dir, f"{tag}.s")
    with open(asm_path, "w", encoding="utf-8") as f:
        f.write(asm_text)

    first = by_name.get(names[0])
    src = args.unit
    if not src and not args.no_context and target is not None:
        src = unit_source(target)
    if not src and not args.no_context and args.list_unit and first is not None:
        src = unit_source(first)
    lang = args.lang or default_lang(target or first, src)

    m2c_funcs = [] if args.list_unit else names
    # Contexts to try in order: the unit's source, the default headers, none.
    tries: List[Optional[str]] = []
    if not args.no_context:
        tries = ([src] if src else []) + [None]
    ctx_notes: List[str] = []
    rc, out, err = 0, "", ""
    ctx_desc = "none (--no-context)"
    for ctx_src in tries:
        ctx_path, desc = build_context(ctx_src, work_dir, tag)
        rc, out, err = run_m2c(cmd, asm_path, ctx_path, lang, m2c_funcs, extra)
        if not (rc != 0 and "parsing C context" in out + err):
            ctx_desc = "; ".join(ctx_notes + [desc])
            break
        m = re.search(r"Syntax error when parsing C context\.\s*(.*?)(?:\n|$)", out + err)
        reason = m.group(1).strip() if m else "syntax error"
        print(f"decomp_func: note: m2c could not parse the context from {desc} ({reason})",
              file=sys.stderr)
        ctx_notes.append(f"{desc} not usable by m2c ({reason})")
    else:
        if tries:
            ctx_desc = "; ".join(ctx_notes + ["none"])
        rc, out, err = run_m2c(cmd, asm_path, None, lang, m2c_funcs, extra)

    for new, old in renames.items():
        out = out.replace(new, old)

    head = ["/*", f" * m2c draft of {title}"]
    for n in names[:1] if not args.list_unit else []:
        fn = by_name.get(n)
        if fn:
            head.append(f" * Address: {fn.where()}  Size: 0x{fn.size:X}")
            head.append(f" * Unit: {fn.unit} ({fn.status})")
    if args.list_unit:
        head.append(f" * Functions: {len(names)}")
    head.append(f" * Assembly: {rel(asm_fns[0].path)}")
    head.append(f" * Context: {ctx_desc}")
    head.append(f" * m2c: {m2c_ver}, target ppc-mwcc-{lang}"
                + (f", extra args: {' '.join(extra)}" if extra else ""))
    if args.calls and target is not None:
        for what, links in (("Called by", target.callers), ("Calls", target.callees)):
            items = sorted(links.items(), key=lambda kv: kv[0].addr)
            head.append(f" * {what} ({len(items)}):")
            for other, sites in items[:40]:
                head.append(f" *   {other.where()} {other.name} [{other.status}]"
                            + (f" x{sites}" if sites > 1 else ""))
            if len(items) > 40:
                head.append(f" *   ... {len(items) - 40} more")
    if rc != 0:
        head.append(f" * m2c exit code {rc}: see the error comments below")
    head.append(" * Draft only: not compiled, not matched. Derived from the game; do not commit.")
    head.append(" */")
    text = "\n".join(head) + "\n\n" + out
    if err.strip():
        print(err.rstrip(), file=sys.stderr)

    if args.out:
        os.makedirs(os.path.dirname(os.path.abspath(args.out)) or ".", exist_ok=True)
        with open(args.out, "w", encoding="utf-8") as f:
            f.write(text)
        print(f"decomp_func: wrote {args.out}", file=sys.stderr)
    else:
        sys.stdout.write(text)
    print(f"decomp_func: asm and context kept in "
          f"{rel(work_dir)}/{tag}.*",
          file=sys.stderr)
    sys.exit(0 if rc == 0 else 1)


if __name__ == "__main__":
    main()
