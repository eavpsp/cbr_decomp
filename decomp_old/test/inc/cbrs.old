/*/DEBUGS
//-c OnLoad:0x8000ee84 -c OnUpdate:0x8000e318 -c DebugPlayer:0x800afcc4 
-c DebugRenderScene:0x8000e14c -c DebugCreateGameScene:0x80019364
 -c DebugInitActor:0x80012efc -c DebugReadArchive:0x8019f5d8 
 -c DebugHandleCollision:0x800d18ec -c DrawTest:0x801b0bc0  -c DebugTextBox:0x80074acc
-c DebugProcessCommands:0x800102ec -c DebugTextBox:0x80074acc
-c DebugProcessText:0x80081fc0 -c DebugInitGameString:0x800973f4
-c DebugDisplayMessage:0x8002b668 -c OnRenderVisual:0x8000eaec 
-c DebugGetFlag:0x80072270 -c DebugGameState:0x8001577c -c DebugScreenMsg:0x8007ea08 
-c DebugInitObj:0x80026c8c -c DebugDisplayMessage:0x8002b668 -c DebugMalloc:0x801b1390  -c CopyChibiObj:0x800bb7ac
//*/

//memset test, 800054c4
#include <stdlib.h>
#include <stdint.h>
#include <stdarg.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "structs2.h"
#include "sceneObj.h"
#include "debug.h"
//ACCESS GAME VARS
//Base Scene Object for game
#define SCENE_OBJ          0x8025C400
#define SCREEN_CONTROL          0x80260D33
#define SCREEN_MODE          0x80260D37 //02


//#define TEXT_END          0x02FE
///#
typedef struct 
{
    /* data */
    char data[75];

} CGameMainObj;

typedef struct 
{
    char text;
} ChibiText;
/*
Debug Addresses

*/
static float* chibiX = (float*)0x8038FB84;
static float* chibiY = (float*)0x8038FB88;
static float* chibiZ = (float*)0x8038FB8C;
ChrObject* chibiSceneData = (ChrObject*)(0x80265a94 + 0x28);
static ChrObject* chibiRobo = (ChrObject*)0x803860F0;
static CGameMainObj* CGameMainobj = (CGameMainObj*)0x8025f734;
static SceneObject* chibiSceneObject = (SceneObject*)SCENE_OBJ;
void UpdateGameState(int param_1,int param_2);
void LoadSceneData(void);
void CGameMain(int param_1);
void RenderVisual(int *param_1);
void processTextCacheData(short *textCache);
void process_matrices_and_objects(int *param_1,int param_2);
//void OSREPORT(char* input); OSREPORT = 0x8001580c;
char* _sprintf(char *__s,char *__format,...);
void __init_hardware(void);
void initGameString(int param_1);
void setParamToGlobalVar(int param_1);
int GameSceneManager(int param_1);
void post_physics_update(int param_1);
void RenderAndUpdateGraphics(int param_1);
void * initCameraZoom(void *param_1,short param_2);
void SetDialogueText(int *param_1,char *param_2);
void DisplayMessage(double param_1,double param_2,double param_3,double param_4,
                   double param_5,double param_6,double param_7,double param_8,
                   int param_9,int param_10,char *text,int param_12,
                   int param_13,int param_14,int param_15,int param_16);
void OSExecp();
int GetPlayer(int param_1,int param_2);
void initializeObjectDataAndResetValues_800929c4_(int param_1);

static char* control = (void*)0x80260D33;
static char* mode = (void*)0x80260D37;
static TextObject* texObj = (int*)0x80317900;
void __register_global_object(undefined4 param_1,undefined4 param_2,int objPtr);
ChrObject * SetStageData(ChrObject *chrObj);
ChrObject * initChibiRobo(ChrObject *chrObj_803860f0,short param_2);
//static int* debugFloat = (int*)0x80317800; //0x80317800;

void RenderScene(int param_1);
int CGameCreateScene(int param_1);
int DVDClose(int val);
void UpdateGameState(int objPtr,int param_2);
int DCInvalidateRange(int param_1,int param_2);
void initXobjChrObjectVectors(ChrObject *chrObj);
void InitSceneActor(int param_1);
int ReadArchive(int param_1,int param_2);
void OverwriteCollision();
void HandleCollisionAndParticleGeneration(int param_1);
void InitializeObjectAndHandleCollision
               (double x,double y,double z,double param_4,double param_5,double param_6,
               int objectData,int  initData,int param_9,int param_10);
int HandleCJObjVecData(int param_1,int param_2);
void GXSetTexCoordGen2(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6);
int ProcessEventCommand(int param_1,int param_2);
void moveChibiRobo(float param_1,int param_2);
int InitTextBox(char *textObj,int someValue_23,char *baseText,int param_4);
int zz_800749dc_(int param_1,int param_2);
double ParseTextStream(double val,int sceneObjectPtr,char *textPtr,int flag);
int GetFlag(int param_1);
int HandleScreenMSG(int param_1);
void SetMsgWindow(int param_1);
int allocate_mem(int param_1_ptr);
int InitActorToy(int param_1);
void * XOBjActorToy__dt(void *param_1,short param_2);
void FBMirror__ct(int param_1);

