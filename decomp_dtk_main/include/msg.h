#ifndef msg
#define msg
#include<game_gx.h>
#include<xobjs.h>
struct CMsgData
{
    char pad[2196];
    CMsgData(){};
    virtual ~CMsgData(){};
};
struct CMsgFont
{
    CTexObj texObjs[5];
    CTex fontTex[400];
    Cursor cursors[1];
    CTexObj bg;
    char unk[28976];
};
struct CMsg //280096 307392
{
    CMsgData msgData;
    CMsgFont msgFont;
    char unk[1776];
    CMsg(){};
    virtual ~CMsg(){};
};

#endif