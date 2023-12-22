#ifndef JOBJ_H
#define JOBJ_H
#include "include/types.h"



//8065a27c
class CJObjBase
{
public:
	char* objType;
	char buffer[4];

};
//8021199c
class CJObj : public CJObjBase
{
public:
	char buffer[8];


};
//8065a284
class CXObjBase
{
public:
	char* objType;
	CJObj* cjObj;

};
//802119a8
class CJObjExtended_2 : public CJObjBase
{
public:
	char buffer[4];
	CXObjBase* cxObj;
	char endBuffer[8];


};
//8065a28c
class CXObjIntp{
public:
	char* objType;
	CJObjExtended_2* cjObj;

};
//802119bc
class CJObjExtended : public CJObjBase
{
public:
	char buffer[4];
	CXObjBase* cxObj;
	char midBuffer[4];
	CXObjIntp* objInt;
	char endBuffer[8];


};
//8065a294
class XObjBase
{
public:
	char* objType;
	CJObjExtended* cjObj;

};
//802119d8
class CJObjExtended_3 : public CJObjBase
{
public:
	char buffer[4];
	CXObjBase* cxObj;
	char midBuffer[4];
	CXObjIntp* objInt;
	char midBuffer2[4];
	XObjBase* xObj;
	char endBuffer[8];


};
class XObjDemoBase
{
	public:
		char* objType;
		CJObjExtended_3* cjObj;
		char* gxTexObj;
		char buffer[4];
		char* gxColor;

};

//WAYYY TOOO BIGGGG
class JObjectHandler
{
public:
	virtual void ChibiJumpHandler(double param_1, int* param_2, int param_3);
	virtual void process_tree_with_param(double param_1, int* param_2, int param_3);
	virtual void GetHeightOfJump(double param_1, int* param_2, int param_3);
	virtual void SetLineHeightForText(double param_1, int* param_2, int param_3);
	virtual void zz_80027a98_(double param_1, int* param_2, int param_3);
	virtual void update_parameter_value(double param_1, int* param_2, int param_3);
	virtual void updateJobjWithQuaternion_80025edc(double param_1, int objData, int param_3);
	virtual void updateCameraRotationAndTranslation(double param_1, int* param_2, int param_3);
	virtual void setZPosition(double param_1, int* param_2, int param_3);
	virtual void translateObject(int* param_1, float* param_2, int param_3);
	virtual void updateTranslation_(double param_1, double param_2, double param_3, int* param_4, int param_5);
	virtual void SceneTransitionTrigger(int* param_1, float* param_2, int param_3);
	virtual void zz_80027cfc_(double param_1, double param_2, double param_3, int* param_4, int param_5);
	virtual void updateJobjPositionWithQuaternion(int* param_1, float* param_2, int param_3);
	virtual void setJobjPositionWithRotation(double param_1, double param_2, double param_3, int* param_4, int param_5);
	virtual void set_angles_801a1dd0(double param_1, int param_2);
	virtual bool AddVertexToMesh(int param_1, int param_2, int param_3, int param_4, int param_5, int param_6, int param_7);
	virtual uint32 ProcessTextureAndInitializeObject(int param_1);
	virtual void zz_80028368_(int param_1);
	virtual int updateNodePositionAndCallBack(int param_1);
	virtual int update_position_and_maybe_call_handler(int param_1);
	virtual int update_and_notify_position_components(int param_1);
	virtual void translateObject3D(int* vector3, float* param_2, int param_3);
	virtual void UpdateObjPos(double param_1, double param_2, double param_3, int* param_4, int param_5);
	virtual void zz_80027b70_(double param_1, int* param_2, int param_3);
	virtual void updatePositionAndRotation(int* param_1, float* param_2, int param_3);
	virtual void updatePositionCoordinates(double param_1, double param_2, double param_3, int* param_4, int param_5);
	virtual void updateDirection_(long long param_1, int param_2, int* param_3);
	virtual void normalizeRotationAngles_(double param_1, double param_2, int param_3);
	virtual void zz_800902a4_(long long param_1, long long param_2, double param_3, int param_4, int param_5, int param_6, int param_7, int param_8, int param_9);
	virtual void zz_80090254_(int param_1);
	virtual void processObjectWithArgument(int* param_1, int param_2);
	virtual void HandleJobj(int* param_1);
	virtual void initializeObjectDataAndResetValues_800929c4_(int param_1);
	virtual void DBClose0();
	virtual void zz_800284e0_(int param_1);
	virtual int zz_8002840c_(int param_1);
	virtual void CalcBoolChance(int param_1);
	virtual void zz_800280b4_(int* param_1, int param_2);
	virtual void zz_80090c84_(int* param_1, int param_2);
	virtual void zz_80028000_(int param_1);
	virtual void zz_800908c0_(int* param_1, int param_2);
	virtual void SceneCreated(int param_1);
	virtual void zz_80090864_(int param_1);
	virtual void zz_8009056c_(double param_1, int param_2, float* param_3);
	virtual void DBClose1();
	virtual void DBClose2();
	virtual void zz_8009047c_(int* param_1);
	virtual void DBClose3();
	virtual void AddToLinkedListIfNotPresent(int* param_1, int* param_2);
	virtual void CalculateDesireChance(int param_1, int param_2);
	virtual void RenderDepthFX(int* param_1, int param_2);
	virtual void RenderObstructionTexture(int* param_1, int param_2, uint param_3);
	virtual void UpdateChildObjTree(double param_1, int* param_2);
	virtual void TranslateXAndDependencies(double param_1, int* param_2);
	virtual void renderChildObjectsAndUpdateState(int* param_1);
	virtual void zz_80025748_(int* param_1, int param_2);
	virtual int zz_80025764_(int param_1, uint param_2);
	virtual int GetArrayElement(int param_1, uint param_2);
	virtual int getValueFromArray(int param_1, uint param_2);
	virtual uint32 ProcessVertexData(double param_1, double param_2, int param_3, int* param_4, int* param_5, int* param_6, int* param_7, int* param_8, uint param_9);
	virtual int OSGetStackPointer(int param_1, int param_2, int param_3);
	virtual int ProcessTriangleData(int param_1, float* param_2, float* param_3);
	virtual double getWeight();
	virtual void Project3D(int param_1, float* param_2, int* param_3, int* param_4, int* param_5, char** param_6);
	virtual double GetCharSpace(int param_1);
	virtual double HandleSpecialFloatValues(int param_1);
	virtual int computeProjections(double param_1, double param_2, int param_3, float* param_4, float* param_5, char** param_6);
	virtual int checkObjectVisibility(int* param_1, int param_2);
	virtual void UpdateRenderStateForChildren(int* param_1, int param_2);
	virtual int CalculateOffset_80025a48_(int param_1, int param_2);
	virtual int CBGetBytesAvailableForRead(int param_1);
	virtual void updateColorComponents(double param_1, int param_2, int param_3, uint param_4, uint param_5, uint param_6);
	virtual void DBClose4();
	virtual int gdev_cc_shutdown();
	virtual void HandleDataArrayAndConditions(double param_1, int param_2);
	virtual void initializeDataStructureWithProcessConditionCheck(int param_1, int param_2, short param_3);
	virtual int process_initialization(int param_1, int param_2, int param_3);
	virtual void DBClose5();

};
//802119fc
class XOBJDEMO : public XObjDemoBase, public JObjectHandler
{
	public:
		char buffer[4];
		~XOBJDEMO();
};
#endif