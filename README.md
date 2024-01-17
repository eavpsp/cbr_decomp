# CBR_Decomp ![alt text](https://img.shields.io/badge/Code-0.42%25-blue) ![alt text](https://img.shields.io/badge/Symbols_Defined-73%25-blue) ![alt text](https://img.shields.io/badge/Data-0.00%25-blue)
Chibi-Robo: PIA disassembly/decompilation to C++/C

---
Goal
---
 The goal of this project is to get a PC, Switch, PS4, and PS Vita port of Chibi-Robo PIA.
 As you all know, Nintendo has probably buried this game, but developers like myself will make sure that Chibi is rebooted. Thanks again for stopping by.

This is currently a solo project. I work a lot and barely have time to code or be with my cats. Please feel free to support this project:
https://www.buymeacoffee.com/itsemistro

It builds an NON matching dol file.

If your goal is to compile a complete matching rom fork this from the initial upload.

---
Building
---

Required Tools
```
devkitPro
gcc
```

  Instructions
--

- Make sure to select GC in the devkitpro installer. 
Note that the compiler needs these optimization flags
```
-O4,s -inline auto -Cpp_exceptions off
```

WINDOWS ONLY STEP:

- Launch msys2(Provided by devkitPro) and run the command 
```
   pacman -S gcc
   pacman -S msys2-keyring
   pacman -S gcc git python
```

---
OPTIONAL:
---
Obtain a clean DOL of Chibi-Robo:PIA and place it in the base working directory and rename it to baserom.dol.


Download GC_WII_COMPILERS.zip from (https://cdn.discordapp.com/attachments/727918646525165659/917185027656286218/GC_WII_COMPILERS.zip) and extract it to tools/mwcc_compiler/.

Run the make command.

credits to : https://github.com/projectPiki/pikmin

---
Test Folder:
---

Contains tools used in the Super Mario Sunshine C Kit
Used to inject code into CBR for debugging and testing

Includes header files and functions that can be changed! 
happy modding :)

Usage:
buildCBR.bat nameOfScript.c
After compiling and linking, the gecko code with be added to your clipboard. 
Paste the code into dolphin!


