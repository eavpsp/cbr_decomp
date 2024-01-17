#ifndef game
#define game
#include<game_gx.h>
#include<gx_shape.h>
struct StageData
{
    int stageIndex;
    char currentStage;
    int unk;
    int unk2;
    int unk3;
    int unk4;
    int unk5;
    int unk6;
};

extern StageData stageData;//8020fbc0
class CBase
{
    public:
    CBase();
    virtual ~CBase();
    //16 v funcs funcs
    virtual void ParseStageData(int len, char* text);
};

/*
game/game.cpp:
	.text       start:0x80013580 end:0x8001364C
	.sdata2     start:0x8065BE64 end:0x8065BE78

*/


#endif