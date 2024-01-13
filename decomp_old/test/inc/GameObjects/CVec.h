#ifndef CVEC_H
#define CVEC_H

#include "include/types.h"
struct VecBase
{
  
        char* objName;
        char* buffer;
};  
struct Vec : public VecBase
{
  
        char* buffer;
};

struct CVecBase
{
  
        char* objName;
        Vec* vec;
};

struct CVec : public CVecBase {
    
        char* buffer;
        //~CVec();
};
#endif