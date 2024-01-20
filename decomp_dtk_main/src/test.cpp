//Used to build a .o Object file for reversing in Ghidra
//
/*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
struct StageData
{
    int stageData_00;
    int member_04;
    int _08[6];
};
StageData stageData; //8020fbc0

extern "C" char* strtok(char* charEval,char* seperator);
extern "C" char* strcmp(char *__s1,char *__s2);
extern "C" int find_stage_index(char *param_1);
char* stage = "stage";
char* sep = ":";
char* slot = "slot";
extern char* space;
void ParseStageData(int param, int len, int text)//Match 0x80013580
{
  char** currentChar = reinterpret_cast<char**>(text + 4);
  for (int i = 1; i < len; i++) {
    switch (**currentChar) {
      case '/':
      {
        char* charRead = strtok(*currentChar + 1,sep);//8065be64
        if (strcmp(charRead,stage) == 0) {//8065be68
          stageData.stageData_00 = find_stage_index(strtok(0,space));
        }
        else if (strcmp(charRead,slot) == 0) {//8065be70
          charRead = strtok(0,space);//8065bd74
          stageData.member_04 = charRead[0] - 'A';
        }
      }

      break;
    }

    currentChar++;
  }
  return;
}
