#ifndef gx_shape
#define gx_shape
//base class
#include<game_gx.h>
typedef int undefined;
class CPrimitive
{
    public:
    virtual ~CPrimitive();
    //unk func
    virtual void fn_8019E2A8 (undefined param_1,undefined param_2,undefined param_3,undefined param_4,
                 undefined param_5,undefined param_6,undefined param_7,undefined param_8,int param_9
                 );
};
class CCylinder : public CPrimitive{};
class CSprite : public CPrimitive{};
class CTorus : public CPrimitive{};
class CSphere : public CPrimitive{};
class CIcosahedron : public CPrimitive{};
class CDodeca : public CPrimitive{};
class COctahedron : public CPrimitive{};
class CCube : public CPrimitive{};
class CTriangle : public CPrimitive{};
class CLine : public CPrimitive{};
class CCircle : public CPrimitive{};
class CTile : public CPrimitive{};
class CGs
{
    public:
    CGScreen* cgScreen;
    int* unk_color;
    CGsRenderMode* renderMode;
    CGsTevStage* tevStages[2];
    CGsChannel* cgChannels[4];
    CFont* font;
    CTexObj* texObj;
    int* val;
    CTexObj* texObj2;
    CSprite* sprite;
    CLine* line;
    CTriangle* tri;
    CCircle* cir;
    CTile* tile;
    CSprite* sprite2;
    CCube* cube;
    COctahedron* oct;
    CDodeca* dode;
    CIcosahedron iso;
    CSphere sphere;
    CCylinder cyl;
    CTorus torus;
    CGs();
    virtual ~CGs();
};
/*
func dec
void CPrimitive::fn_8019E2A8(undefined param_1,undefined param_2,undefined param_3,undefined param_4,
                 undefined param_5,undefined param_6,undefined param_7,undefined param_8,int param_9
                 )

{
  undefined3 in_register_0000000c;
  undefined4 *puVar1;
  undefined8 in_f4;
  undefined8 in_f5;
  undefined8 in_f6;
  undefined8 in_f7;
  undefined8 in_f8;
  double dVar2;
  int local_res4;
  int local_70;
  int local_64;
  longlong local_60;
  longlong local_50;
  longlong local_40;
  longlong local_30;
  longlong local_20;
  longlong local_10;
  
  puVar1 = (undefined4 *)CONCAT31(in_register_0000000c,param_1);
  *puVar1 = 1;
  dVar2 = (double)(float)param_9;
  PSMTXTrans(puVar1 + 3);
  *puVar1 = 1;
  PSMTXScale(in_f4,in_f5,in_f6,puVar1 + 0xf);
  *puVar1 = 1;
  calculateAndStoreData(in_f7,puVar1 + 0x1b,0x78);
  calculateAndStoreData(in_f8,puVar1 + 0x27,0x79);
  calculateAndStoreData(dVar2,puVar1 + 0x33,0x7a);
  *(undefined *)(puVar1 + 1) = 0;
  *puVar1 = 1;
  puVar1[0x57] = 4;
  puVar1[0x58] = 0;
  return;
}



*/
/*
//shapes.h
//Line  sprite tri tile cube octah dodeca icoosa sphere cylin torus
//extern CGScreen* cgScreenInstance; 
*/
#endif