# Notes for the maintainer

Hi! This file goes with the pull request from `Armandpro12/cbr_decomp`. It explains what the
PR changes, why, and lists other things noticed while reading the repository. Nothing here is
meant as criticism: it is a solo project and these are just suggestions, in order of impact.
Feel free to delete this file once read.

Everything was checked on the US version (GGTE01) with a clean `build/GGTE01`, on Windows,
with the tool versions pinned in `configure.py`.

## 1. What this PR changes

### The build works again, and is byte-identical
Before this PR, `python configure.py && ninja` failed at the link:
`Specified file 'build\GGTE01\src\TRK_MINNOW_DOLPHIN\__exception.o' not found`.

- `TRK_MINNOW_DOLPHIN/__exception.o` was listed in `configure.py` as a Matching *source*. It is
  a prebuilt ELF object tracked in `src/`, so MWCC was handed an object file and produced
  nothing. The unit now links the object that dtk extracts from the DOL.
- Once linked, the DOL still did **not** match the original (different SHA-1): `.init` was
  0x40 bytes too long and everything after it was shifted. The cause was units marked
  `Matching` that do not match. 11 of them were switched to `NonMatching`:
  - same functions in the wrong order: `Runtime.PPCEABI.H/__init_cpp_exceptions.cpp`,
    `Runtime.PPCEABI.H/global_destructor_chain.c`, `Dolphin/Runtime/__mem.c` (this one alone
    caused the 0x40-byte shift);
  - different code (first differing function): `Dolphin/os/__start.c` (`__init_data`),
    `TRK_MINNOW_DOLPHIN/main_TRK.c` (`TRK_main+0x8`), `TRK_MINNOW_DOLPHIN/nubinit.c`
    (`TRKInitializeNub+0x74`), `game/game.cpp` (`ParseStageData__5CGameFiPc+0x54`),
    `game/unk_unused/unk_functions.cpp` (none of its 5 functions);
  - a function missing from the source: `TRK_MINNOW_DOLPHIN/dolphin_trk.c` (the original has a
    one-instruction `blr` stub at 0x8014F5C4);
  - a section missing from the compiled object: `game/globals.cpp` (`.sdata2`),
    `game/system/cfile.cpp` (`extab`/`extabindex`: it is built with `-Cpp_exceptions off`).

  Still Matching and really identical: `TRK_MINNOW_DOLPHIN/mem_TRK.c`, `THP/THPAudio.cpp`,
  `game/graphics/game_gx.cpp`. With these flags the DOL and all 16 RELs are byte-identical.
  Getting the 11 units back to Matching is now measurable: fix one, flip its flag, run `ninja`.
  Note that the progress report drops accordingly: from 0.12% code / 14.73% data before (which
  counted the non-matching units) to 356 bytes of code / 416 bytes of data now. The work is not
  lost: those units come back as soon as they match.
- **The SHA-1 check never ran.** There was no `config/GGTE01/build.sha1`, and the `check`
  build step had no input, so `dtk shasum -c` ran without a file and always wrote `ok`. This PR
  adds `build.sha1` (hashes only, for the DOL and the 16 RELs) and passes it as the step's
  input. A non-matching build now fails `ninja` (tested by flipping `__mem.c` back to Matching).

### New tools (`decomp_dtk_main/tools/`, standard-library Python, CC0)
| Tool | What it does |
|---|---|
| `setup_orig.py` | Fills `orig/GGTE01` straight from the disc image (or a Dolphin-extracted folder): `main.dol` plus the REL modules unpacked from `qp.bin`. Checks the game ID and the DOL SHA-1. No Dolphin or separate U8 extractor needed. |
| `check_units.py` | Compares every compiled unit with the object dtk extracted, section by section and function by function (relocation-masked). A Matching unit that differs is an error; a NonMatching unit that is identical is a hint that it can be flipped. |
| `dolcheck.py` | Compares the built DOL and RELs with `orig/`, section by section, and names the first differing symbols and units. Exit code 0 only when identical. |
| `pick_funcs.py` | Call graph from the DOL (`b`/`bl`) and the RELs (`R_PPC_REL24` relocations), then ranks functions to decompile next (small, leaf, known callees, many callers). Also `--callers` / `--callees` for one function and a `--summary` of progress. |
| `import_names.py` | Imports names from a `ADDRESS SIZE NAME` file or another `symbols.txt`. Only renames auto-named `fn_` entries, checks address and size, refuses duplicates, and by default skips names already used in `src/`/`include/` (so a Matching unit never breaks). Dry run unless `--apply`. |
| `suggest_splits.py` | Proposes `.text` splits for library units (Dolphin SDK, MSL, Runtime...) by finding the function sequence of another dtk project's units (e.g. xd-decomp, CC0) in this DOL. Proposals only, with a confidence level; `--names` also suggests names marked `[hypothesis]`, never applied. |
| `decomp_func.py` | First C draft of a function in one command: extracts it (and the data it references) from dtk's assembly, builds a context from the project headers, and runs [m2c](https://github.com/matt-kempster/m2c) with the MWCC target. Works on DOL and REL functions, switch/jump tables included, and `--list-unit` drafts a whole range. m2c is optional and not bundled (it is GPL-3.0); drafts go to `build/`. Known m2c limits: `mfmsr`/`mtmsr`, C++ headers as context (the tool falls back to C headers). |

`decompctx.py` also gets the `src/sysdolphin` include folders that `configure.py` uses (it
could not find `cobj.h` for `game.cpp` before), and `pick_funcs.py` exposes its call graph to
`decomp_func.py --calls`. The README has a short "Decompiling a function" section with the
workflow: `pick_funcs.py` → `decomp_func.py` → write the C → `ninja` + `check_units.py`.

### 589 more function names
`config/GGTE01/symbols.txt` gets 589 names for functions that were still `fn_XXXXXXXX`
(named DOL functions: 382 → 971 of 4506). They come from the analysis done for the PC port
project `Armandpro12/chibi-robo-pc` (dedicated to CC0 there), where each name was verified:
same size, same call order, cross-checked with several CC0 dtk configurations of other games
using the same SDK. Only names change: the build stays byte-identical.

### Split suggestions not applied
With xd-decomp as reference, `suggest_splits.py` finds 74 SDK units, 40 of them with every
name matching and both edges clear. They were tested (three added to `splits.txt`: build still
byte-identical) but not committed, because two choices are yours: the folder name (`Dolphin/`
here, `dolphin/` in XD), and splitting their data sections too, which a future source file
needs in order to match.

## 2. Other things noticed (not changed by this PR)

1. **Assembly in the repository.** The README says the repository contains no assembly, but
   `src/TRK_MINNOW_DOLPHIN/__exception.s` (133 KB) is dtk's disassembly of `.init`
   (0x80003154-0x800050B4) and `src/TRK_MINNOW_DOLPHIN/__exception.o` is a prebuilt object.
   dtk regenerates both in `build/`, so they can simply be deleted. Similar files exist under
   `ChibiRobo_Dol_Inject/ext/`.
2. **Binaries and IDE caches are tracked:** four `.exe` files, `.o` files and `inject.bin` in
   `ChibiRobo_Dol_Inject/`, plus Visual Studio caches (`ChibiRobo_Dol_Inject/.vs/`). Suggest
   removing them from Git and adding `.vs/`, `*.o`, `*.exe` to `.gitignore` there; third-party
   executables are better linked than redistributed (license unknown).
3. **Leftover files:** `src/TRK_MINNOW_DOLPHIN/mem_TRK copy.c`, `config/GGTE01/splits_bk.txt`.
4. **README badges** point to The Wind Waker's progress (`tww/GZLE01` in the progress URLs), and
   the "Code 0.48%" / "Data 14.73%" badges are hard-coded (see section 1 for the real figures).
   The README also links a `build.yml` workflow that does not exist (`.github/` is absent).
5. **`tools/project.py`, `move` rule:** `f"cmd /c tools\moveDol.bat"` triggers Python's
   "invalid escape sequence '\m'" `SyntaxWarning` on every configure (use a raw string or `/`).
   It is also Windows-only, and `moveDol.bat` copies to a hard-coded personal drive path. It is
   not a default target, so it is harmless, but it may surprise contributors.
6. **`__exception` unit name:** `splits.txt` calls it `__exception.o` while `configure.py` now
   says `__exception.s`, so configure prints "Missing configuration for
   TRK_MINNOW_DOLPHIN/__exception.o". Harmless; it disappears once the unit gets a real source.
7. **`Dolphin/os/__ppc_eabi_init.cpp`** is listed as Matching in `configure.py` but has no
   split, so it is never used.
8. **`config/GGTE01/ldscript.lcf`** is tracked but unused (the real one is generated in
   `build/`) and still lists old `fn_` names.
9. **Old template.** The project is based on an early dtk-template (dtk v0.6.2). Newer
   templates integrate objdiff and progress reports out of the box; upgrading is optional but
   would bring those for free.
