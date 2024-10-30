#include <debug.h>

typedef struct  
{
   int x, y,z;
    
}Vec;
typedef struct  
{
    int unk[246];
}hsdJObj;
typedef struct CXObj {
    /* 0x00 */ void* unk0;                          /* inferred */
    /* 0x04 */ f32 unk4;                            /* inferred */
    /* 0x08 */ char pad8[0xC0];                     /* maybe part of unk4[0x31]? */
    /* 0xC8 */ f32 unkC8;                           /* inferred */
    /* 0xCC */ char padCC[0xC];                     /* maybe part of unkC8[4]? */
    /* 0xD8 */ f32 unkD8;                           /* inferred */
 
} CXObj;                                            /* size >= 0xDC */

extern void JumpHandler(double param_1, hsdJObj* param_2, int param_3);
void GetJump(double distance, hsdJObj* objToMove, int unk)//0x800CB7DC
{
    SetDebugFloat(objToMove, 0);
    JumpHandler(distance, objToMove, unk);
}

/*060CB7DC 00000010
48324B75 60000000
60000000 60000000
063F0280 00000110
9421FFF0 7C0802A6
90010014 93E1000C
7C7F1B78 4BD68CC1
7C6A1B79 4081002C
393FFFFF 3D008031
61087901 7FFF4050
7D4903A6 7D1F4A14
8CE90001 98E80000
394AFFFF 4200FFF0
80010014 7C0803A6
83E1000C 38210010
4E800020 2C040003
41820040 41810024
2C040001 41820044
2C040002 4082004C
3D208031 61297800
90690008 4E800020
2C040004 40820034
3D208031 61297800
90690010 4E800020
3D208031 61297800
9069000C 4E800020
3D208031 61297800
90690004 4E800020
3D208031 61297800
90690000 4E800020
9421FFF0 7C0802A6
90010014 90610008
3D208031 61297800
39410008 91490000
80610008 4CC63242
4BC3572D 80010014
7C0803A6 38210010
4E800020 00000000*/