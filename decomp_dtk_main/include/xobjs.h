#ifndef xobjs
#define xobjs
#include<Dolphin/vec.h>
#include<cfile.h>
#include<evt.h>
struct CVec : public Vec //0xc
{
    CVec() {};
    virtual ~CVec(){};
};

struct CObjVec : CVec
{
    CVec vecA;
    CVec vecB;
    CObjVec(){};
    virtual ~CObjVec(){};
};

struct CJObj  //Done
{   
    int unkval;
    CVec vecA;
    CVec vecB;
    CVec vecC;
    CJObj(){};
    virtual ~CJObj(){};
};
struct hsdJObj
{
    int unk[246];
};
struct CXObj : CJObj //Done
{
    CJArchive archive;
    CObjVec objVecA, objVecB, objVecC;
    CVec vec;
    //33 v funcs
    //80025aa4
    virtual void JumpHandler(double param_1, hsdJObj* param_2, int param_3);
    CXObj(){};
    virtual ~CXObj(){};
};
struct CXObjIntp : CXObj //done
{
    char unk[144];
    CJObj obj;
    CXObjIntp(){};
    virtual ~CXObjIntp(){};
};

struct XObj : CXObjIntp //Done
{
    char unk0[12];
    CStatus status;
    CoordInfo coordInfo;
    AttrInfo attrInfo;
    char unk1[24];
    CVec vecA;
    char unk2[1312];
    CVec vecB;
    char unk3[8];
    CEvt objEvt;
    char unk4[8];
    CAnmQueue animQueue;
    char unk5[100];
    CJAnim anim;

    XObj(){};
    virtual ~XObj(){};
};
struct Cursor :  XObj 
{
    Cursor(){};
    virtual ~Cursor(){};
};
struct MenuCursor : Cursor
{
    MenuCursor() {};
    virtual ~MenuCursor() {};
};
struct MenuEx
{
    char unk0[40];
    MenuCursor menuCursor;
    char unk1[16];
    MenuEx() {};
    ~MenuEx() {};
};
struct MenuExSetup
{
    char unk0[4];
    MenuEx menu;
    MenuExSetup() {};
    ~MenuExSetup() {};
};
struct XOBJS
{
    char unk[4568];
    XOBJS(){};
    virtual ~XOBJS(){};
};
struct XObjLeticker : XObj
{
    XObjLeticker() {};
    virtual ~XObjLeticker() {};
};
#endif