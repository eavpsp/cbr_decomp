#ifndef cfont
#define cfont
#include<game_gx.h>
struct CFont 
{
    char buf[54];
    CTexObj texture;
    CFont() :  texture() {
        buf[28] = 0;
    };
    virtual ~CFont(){};
};


#endif