#ifndef xobjs
#define xobjs
#include<Dolphin/vec.h>
#include<cfile.h>
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

    CJObj(): {};
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
    CJAnim anim;
    
    XObj(){};
    virtual ~XObj(){};
};
#endif