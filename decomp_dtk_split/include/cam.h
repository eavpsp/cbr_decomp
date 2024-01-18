#ifndef cam
#define cam
#include<cobj.h>
#include<baselib/lobj.h>
#include<xobjs.h>

struct CCamera : HSD_CObj //400 matches
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
struct CLight : HSD_LObj //0x354 TODO
{
    //CVEC 8
    //INT 2
    //COLOR 2
    //SHADOW
    //7 v functs

};

#endif