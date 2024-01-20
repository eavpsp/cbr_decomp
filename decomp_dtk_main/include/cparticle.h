#ifndef cparticle
#define cparticle
#include<cfile.h>
struct CGenerator
{
    char pad[8];
    CGenerator(){};
    virtual ~CGenerator(){};
};
struct CParticle //0x544
{
    CGenerator generator[0x20];
    CFile files[4];
    CParticle(): generator(), files(){};
    virtual ~CParticle(){};
};


#endif