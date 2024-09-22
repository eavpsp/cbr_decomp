//Game.cpp
#ifndef game
#define game
#include<globals.h>
#include<cam.h>
#include<cmotioncontrolcamera.h>
#include<cfile.h>
#include<cparticle.h>
#include<game_gx.h>
#include<evt.h>
#include<msg.h>
#include<sound.h>
#include<movie.h>
#include<cfont.h>

struct Controller
{
    //Controller Inputs
    int controlInputs[19];//<- turn this into struct
    //controls enabled
    int controllerPortNumber;
};
struct CPadOne //84
{

    Controller controller;
    CPadOne() :controller(){};
    virtual ~CPadOne(){};
    virtual void DisablePad();
    virtual void ResetPad();
    virtual void ReadPad();
};
struct CPadEx;
extern const CPadEx* CurrentPad;

struct CPadEx //516
{
    char unk0[0xb0];
    CPadOne gamePads[4];
    CPadEx(): gamePads() { CurrentPad = this;};
    virtual ~CPadEx(){};
};

struct TitleObject //15436 Done
{
    char unk0[40];
    Cursor menuCursor;
    char unk1[12];
    XObjDemo demoObj;
    char unk2[40];
    CTpl textureFile;
    int unkval;
    CTexObj texObjects[6];
    char unk3[1208];
    TitleObject(){};
    virtual ~ TitleObject(){};
};
struct CCard
{
    char cardBuffer[40988];
    CCard(){};
    virtual ~CCard(){};

};
struct MemCard
{
    char unk[28];
    CCard cardData;
    char memBuffer[51676];
    MemCard(){};
    virtual ~MemCard(){};

};
struct CGs //6064 Match
{
    int unkval;
    CGScreen cgScreen;
    char unk0[12];
    CGsRenderMode renderMode;
    CGsTevStage tevStages[2];
    CGsChannel cgChannels[4];
    char unk1[24];
    CFont font;
    int unkval1;
    CTexObj texObj2;
    int unkval2;
    CSprite sprite;
    char unk2[36];
    CLine line;
    char unk3[8];
    CTriangle tri;
    char unk4[8];
    CCircle cir;
    char unk5[24];
    CTile tile;
    char unk6[32];
    CSprite sprite2;
    char unk7[36];
    CCube cube;
    int unkval3;
    COctahedron oct;
    int unkval4;
    CDodeca dode;
    int unkval5;
    CIcosahedron iso;
    int unkval6;
    CSphere sphere;
    int unkval7;
    CCylinder cyl;
    int unkval8;
    CTorus torus;
    char unk8[16];
    CGs() :cgScreen(), renderMode(), tevStages(), texObj2(){};
    virtual ~CGs(){};
};
struct CBase // Done
{
    CGs gx;
    char unk0[20];
    CFont baseFont;
    CPadEx gamePadManager;
    char unk1[16];
    CStatus status;
    int unkval;
    CCamera sceneCams[2];
    CLight sceneLights[6];
    CStopWatch stopWatches[3];
    char unk2[28];
    CBase() : gamePadManager() {};
    virtual ~CBase(){};
    //16 v funcs funcs
   // virtual void ParseStageData(CGame* cgame, int len, char* text);
};
struct CGame : CBase //WIP A6C30 end: 0x80303030 683056
{
    int unkval11;
    CFileArchive archive;
    char unk0[2136];
    CTpl textureFile;
    int unkInt;
    CScrnFade screenFade;
    CScrnWipeCircle screenWipe_circle;
    char unk2[48];
    CScrnWipeTex screenWipe_tex;
    char unk3[52];
    CTexObj texObj;
    CScrnWipeCustom screenWipe_custom;
    char unk4[48];
    CScrnWipeTile screenWipe_tile_0;
    char unk5[48];
    CScrnWipeTile screenWipe_tile_1;
    char unk6[48];
    CScrnRoboeyes roboEyes;
    char unk7[60];
    CFbOutline outline;
    int unkval0;
    CFbBlur blurFx;
    char unk8[34];
    FbSubwin subwin;
    int unkval1;
    CStatus status;
    char unk9[20];
    CCamera camera;
    int unkval2;
    CScrnColor screenColorA;
    int unkval3;
    CTexObj textObj;
    CScrnColor screenColorB;
    CScrnColor screenColorC;
    Logo logo;
    TitleObject titleObject;
    int unkval5;
    MenuExSetup menu0;
    InfoScrn infoScreen; 
    CParticle particle;
    int unkval6;
    CScrnQuake screenQuake;
    XOBJS xobjData;
    char unk10[18444];
    CObjArchive CobjArchives[0x400];
    char unk11[12];
    CEvt eventInfo;
    int unkval7;
    CMsg cMsg[2];
    CMotionControlCamera cmotionControlCam;
    char unk12[76];
    CCameraActions camActions;
    int unkval8;
    XSound soundData;
    char unk13[1264];
    MemCard memCard;
    char unk[1412];
    CMovie movieData;
    CGame(){};
    virtual ~CGame(){};
   //void ParseStageData(CGame* cgame, int len, char* text);


};
struct CThread
{
    char pad[796];
    CThread(){};
    virtual ~CThread(){};
};
//Game.cpp vars
extern StageData stageData;//8020fbc0
extern const ARCacheInfo* ARCacheInfoData;
extern const FBMirrorEx FBMirrors[5];
extern const ARPreCache* ARPreCacheData;
extern const CThread* CGameThread;

#endif