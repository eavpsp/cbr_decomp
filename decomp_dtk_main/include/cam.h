#ifndef cam
#define cam
#include<cobj.h>
#include<baselib/lobj.h>
#include<xobjs.h>
#include<game_gx.h>
#include<evt.h>

struct CCamera : HSD_CObj //400 match
{
    //0x88 136
    char pad[20];
    CVec vec1; //A0 160
    CVec vec2; //b0 176
    CVec vec3; //c0 192
    CVec vec4; //d0 208
    char buff[68];
    CVec vec5; //0x124 292
    char buff2[92];
    //400 0x190
    CCamera(){};
    virtual ~CCamera(){};
};

//shadow 0x1f4 or 500
// - cam 

struct CShadow //match
{
    int val; //
    int val2;
    char pad0[82];
    CCamera mainCam;
    int val3;
    CShadow(): val(0), val2(0){};
    virtual ~CShadow(){};
};
struct CLight : HSD_LObj //0x354 TODO Close Match Light Comps random jump
{
    //0x94 148
    char pad0[16]; //match
    CVec vec1;//0xe4 match
    CVec vec2;//0xf4
    CVec vec3;//0x104
    //random 32 byte jump
    CColor color;//0x10c cur 0x118
    CColor color2;//0x114 cur 0x120
    char pad[56];
    CShadow shadow;//0x350 match
    //7 v functs
    CLight(){};
    virtual ~CLight(){};
};
struct XObjDemo : XObj ,GXTexObj ,GXColor //0x34
{
    CCamera camera;
    CLight lights[8];
    XObjDemo() :lights(){};
    virtual ~XObjDemo(){};
};
struct FBMirror: CFbTexEff
{
    //0xfc
   //funcs
};
struct FBMirrorEx : FBMirror//0x120
{
    char pad[24];
    CCamera camera;
    FBMirrorEx(){};
    virtual ~FBMirrorEx(){};
};
#endif