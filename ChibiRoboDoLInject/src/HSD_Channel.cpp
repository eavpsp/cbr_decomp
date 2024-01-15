#include <HSD_Channel.h>
const char* hsdChanClassName = "_HSD_Chan"; // 0x801fdd84 --> 0x801ffda3 MATCH
const char* hsdChanClassObject[2] = {reinterpret_cast<const char*>(&hsdChanClassName)};//8065a000
const char* hsdChanCompObject[3] = {reinterpret_cast<const char*>(&hsdChanClassObject)};//80210110
//const char* cgsClass = "CGsChannel"; // 0x801fdd78 -> 98
//const char* hsdChanClassName = "_HSD_Chan"; // 0x801fdd84 --> 0x801ffda3
//const char* HSD_Channel::classNamePtr[2] = {reinterpret_cast<const char*>(&hsdChanClassName)};
//const char* data::ptr[3] ={ reinterpret_cast<const char*>(&HSD_Channel::classNamePtr)};
//const int HSD_Channel::classNamePtr = (int)hsdChanClassName;// 8065A000 <-- affects memory placements
//HSD_ChanBuffer hsdChanBufferInstance; // 80210110
//HSD_ChanBuffer* CGsChannel_Base::chanBuffer = &hsdChanBufferInstance; 
//const char*z CGsChannel_Base::className = cgsClass;
//CGsChannel_Base cgsBaseInstance; // 0x8065a008
//CGsChannel_Base* CGsChannel::cgsBase = &cgsBaseInstance;


/*	.rodata     start:0x801FDD78 end:0x801FDD84
	.rodata     start:0x801FDD84 end:0x801FDD90
	.data       start:0x80210110 end:0x8021011C
	.sdata      start:0x8065A000 end:0x8065A008
	.sdata      start:0x8065A008 end:0x8065A010

*/