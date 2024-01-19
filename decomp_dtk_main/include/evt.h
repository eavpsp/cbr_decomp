#ifndef evt
#define evt
#include <Dolphin/OS/OSStopwatch.h>
struct CStatus //0x8
{
    int flag;
    int currentStatus;
    CStatus() : flag(0), currentStatus(0){};
    virtual ~CStatus(){};
};
struct CStopWatch : OSStopwatch //0x38
{
    CStopWatch(){};
    virtual ~CStopWatch(){};
};
#endif