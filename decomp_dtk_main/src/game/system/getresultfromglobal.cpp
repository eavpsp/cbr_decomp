#include <types.h>

extern "C" char lbl_803672CC[0x300];

typedef unsigned char BOOL8;
typedef void* (*FuncPtr)(void);

//8006F338
extern "C" void* getResultBasedOnGlobalVariableValue(void)
{
    void* obj = *(void**)(lbl_803672CC + 0x2e4);
    BOOL8 valid = (obj != 0);
    if (!valid) return (void*)-1;
    if (!valid) return (void*)-1;
    FuncPtr fn = *(FuncPtr*)((char*)obj + 0x34);
    return fn();
}
