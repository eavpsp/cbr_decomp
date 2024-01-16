#include <sysdolph/CGEOM.h>

const char* HSD_CGsClassName = "CGs"; // 8065bf28 GOOD

const char* HSD_CGsClass[2] = 
{
	reinterpret_cast<const char*>(&HSD_CGsClassName),
	reinterpret_cast<const char*>(0x00000000)
};//8065A090 GOOD



/*
const char* HSD_CGsClassObject[3] = 
{
	reinterpret_cast<const char*>(&HSD_CGsClass),
	reinterpret_cast<const char*>(0x00000000), 
	reinterpret_cast<const char*>(&CGS_Destructor) //Desctructor
};//8021026c needs new pos

sysdolph/CGEOM.cpp:
	.data       start:0x8021026C end:0x80210278
	.sdata      start:0x8065A090 end:0x8065A098
	.sdata2     start:0x8065BF28 end:0x8065BF2C

*/