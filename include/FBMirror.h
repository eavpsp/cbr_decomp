#ifndef FBMIRROR_H
#define FBMIRROR_H
#include "include/types.h"
#include "include/CVec.h"
#include "include/CTexObject.h"
#include "include/CCamera.h"

typedef struct CFbTexEff CFbTexEff, *PCFbTexEff;
typedef struct FBMirror FBMirror, *PFBMirror;
typedef struct FBMirrorEX FBMirrorEX, *PFBMirrorEX;
class Class_FBMirror {
public:
    // Public member functions
    // Constructor
    explicit Class_FBMirror(int param);
  
};


struct CFbTexEff {
    ptr super;
    char buffer[4];
    funcPtr DBClos0;
    funcPtr DBClose1;
    funcPtr DBClose2;
    funcPtr DBClose3;
    funcPtr DBClose4;
    
}__attribute__((aligned(4)));

struct FBMirror {
    ptr super;
    char buffer[4];
    funcPtr SetTextWriterProperties;
    funcPtr DBClose;
    funcPtr UpdateAndDisplayTexture;
    funcPtr UpdateBoxPositionAndOrientation;
    funcPtr handle_graphics_update;
    
}__attribute__((aligned(4)));

struct FBMirrorEX {
    ptr super;
    char buffer[4];
    funcPtr UpdateVectorComponents;
    funcPtr DBClose;
    funcPtr UpdateAndDisplayTexture;
    funcPtr UpdateBoxPositionAndOrientation;
    funcPtr handle_graphics_update;
    
}__attribute__((aligned(4)));

extern void Class_FBMirror__ct(Class_FBMirror object);

#endif