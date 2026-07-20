#include <types.h>

extern "C" char lbl_8036AF38[0x1000];
extern "C" char lbl_8036AC10[0x328];
extern "C" void Process_Card_Delete(void* a, void* b, void* c);
extern "C" int OSCreateThread(void* thread, void* func, void* param, void* stack, u32 stackSize, int priority, u16 attr);
extern "C" void OSResumeThread(void* thread);

//80088B18
extern "C" int CardDeleteProcess(char* ctx)
{
    Process_Card_Delete(*(void**)(ctx + 0), *(void**)(ctx + 4), *(void**)(ctx + 8));
    return 0;
}

//80088B4C
extern "C" int CardDeleteHandler(char* obj, void* arg1, void* arg2, void* arg3)
{
    if (*(int*)(obj + 0x6a08) != 0) {
        return 0;
    }
    *(void**)(obj + 0x6a1c) = arg3;
    *(void**)(obj + 0x6a10) = obj;
    *(void**)(obj + 0x6a14) = arg1;
    *(void**)(obj + 0x6a18) = arg2;

    *(void**)(lbl_8036AC10 + 0x318) = lbl_8036AF38;
    *(int*)(lbl_8036AC10 + 0x31c) = 0x1000;

    OSCreateThread(lbl_8036AC10, (void*)CardDeleteProcess, obj + 0x6a10, lbl_8036AF38 + 0x1000, 0x1000, 0x10, 1);
    OSResumeThread(lbl_8036AC10);

    *(int*)(obj + 0x6a08) = 1;
    return 1;
}
