#include <types.h>

extern "C" char MainGame[];
extern "C" int* lbl_802246D0[];

//8006DBF0
extern "C" int GetPlayerPrompt(int index)
{
    u8 val = MainGame[0x3318];
    return lbl_802246D0[val][index];
}
