#ifndef FBMIRROR_H
#define FBMIRROR_H
#include "include/types.h"
#include "include/GameObjects/CVec.h"
#include "include/GX/CTexObject.h"
#include "include/GameObjects/CCamera.h"
//Partly finished class
//May need pointer variables
typedef struct CFbTexEffBase CFbTexEffBase;
typedef struct CFbTexEff CFbTexEff;
typedef struct CFbTexEffMin CFbTexEffMin;
typedef struct Class_FBMirror Class_FBMirror;
typedef struct FBMirrorBase FBMirrorBase;
typedef struct CFbTexEffMir CFbTexEffMir;
typedef struct FBMirror FBMirror;
typedef struct FBMirrorEXBase FBMirrorEXBase;
typedef struct FBMirrorEX FBMirrorEX;
struct Class_FBMirror {


    Class_FBMirror(int param);
};
//8065a0d8
struct CFbTexEffBase
{
    
        char* objType;
        char* buffer;
};
//802102ec
struct CFbTexEff : public CFbTexEffBase
{
    
        char* buffer;
        funcPtr DBClos0;
        funcPtr DBClose1;
        funcPtr DBClose2;
        funcPtr DBClose3;
        funcPtr DBClose4;
};
//80210430
struct CFbTexEffMin : public CFbTexEffBase
{

        char* buffer;
  
};
//8065a170
struct FBMirrorBase {
    
        char* objType;
        CFbTexEffMin* texEffHelper;
        
};
struct CFbTexEffMir : public CFbTexEffBase
{
    
        char* buffer;
        FBMirrorBase* mirrorBase;
        char* bufferEnd;

};
struct FBMirror: public FBMirrorBase {
  
        char* buffer;
        funcPtr SetTextWriterProperties;
        funcPtr DBClose;
        funcPtr UpdateAndDisplayTexture;
        funcPtr UpdateBoxPositionAndOrientation;
        funcPtr handle_graphics_update;
    
};
struct FBMirrorEXBase {

        char* objType;
        CFbTexEffMir* texEffHelper;
        
};
struct FBMirrorEX: FBMirrorEXBase {
    
        char* buffer;
        funcPtr UpdateVectorComponents;
        funcPtr DBClose;
        funcPtr UpdateAndDisplayTexture;
        funcPtr UpdateBoxPositionAndOrientation;
        funcPtr handle_graphics_update;
    
};
#endif