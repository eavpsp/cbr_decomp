#ifndef evt
#define evt
#include <Dolphin/OS/OSStopwatch.h>
struct CStatus 
{
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
struct CStopWatch : OSStopwatch 
{
    CStopWatch(){};
    virtual ~CStopWatch(){};
};
struct CStack//0xc
{
    char pad[12];
    CStack(){};
    virtual ~CStack(){};
};
struct CEventData
{
    int eventData;
    CEventData(){};
    virtual ~CEventData(){};
};
struct CEvt
{
    int evtFlag;
    CEventData eventData;
    char pad[20];
    CStack stackOne;
    CStack stackTwo;
    CStack stackThree;
    char pad1[12];
    CEvt(){};
    virtual ~CEvt(){};

};

#endif