#include <stdlib.h>
#include <stdint.h>
#include <stdarg.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "debug.h"
#include "mem.h";
//8065a27c
typedef struct 
{
		char* objType;
		char buffer[4];
} CJObjBase;
//8021199c
typedef struct
{
	CJObjBase* super;
	char buffer[8];
	
}CJObj;
//Spot in mem
static CJObj* cjObjMade;
static CJObjBase* cjObjBase = (CJObjBase*)0x8065a27c;
static CJObj* cjObj = (CJObj*)0x8021199c;
extern void OnLoad(int val);
//extern int XObj__ct(int param_1);