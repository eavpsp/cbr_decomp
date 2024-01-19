//Game.cpp
/*
    Logo
    XOBJS
    CStack
    CSound
    XSound
    CCard
*/
#ifndef game
#define game
#include<cam.h>
#include<game_gx.h>
#include<evt.h>

struct Controller
{
    //Controller Inputs
    int controlInputs[19];//<- turn this into struct
    //controls enabled
    int controllerEnabled;
};
struct CPadOne //0x50 match
{

    Controller controller;
    //virtual funcs x3
    CPadOne() :controller(){};
    virtual ~CPadOne();
    virtual void DisablePad();
    virtual void ResetPad();
    virtual void ReadPad();
};
struct CPadEx;
extern const CPadEx* CurrentPad;
struct CPadEx //0x204 match
{
    int inputValueMask;
    char unk_inputs[0xb0];
    CPadOne gamePads[4];
    CPadEx(): gamePads() { CurrentPad = this;};
    virtual ~CPadEx(){};
};
struct StageData
{
    int stageIndex;
    char currentStage;
    int unk;
    int unk2;
    int unk3;
    int unk4;
    int unk5;
    int unk6;
};

extern StageData stageData;//8020fbc0
struct CBase//Inherited by CGAME //0x3334 TODO
{
    //vars
    CGs gx;
    CFont baseFont;
    CPadEx gamePadManager;
    CStatus status;
    CCamera sceneCams[2];
    //SceneLights 6 TODO
    //CStopWatch 3 TODO
    CBase();
    virtual ~CBase();
    //16 v funcs funcs
    virtual void ParseStageData(int len, char* text);
};
struct CGame : public CBase
{
    /**
    cfile arch : cfile
        //char * 0x128
        obj*
        0x10 byte obj //3410
        0x12 byte obj //33fc
        0x4 byte obj //3408
        0x4 byte obj//3420
        0x4 byte obj //340c

    ctpl : cfile
        0x10 byte obj //3410
        0x12 byte obj //33fc
        0x4 byte obj //3408
        0x4 byte obj//3420
        0x4 byte obj //340c

    ctexobj
    cscreenfade : CScrnColor
        - 

    CScrnWipeCircle
    CScrnWipeTex_802113c8
    CTexObj
    CScrnWipeCustom
    CScrnWipeTile
    CScrnWipeTile
    CSCrnRoboeyes
    CFBOutline
    CFBblur
    FBSubwin
    ctexobj
    cstatus
        -int val
    ccamera
    cvec
    cvec
    cvec
    cvec
    cvec

    */
};



#endif