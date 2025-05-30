
#include<globals.h>
#include<Dolphin/os.h>
#include <game.h>

//Start - Still baking in the oven
//Need to overwrite old data with new ones
//CGame MainGame;//.bss:0x8025C400
//ARCacheInfo arcacheInfo;
//ARPreCache arPreCache;
//CThread cThread;
//CFile* gameFile;


//Working
char stage[8] = "stage";
char sep[4] = ":";
char slot[8] = "slot";

extern "C" char* strtok(char* charEval,char* seperator);
extern "C" char* strcmp(char *__s1,char *__s2);
extern "C" int find_stage_index(char *param_1);

extern "C" char space[4];//defined in globals
char MainGame[0xA6C30]; //.bss:0x8025C400 size:0xA6C30 Crude Match

void CGame::ParseStageData(int len, char* text)//Match 0x80013580 Working
{
  char** currentChar = reinterpret_cast<char**>(text + 4);
  for (int i = 1; i < len; i++) {
    switch (**currentChar) {
      case '/':
      {
        char* charRead = strtok(*currentChar + 1,sep);
        if (strcmp(charRead,stage) == 0) {
          stageData.stageData_00 = find_stage_index(strtok(0,space));
        }
        else if (strcmp(charRead,slot) == 0) {
          charRead = strtok(0,space);
          stageData.member_04 = charRead[0] - 'A';
        }
      }

      break;
    }

    currentChar++;
  }
  return;
}
/*
//8000A4B8
int CGame::CheckTitleLogo()
{
    bool bVar1;
    uint uVar2;

    uVar2 = 0;
    bVar1 = false;
    if (this->logo.unk0[2] >= 1 && this->logo.unk0[2] < 0xf) 
    {
        bVar1 = true;
    }
    if(!bVar1)
    {
       
        if (this->titleObject.unk0[0] >= 1 && this->titleObject.unk0[0] < 0x17) 
        {
            bVar1 = true;
        }
        if(!bVar1)
        {
            uVar2 = 1;
        }
    }
    else{
        uVar2 = 1;
    }
    
 
    return ((int)(-uVar2 | uVar2) >> 0x1f) + 2;
}

//8000A520
f32* CGame::GetMotionCamera() //(0xe5d38)
{
    return &this->cmotionControlCam.camera.viewport.right;
}
*/