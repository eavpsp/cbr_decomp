#ifndef xobjs
#define xobjs
#include<Dolphin/vec.h>
#include<cam.h>

#include<cfile.h>
#include<evt.h>
struct CVec : public Vec //0xc
{
   
    CVec(){};
    virtual ~CVec(){};
};

struct CObjVec : CVec
{
    CVec vecA;
    CVec vecB;
    CObjVec(){};
    virtual ~CObjVec(){};
};

struct CJObj //0x34 cur 0x40 12bytes too big may need packing
{   
    char pad[16];
    CVec vecA;
    CVec vecB;
    CVec vecC;

    CJObj(){};
    virtual ~CJObj(){};
};

struct CXObj :CJObj //0x34
{
    CObjVec vecA;
    CObjVec vecB;
    CObjVec vecC;
    CJArchive archive;
    //33 v funcs
    CXObj(){};
    virtual ~CXObj(){};
};
struct CXObjIntp : CXObj //0x34
{
    CXObjIntp(){};
    virtual ~CXObjIntp(){};
};

struct XObj : CXObjIntp//0x34
{
    CStatus status;
    CoordInfo coordInfo;
    CVec vecA;
    CVec vecB;
    CEvt objEvt;
    CAnmQueue animQueue;
    CJArchive archive;
    CJAnim anim;

    XObj(){};
    virtual ~XObj(){};
};
struct Cursor :  XObj //0x34
{
    Cursor(){};
    virtual ~Cursor(){};
};



struct XOBJS
{
    char pad[0x11d8];
    XOBJS(){};
    virtual ~XOBJS(){};
};
#endif