#ifndef cfont
#define cfont
#include<game_gx.h>
struct CFont //match 0x13c
{
   
    char buf[58];
    CTexObj texture;
    CFont() :  texture() {
        buf[36] = 0;
    };
    virtual ~CFont(){};
};


#endif