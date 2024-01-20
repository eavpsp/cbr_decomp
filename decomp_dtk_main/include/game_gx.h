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
    virtual ~CScrnColor();
};

struct CScrnWipe : CScrnColor
{
    //3 v funcs
    CScrnWipe(){};
    virtual ~CScrnWipe();
};
struct CScrnFade : CScrnColor
{
    //3 v funcs
    CScrnFade(){};
    virtual ~CScrnFade();
};
struct CScrnWipeTex: CScrnWipe
{
    //3 v funcs
    CScrnWipeTex(){};
    virtual ~CScrnWipeTex();
};
struct CScrnWipeCircle: CScrnWipe
{
    //3 v funcs
    CScrnWipeCircle(){};
    virtual ~CScrnWipeCircle();
};
struct CScrnWipeTile: CScrnWipe
{
    //3 v funcs
    CScrnWipeTile(){};
    virtual ~CScrnWipeTile();
};
struct CScrnRoboeyes: CScrnWipe
{
    //3 v funcs
    CScrnRoboeyes(){};
    virtual ~CScrnRoboeyes();
};
struct CScrnWipeCustom : CScrnWipe
{
    //3 v funcs
    CScrnWipeCustom(){};
    virtual ~CScrnWipeCustom();
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
struct CFont //match 0x13c
{
   
    char buf[58];
    CTexObj texture;
    CFont() :  texture() {
        buf[36] = 0;
    };
    virtual ~CFont(){};
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

struct CFbOutline//0x60
{
    char pad[0x60];
    CFbOutline();
    virtual ~CFbOutline();
};

struct CFbBlur//0x40
{
    char pad[0x40];
    CFbBlur();
    virtual ~CFbBlur();
};
struct CFbTexEff
{
    CTexObj texObj;
    CFbTexEff(){};
};

struct FbSubwin : CFbTexEff
{
    FbSubwin(){};
    virtual ~ FbSubwin(){};
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
//@8001b408


#endif