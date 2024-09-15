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
    CCameraActionChase() {};
    virtual ~CCameraActionChase() {};
};
//CCameraActionEvt <-- TODO
struct CCameraActionEvt : CInterfaceCameraAction
{
    CStatus status;

    CCameraActionEvt() {};
    virtual ~CCameraActionEvt() {};
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
    char buffer[48];
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
#endif