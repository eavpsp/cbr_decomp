#ifndef game_gx
#define game_gx
#include <Dolphin/gx.h>
#include <tev.h>
#include <mobj.h>
#include <gx_shape.h>
#include <types.h>

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
struct CGScreen : GXRenderModeObj 
{
    CGScreen() {};
    virtual ~CGScreen(){};
}; 


struct CGsRenderMode : HSD_PEDesc 
{
    char buf[32]; 
    virtual ~CGsRenderMode(){};
};


struct CGsTevStage : HSD_TevDesc
{
 
    char buf[32];
    CGsTevStage(){};
    virtual ~CGsTevStage(){};
};


struct CGsChannel : HSD_Chan 
{
    int unk;
    CGsChannel(){};
    virtual ~CGsChannel(){};

};

struct CTexObj : GXTexObj //252
{
    char unk[216];
    CTexObj(){ };
    virtual ~CTexObj(){};
};
struct CTex : CTexObj 
{
    CSprite sprite;
    CTex() { };
    virtual ~CTex() {};
};



struct CFbOutline
{
    char pad[92];
    CFbOutline(){};
    virtual ~CFbOutline(){};
};

struct CFbBlur
{
    char pad[60];
    CFbBlur(){};
    virtual ~CFbBlur(){};
};
struct CFbTexEff
{
    CTexObj texObj;
    CFbTexEff() {};
    virtual ~CFbTexEff(){};
};

struct FbSubwin : CFbTexEff
{
    /*
           8021041c 80 01 49 78     addr      initializeImageMemory_  field2_0x8
           80210420 80 01 49 64     addr      KnotTableBlendEntry::_  field3_0xc
           80210424 80 01 46 d0     addr      copyTextureAndUpdateGr  field4_0x10
           80210428 80 01 48 c0     addr      update_float_value_bas  field5_0x14
           8021042c 80 01 37 c0     addr      renderSceneWithMultipl  field6_0x18
           virtual void fn_80014978(int param_1);
        virtual void fn_80014964(int param_1);
        virtual void fn_800146D0(int *param_1);
        virtual void fn_800148C0(int param_1, int param_2);
        virtual void fn_800137C0(int *param_1);
    */
    
    FbSubwin(){};
    virtual ~ FbSubwin(){};
};
struct InfoScrn
{
    CScrnFade fader;
    CScrnWipe wipe;
    char unk[364];
    InfoScrn() {};
    virtual ~InfoScrn() {};
};




#endif