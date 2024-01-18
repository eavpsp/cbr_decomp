#ifndef evt
#define evt

struct CStatus //0x8
{
    int flag;
    int currentStatus;
    CStatus() : flag(0), currentStatus(0){};
    virtual ~CStatus();
};

#endif