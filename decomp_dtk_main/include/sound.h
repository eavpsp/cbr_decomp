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
    CFile soundFile;
    XSound(){};
    virtual ~XSound(){};
};





#endif