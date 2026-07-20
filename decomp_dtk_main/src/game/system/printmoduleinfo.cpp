#include <types.h>

extern "C" char lbl_803672CC[0x300];
extern "C" char lbl_8064AF20[0x200];
extern "C" void printModuleInformation(void* arg);

//8006F4C8
extern "C" int CheckField0x150NonZero(void)
{
    return *(void**)(lbl_803672CC + 0x150) != 0;
}

//8006F4E4
extern "C" void printModuleInformationHelper(void)
{
    char buf[4];
    *(u32*)buf = *(u32*)(*(char**)(lbl_803672CC + 0x170));
    char* dest = lbl_8064AF20 + 0x48;
    dest[0] = buf[0];
    dest[1] = buf[1];
    dest[2] = buf[2];
    dest[3] = buf[3];
    printModuleInformation(lbl_803672CC + 0x1ac);
}
