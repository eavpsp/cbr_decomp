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
struct CGs //0x8001b9b8 //0x17b0 match
{
    public:
    char pad[0xA0];
    CGScreen cgScreen;
    CGsRenderMode renderMode;
    CGsTevStage tevStages[2];
    CGsChannel cgChannels[4];
    CFont font;
    CTexObj texObj2;
    CSprite sprite;
    CLine line;
    CTriangle tri;
    CCircle cir;
    CTile tile;
    CSprite sprite2;
    CCube cube;
    COctahedron oct;
    CDodeca dode;
    CIcosahedron iso;
    CSphere sphere;
    CCylinder cyl;
    CTorus torus;
    CGs() :cgScreen(), renderMode(), tevStages(), texObj2(){};
    virtual ~CGs(){};
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
    virtual void ParseStageData(CGame* cgame, int len, char* text);
};
struct CGame : CBase //Needs a lot of work
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
    void ParseStageData(CGame* cgame, int len, char* text);


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