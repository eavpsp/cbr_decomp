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
    char unk[12];
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
    char buffer[24];
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
    char unk6[16];
    CCameraActionEvt() {};
    virtual ~CCameraActionEvt() {};
};
#endif