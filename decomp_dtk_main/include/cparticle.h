#ifndef cparticle
#define cparticle
#include<cfile.h>
struct CGenerator
{
    char pad[4];
    CGenerator(){};
    virtual ~CGenerator(){};
};
struct CParticle
{
    CGenerator generator[0x20];
    CFile files[4];
    char unk[128];
    CParticle(): generator(), files(){};
    virtual ~CParticle(){};
};


#endif