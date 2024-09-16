#ifndef ccameraactionarea
#define ccameraactionarea
#include<cam.h>
#include<ccameraactionmap2.h>
struct CInterfaceCameraAction
{
    CVec vec_a;
    CVec vec_b;
    CVec vec_c;
    char buffer[12];
    CInterfaceCameraAction() {};
    virtual ~CInterfaceCameraAction() {};
};
struct CCameraActionChase : CInterfaceCameraAction
{
    char unk[12];
    CVec vec_a;
    CVec vec_b;
    int unk_val;
    CCameraActionChase() {};
    virtual ~CCameraActionChase() {};
};
struct CCameraActionScroll : CInterfaceCameraAction
{
    char unk[20];
    CCameraActionScroll() {};
    virtual ~CCameraActionScroll() {};
};
struct CCameraActionScroll2 : CInterfaceCameraAction
{
    char unk[106];
    CCameraActionScroll2() {};
    virtual ~CCameraActionScroll2() {};
};
struct CCameraActionEye : CInterfaceCameraAction
{
    CObjVec vec;
    CVec x;
    CCameraActionEye() {};
    virtual ~CCameraActionEye() {};
};

struct CCameraActionAnim: CInterfaceCameraAction
{
    char unk[8];
    CCameraActionAnim() {};
    virtual ~CCameraActionAnim() {};
};
struct CCameraActionDefault : CInterfaceCameraAction
{

    CCameraActionDefault() {};
    virtual ~CCameraActionDefault() {};
};
struct CCameraActionAreaExM : CInterfaceCameraAction
{
    CCameraActionAreaExM() {};
    virtual ~CCameraActionAreaExM() {};
};
struct CCameraActionArea : CCameraActionAreaExM
{
    char buffer[48];
    CCameraActionArea() {};
    virtual ~CCameraActionArea() {};
};
struct CCameraActionReset : CCameraActionAreaExM
{
    char unk[36];
    CCameraActionReset() {};
    virtual ~CCameraActionReset() {};
};
struct CInterfaceVectorInterpolation
{
    
    CInterfaceVectorInterpolation() {};
    virtual ~CInterfaceVectorInterpolation() {};
};
struct CVectorEaseInOutInterpolation : CInterfaceVectorInterpolation
{
   
    CInterpolationEaseInOut easeInOut[3];
    int val;
    CVectorEaseInOutInterpolation() {};
    virtual ~CVectorEaseInOutInterpolation() {};
};
struct CVectorEaseOutInterpolation : CInterfaceVectorInterpolation
{
    CInterpolationEaseOut easeOut[3];
    CVectorEaseOutInterpolation() {};
    virtual ~CVectorEaseOutInterpolation() {};
};
struct CVectorEaseOutDivideInterpolation : CInterfaceVectorInterpolation
{
    CInterpolationEaseOutDivide easeOut[3];
    CVectorEaseOutDivideInterpolation() {};
    virtual ~CVectorEaseOutDivideInterpolation() {};
};
struct CVectorLinearInterpolation : CInterfaceVectorInterpolation
{
    CInterpolationLinear linearInerpolation[3];
    CVectorLinearInterpolation() {};
    virtual ~CVectorLinearInterpolation() {};
};
struct CVectorNoneInterpolation : CInterfaceVectorInterpolation
{
    CInterpolationNone linearInerpolation[3];
    CVectorNoneInterpolation() {};
    virtual ~CVectorNoneInterpolation() {};
};
struct CCameraActionEvt : CInterfaceCameraAction
{
    char unk[20];
    CStatus status;
    int unk_val;
    CVectorLinearInterpolation linIntp;
    CVectorEaseInOutInterpolation easeIOIntp;
    CVectorEaseOutInterpolation easeOIntp;
    CVectorNoneInterpolation noneIntp;
    char unk2[16];
    CVectorLinearInterpolation linIntp2;
    CVectorEaseInOutInterpolation easeIOIntp2;
    CVectorEaseOutInterpolation easeOIntp2;
    CVectorNoneInterpolation noneIntp2;
    char unk3[16];
    CInterpolationLinear linear;
    CInterpolationEaseInOut easeIO;
    CInterpolationEaseOut easeO;
    CInterpolationNone noneInterp;
    char unk4[16];
    CInterpolationLinear linear2;
    CInterpolationEaseInOut easeIO2;
    CInterpolationEaseOut easeO2;
    CInterpolationNone noneInterp2;
    char unk5[16];
    CVectorLinearInterpolation linearIntVec;
    CVectorEaseInOutInterpolation easeIOVec;
    CVectorEaseOutInterpolation easeOutVec;
    CVectorNoneInterpolation noneVec;
    char unk6[20];
    CCameraActionEvt() {};
    virtual ~CCameraActionEvt() {};
};
struct CCameraActionMap : CCameraActionAreaExM
{
    CCameraActionMap() {};
    virtual ~CCameraActionMap() {};
};
struct CCameraActionLadr : CInterfaceCameraAction
{
    int unk;
    CCameraActionLadr() {};
    virtual ~CCameraActionLadr() {};
};
struct CCameraActionsSetup 
{
    CCameraActionMap actionMap;
    char unk[8];
    CVec x;
    char unk2[8];
    CVec y, z;
    char unk3[12];
    CObjVec vec;
    char unk4[12];
    CInterpolationEaseOutDivide easeOutDivide;
    CVec unkVec;
    char unk5[3280];
    CVectorEaseInOutInterpolation easeIOVec;
    CInterpolationEaseInOut easeIO1;
    int unkVal;
    CInterpolationEaseInOut easeIO2;
    char unk6[24];
    CInterpolationEaseOutDivide easeODivide;
    int unkval2;
    CInterpolationEaseInOut easeIO3;
    char unk7[148];
    CVectorEaseOutDivideInterpolation easeODivideVec;
    char unk8[8];
    CVec a, b, c, d, e, f;
    char unk9[528];
    CStatus statusA, statusB;
    int val;

};
#endif