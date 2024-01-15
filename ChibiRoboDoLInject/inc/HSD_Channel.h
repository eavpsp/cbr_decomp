#ifndef HSD_CHANNEL
#define HSD_CHANNEL

//test

struct data
{
   static const char* ptr[3];
};

// 0x8065A000

class HSD_Channel
{
    public:
    static const char* classNamePtr[2];
   
};


// 0x80210110

class HSD_ChanBuffer {
    static const int hsdChanBase; // 0x8065A000

};

// 0x8065a008
class CGsChannel_Base {
public:
    static const char* className;
    static HSD_ChanBuffer* chanBuffer; // 0x80210110

};


// 0x8021011c
/*#pragma align 4
class CGsChannel {
public:
    static CGsChannel_Base* cgsBase; // 0x8021011c
    //~CGsChannel(); // 0x80210124
};*/

//extern const char* cgsClass; // = "CGsChannel"; // 0x801fdd78
//extern const char* hsdChanClassName; // = "_HSD_Chan"; 0x801fdd84
extern HSD_Channel hsdChannelInstance; // 8065a000
//extern HSD_ChanBuffer hsdChanBufferInstance; // 80210110
//extern CGsChannel_Base cgsBaseInstance; // 0x80210110
// extern const CGsChannel cgsChanInstance; // 8021011c <- define in CGeom

#endif
