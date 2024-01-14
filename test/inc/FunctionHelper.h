#ifndef HELPER_H
#define HELPER_H

#include "debug.h"
//-c OnLoad:0x8000EE84 <-- add to buildCBR.bat
//ex: Bin2Gecko_2.exe %~n1.bin -m %~n1.map -c OnLoad:0x8000EE84
extern void OnLoad(int val);

#endif