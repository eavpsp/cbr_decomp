#!/usr/bin/env python3

###
# Compares the built DOL and RELs with the original files, section by section.
#
# Usage:
#   python3 tools/dolcheck.py [--version GGTE01] [--max-diffs 5] [--no-rels]
#
# Files are found from config/<version>/config.yml:
#   original DOL  "object:" (e.g. orig/GGTE01/sys/main.dol)
#   built DOL     build/<version>/<name>.dol ("name:" of config.yml)
#   original RELs "object:" of each entry of "modules:"
#   built RELs    build/<version>/<module>/<module>.rel (module = REL file stem)
#
# For each section: address and size checks, number of differing 32-bit words,
# and the first differences resolved to symbol+offset with the "symbols:" file
# and to the owning unit with the "splits:" file of config.yml. For RELs, the
# header, the import table and the relocation lists are compared too; a
# relocation against the DOL (module 0) is resolved with the DOL symbols.
#
# Exit code: 0 only when every compared file is byte-identical, else 1.
#
# Python standard library only. Released under CC0 1.0.
###

import argparse
import hashlib
import os
import re
import struct
import sys
from bisect import bisect_right
from typing import Dict, List, Optional, Tuple

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.realpath(__file__)), ".."))

SYMBOL_RE = re.compile(r"^\s*(\S+)\s*=\s*(\S+):0x([0-9A-Fa-f]+);(.*)$")
SIZE_RE = re.compile(r"size:0x([0-9A-Fa-f]+)")
SPLIT_UNIT_RE = re.compile(r"^(\S.*):\s*$")
SPLIT_RANGE_RE = re.compile(r"^\s+(\S+)\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)")


def read_config_yml(path: str) -> dict:
    """Reads the few keys used here from a dtk config.yml (flat subset of YAML)."""
    config = {"modules": []}
    current = None
    with open(path, encoding="utf-8") as f:
        for raw in f:
            line = raw.split("#", 1)[0].rstrip()
            if not line.strip():
                continue
            m = re.match(r"^(\s*)(-\s+)?(\w+):\s*(.*)$", line)
            if not m:
                continue
            indent, dash, key, value = m.groups()
            value = value.strip().strip("'\"")
            if not indent and not dash:
                current = None
                if key != "modules":
                    config[key] = value
                continue
            if dash:
                current = {}
                config["modules"].append(current)
            if current is not None:
                current[key] = value
    return config


class SymbolMap:
    """Symbols of one module, from a dtk symbols.txt, plus splits.txt units."""

    def __init__(self, symbols_path: Optional[str], splits_path: Optional[str]):
        self.by_section: Dict[str, List[Tuple[int, int, str]]] = {}
        self.all: List[Tuple[int, int, str, str]] = []
        if symbols_path and os.path.exists(symbols_path):
            with open(symbols_path, encoding="utf-8") as f:
                for line in f:
                    m = SYMBOL_RE.match(line)
                    if not m:
                        continue
                    name, section, addr, rest = m.group(1), m.group(2), int(m.group(3), 16), m.group(4)
                    sm = SIZE_RE.search(rest)
                    size = int(sm.group(1), 16) if sm else 0
                    self.by_section.setdefault(section, []).append((addr, size, name))
                    self.all.append((addr, size, name, section))
        for lst in self.by_section.values():
            lst.sort()
        self.all.sort()
        self._all_addrs = [s[0] for s in self.all]
        self.splits: List[Tuple[str, int, int, str]] = []  # (section, start, end, unit)
        if splits_path and os.path.exists(splits_path):
            unit = None
            with open(splits_path, encoding="utf-8") as f:
                for line in f:
                    m = SPLIT_UNIT_RE.match(line)
                    if m and not line.startswith(("\t", " ")):
                        unit = m.group(1) if m.group(1) != "Sections" else None
                        continue
                    m = SPLIT_RANGE_RE.match(line)
                    if m and unit:
                        self.splits.append((m.group(1), int(m.group(2), 16), int(m.group(3), 16), unit))

    def symbol(self, addr: int, section: Optional[str] = None) -> str:
        if section is not None:
            lst = self.by_section.get(section, [])
            idx = bisect_right([s[0] for s in lst], addr) - 1
            if idx < 0:
                return f"{section}:0x{addr:X}"
            s_addr, _size, name = lst[idx]
            return f"{name}+0x{addr - s_addr:X}"
        idx = bisect_right(self._all_addrs, addr) - 1
        if idx < 0:
            return f"0x{addr:08X}"
        s_addr, _size, name, _sec = self.all[idx]
        return f"{name}+0x{addr - s_addr:X}"

    def section_of(self, addr: int) -> Optional[str]:
        idx = bisect_right(self._all_addrs, addr) - 1
        return self.all[idx][3] if idx >= 0 else None

    def unit(self, addr: int, section: Optional[str] = None) -> str:
        for sec, start, end, unit in self.splits:
            if start <= addr < end and (section is None or sec == section):
                return unit
        return "(autogenerated)"


def word_diffs(a: bytes, b: bytes) -> List[int]:
    """Offsets of the differing 32-bit words (compared up to the shorter length)."""
    n = min(len(a), len(b))
    out = []
    step = 4096
    for base in range(0, n, step):
        end = min(base + step, n)
        if a[base:end] == b[base:end]:
            continue
        for off in range(base, end, 4):
            if a[off : off + 4] != b[off : off + 4]:
                out.append(off)
    return out


# --- DOL ---------------------------------------------------------------------

def parse_dol(data: bytes) -> dict:
    offsets = struct.unpack_from(">18I", data, 0x00)
    addrs = struct.unpack_from(">18I", data, 0x48)
    sizes = struct.unpack_from(">18I", data, 0x90)
    bss_addr, bss_size, entry = struct.unpack_from(">III", data, 0xD8)
    sections = []
    for i in range(18):
        name = f"T{i}" if i < 7 else f"D{i - 7}"
        sections.append({"slot": name, "offset": offsets[i], "addr": addrs[i], "size": sizes[i],
                         "data": data[offsets[i] : offsets[i] + sizes[i]] if sizes[i] else b""})
    return {"sections": sections, "bss_addr": bss_addr, "bss_size": bss_size, "entry": entry}


def compare_dol(orig_path, built_path, syms: SymbolMap, max_diffs: int) -> bool:
    with open(orig_path, "rb") as f:
        orig = f.read()
    with open(built_path, "rb") as f:
        built = f.read()
    print(f"DOL {os.path.relpath(built_path, ROOT)} vs {os.path.relpath(orig_path, ROOT)}")
    if orig == built:
        print(f"  identical (SHA-1 {hashlib.sha1(orig).hexdigest()})")
        return True
    print(f"  SHA-1 {hashlib.sha1(built).hexdigest()} vs {hashlib.sha1(orig).hexdigest()}, "
          f"size 0x{len(built):X} vs 0x{len(orig):X}")
    o, b = parse_dol(orig), parse_dol(built)
    for key in ("entry", "bss_addr", "bss_size"):
        if o[key] != b[key]:
            print(f"  header {key}: 0x{b[key]:08X} vs 0x{o[key]:08X} (built vs original)")
    for os_, bs in zip(o["sections"], b["sections"]):
        if not os_["size"] and not bs["size"]:
            continue
        addr = os_["addr"] or bs["addr"]
        name = syms.section_of(addr) or "?"
        label = f"{os_['slot']} {name} 0x{addr:08X}"
        notes = []
        if os_["addr"] != bs["addr"]:
            notes.append(f"address 0x{bs['addr']:08X} vs 0x{os_['addr']:08X}")
        if os_["size"] != bs["size"]:
            notes.append(f"size 0x{bs['size']:X} vs 0x{os_['size']:X}")
        diffs = word_diffs(os_["data"], bs["data"])
        if not diffs and not notes:
            print(f"  {label}: identical (0x{os_['size']:X} bytes)")
            continue
        total = (max(os_["size"], bs["size"]) + 3) // 4
        print(f"  {label}: {len(diffs)} of {total} words differ" + (f"; {', '.join(notes)}" if notes else ""))
        for off in diffs[:max_diffs]:
            a = os_["addr"] + off
            print(f"    0x{a:08X} {syms.symbol(a, name)} [{syms.unit(a, name)}]: "
                  f"built {bs['data'][off:off + 4].hex()} original {os_['data'][off:off + 4].hex()}")
        if not diffs and os_["size"] != bs["size"]:
            a = os_["addr"] + min(os_["size"], bs["size"])
            print(f"    first byte past the shorter section: 0x{a:08X} {syms.symbol(a, name)}")
    return False


# --- REL ---------------------------------------------------------------------

def parse_rel(data: bytes) -> dict:
    (mod_id, _next, _prev, num_sections, sec_off, name_off, name_size, version, bss_size,
     rel_off, imp_off, imp_size) = struct.unpack_from(">12I", data, 0)
    prolog_s, epilog_s, unres_s, bss_s = struct.unpack_from(">4B", data, 0x30)
    prolog, epilog, unresolved = struct.unpack_from(">3I", data, 0x34)
    header = {"id": mod_id, "num_sections": num_sections, "version": version, "bss_size": bss_size,
              "prolog": (prolog_s, prolog), "epilog": (epilog_s, epilog), "unresolved": (unres_s, unresolved),
              "bss_section": bss_s, "name": (name_off, name_size)}
    if version >= 2:
        header["align"], header["bss_align"] = struct.unpack_from(">II", data, 0x40)
    if version >= 3:
        (header["fix_size"],) = struct.unpack_from(">I", data, 0x48)
    sections = []
    for i in range(num_sections):
        off, size = struct.unpack_from(">II", data, sec_off + i * 8)
        exe = off & 1
        off &= ~1
        content = data[off : off + size] if off and size else b""
        sections.append({"index": i, "offset": off, "size": size, "exec": exe, "data": content})
    imports = []
    for i in range(imp_size // 8):
        imp_mod, imp_rel = struct.unpack_from(">II", data, imp_off + i * 8)
        relocs = []
        pos = imp_rel
        cur_section = 0
        cur_off = 0
        while pos + 8 <= len(data):
            off, rtype, section, addend = struct.unpack_from(">HBBI", data, pos)
            pos += 8
            if rtype == 203:  # R_DOLPHIN_END
                break
            cur_off += off
            if rtype == 202:  # R_DOLPHIN_SECTION
                cur_section = section
                cur_off = 0
                continue
            if rtype == 201:  # R_DOLPHIN_NOP
                continue
            relocs.append((cur_section, cur_off, rtype, section, addend))
        imports.append({"module": imp_mod, "relocs": relocs})
    return {"header": header, "sections": sections, "imports": imports, "rel_offset": rel_off}


def compare_rel(orig_path, built_path, syms: SymbolMap, dol_syms: SymbolMap, sec_names: List[str],
                max_diffs: int) -> bool:
    with open(orig_path, "rb") as f:
        orig = f.read()
    with open(built_path, "rb") as f:
        built = f.read()
    print(f"REL {os.path.relpath(built_path, ROOT)} vs {os.path.relpath(orig_path, ROOT)}")
    if orig == built:
        print(f"  identical (SHA-1 {hashlib.sha1(orig).hexdigest()})")
        return True
    print(f"  SHA-1 {hashlib.sha1(built).hexdigest()} vs {hashlib.sha1(orig).hexdigest()}, "
          f"size 0x{len(built):X} vs 0x{len(orig):X}")
    try:
        o, b = parse_rel(orig), parse_rel(built)
    except struct.error as e:
        print(f"  cannot parse: {e}")
        return False
    for key in o["header"]:
        if o["header"][key] != b["header"].get(key):
            print(f"  header {key}: {b['header'].get(key)} vs {o['header'][key]} (built vs original)")

    def sec_name(i):
        return sec_names[i] if i < len(sec_names) else f"section{i}"

    for os_, bs in zip(o["sections"], b["sections"]):
        if not os_["size"] and not bs["size"]:
            continue
        name = sec_name(os_["index"])
        notes = []
        if os_["size"] != bs["size"]:
            notes.append(f"size 0x{bs['size']:X} vs 0x{os_['size']:X}")
        if os_["offset"] != bs["offset"]:
            notes.append(f"file offset 0x{bs['offset']:X} vs 0x{os_['offset']:X}")
        diffs = word_diffs(os_["data"], bs["data"])
        if not diffs and not notes:
            print(f"  section {os_['index']} {name}: identical (0x{os_['size']:X} bytes)")
            continue
        total = (max(os_["size"], bs["size"]) + 3) // 4
        print(f"  section {os_['index']} {name}: {len(diffs)} of {total} words differ"
              + (f"; {', '.join(notes)}" if notes else ""))
        for off in diffs[:max_diffs]:
            print(f"    {name}:0x{off:X} {syms.symbol(off, name)} [{syms.unit(off, name)}]: "
                  f"built {bs['data'][off:off + 4].hex()} original {os_['data'][off:off + 4].hex()}")

    o_imp = {imp["module"]: imp["relocs"] for imp in o["imports"]}
    b_imp = {imp["module"]: imp["relocs"] for imp in b["imports"]}
    for mod in sorted(set(o_imp) | set(b_imp)):
        ol, bl = o_imp.get(mod), b_imp.get(mod)
        if ol is None or bl is None:
            print(f"  imports: module {mod} only in {'original' if bl is None else 'built'}")
            continue
        if ol == bl:
            continue
        ndiff = sum(1 for x, y in zip(ol, bl) if x != y) + abs(len(ol) - len(bl))
        print(f"  relocations against module {mod}: {ndiff} of {max(len(ol), len(bl))} differ")
        shown = 0
        for x, y in zip(ol, bl):
            if x == y or shown >= max_diffs:
                continue
            shown += 1
            sec, off = x[0], x[1]
            where = f"{sec_name(sec)}:0x{off:X} {syms.symbol(off, sec_name(sec))}"

            def target(r):
                if mod == 0:
                    return f"0x{r[4]:08X} {dol_syms.symbol(r[4])} [{dol_syms.unit(r[4])}]"
                return f"{sec_name(r[3])}:0x{r[4]:X}"

            print(f"    {where} type {x[2]}: built -> {target(y)}; original -> {target(x)}")
    return False


def rel_section_names(splits_path: str) -> List[str]:
    """Section names of a module, in order, from the "Sections:" block of splits.txt."""
    names = []
    if not splits_path or not os.path.exists(splits_path):
        return names
    with open(splits_path, encoding="utf-8") as f:
        in_block = False
        for line in f:
            if line.startswith("Sections:"):
                in_block = True
                continue
            if in_block:
                m = re.match(r"^\s+(\S+)\s+type:", line)
                if not m:
                    break
                names.append(m.group(1))
    return names


def main():
    parser = argparse.ArgumentParser(description="Compare the built DOL/RELs with the original files.")
    parser.add_argument("--version", default="GGTE01", help="game version (default: GGTE01)")
    parser.add_argument("--build-dir", default="build", help="base build directory (default: build)")
    parser.add_argument("--max-diffs", type=int, default=5, help="differences shown per section")
    parser.add_argument("--no-rels", action="store_true", help="only compare the DOL")
    args = parser.parse_args()

    os.chdir(ROOT)
    config_path = os.path.join("config", args.version, "config.yml")
    config = read_config_yml(config_path)
    build_dir = os.path.join(args.build_dir, args.version)
    dol_syms = SymbolMap(config.get("symbols"), config.get("splits"))

    ok = True
    built_dol = os.path.join(build_dir, f"{config.get('name', args.version)}.dol")
    for path in (config["object"], built_dol):
        if not os.path.exists(path):
            sys.exit(f"{path} not found")
    ok &= compare_dol(config["object"], built_dol, dol_syms, args.max_diffs)

    if not args.no_rels:
        for module in config["modules"]:
            orig_rel = module.get("object")
            if not orig_rel:
                continue
            name = module.get("name") or os.path.splitext(os.path.basename(orig_rel))[0]
            built_rel = os.path.join(build_dir, name, f"{name}.rel")
            if not os.path.exists(orig_rel) or not os.path.exists(built_rel):
                print(f"REL {name}: missing ({orig_rel if not os.path.exists(orig_rel) else built_rel})")
                ok = False
                continue
            syms = SymbolMap(module.get("symbols"), module.get("splits"))
            names = rel_section_names(module.get("splits"))
            # The REL section table has a null section 0 before the sections listed in splits.txt.
            ok &= compare_rel(orig_rel, built_rel, syms, dol_syms, [""] + names, args.max_diffs)

    print("RESULT: identical" if ok else "RESULT: differs")
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
