#ifndef game_gx
#define game_gx
#include <Dolphin/gx.h>
#include <tev.h>
#include <mobj.h>
#include <gx_shape.h>
#include <types.h>


//color 0x4 + ptr 0x8
struct CColor : GXColor
{
    
    virtual ~CColor(){};
};
//screen color 0x30
//0x80210360 lbl_80210360
//.data       start:0x80210360 end:0x8021036C
//__vt__10CScrnColor CScrnColor::__vt
struct CScrnColor 
{
    float val0;
    float val1;
    float val2;
    float val3;
    float val4;
    float val5;
    float val6;
    float val7;
    float val8;
    float val9;
    float val10;
    float val11;
    CScrnColor(){
        val0 = 0;
        val1 = 0;
        val2 = 0;
        val3 = 0;
        val4 = 0;
        val5 = 0;
        val6 = 0;
        val7 = 0;
        val8 = 0;
        val9 = 0;
        val10 = 0;
        val11 = 0;
    };
    virtual ~CScrnColor(){};
};

struct CScrnWipe : CScrnColor
{
    //3 v funcs
    CScrnWipe(){};
    virtual ~CScrnWipe(){};
};
struct CScrnFade : CScrnColor
{
    //3 v funcs
    CScrnFade(){};
    virtual ~CScrnFade(){};
};
struct CScrnWipeTex: CScrnWipe
{
    //3 v funcs
    CScrnWipeTex(){};
    virtual ~CScrnWipeTex(){};
};
struct CScrnWipeCircle: CScrnWipe
{
    //3 v funcs
    CScrnWipeCircle(){};
    virtual ~CScrnWipeCircle(){};
};
struct CScrnWipeTile: CScrnWipe
{
    //3 v funcs
    CScrnWipeTile(){};
    virtual ~CScrnWipeTile(){};
};
struct CScrnRoboeyes: CScrnWipe
{
    //3 v funcs
    CScrnRoboeyes(){};
    virtual ~CScrnRoboeyes(){};
};
struct CScrnWipeCustom : CScrnWipe
{
    //3 v funcs
    CScrnWipeCustom(){};
    virtual ~CScrnWipeCustom(){};
};
struct CGScreen : GXRenderModeObj //0x40
{
    
    int flag;
    CGScreen() : flag(0xffffffff){};
    virtual ~CGScreen(){};
}; //Done


struct CGsRenderMode : HSD_PEDesc //0x30 crude match
{
   
    char buf[36]; //unk 4 xint
    virtual ~CGsRenderMode(){};
};


struct CGsTevStage : HSD_TevDesc //match 0x94
{
    public:
    char buf[32];
    CGsTevStage(){};
    virtual ~CGsTevStage(){};
};


struct CGsChannel : HSD_Chan //match 0x34
{
    public:
    int buf;
    CGsChannel(){};
    virtual ~CGsChannel(){};

};

struct CTexObj : GXTexObj //match 0xfc
{
    CTexObj(){ };
    virtual ~CTexObj(){};
};
struct CTex : CTexObj //0xfc
{
    CSprite sprite;
};



struct CFbOutline//0x60
{
    char pad[0x60];
    CFbOutline(){};
    virtual ~CFbOutline(){};
};

struct CFbBlur//0x40
{
    char pad[0x40];
    CFbBlur(){};
    virtual ~CFbBlur(){};
};
struct CFbTexEff //0xfc
{
    CTexObj texObj;
    CFbTexEff(){};
};

struct FbSubwin : CFbTexEff
{
    FbSubwin(){};
    virtual ~ FbSubwin(){};
};
struct InfoScrn //0x1d8
{
    CScrnFade fader;
    CScrnWipe wipe;
};

//@8001b408


#endif