#ifndef CVEC_H
#define CVEC_H

#include "include/types.h"

typedef struct CVec CVec, *PCVec;
struct CVec {
    ptr super;
    char buffer[4];
    funcPtr DestructorFunc;
}__attribute__((aligned(4)));
#endif