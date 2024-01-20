//Game.cpp
#ifndef game
#define game
#include<cam.h>
#include<cfile.h>
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
struct CBase//Inherited by CGAME //0x3334 Match
{
    //vars
    CGs gx;
    char pad0[12];
    CFont baseFont;
    CPadEx gamePadManager;
    char pad1[8];
    CStatus status;
    int val;
    CCamera sceneCams[2];
    CLight sceneLights[6];
    CStopWatch stopWatches[3];
    char pad2[28];
    CBase() : gx(), gamePadManager(){};
    virtual ~CBase(){};
    //16 v funcs funcs
    virtual void ParseStageData(int len, char* text);
};
struct CGame : public CBase
{
    CFileArchive archive;
    CTpl textureFile;
    CScrnFade screenFade;
    CScrnWipeCircle screenWipe_circle;
    CScrnWipeTex screenWipe_tex;
    CScrnWipeCustom screenWipe_custom;
    CScrnWipeTile screenWipe_tile_0;
    CScrnWipeTile screenWipe_tile_1;
    CScrnRoboeyes roboEyes;
    CFbOutline outline;
    CFbBlur blurFx;
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
//Game.cpp vars
extern const CGame MainGame;
extern int unk_val;
//extern const ARCacheInfo cacheInfo
extern int unk_val_2;


#endif