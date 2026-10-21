#!/usr/bin/env python3

###
# Proposes splits.txt units (library code: Dolphin SDK, MSL, Runtime, TRK...)
# by matching function names against one or more reference dtk projects.
#
# Usage:
#   python3 tools/suggest_splits.py --ref ../other-decomp/config/GXXE01
#   python3 tools/suggest_splits.py --ref A/config/X --ref B/config/Y
#   python3 tools/suggest_splits.py --ref DIR --min-confidence high --out proposed.txt
#   python3 tools/suggest_splits.py --ref DIR --names       # name suggestions too
#
# A reference is a dtk config folder holding symbols.txt and splits.txt (only
# the DOL ones; REL modules are not used). Our side is config/<version>/
# symbols.txt and splits.txt (default version GGTE01). Only names, addresses
# and sizes are read; nothing is copied from the reference except unit paths
# and function names printed as suggestions.
#
# Method, for each reference unit that has a .text split:
#   1. The reference functions of that .text range, in address order.
#   2. Positional match: every reference function whose name exists exactly
#      once in our .text votes for an offset (our index - its index in the
#      unit); the most voted offset gives a run of our functions as long as
#      the reference unit. Each slot of the run is then classed:
#        name    same name on both sides
#        size    one side (or both) auto-named (fn_*), sizes equal
#        sizediff  one side auto-named, sizes differ
#        conflict  two different real names, or the run leaves .text
#   3. Subsequence match, tried when the positional one has a conflict:
#      the reference names found once in our .text must appear in the same
#      order, and the span between the first and the last of them must hold
#      only those names and auto-named functions (handles functions dead-
#      stripped from one of the two games, or added in another SDK version).
# Confidence:
#   exact    positional, every slot "name"
#   high     positional, no conflict, every other slot "size", >= --min-names
#            "name" slots
#   partial  positional with "sizediff" slots, or subsequence (the unit edges
#            are then uncertain: auto-named functions just before or after the
#            span may belong to the unit)
# Range: start of the first function of the run, end of the last one; when
# the next function starts less than 0x20 bytes later, the gap (alignment
# padding) is included, as dtk projects usually do.
#
# Skipped: units excluded by --exclude (default: game code paths), units
# whose file name (case-insensitive, without extension) or .text range is
# already in our splits.txt, and proposals overlapping a better one.
#
# Only .text is proposed. The other sections (.data, .rodata, .bss, .sdata,
# extab...) are not derived: our data symbols are mostly auto-named, so their
# unit boundaries cannot be found reliably by name; dtk then keeps that data
# in its auto-generated units.
#
# Edges: a run is "closed" when the function just before it and the one just
# after it have real names or belong to another unit (of splits.txt or
# proposed). An auto-named neighbour that belongs to no unit may be part of
# this unit (dead-stripped from the reference game); it is reported as an
# "open edge" and --closed-only hides such proposals.
#
# Using a proposal (tested on GGTE01 with three exact, closed units): append
# the block to splits.txt and rebuild; the DOL stays byte-identical. No
# configure.py entry is required (project.py then prints "Missing
# configuration for <unit>"); an Object(NonMatching, "<unit>") entry silences
# it. Before writing sources for such a unit, its data sections must be split
# too, or the compiled object will not match the extracted one. Unit paths are
# the reference's; adapt them to this project's folder names if needed.
#
# With --names, auto-named functions of ours that sit in a matched slot whose
# reference name is real are printed as [hypothesis] suggestions, never
# applied. Check them (size, callers, behaviour) before importing them with
# tools/import_names.py.
#
# Python standard library only. Released under CC0 1.0.
###

import argparse
import os
import re
import sys
from bisect import bisect_left
from collections import Counter, defaultdict
from typing import Dict, List, Optional, Tuple

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.realpath(__file__)), ".."))

SYMBOL_RE = re.compile(r"^\s*(\S+)\s*=\s*(\S+):0x([0-9A-Fa-f]+);(.*)$")
SIZE_RE = re.compile(r"size:0x([0-9A-Fa-f]+)")
SPLIT_UNIT_RE = re.compile(r"^(\S.*):\s*$")
SPLIT_RANGE_RE = re.compile(r"^\s+(\S+)\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)")
AUTO_RE = re.compile(r"^(?:fn|zz)_[0-9A-Fa-f]{8}(?:_.*)?$")
DEFAULT_EXCLUDE = r"^(?:game|src/game|melee|pkmn|pokemon)/"
RANK = {"exact": 3, "high": 2, "partial": 1}


def is_auto(name: str) -> bool:
    return bool(AUTO_RE.match(name))


def read_text_functions(path: str, section: str = ".text") -> List[Tuple[int, int, str]]:
    out = []
    with open(path, encoding="utf-8") as f:
        for line in f:
            m = SYMBOL_RE.match(line)
            if not m or m.group(2) != section or "type:function" not in m.group(4):
                continue
            sm = SIZE_RE.search(m.group(4))
            out.append((int(m.group(3), 16), int(sm.group(1), 16) if sm else 0, m.group(1)))
    out.sort()
    return out


def read_splits(path: str) -> List[Tuple[str, str, int, int]]:
    """[(unit, section, start, end)]."""
    out, unit = [], None
    with open(path, encoding="utf-8") as f:
        for line in f:
            m = SPLIT_UNIT_RE.match(line)
            if m and not line.startswith(("\t", " ")):
                unit = m.group(1) if m.group(1) != "Sections" else None
                continue
            m = SPLIT_RANGE_RE.match(line)
            if m and unit:
                out.append((unit, m.group(1), int(m.group(2), 16), int(m.group(3), 16)))
    return out


def stem(unit: str) -> str:
    return os.path.splitext(os.path.basename(unit))[0].lower()


class Proposal:
    def __init__(self, ref_id, unit, conf, mode, first, last, slots, n_ref, n_name, notes):
        self.ref_id, self.unit, self.conf, self.mode = ref_id, unit, conf, mode
        self.first, self.last, self.slots = first, last, slots
        self.n_ref, self.n_name, self.notes = n_ref, n_name, notes
        self.start = self.end = 0


def match_unit(ref_funcs, ours, our_index, min_names):
    """Returns (conf, mode, first, last, slots, n_name, notes) or None."""
    votes = Counter()
    for j, (_a, _s, name) in enumerate(ref_funcs):
        if is_auto(name):
            continue
        hits = our_index.get(name, [])
        if len(hits) == 1:
            votes[hits[0] - j] += 1
    if not votes:
        return None
    offset, _v = votes.most_common(1)[0]
    slots, conflict = [], False
    for j, (_ra, rsize, rname) in enumerate(ref_funcs):
        i = offset + j
        if i < 0 or i >= len(ours):
            conflict = True
            break
        _oa, osize, oname = ours[i]
        if oname == rname:
            slots.append(("name", j, i))
        elif is_auto(oname) or is_auto(rname):
            slots.append(("size" if osize == rsize else "sizediff", j, i))
        else:
            slots.append(("conflict", j, i))
            conflict = True
    if not conflict:
        kinds = Counter(k for k, _j, _i in slots)
        n_name = kinds["name"]
        if n_name == len(slots):
            conf = "exact"
        elif kinds["sizediff"] == 0 and n_name >= min_names:
            conf = "high"
        elif n_name >= min_names:
            conf = "partial"
        else:
            return None
        notes = [] if conf != "partial" else [f"{kinds['sizediff']} slot(s) with a different size"]
        return conf, "positional", offset, offset + len(ref_funcs) - 1, slots, n_name, notes

    # Subsequence match.
    seq = []
    for j, (_a, _s, name) in enumerate(ref_funcs):
        if is_auto(name):
            continue
        hits = our_index.get(name, [])
        if len(hits) == 1:
            seq.append((j, hits[0]))
    if len(seq) < max(min_names, 2):
        return None
    if any(b[1] <= a[1] for a, b in zip(seq, seq[1:])):
        return None
    first, last = seq[0][1], seq[-1][1]
    ref_names = {n for _a, _s, n in ref_funcs}
    for i in range(first, last + 1):
        oname = ours[i][2]
        if not is_auto(oname) and oname not in ref_names:
            return None
    slots = [("name", j, i) for j, i in seq]
    missing = len([1 for _a, _s, n in ref_funcs if not is_auto(n)]) - len(seq)
    extra = (last - first + 1) - len(seq)
    notes = ["subsequence: unit edges uncertain"]
    if missing:
        notes.append(f"{missing} reference name(s) not found here")
    if extra:
        notes.append(f"{extra} auto-named function(s) of ours inside the span")
    return "partial", "subsequence", first, last, slots, len(seq), notes


def main() -> int:
    ap = argparse.ArgumentParser(description="Propose splits.txt .text units from reference dtk projects.")
    ap.add_argument("--ref", action="append", required=True,
                    help="reference dtk config folder (holding symbols.txt and splits.txt); repeatable")
    ap.add_argument("--version", default="GGTE01")
    ap.add_argument("--symbols", help="our symbols.txt (default config/<version>/symbols.txt)")
    ap.add_argument("--splits", help="our splits.txt (default config/<version>/splits.txt)")
    ap.add_argument("--exclude", default=DEFAULT_EXCLUDE,
                    help=f"regex of reference unit paths to ignore (default {DEFAULT_EXCLUDE!r}; '' for none)")
    ap.add_argument("--min-names", type=int, default=2,
                    help="name matches needed for high/partial (default 2)")
    ap.add_argument("--min-confidence", choices=("exact", "high", "partial"), default="partial")
    ap.add_argument("--closed-only", action="store_true",
                    help="show only proposals whose both edges are closed")
    ap.add_argument("--out", help="write the proposed blocks (splits.txt syntax) to this file")
    ap.add_argument("--names", action="store_true", help="print [hypothesis] name suggestions")
    args = ap.parse_args()

    sym_path = args.symbols or os.path.join(ROOT, "config", args.version, "symbols.txt")
    spl_path = args.splits or os.path.join(ROOT, "config", args.version, "splits.txt")
    ours = read_text_functions(sym_path)
    our_addrs = [a for a, _s, _n in ours]
    our_index: Dict[str, List[int]] = defaultdict(list)
    for i, (_a, _s, n) in enumerate(ours):
        if not is_auto(n):
            our_index[n].append(i)
    existing = read_splits(spl_path)
    existing_stems = {stem(u): u for u, _sec, _s, _e in existing}
    existing_text = [(s, e, u) for u, sec, s, e in existing if sec == ".text"]
    exclude = re.compile(args.exclude) if args.exclude else None

    proposals: List[Proposal] = []
    skipped = defaultdict(list)
    for ref in args.ref:
        ref_id = os.path.basename(os.path.normpath(ref))
        ref_syms = read_text_functions(os.path.join(ref, "symbols.txt"))
        ref_addrs = [a for a, _s, _n in ref_syms]
        for unit, sec, start, end in read_splits(os.path.join(ref, "splits.txt")):
            if sec != ".text":
                continue
            if exclude and exclude.search(unit):
                skipped["excluded path"].append(f"{ref_id} {unit}")
                continue
            lo, hi = bisect_left(ref_addrs, start), bisect_left(ref_addrs, end)
            ref_funcs = ref_syms[lo:hi]
            if not ref_funcs or all(is_auto(n) for _a, _s, n in ref_funcs):
                continue
            res = match_unit(ref_funcs, ours, our_index, args.min_names)
            if res is None:
                skipped["no match"].append(f"{ref_id} {unit}")
                continue
            conf, mode, first, last, slots, n_name, notes = res
            p = Proposal(ref_id, unit, conf, mode, first, last, slots, len(ref_funcs), n_name, notes)
            p.ref_funcs = ref_funcs
            p.start = ours[first][0]
            p.end = ours[last][0] + ours[last][1]
            if last + 1 < len(ours) and 0 < ours[last + 1][0] - p.end < 0x20:
                p.notes.append(f"0x{ours[last + 1][0] - p.end:X} bytes of padding included")
                p.end = ours[last + 1][0]
            if stem(unit) in existing_stems:
                skipped["already in splits.txt (same file name)"].append(
                    f"{ref_id} {unit} (ours: {existing_stems[stem(unit)]})")
                continue
            over = [u for s, e, u in existing_text if s < p.end and p.start < e]
            if over:
                skipped["overlaps a unit of splits.txt"].append(f"{ref_id} {unit} (with {over[0]})")
                continue
            proposals.append(p)

    # Overlaps between proposals: keep the best (confidence, then name matches).
    proposals.sort(key=lambda p: (-RANK[p.conf], -p.n_name, p.start))
    kept: List[Proposal] = []
    for p in proposals:
        clash = next((k for k in kept if k.start < p.end and p.start < k.end), None)
        if clash:
            skipped["overlaps a better proposal"].append(f"{p.ref_id} {p.unit} (with {clash.unit})")
            continue
        kept.append(p)
    kept.sort(key=lambda p: p.start)

    # Edges: the function just before (after) the run must have a real name or
    # belong to another unit (existing or proposed), else an auto-named
    # neighbour may belong to this unit (it may have been dead-stripped from
    # the reference game).
    covered = [(s, e) for s, e, _u in existing_text] + [(k.start, k.end) for k in kept]

    def is_covered(i: int) -> bool:
        a = ours[i][0]
        return any(s <= a < e for s, e in covered)

    for p in kept:
        open_edges = []
        if p.first > 0 and is_auto(ours[p.first - 1][2]) and not is_covered(p.first - 1):
            open_edges.append(f"auto-named function before ({ours[p.first - 1][2]})")
        if p.last + 1 < len(ours) and is_auto(ours[p.last + 1][2]) and not is_covered(p.last + 1):
            open_edges.append(f"auto-named function after ({ours[p.last + 1][2]})")
        p.closed = not open_edges
        p.notes.extend(f"open edge: {t}" for t in open_edges)
    shown = [p for p in kept if RANK[p.conf] >= RANK[args.min_confidence]
             and (p.closed or not args.closed_only)]

    counts = Counter(p.conf for p in kept)
    print(f"our .text functions: {len(ours)} ({sum(1 for _a, _s, n in ours if not is_auto(n))} named)")
    print(f"proposals: {len(kept)} (exact {counts['exact']}, high {counts['high']}, "
          f"partial {counts['partial']}); shown: {len(shown)}")
    closed = sum(1 for p in kept if p.closed and p.conf in ("exact", "high"))
    print(f"exact or high with both edges closed: {closed}")
    for reason, items in sorted(skipped.items()):
        print(f"skipped, {reason}: {len(items)}")
    print()
    print(f"{'confidence':10} {'names':>7}  {'start':10} {'end':10}  ref unit")
    for p in shown:
        note = f"  [{'; '.join(p.notes)}]" if p.notes else ""
        print(f"{p.conf:10} {p.n_name:>3}/{p.n_ref:<3}  0x{p.start:08X} 0x{p.end:08X}  "
              f"{p.ref_id} {p.unit} ({p.mode}){note}")

    blocks = "".join(f"{p.unit}:\n\t.text       start:0x{p.start:08X} end:0x{p.end:08X}\n\n" for p in shown)
    if args.out:
        with open(args.out, "w", encoding="utf-8", newline="\n") as f:
            f.write(blocks)
        print(f"\nwrote {len(shown)} block(s) to {args.out}")
    else:
        print()
        print(blocks, end="")

    if args.names:
        print("Name suggestions from matched positions (not applied):")
        n_sugg = 0
        for p in shown:
            if p.mode != "positional":
                continue
            for kind, j, i in p.slots:
                ra, rsize, rname = p.ref_funcs[j]
                oa, osize, oname = ours[i]
                if is_auto(oname) and not is_auto(rname) and rname not in our_index:
                    size_note = "same size" if rsize == osize else f"size differs: 0x{osize:X} vs 0x{rsize:X}"
                    print(f"  [hypothesis] 0x{oa:08X} {oname} -> {rname} ({size_note}; {p.ref_id} {p.unit})")
                    n_sugg += 1
        print(f"  {n_sugg} suggestion(s)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
