Chibi-Robo: PIA disassembly/decompilation to C++/C
[![Discord Badge]][discord] ![alt text](https://img.shields.io/badge/Code-0.51%25-blue) ![alt text](https://img.shields.io/badge/Data-14.84%25-blue)
=============

<!--
Replace with your repository's URL.
-->
[Build Status]: https://https://github.com/eavpsp/cbr_decomp/actions/workflows/build.yml/badge.svg
[actions]: https://github.com/eavpsp/cbr_decomp/actions/workflows/build.yml
<!---
Code progress URL:
https://progress.decomp.club/data/[project]/[version]/all/?mode=shield&measure=code
URL encoded then appended to: https://img.shields.io/endpoint?label=Code&url=
-->
[Progress]: https://img.shields.io/endpoint?label=Code&url=https%3A%2F%2Fprogress.decomp.club%2Fdata%2Ftww%2FGZLE01%2Fall%2F%3Fmode%3Dshield%26measure%3Dcode
<!---
DOL progress URL:
https://progress.decomp.club/data/[project]/[version]/dol/?mode=shield&measure=code
URL encoded then appended to: https://img.shields.io/endpoint?label=DOL&url=
-->
[DOL Progress]: https://img.shields.io/endpoint?label=DOL&url=https%3A%2F%2Fprogress.decomp.club%2Fdata%2Ftww%2FGZLE01%2Fdol%2F%3Fmode%3Dshield%26measure%3Dcode
<!--
REL progress URL:
https://progress.decomp.club/data/[project]/[version]/modules/?mode=shield&measure=code
URL encoded then appended to: https://img.shields.io/endpoint?label=RELs&url=
-->
[RELs Progress]: https://img.shields.io/endpoint?label=RELs&url=https%3A%2F%2Fprogress.decomp.club%2Fdata%2Ftww%2FGZLE01%2Fmodules%2F%3Fmode%3Dshield%26measure%3Dcode
<!--
Replace with your Discord server's ID and invite URL.
-->
[Discord Badge]: https://img.shields.io/discord/871177712486736013?color=%237289DA&logo=discord&logoColor=%23FFFFFF
[discord]: https://discord.gg/kxaJjfC2UR

A work-in-progress decompilation of Chibi Robo:PIA.

This repository does **not** contain any game assets or assembly whatsoever. An existing copy of the game is required.

Supported versions:

- `GGTE01`: Rev 0 (USA)

---
Goal
---
 The goal of this project is to get a PC, Switch, PS4, and PS Vita port of Chibi-Robo PIA.
 As you all know, Nintendo has probably buried this game, but developers like myself will make sure that Chibi is rebooted. Thanks again for stopping by.

This is currently a solo project. I work a lot and barely have time to code or be with my cats. Please feel free to support this project:
https://www.buymeacoffee.com/itsemistro

It builds an Matching dol file.




Dependencies
============

Windows:
--------

On Windows, it's **highly recommended** to use native tooling. WSL or msys2 are **not** required.  
When running under WSL, [objdiff](#diffing) is unable to get filesystem notifications for automatic rebuilds.

- Install [Python](https://www.python.org/downloads/) and add it to `%PATH%`.
  - Also available from the [Windows Store](https://apps.microsoft.com/store/detail/python-311/9NRWMJP3717K).
- Download [ninja](https://github.com/ninja-build/ninja/releases) and add it to `%PATH%`.
  - Quick install via pip: `pip install ninja`

macOS:
------
- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages):
  ```
  brew install ninja
  ```
- Install [wine-crossover](https://github.com/Gcenx/homebrew-wine):
  ```
  brew install --cask --no-quarantine gcenx/wine/wine-crossover
  ```

After OS upgrades, if macOS complains about `Wine Crossover.app` being unverified, you can unquarantine it using:
```sh
sudo xattr -rd com.apple.quarantine '/Applications/Wine Crossover.app'
```

Linux:
------
- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages).
- For non-x86(_64) platforms: Install wine from your package manager.
  - For x86(_64), [WiBo](https://github.com/decompals/WiBo), a minimal 32-bit Windows binary wrapper, will be automatically downloaded and used.

Building
========

- Clone the repository:
  ```
  git clone https://github.com/eavpsp/cbr_decomp.git
  ```
- Using [Dolphin Emulator](https://dolphin-emu.org/), extract your game to `orig/GAMEID`.
![](assets/dolphin-extract.png)
  - To save space, the only necessary files are the following. Any others can be deleted.
    - `sys/main.dol`
    - `files/rels/*.rel` *Rels must be extracted from QP.bin using [U8 Extractor](https://github.com/eavpsp/U8-ARC-Extractor-C-) and put into the orig/GGTE01/RELS/rel directory*
    - Make sure to copy the built __exception.o object from src to the equivalent build directory.
- Configure:
  ```
  python configure.py
  ```
  To use a version other than `GAMEID` (USA), specify it with `--version`.
- Build:
  ```
  ninja
  ```

Visual Studio Code
==================

If desired, use the recommended Visual Studio Code settings by renaming the `.vscode.example` directory to `.vscode`.

Diffing
=======

Once the initial build succeeds, an `objdiff.json` should exist in the project root. 

Download the latest release from [encounter/objdiff](https://github.com/encounter/objdiff). Under project settings, set `Project directory`. The configuration should be loaded automatically. 

Select an object from the left sidebar to begin diffing. Changes to the project will rebuild automatically: changes to source files, headers, `configure.py`, `splits.txt` or `symbols.txt`.

![](assets/objdiff.png)

---
Test Folder:
---

Contains tools to inject code into Chibi-Robo via Gecko Codes for debugging and testing

Includes header files and functions that can be changed! 
happy modding :)

Usage:
buildCBR.bat nameOfScript.c
After compiling and linking, the gecko code will be added to your clipboard. 
Paste the code into dolphin!


