#ifndef game
#define game
#include<game_gx.h>
#include<PowerPC_EABI_Support/Runtime/MWCPlusLib.h>
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
struct CBase//Inherited by CGAME
{
    public:
    //vars
    Game_GX gx;
    CFont baseFont;
    CTexObj texObj;
    int val;
    //CPAD
    //CSTATUS
    int val2;
    int val3;
    //SceneCam 2
    //SceneLights 6
    //CStopWatch 3
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