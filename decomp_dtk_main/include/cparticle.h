#ifndef cparticle
#define cparticle
#include<cfile.h>
struct CGenerator
{
    char pad[8];
    CGenerator(){};
    virtual ~CGenerator(){};
};
struct CParticle
{
    int unkval;
    CFile files[4];
    char unk[16];
    CGenerator generator[0x20];
    CParticle(): generator(), files(){};
    virtual ~CParticle(){};
};


#endif