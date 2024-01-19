#include <HSD_Channel.h>
const char* HSD_CGsClassName = "CGsChannel"; // 801fdd78
const char* HSD_ChanClassName = "_HSD_Chan"; // 0x801fdd84
const char* HSD_ChanClassObject[2] = 
{
	reinterpret_cast<const char*>(&HSD_ChanClassName)
};//8065a000
const char* HSD_ChanCompObject[3] = 
{
	reinterpret_cast<const char*>(&HSD_ChanClassObject)
};//80210110
const char* HSD_CGsChanClassObject[2] = 
{
	reinterpret_cast<const char*>(&HSD_CGsClassName), 
	reinterpret_cast<const char*>(&HSD_ChanCompObject)
};//8065a008
const char* HSD_CGsChannel[3] = 
{
	reinterpret_cast<const char*>(&HSD_CGsClassName),
	reinterpret_cast<const char*>(0x00000000), 
	reinterpret_cast<const char*>(0x8000838C)
};//8021011c  TODO: add destructor
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