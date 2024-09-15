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
    CInterpolationEaseInOut() {};
    virtual void zz_80135398_();
    virtual void zz_80135280_();
    virtual void zz_80135314_();
    virtual ~CInterpolationEaseInOut() {};
};
struct CInterpolationEaseOutDivide : CInterfaceInterpolation
{
    CInterpolationEaseOutDivide() {};
    /*  8022e510 80 13 52 20     addr       zz_80135220_
        8022e514 80 13 51 20     addr       zz_80135120_
        8022e518 80 13 51 9c     addr       zz_8013519c_
    */
    virtual ~CInterpolationEaseOutDivide() {};
};
struct CInterpolationEaseOut : CInterfaceInterpolation
{
    CInterpolationEaseOut() {};
    /*  8022e510 80 13 52 20     addr       zz_80135220_
        8022e514 80 13 51 20     addr       zz_80135120_
        8022e518 80 13 51 9c     addr       zz_8013519c_
    */
    virtual ~CInterpolationEaseOut() {};
};
struct CInterpolationLinear : CInterfaceInterpolation
{
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