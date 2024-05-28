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

struct CCameraActions //0x1e70
{   
    

};
#endif