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
int stageIndex;
char currentStage;
//Externs
extern "C" char* get_next_word(char* exception,char* seperator);
extern "C" char*  strcmp(char *__s1,char *__s2);
extern "C" int find_stage_index(char *param_1);
void ParseStageData(int len, char* text)//Match 0x80013580
{
  char* currentChar = (text + 4);
  for (int i = 1; i < len; i++) {
    if (*currentChar == '/') {
      char* charRead = get_next_word(currentChar + 1,":");
      char* wordFound = strcmp(charRead,"stage");
      if (wordFound == 0) {
        wordFound = get_next_word(0," ");
        stageIndex = find_stage_index(wordFound);
      }
      else {
        wordFound = strcmp(charRead,"slot");
        if (wordFound == 0) {
          charRead = get_next_word(0," ");
          currentStage = *charRead - 65;
        }
      }
    }
    currentChar++;
  }
  return;
}