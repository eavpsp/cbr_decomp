#ifndef FBMIRROR_H
#define FBMIRROR_H
#include "include/types.h"
#include "include/CVec.h"
#include "include/GX/CTexObject.h"
#include "include/CCamera.h"
//Partly finished class
//May need pointer variables
class Class_FBMirror {
public:

    Class_FBMirror(int param);
};
//8065a0d8
class CFbTexEffBase
{
    public:
        char* objType;
        char buffer[4];
};
//802102ec
class CFbTexEff : public CFbTexEffBase
{
    public:
        char buffer[4];
        funcPtr DBClos0;
        funcPtr DBClose1;
        funcPtr DBClose2;
        funcPtr DBClose3;
        funcPtr DBClose4;
};
//80210430
class CFbTexEffMin : public CFbTexEffBase
{
    public:
        char buffer[8];
  
};
//8065a170
class FBMirrorBase {
    public:
        char* objType;
        CFbTexEffMin* texEffHelper;
        
};
class CFbTexEffMir : public CFbTexEffBase
{
    public:
        char buffer[4];
        FBMirrorBase* mirrorBase;
        char bufferEnd[8];

};
class FBMirror: public FBMirrorBase {
    public:
        char buffer[4];
        funcPtr SetTextWriterProperties;
        funcPtr DBClose;
        funcPtr UpdateAndDisplayTexture;
        funcPtr UpdateBoxPositionAndOrientation;
        funcPtr handle_graphics_update;
    
};
class FBMirrorEXBase {
    public:
        char* objType;
        CFbTexEffMir* texEffHelper;
        
};
class FBMirrorEX: FBMirrorEXBase {
    public:
        char buffer[4];
        funcPtr UpdateVectorComponents;
        funcPtr DBClose;
        funcPtr UpdateAndDisplayTexture;
        funcPtr UpdateBoxPositionAndOrientation;
        funcPtr handle_graphics_update;
    
};
#endif