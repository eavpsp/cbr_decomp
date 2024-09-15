#ifndef cmotioncontrolcamera
#define cmotioncontrolcamera
#include<ccameraactionarea.h>
struct CScrnQuake //0x34
{
    CVec vecs[3];
    CScrnQuake(){};
    virtual ~CScrnQuake(){};

};
struct CCameraMemento
{
    CVec vec_a;
    CVec vec_b;
    CVec vec_c;
    CCameraMemento(){};
    virtual ~CCameraMemento(){};
    
};
struct CMotionControlCamera //500
{
    CCameraMemento camMemento;
    CVec vec_a;
    CVec vec_b;
    CVec vec_c;
    CStatus status;
    CVec vec_d;
    CVec vec_e;
    CVec vec_f;
    CCamera camera;
    CMotionControlCamera(){};
    virtual ~CMotionControlCamera(){};
};

struct CCameraActions //0x1e70  @ 0x80019e5c WIP
{   
    CCameraActionDefault defaultCamAction;
    CCameraActionArea actionArea;
    CVectorEaseInOutInterpolation easeInOutInterpolator;
    CVectorLinearInterpolation linearInterpolator;
    CVectorEaseInOutInterpolation easeInOutInterpolator2;
    CVectorEaseOutInterpolation easeOutInterpolator;
    CVectorEaseOutDivideInterpolation easeOutDivideInterpolator;
    CInterpolationLinear linearInterp;
    CInterpolationEaseInOut easeInOut;
    CInterpolationEaseOut easeOut;
    char unk[16];
    CInterpolationEaseOutDivide easeOutDivide;
    char unk2[44];
    CCameraActionChase chaseCamera;
};
#endif