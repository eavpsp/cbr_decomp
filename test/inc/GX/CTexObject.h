#ifndef CTEXOBJ_H
#define CTEXOBJ_H
//Handles the game textures

#include "include/types.h"
typedef struct CTexObj CTexObj;
typedef struct GXTexObjBase GXTexObjBase;
typedef struct GXTexObj GXTexObj;
typedef struct CTexObjBase CTexObjBase;
typedef struct CTexObj CTexObj;

struct GXTexObjBase {
    char* objType;
    char* buffer;
};

struct GXTexObj: public GXTexObjBase {
    char* buffer;
};
struct CTexObjBase {
    char* objType;
    GXTexObj* gxObj;
};

struct CTexObj: public CTexObjBase {

    char* buffer;
    //CTexObj();
    ~CTexObj();
};

#endif