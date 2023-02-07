# CBR_Decomp ![alt text](https://img.shields.io/badge/Code-0%25-blue) ![alt text](https://img.shields.io/badge/ASM_Data-0%25-blue) ![alt text](https://img.shields.io/badge/Build-Passing-brightgreen)
Chibi-Robo: PIA disassembly/decompilation to C++/C

---
Goal
---
 The goal of this project is to get a PC, Switch, PS4, and PS Vita port of Chibi-Robo PIA.
 As you all know, Nintendo has probably buried this game, but developers like myself will make sure that Chibi is rebooted. Thanks again for stopping by.

This is currently a solo project. I work a lot and barely have time to code or be with my cats. Please feel free to support this project:
https://www.buymeacoffee.com/itsemistro

It builds the following DOL: cbr.usa.dol: sha1: 103c68e107b691d905306ecb6bbc43ea44893157

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
