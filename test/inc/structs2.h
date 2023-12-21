
#include "structs.h"
typedef int CCamera;
typedef int ptr;
typedef int funcPtr;
typedef struct CVec CVec, *PCVec;
typedef struct CTexObj CTexObj, *PCTexObj;
typedef struct CFbTexEff CFbTexEff, *PCFbTexEff;
typedef struct FBMirror FBMirror, *PFBMirror;
typedef struct FBMirrorEX FBMirrorEX, *PFBMirrorEX;
typedef struct Class_FBMirror  Class_FBMirror , *PClass_FBMirror;

struct CVec {
    ptr super;
    int buffer;
    funcPtr DestructorFunc;
};
struct CTexObj {
    ptr super;
    int buffer;
    funcPtr DestructorFunc;
};
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
struct Class_FBMirror {
    CFbTexEff* fbTexEff;         // Offset 0x120
    CTexObj* texObj;             // Offset 0x118
    FBMirror* fbMirror;          // Offset 0x120
    CCamera camera;             // Offset 0x2b8
    CVec* vec1;                  // Offset 0x1c8
    CVec* vec2;                  // Offset 0x1d8
    CVec* vec3;                  // Offset 0x1e8
    CVec* vec4;                  // Offset 0x1f8
    CVec* vec5;                  // Offset 0x24c
    FBMirrorEX* fbMirrorEx;      // Offset 0x120
};
void Class_FBMirror__ct(ptr object);
