#ifndef game
#define game

class CBase
{
    public:
    CBase();
    virtual ~CBase();
    //16 v funcs funcs
    virtual void ParseStage(int len, char* text);
};

extern int stageIndex;
extern char currentStage;
#endif