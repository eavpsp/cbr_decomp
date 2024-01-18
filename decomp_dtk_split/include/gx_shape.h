#ifndef gx_shape
#define gx_shape
//base class
#include<game_gx.h>
typedef int undefined;
struct CPrimitive //0x164 cur:0x0
{
    public:
    char primData[0x164];
    CPrimitive();
    virtual ~CPrimitive();
    //unk func
    virtual void fn_8019E2A8 (undefined param_1,undefined param_2,undefined param_3,undefined param_4,
                 undefined param_5,undefined param_6,undefined param_7,undefined param_8,int param_9
                 );
};
struct CCylinder : public CPrimitive{};
struct CSprite : public CPrimitive{};
struct CTorus : public CPrimitive{};
struct CSphere : public CPrimitive{};
struct CIcosahedron : public CPrimitive{};
struct CDodeca : public CPrimitive{};
struct COctahedron : public CPrimitive{};
struct CCube : public CPrimitive{};
struct CTriangle : public CPrimitive{};
struct CLine : public CPrimitive{};
struct CCircle : public CPrimitive{};
struct CTile : public CPrimitive{};



#endif