#include <types.h>

extern "C" char lbl_803672CC[0x300];

//8006F390
extern "C" s16 GetShortFieldAt0x170Plus0xA(int idx)
{
    char* base = *(char**)(lbl_803672CC + 0x170);
    return *(s16*)(base + idx * 2 + 0xa);
}

//8006F3AC
extern "C" void* GetField_0x1A8(void)
{
    return *(void**)(lbl_803672CC + 0x1a8);
}
