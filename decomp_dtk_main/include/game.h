//Game.cpp
#ifndef game
#define game
#include<cam.h>
#include<cmotioncontrolcamera.h>
#include<cfile.h>
#include<cparticle.h>
#include<game_gx.h>
#include<evt.h>
#include<msg.h>
#include<sound.h>
#include<movie.h>
#include<font.h>
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
    virtual ~CPadOne(){};
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
struct TitleObject //0x3c48
{
    Cursor menuCursor;
    XObjDemo demoObj;
    CTpl textureFile;
    CTexObj texObjects[6];
    TitleObject():texObjects(){};
    virtual ~ TitleObject(){};
};
struct CCard//0xa020
{
    char pad[0xa020];
    CCard(){};
    virtual ~CCard(){};

};
struct MemCard//0x16a20
{
    CCard cardData;
    char pad[0xC9E0];
    MemCard(){};
    virtual ~MemCard(){};

};
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
    FbSubwin subwin;
    CStatus status;
    CCamera camera;
    CScrnColor screenColorA;
    CTexObj textObj;
    CScrnColor screenColorB;
    CScrnColor screenColorC;
    Logo logo;
    CTpl logoFIle;
    InfoScrn infoScreen;
    CScrnFade screenFade1;
    CScrnWipe wipe;
    CParticle particle;
    CScrnQuake screenQuake;
    XOBJS xobjData;
    CObjArchive CobjArchives[0x400];
    CEvt eventInfo;
    CMsg cMsg[2];//should b 0x44620 cur 0x3d498
    CMotionControlCamera cmotionControlCam;
    XSound soundData;
    MemCard memCard;
    CMovie movieData;
    CGame(){};
    virtual ~CGame(){};

};
struct CThread//800
{
    char pad[800];
    CThread(){};
    virtual ~CThread(){};
};
//Game.cpp vars
extern StageData stageData;//8020fbc0
extern const ARCacheInfo* ARCacheInfoData;
extern const FBMirrorEx FBMirrors[5];
extern const ARPreCache* ARPreCacheData;
extern const CThread* CGameThread;
extern const CGame MainGame;

#endif