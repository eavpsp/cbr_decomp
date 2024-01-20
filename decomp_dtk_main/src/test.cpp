//Used to build a .o Object file for reversing in Ghidra
//
/*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
#include <game.h>
#include <cfile.h>


CJObj* obj = new CJObj();
CTpl* objTPL = new CTpl();