#ifndef HSD_CHANNEL
#define HSD_CHANNEL


//Class conversion - TODO
class HSD_Chan
{
    public:
    static const char* HSD_ChanClassName;
    static const char* HSD_ChanClassObject[2];
    static const char* HSD_ChanCompObject[3];
};
class HSD_CGsChannel
{
    public:
    static const char* HSD_CGsChannelClassName;
    static const char* HSD_CGsChanClassObject[2];
    static const char* HSD_CGsChannel[3];
};


extern "C" void CGSChan_Destructor();

#endif
