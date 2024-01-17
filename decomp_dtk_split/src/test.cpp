//Game.cpp
/*
CTexObj
CStatus
Logo
XOBJS
CStack
CEvt
CSound
XSound
CCard
*/
#include <game.h>

struct ClassData
{

};
class MainClass
{
    public:
    virtual ~MainClass(){};

    virtual int StartClass() const {
        return (int)this;
    };
    
    MainClass();
};
class ChildClass : public MainClass
{
    public:
    CBase obj;
   
};

ChildClass classDat;
int stageIndex;
char currentStage;
//Externs
extern "C" char* get_next_word(char* exception,char* seperator);
extern "C" char*  strcmp(char *__s1,char *__s2);
extern "C" int find_stage_index(char *param_1);
void ParseStageData(int len, char* text)
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
 /*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
 //ptr to classType
//Container that stores pointer to classType(2) 2nd usually null(Base Class)
//Class that stores base class as parent (3) 2nd usually null(Child Class)
