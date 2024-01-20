#ifndef msg
#define msg
#include<game_gx.h>
#include<xobjs.h>
struct CMsgData//0x898
{
    char pad[0x898];
    CMsgData();
    virtual ~CMsgData();
};
struct CMsgFont//0x43d1c
{
    CTexObj texObjs[5];
    CTex fontTex[400];
    Cursor cursors[1];
    CTexObj bg;
};
struct CMsg //0x44618
{
    CMsgData msgData;
    CMsgFont msgFont;
    CMsg();
    virtual ~CMsg();
};

#endif