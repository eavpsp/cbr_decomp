#ifndef _SOUND_
#define _SOUND_
#include <cfile.h>
struct CSound
{
    CSound(){};
    virtual ~CSound(){};
};
struct XSound:  CSound
{
    int unk;
    CFile soundFile;
    XSound(){};
    virtual ~XSound(){};
};





#endif