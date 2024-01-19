/*
game/game.cpp:
	.text       start:0x80013580 end:0x8001364C
	.sdata2     start:0x8065BE64 end:0x8065BE78

*/
/***
 * Types: 
 * 
 * CGame
 * CMovie
 * MemCard
 * CCard
 * XSound
 * CFile
 * CSound
*/
#include <game.h>


StageData stageData;
//Externs
extern "C" char* strtok(char* charEval,char* seperator);
extern "C" char* strcmp(char *__s1,char *__s2);
extern "C" int find_stage_index(char *param_1);

void CBase::ParseStageData(int len, char* text)//Match 0x80013580
{
  char* currentChar = (text + 4);
  for (int i = 1; i < len; i++) {
    if (*currentChar == '/') {
      char* charRead = strtok(currentChar + 1,":");
      char* wordFound = strcmp(charRead,"stage");
      if (wordFound == 0) {
        wordFound = strtok(0," ");
        stageData.stageIndex = find_stage_index(wordFound);
      }
      else {
        wordFound = strcmp(charRead,"slot");
        if (wordFound == 0) {
          charRead = strtok(0," ");
          stageData.currentStage = *charRead - 65;
        }
      }
    }
    currentChar++;
  }
  return;
}


//Start
const CGame MainGame;
const int unk_val;
//extern const ARCacheInfo cacheInfo
const int unk_val_2;