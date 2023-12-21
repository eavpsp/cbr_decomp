#ifndef CTEXOBJ_H
#define CTEXOBJ_H


#include "include/types.h"
typedef struct CTexObj CTexObj, *PCTexObj;
struct CTexObj {
    ptr super;
    char buffer[4];
    funcPtr DestructorFunc;
}__attribute__((aligned(4)));

#endif