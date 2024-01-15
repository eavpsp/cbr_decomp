#include <sysdolph/HSD_Channel.h>

const char* hsdChanClassName = "_HSD_Chan"; // 0x801fdd84 --> 0x801ffda3 MATCH
const char* hsdChanClassObject[2] = {reinterpret_cast<const char*>(&hsdChanClassName)};//8065a000
const char* hsdChanCompObject[3] = {reinterpret_cast<const char*>(&hsdChanClassObject)};//80210110


/*	.rodata     start:0x801FDD78 end:0x801FDD84
	.rodata     start:0x801FDD84 end:0x801FDD90
	.data       start:0x80210110 end:0x8021011C
	.sdata      start:0x8065A000 end:0x8065A008
	.sdata      start:0x8065A008 end:0x8065A010

*/