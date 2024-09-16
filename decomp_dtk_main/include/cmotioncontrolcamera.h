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
    char unk[12];
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

struct CCameraActions //7792 Done
{   
    CCameraActionDefault defaultCamAction;
    CCameraActionArea actionArea;
    CVectorEaseInOutInterpolation easeInOutInterpolator;
    CVectorLinearInterpolation linearInterpolator;
    CVectorEaseInOutInterpolation easeInOutInterpolator2;
    CVectorEaseOutInterpolation easeOutInterpolator;
    CVectorEaseOutDivideInterpolation easeOutDivideInterpolator;
    char unk0[24];
    CInterpolationLinear linearInterp;
    CInterpolationEaseInOut easeInOut;
    CInterpolationEaseOut easeOut;
    CInterpolationEaseOutDivide easeOutDivide;
    char unk1[44];
    CCameraActionChase chaseCamera;
    CCameraActionEvt eventCamera;
    CCameraActionScroll2 scrollCamera;
    CCameraActionEye camEye;
    CCameraActionAnim camAnim;
    CCameraActionsSetup camActionMap;
    CCameraActionLadr actionLadr;
    CCameraActionReset camActionReset;
    CVectorLinearInterpolation linIntp;
    CVectorEaseInOutInterpolation easeIOIntp;
    CVectorEaseOutInterpolation easeOIntp;
    CVectorNoneInterpolation noIntp;
    char unk2[16];
    CInterpolationLinear linear;
    CInterpolationEaseInOut easeIO;
    CInterpolationEaseOut easeOutIntp;
    CInterpolationNone noneIntp;
    char unk3[16];
    CCameraActionScroll camScroll;
    CInterpolationEaseOutDivide easeOutDivideIntp;
    char unk[52];
    CCameraActions() {};
    virtual ~CCameraActions() {};
};
#endif