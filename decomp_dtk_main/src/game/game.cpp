/*
game/game.cpp:
	.text       start:0x80013580 end:0x8001364C
	.data       start:0x8020FBC0 end:0x8020FBE0
	.sdata2     start:0x8065BE64 end:0x8065BE78

*/
#include<globals.h>
#include<Dolphin/os.h>
//#include <game.h>
//Start - Still baking in the oven
/*
const CGame MainGame;
const CPadEx *CurrentPad;
const ARCacheInfo *ARCacheInfoData = new ARCacheInfo();
const FBMirrorEx FBMirrors[5];//array size too small 0x2f4 cur 0x2b0
const ARPreCache* ARPreCacheData = new ARPreCache();
const CThread* CGameThread = new CThread();
*/

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
struct CGame;
void ParseStageData(CGame* CurrentCGame, int len, char* text)//Match 0x80013580
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
void CGame::ParseStageData(CGame* CurrentCGame, int len, char* text)//Match 0x80013580
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
}*/