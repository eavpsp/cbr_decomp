//Used to build a .o Object file for reversing in Ghidra
//
/*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
struct StageData
{
    char* stageData[8];
};
StageData stageData;

extern "C" char* strtok(char* charEval,char* seperator);
extern "C" char* strcmp(char *__s1,char *__s2);
extern "C" int find_stage_index(char *param_1);
extern char* lbl_8065BE68;
extern char* lbl_8065BE64;
extern char* lbl_8065BD74;
extern char* lbl_8065BE70;
extern StageData lbl_8020FBC0;
void ParseStageData(int param1, int len, char* text)//Match 0x80013580
{
  char* currentChar = (text + 4);
  for (int i = 1; i < len; i++) {
    if (*currentChar == '/') {
      char* charRead = strtok(currentChar + 1,lbl_8065BE64);
      char* wordFound = strcmp(charRead,lbl_8065BE68);
      if (wordFound == 0) {
        wordFound = strtok(0,lbl_8065BD74);
        lbl_8020FBC0.stageData[0] = (char*)find_stage_index(wordFound);
      }
      else {
        wordFound = strcmp(charRead,lbl_8065BE70);
        if (wordFound == 0) {
          charRead = strtok(0,lbl_8065BD74);
          lbl_8020FBC0.stageData[1] = charRead - 65;
        }
      }
    }
    currentChar++;
  }
  return;
}
