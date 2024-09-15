#ifndef evt
#define evt
#include <Dolphin/OS/OSStopwatch.h>
struct CStatus //0x8
{
    char flag[4];
    int currentStatus;
    CStatus() : currentStatus(0){};
    virtual ~CStatus(){};
};
struct CoordInfo
{
    int coord;
    CoordInfo(){};
    virtual ~CoordInfo(){};
};
struct CStopWatch : OSStopwatch //0x38
{
    CStopWatch(){};
    virtual ~CStopWatch(){};
};
struct CStack//0xc
{
    char pad[0xc];
    CStack(){};
    virtual ~CStack(){};
};
struct CEventData //0x8
{
    char eventData[0x8];
    CEventData(){};
    virtual ~CEventData(){};
};
struct CEvt//0x64 match
{
    int evtFlag;
    CEventData eventData;
    char pad[20];
    CStack stackOne;
    CStack stackTwo;
    CStack stackThree;
    char pad1[16];
    CEvt(){};
    virtual ~CEvt(){};

};

#endif