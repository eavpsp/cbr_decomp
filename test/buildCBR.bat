C:\devkitPro\devkitPPC\bin\powerpc-eabi-gcc.exe %1 -S -o %~n1.s -O1 -std=c99 -w -Iinc -I C:\devkitPro\libogc\include
C:\devkitPro\devkitPPC\bin\powerpc-eabi-gcc.exe %1 -c -o %~n1.o -O1 -std=c99 -w -Iinc -I C:\devkitPro\libogc\include
if ERRORLEVEL 1 pause
if ERRORLEVEL 1 exit
C:\devkitPro\devkitPPC\bin\powerpc-eabi-ld.exe -Os -T dollinker -T cbrFuncs -o obj_%~n1.o %~n1.o -Map %~n1.map
if ERRORLEVEL 1 pause
if ERRORLEVEL 1 exit
C:\devkitPro\devkitPPC\bin\powerpc-eabi-objdump.exe obj_%~n1.o --full-content
if ERRORLEVEL 1 pause
if ERRORLEVEL 1 exit
C:\devkitPro\devkitPPC\bin\powerpc-eabi-objcopy.exe obj_%~n1.o %~n1.bin -O binary -R .eh_frame -R .comment -R .sdata -R .gnu.attributes -g -S
bin2gecko.exe %~n1.bin -m %~n1.map -c OnLoad:0x8000EE84
pause