#ifndef FBMIRROR_H
#define FBMIRROR_H
#include "include/types.h"
#include "include/CVec.h"
#include "include/CTexObject.h"
#include "include/CCamera.h"
class Class_FBMirror {
public:

    Class_FBMirror(int param);
  
};
class CFbTexEffBase
{
    public:
        char* objType;
        char buffer[4];
};

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
class CFbTexEffMin : public CFbTexEffBase
{
    public:
        char buffer[8];
  
};
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