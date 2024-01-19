//Used to build a .o Object file for reversing in Ghidra
//
/*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
#include <game.h>
#include <cfile.h>

const CPadEx* CurrentPad;
//CLight* light = new CLight();
CBase* vec = new CBase();
CTpl* ctps = new CTpl();
