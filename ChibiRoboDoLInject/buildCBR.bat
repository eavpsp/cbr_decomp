C:\devkitPro\devkitPPC\bin\powerpc-eabi-gcc.exe -mrvl -mcpu=801 %1 -S -o %~n1.s -O4 -std=c99 -w -Iinc -IPowerPC_EABI_Support/MSL_C/MSL_Common -Iext/inc/ -Iext/inc/stl
C:\devkitPro\devkitPPC\bin\powerpc-eabi-gcc.exe -mrvl -mcpu=801 %1 -c -o %~n1.o -O4 -std=c99 -w -Iinc -IPowerPC_EABI_Support/MSL_C/MSL_Common  -Iext/inc -Iext/inc/stl 
if ERRORLEVEL 1 pause
if ERRORLEVEL 1 exit
C:\devkitPro\devkitPPC\bin\powerpc-eabi-ld.exe -Os -T dollinker -T cbrFuncs -o obj_%~n1.o %~n1.o -Map %~n1.map 
if ERRORLEVEL 1 pause
if ERRORLEVEL 1 exit
C:\devkitPro\devkitPPC\bin\powerpc-eabi-objdump.exe obj_%~n1.o --full-content
if ERRORLEVEL 1 pause
if ERRORLEVEL 1 exit
C:\devkitPro\devkitPPC\bin\powerpc-eabi-objcopy.exe obj_%~n1.o %~n1.bin -O binary -R .eh_frame -R .comment -R .sdata -R .gnu.attributes -g -S
Bin2Gecko_2.exe %~n1.bin -m %~n1.map -r TRK_memcpy:0x80003130
pause
