/*
game/game.cpp:
	.text       start:0x80013580 end:0x8001364C
	.data       start:0x8020FBC0 end:0x8020FBE0
	.sdata2     start:0x8065BE64 end:0x8065BE78



game/game.cpp:
    .text       start:0x80013580 end:0x8001364C
    .rodata     start:0x8020C99C end:0x8020C9B0
    .data       start:0x8020FBC0 end:0x8020FBE0
    .bss        start:0x8025C400 end:0x80303030
    .sdata2     start:0x8065BE64 end:0x8065BE78
*/
#include<globals.h>
#include<Dolphin/os.h>
#include <game.h>
//Start - Still baking in the oven
//Need to overwrite old data with new ones
//CGame MainGame;
//ARCacheInfo arcacheInfo;
//ARPreCache arPreCache;
//CThread cThread;
//CFile* gameFile;

/// <summary>
/// To be added to the actual CGame Struct , put here as raw replacements
/// </summary>
char* stage = "stage";//8065be68
char* sep = ":";//8065be64
char* slot = "slot";//8065be70
StageData stageData; //8020fbc0

extern "C" char* strtok(char* charEval,char* seperator);
extern "C" char* strcmp(char *__s1,char *__s2);
extern "C" int find_stage_index(char *param_1);

void CGame::ParseStageData(int len, char* text)//Match 0x80013580
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