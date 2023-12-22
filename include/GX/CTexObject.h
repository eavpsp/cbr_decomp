#ifndef CTEXOBJ_H
#define CTEXOBJ_H
//Handles the game textures

#include "include/types.h"
typedef struct CTexObj CTexObj, *PCTexObj;

class GXTexObjBase {
    char* objType;
    char buffer[4];
};

class GXTexObj: public GXTexObjBase {
    char buffer[8];
};
class CTexObjBase {
    char* objType;
    GXTexObj* gxObj;
};

class CTexObj: public CTexObjBase {
public:
    char buffer[4];
    CTexObj(int param1);
    ~CTexObj();
};

#endif