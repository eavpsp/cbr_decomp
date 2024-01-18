#ifndef game_gx
#define game_gx
#include <Dolphin/gx.h>
//graphics.h Class Data //0x8001b9b8
#include <tev.h>
#include <mobj.h>
#include <gx_shape.h>
#include <types.h>


struct CGScreen : GXRenderModeObj //0x40
{
    public:
    int color;
    CGScreen() : color(0xffffffff){};
    virtual ~CGScreen(){};
}; //Done


struct CGsRenderMode : HSD_PEDesc //0x30 crude match
{
    public:
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
//cfont

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

#endif