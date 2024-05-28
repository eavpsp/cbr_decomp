#ifndef ccameraactionarea
#define ccameraactionarea
#include<cam.h>
struct CInterfaceCameraAction
{
    CVec vec_a;
    CVec vec_b;
    CVec vec_c;
    CInterfaceCameraAction() {};
    virtual ~CInterfaceCameraAction() {};
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


#endif