#include "cbrs.h"


bool started = false;
ChrObject* newChibi;

int i = 0;
void RunMessageHack()
{
    *mode = 0x33;
    *control = 0x0A;
        

    
}

/*
void OnRenderVisual(int*val)
{
    RenderVisual(val);
    SetDebugFloat(val, 0);// 0x80260D30
    

}
*/
void TestFBMirrorAddress(int param)
{
    FBMirror__ct(param);
}
void OnLoad(int val) 
{
    //use BaseSceneHandlerOnActivate
    //char* debugTextData = "data";

    OnActivate(val);
    if(!started){
        
   
        started = true;
        //CopyChibiObj();
    }
    if(started)
    {
        // RunMessageHack();
       // _sprintf(debugTextData, "Pos: X: %f\n, Pos Y: %f\n, Pos Z: %f\n", *chibiX, *chibiY, *chibiZ);
        //SetDebugText(debugTextData);
        
    }
   

    //SetDebugText("Started = True");
    return;
}
/*
void OnUpdate(int val)
{
    if(!started){
        return;
    }
    ParseTextStream(24, SCENE_OBJ, "Scene Started", 1);

    RenderAndUpdateGraphics(val);

   // SetDebugText("Started");

    //post_physics_update(val);
    //SetDialogueText(test , data);
    //initCameraZoom(test++, 0xfffffff);
    return;
}
void DebugPlayer(int player, int val)
{
   return GetPlayer(player, val);
}
void DebugRenderScene(int val)
{
    RenderScene(val);
    
    
    //SetDebugFloat(val);

}
void DebugCreateGameScene(int val)
{
   return CGameCreateScene(val);
   // SetDebugFloat(val); 0x8025c400
    
}
void DebugLoadArchive(int param_1,int param_2)
{
    DCInvalidateRange(param_1,param_2);
    //SetDebugFloat(param_1 - 0xcc);  0x81768480
}
void DebugInitActor(int param_1)
{
    InitSceneActor(param_1);//0x8025C400
   
    //SetDebugFloat(param_1);
}
void InitTextObj(char* input)
{
    
    texObj->intro[0] = 0x23;
    texObj->intro[1] = 0x00;
    texObj->intro[2] = 0x00;
    texObj->intro[3] = 0x00;
    texObj->intro[4] = 0x05;
    char* baseAddress = (char*)0x80317900 + 5;
    int stringLength = strlen(input);
    for (int i = 0; i < stringLength; i++) {
        // Calculate the memory address for the current character
        char* currentAddress = baseAddress + i;

        // Assign the character from the input string to the memory address
        *currentAddress = input[i];
    }
    texObj->text[stringLength] = 0x02;
    texObj->text[stringLength+1] = 0xFE;
    
}
void DebugParseTextStream(double param_1,int param_2,char *param_3,int param_4)
{
    ParseTextStream(param_1,param_2,*param_3,param_4);
    //SetDebugText(*param_3);
}
void DebugReadArchive(int param_1,int param_2)
{
    ReadArchive(param_1, param_2);// 81768500
    //SetDebugFloat(param_1);

}
void DebugHandleCollision(int param_1,int param_2)
{
    HandleCJObjVecData(param_1, param_2);
    //SetDebugFloat(param_2); //1 =8066FE00 2 =0x809DAC00
}
void DrawTest(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6)
{
    GXSetTexCoordGen2(param_1, param_2, param_3, param_4, param_5, param_6);
  //  GXSetTexCoordGen2(1  , 1, 1, 1, 1, 1);
    //SetDebugFloat(param_1);
}
void DebugProcessCommands(int param_1,int param_2)
{
    ProcessEventCommand( param_1, param_2);//80 2B 94 80
    //SetDebugFloat(param_1);
}
void DebugMoveChibiRobo(int param_1,int param_2)
{
   // moveChibiRobo( param_1, param_2); 80670180
    //SetDebugFloat(param_1);
   //

}
int DebugTextBox(char *param_1,char param_2,char *param_3,int param_4)
{
    //param1 = 0x802B9480
    // zz_800749dc_(param_1,param_2);
    // char* data = "Prama";
     //_sprintf(data, "Param_1:_%s,_Param_2:_%s,_Param_3:_%s,_Param_4:_%s",param_1, param_2, param_3, param_4);
    SetDebugFloat(param_1, 0); //textObj ptr
    SetDebugFloat(param_2, 1);
    SetDebugFloat(param_3, 2);
    SetDebugFloat(param_4, 3);
   
    //SetDebugText(data);
    //SetDebugFloat(param_2);
       // ChibiText newText;
       //// InitTextObj("Test");
       // newText.text = texObj->text;
        //InitTextBox(0x7FFFFFFF, 23, newText.text, (int)*newText.text + 4);
    //param 1 7FFFFFFF <- static Points to before ram addr //param2 0x23 -DIaloge 2B - menu selection <- static //param3 0x816C0680 <- text pointer //param4 0x802B9500 <- uncover type from write
    return InitTextBox( param_1, param_2, param_3, param_4);
    //-c TextBoxTest:0x80074acc
    //param1 is pointer to text 802B9500
    //param2 is 23
    //param 3 is 816C0700
    //param 4 is param 1 + 0x44
    //write to addr 
    //InitTextBox(0x802B9500, 223, 0x816C0700,0x802B9500 + 0x44);
    //SetDebugText("Test Text Type Shit");
   // SetDebugText(param_1);
}
int DebugGetFlag(int param1)
{
    
    //SetDebugFloat(param1);
    //param1 0x802B9480 <- uncover type from write
    return GetFlag(param1);
}
void DebugGameState(int objPtr,int param_2)
{
    //SceneObj 
    //1 or 2 so far
    UpdateGameState(objPtr, param_2);
    
    //SetDebugFloat(param_2);
    
}
int DebugScreenMsg(int val)
{
    SetDebugFloat(val, 0);
    // 02
    return HandleScreenMSG(val);
}
void DebugSetMsgWindow(int param_1)
{
    SetDebugFloat(param_1, 0);
    SetMsgWindow(param_1);
}
void DebugProcessText(short data)
{
    SetDebugFloat(data, 0);//pointer to string
    processTextCacheData(data);
}
void DebugInitGameString(int data)
{
    SetDebugFloat(data, 0);
    initGameString(data);
    //Loop @ 8009ab54 writes text
}
*/
void DebugDisplayMessage(double param_1,double param_2,double param_3,double param_4,
                   double param_5,double param_6,double param_7,double param_8,
                   int param_9,int param_10,char *param_11,int param_12,
                   int param_13,int param_14,int param_15,int param_16)
{
    //SetDebugFloat(param_16, 0);

    //First 5 params 251 ,328, 0, 24,24
    //Next 5 params 320, 0,0,sceneObj, variable Num
    //next 5 0x80201DCC(text), 0, 0,0 ,0
    //last 1 0
    
    if(!started)
    {
        
      // SetDebugText("Load Game");

    }
   
     DisplayMessage( param_1, param_2, param_3, param_4,
                    param_5, param_6, param_7, param_8,
                    param_9, param_10, debugString, param_12,
                    param_13, param_14, param_15, param_16);

    
}

void CopyChibiObj(int *param_1,int param_2)
{
    // SetDebugText("Loaded chibi robo");
    if(!started){
         newChibi = malloc(sizeof(ChrObject));
    //copy data
        //memcpy(newChibi, chibiRobo, sizeof(ChrObject));
        SetDebugFloat(newChibi,1);
        int var = SetStageData(newChibi);
        __register_global_object(var, initChibiRobo, newChibi);
        chibiSceneData = newChibi;
        started = true;
    }
   
    process_matrices_and_objects(newChibi, param_2);
}

void DebugInitObj(int val)
{

     initializeObjectDataAndResetValues_800929c4_( val);
     i++;
     /*
     //80260d58
     //802fe4c8
     //802b9ea8
     ....
     //802fe4c8
    */
     SetDebugFloat(val,0);
     SetDebugFloat(i,1);
    return;
}
void DebugMalloc(int param)
{
    allocate_mem(param);
    SetDebugFloat(param, 0);
}