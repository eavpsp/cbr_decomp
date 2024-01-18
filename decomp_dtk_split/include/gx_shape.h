#ifndef gx_shape
#define gx_shape
//base class
#include<game_gx.h>
typedef int undefined;
struct CPrimitive
{
    public:
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
struct CGs
{
    public:
    virtual ~CGs();
};
struct Game_GX
{
    public:
    CGs cgsMain;
    CGScreen cgScreen;
    CGsRenderMode renderMode;
    CGsTevStage tevStages[2];
    CGsChannel cgChannels[4];
    CFont font;
    CTexObj texObj;
    int val;
    CTexObj texObj2;
    CSprite sprite;
    CLine line;
    CTriangle tri;
    CCircle cir;
    CTile tile;
    CSprite sprite2;
    CCube cube;
    COctahedron oct;
    CDodeca dode;
    CIcosahedron iso;
    CSphere sphere;
    CCylinder cyl;
    CTorus torus;
    Game_GX() :cgsMain(), cgScreen(), renderMode(), tevStages(), val(0){};
    ~Game_GX();
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

#endif