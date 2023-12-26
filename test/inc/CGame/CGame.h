#ifndef CGAME_H
#define CGAME_H
#include "types.h"
typedef struct CBase CBase;
struct CBase
{
	char* objType;
	char* buffer;
};
typedef struct CGameBase CGameBase;
struct CGameBase : public CBase
{
	char* objType;

};
struct CGameHandler {
    virtual void ParseStageData(undefined4 param_1, int param_2, int param_3);
    virtual void InitializeGameplayEngine(void* sceneObj_8025C400);
    virtual uint InitializeAndProcessData(SceneObject* sceneObject);
    virtual void UpdateGameState(int objPtr, int param_2);
    virtual void CGameMain(SceneObjectType sceneObj);
    funcPtr UpdateWorld;
    funcPtr processGlobalArrayElem;
    funcPtr checkRangeAndReturnValue;
    funcPtr TRK_Hollywood_Revoluti;
    funcPtr getNBTScale;
    funcPtr getNBTScale;
    funcPtr ReturnValue;
    funcPtr getNBTScale;
    funcPtr getNBTScale;
    funcPtr ReturnValue_;
    funcPtr GameReset;
};
typedef struct CGame CGame;
struct CGame : public CGameBase //: public CGameHandler
{
	char* objType;
	char* buffer;
	CGame();
	~CGame();
    funcPtr UpdateWorld;
    funcPtr processGlobalArrayElem;
    funcPtr checkRangeAndReturnValue;
    funcPtr TRK_Hollywood_Revoluti;
    funcPtr getNBTScale;
    funcPtr getNBTScale;
    funcPtr ReturnValue;
    funcPtr getNBTScale;
    funcPtr getNBTScale;
    funcPtr ReturnValue_;
    funcPtr GameReset;
};
/*                      
                                                                                         
           8020fc80 80 65 9e        CGame

           8020fc80 80 65 9e d8     addr      CGameBase_Struct_80659  typeDef                           
                                                                                                               
           8020fc84 00 00 00 00     int       0h                      field1_0x4
           8020fc88 80 00 78 80     addr      CGameScene__dt          field2_0x8
           8020fc8c 80 01 35 80     addr      ParseStageData          field3_0xc
           8020fc90 80 01 2a 8c     addr      InitializeGameplayEngine field4_0x10
           8020fc94 80 01 1b d8     addr      InitializeAndProcessData field5_0x14
           8020fc98 80 00 fa cc     addr      UpdateGameState         field6_0x18
           8020fc9c 80 00 df a8     addr      CGameMain               field7_0x1c
           8020fca0 80 00 cd a0     addr      UpdateWorld             field8_0x20
           8020fca4 80 00 c3 98     addr      processGlobalArrayElem  field9_0x24
           8020fca8 80 00 a4 b8     addr      checkRangeAndReturnValue field10_0x28
           8020fcac 80 00 a5 38     addr      TRK_Hollywood_Revoluti  field11_0x2c
           8020fcb0 80 00 a5 40     addr      J3DGraphBase::J3DTexGe  field12_0x30
           8020fcb4 80 00 a5 48     addr      J3DGraphBase::J3DTexGe  field13_0x34
           8020fcb8 80 00 a5 20     addr      ReturnValue(0xe5d38)    field14_0x38
           8020fcbc 80 00 a5 50     addr      J3DGraphBase::J3DTexGe  field15_0x3c
           8020fcc0 80 00 a5 58     addr      J3DGraphBase::J3DTexGe  field16_0x40
           8020fcc4 80 00 a5 2c     addr      ReturnValue(0xe7e20)    field17_0x44
           8020fcc4 80 00 fa 40     addr      GameReset    field17_0x48
                    
*/
#endif