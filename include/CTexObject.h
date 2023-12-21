#ifndef CTEXOBJ_H
#define CTEXOBJ_H


#include "include/types.h"

typedef struct CTexObj CTexObj, *PCTexObj;
struct CTexObj {
    ptr super;
    int buffer;
    funcPtr DestructorFunc;
};

#endif