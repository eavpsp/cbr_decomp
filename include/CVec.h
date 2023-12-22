#ifndef CVEC_H
#define CVEC_H

#include "include/types.h"
class VecBase
{
    public:
        char* objName;
        char buffer[4];
};  
class Vec : public VecBase 
{
    public:
        char buffer[8];
};

class CVecBase 
{
    public:
        char* objName;
        Vec* vec;
};

class CVec : public CVecBase {
    public:
        char buffer[4];
        ~CVec();
};
#endif