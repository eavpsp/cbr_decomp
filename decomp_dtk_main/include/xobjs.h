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

struct CJObj 
{   
  
    CVec vecA;
    CVec vecB;
    CVec vecC;

    CJObj(){};
    virtual ~CJObj(){};
};

struct CXObj : CJObj 
{
    CJArchive archive;
    CObjVec objVecA, objVecB, objVecC;

    //33 v funcs
    CXObj(){};
    virtual ~CXObj(){};
};
struct CXObjIntp : CXObj
{
    CJObj obj;
    CXObjIntp(){};
    virtual ~CXObjIntp(){};
};

struct XObj : CXObjIntp //WIP
{
    CStatus status;
    CoordInfo coordInfo;
    //AttrInfo
    CVec vecA;
    //gap here
    CVec vecB;
    //gap here
    CEvt objEvt;
    CAnmQueue animQueue;
    CJArchive archive;
    CJAnim anim;

    XObj(){};
    virtual ~XObj(){};
};
struct Cursor :  XObj 
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