#ifndef ccameraactionmap2
#define ccameraactionmap2


struct CInterfaceInterpolation
{
    
    CInterfaceInterpolation() {};
    virtual void GetCharSpace();
    virtual ~CInterfaceInterpolation() {};


};

struct CInterpolationEaseInOut : CInterfaceInterpolation
{
    char buffer[24];
    CInterpolationEaseInOut() {};
    virtual void zz_80135398_();
    virtual void zz_80135280_();
    virtual void zz_80135314_();
    virtual ~CInterpolationEaseInOut() {};
};
struct CInterpolationEaseOutDivide : CInterfaceInterpolation
{
    char buffer[12];

    CInterpolationEaseOutDivide() {};
    /*  8022e510 80 13 52 20     addr       zz_80135220_
        8022e514 80 13 51 20     addr       zz_80135120_
        8022e518 80 13 51 9c     addr       zz_8013519c_
    */
    virtual ~CInterpolationEaseOutDivide() {};
};
struct CInterpolationEaseOut : CInterfaceInterpolation
{
    char buffer[28];

    CInterpolationEaseOut() {};
    /*  8022e510 80 13 52 20     addr       zz_80135220_
        8022e514 80 13 51 20     addr       zz_80135120_
        8022e518 80 13 51 9c     addr       zz_8013519c_
    */
    virtual ~CInterpolationEaseOut() {};
};

struct CInterpolationNone : CInterfaceInterpolation
{
    char buffer[12];

    CInterpolationNone() {};
    /* 8020fef8 80 00 98 58     addr       FormationOffensive::__dt(void)
       8020fefc 80 01 5f d4     addr       UpdateRayIntersection
       8020ff00 80 01 60 b8     addr       CalculateTimeStepForTriangleIntersection
       8020ff04 80 01 6e a0     addr       NSNMessengerScene::SceneCreated(void)
   */

  
    virtual ~CInterpolationNone() {};
};
struct CInterpolationLinear : CInterfaceInterpolation
{
    char buffer[12];

    CInterpolationLinear() {};
     /* 8020fef8 80 00 98 58     addr       FormationOffensive::__dt(void)
        8020fefc 80 01 5f d4     addr       UpdateRayIntersection
        8020ff00 80 01 60 b8     addr       CalculateTimeStepForTriangleIntersection
        8020ff04 80 01 6e a0     addr       NSNMessengerScene::SceneCreated(void) 
    */

    virtual void UpdateRayIntersection();
    virtual void CalculateTimeStepForTriangleIntersection();
    virtual void SceneCreated();

    virtual ~CInterpolationLinear() {};
};
#endif