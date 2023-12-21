#ifndef FBMirror_H
#define FBMirror_H

typedef int CCamera;
typedef int Class_FBMirror;
typedef struct CFbTexEff CFbTexEff, *PCFbTexEff;
typedef struct FBMirror FBMirror, *PFBMirror;
typedef struct FBMirrorEX FBMirrorEX, *PFBMirrorEX;
#include "include/types.h"
#include "include/CVec.h"
#include "include/CTexObject.h"

struct CFbTexEff {
    ptr super;
    int buffer;
    funcPtr DBClos0;
    funcPtr DBClose1;
    funcPtr DBClose2;
    funcPtr DBClose3;
    funcPtr DBClose4;
    
};

struct FBMirror {
    ptr super;
    int buffer;
    funcPtr SetTextWriterProperties;
    funcPtr DBClose;
    funcPtr UpdateAndDisplayTexture;
    funcPtr UpdateBoxPositionAndOrientation;
    funcPtr handle_graphics_update;
    
};

struct FBMirrorEX {
    ptr super;
    int buffer;
    funcPtr UpdateVectorComponents;
    funcPtr DBClose;
    funcPtr UpdateAndDisplayTexture;
    funcPtr UpdateBoxPositionAndOrientation;
    funcPtr handle_graphics_update;
    
};

static void Class_FBMirror__ct(Class_FBMirror object);

#endif