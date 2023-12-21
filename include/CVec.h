#ifndef CVEC_H
#define CVEC_H

#include "include/types.h"

typedef struct CVec CVec, *PCVec;
struct CVec {
    ptr super;
    int buffer;
    funcPtr DestructorFunc;
};
#endif