#include <types.h>

extern "C" char MainGame[];
extern "C" int checkTaskStatusForParam(void* ctx, int param);

//800A84D0
extern "C" int CheckStatus48(void* unused, char* a, char* b)
{
    f32 f1 = *(f32*)(a + 0);
    if (f1 < *(f32*)(b + 4)) goto Path2;
    if (f1 >= *(f32*)(b + 8)) goto Path2;
    {
        int r = checkTaskStatusForParam(MainGame + 0xE7E24, *(int*)(b + 0x14));
        if (r != 0) return 0;
        return 1;
    }
Path2:
    {
        int r = checkTaskStatusForParam(MainGame + 0xE7E24, *(int*)(b + 0x14));
        if (r == 0) return 0;
        return -1;
    }
}

//800A8560
extern "C" int CheckStatus0x44(char* a, void* unused, char* b)
{
    if ((*(u32*)a & 0x44000000) == 0) goto NotSet;
    {
        int r = checkTaskStatusForParam(MainGame + 0xE7E24, *(int*)(b + 0x14));
        if (r == 0) return 0;
        return -1;
    }
NotSet:
    {
        int r = checkTaskStatusForParam(MainGame + 0xE7E24, *(int*)(b + 0x14));
        if (r != 0) return 0;
        return 1;
    }
}
