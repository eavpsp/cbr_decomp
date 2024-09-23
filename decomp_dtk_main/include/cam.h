#ifndef cam
#define cam
#include<cobj.h>
#include<baselib/lobj.h>
#include<xobjs.h>
#include<game_gx.h>
#include<evt.h>

struct CCamera : HSD_CObj 
{
    int pad[2];
    CVec vec1;
    CVec vec2;
    CVec vec3;
    CVec vec4;
    char buff[68];
    CVec vec5;
    char buff2[104];
    CCamera(){};
    virtual ~CCamera(){};
};


struct CShadow //500
{
    int val; 
    int val2;
    char pad0[82];
    CCamera mainCam;
    int val3;
    CShadow(): val(0), val2(0){};
    virtual ~CShadow(){};
};
struct CLight : HSD_LObj //856
{
    int unkval;
    CVec vec1;
    CVec vec2;
    CVec vec3;
    CColor color;
    CColor color2;
    char unk[68];
    CShadow shadow;
    //7 v functs
    CLight(){};
    virtual ~CLight(){};
};
struct XObjDemo : XObj //Done
{
    char unk0[12];
    CCamera camera;
    char unk1[8];
    CLight lights[8];
    XObjDemo() {};
    virtual ~XObjDemo(){};
};
struct FBMirror: CFbTexEff
{
};
struct FBMirrorEx : FBMirror//0x120
{
    char unk[24];
    CCamera camera;
    FBMirrorEx(){};
    virtual ~FBMirrorEx(){};
};
#endif