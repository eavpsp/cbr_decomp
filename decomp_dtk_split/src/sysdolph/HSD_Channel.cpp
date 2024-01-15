#include <sysdolph/HSD_Channel.h>
/*Matches*/
const char* HSD_CGsClassName = "CGsChannel"; // 801FDD78
const char* HSD_ChanClassName = "_HSD_Chan"; // 801FDD84
const char* HSD_ChanClassObject[2] = 
{
	reinterpret_cast<const char*>(&HSD_ChanClassName),
	reinterpret_cast<const char*>(0x00000000), 
};//8065A000
const char* HSD_ChanCompObject[3] = 
{
	reinterpret_cast<const char*>(&HSD_ChanClassObject),
	reinterpret_cast<const char*>(0x00000000), 
	reinterpret_cast<const char*>(0x00000000), 
};//80210110
const char* HSD_CGsChanClassObject[2] = 
{
	reinterpret_cast<const char*>(&HSD_CGsClassName), 
	reinterpret_cast<const char*>(&HSD_ChanCompObject)
};//8065A008

const char* HSD_CGsChannel[3] = 
{
	reinterpret_cast<const char*>(&HSD_CGsChanClassObject),
	reinterpret_cast<const char*>(0x00000000), 
	reinterpret_cast<const char*>(&CGS_Destructor)
};//8021011C  TODO: add destructor 

//8000838c - CGS_Destructor


/*	
	sysdolph/HSD_Channel.cpp:
	.rodata     start:0x801FDD78 end:0x801FDD84
	.rodata     start:0x801FDD84 end:0x801FDD90
	.data       start:0x80210110 end:0x8021011C
	.data       start:0x8021011C end:0x80210128
	.sdata      start:0x8065A000 end:0x8065A008
	.sdata      start:0x8065A008 end:0x8065A010

*/