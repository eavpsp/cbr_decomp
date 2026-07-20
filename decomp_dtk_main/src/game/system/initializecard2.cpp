#include <types.h>

extern "C" char lbl_8036AF38[0x1000];
extern "C" char lbl_8036AC10[0x328];
extern "C" int InitializeCardData(char* param);
extern "C" int OSCreateThread(void* thread, void* func, void* param, void* stack, u32 stackSize, int priority, u16 attr);
extern "C" void OSResumeThread(void* thread);

//80089890
extern "C" int InitializeCard2(char* obj, void* arg1, void* arg2)
{
    if (*(int*)(obj + 0x6a08) != 0) {
        return 0;
    }
    *(void**)(obj + 0x6a1c) = arg2;
    *(int*)(obj + 0x6200) = 0;
    *(int*)(obj + 0x62cc) = 0;
    *(int*)(obj + 0x6398) = 0;
    *(int*)(obj + 0x6464) = 0;
    *(int*)(obj + 0x6530) = 0;
    *(int*)(obj + 0x3fc + 0x6200) = 0;
    *(int*)(obj + 0x3fc + 0x62cc) = 0;
    *(int*)(obj + 0x3fc + 0x6398) = 0;
    *(int*)(obj + 0x3fc + 0x6464) = 0;
    *(int*)(obj + 0x3fc + 0x6530) = 0;
    *(void**)(obj + 0x6a10) = obj;
    *(void**)(obj + 0x6a14) = arg1;

    *(void**)(lbl_8036AC10 + 0x318) = lbl_8036AF38;
    *(int*)(lbl_8036AC10 + 0x31c) = 0x1000;

    OSCreateThread(lbl_8036AC10, (void*)InitializeCardData, obj + 0x6a10, lbl_8036AF38 + 0x1000, 0x1000, 0x10, 1);
    OSResumeThread(lbl_8036AC10);

    *(int*)(obj + 0x6a08) = 1;
    return 1;
}
