#include <types.h>

extern "C" char lbl_803672CC[0x300];
extern "C" void closeAndCleanupDataStructures(void* arg);

typedef unsigned char BOOL8;

//8006F544
extern "C" void closeAndCleanupDataStructuresGlobal(void)
{
    void* obj = *(void**)(lbl_803672CC + 0x2e4);
    BOOL8 valid = (obj != 0);
    if (!valid) goto skip_call;
    if (!valid) goto skip_call;
    {
        typedef void (*FuncPtr)(int, int, int);
        FuncPtr fn = *(FuncPtr*)((char*)obj + 0x34);
        fn(6, 0, 0);
    }
skip_call:
    closeAndCleanupDataStructures(lbl_803672CC + 0x1ac);

    {
        char* obj2 = lbl_803672CC + 0x84;
        typedef void (*FuncPtr2)(void);
        FuncPtr2 fn2 = *(FuncPtr2*)(*(char**)(obj2 + 0xe8) + 0x20);
        fn2();
    }

    *(int*)(lbl_803672CC + 0x80) = 0;
}
