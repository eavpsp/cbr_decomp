#include <types.h>

extern "C" void RenderObstructionTexture(char* obj);

typedef void (*DispatchFn)(void*, int, int);

static void DispatchIfNonZero(char* base, int offset, int p2, int p3)
{
    if (*(int*)(base + offset) != 0) {
        char* vtableBase = *(char**)(base + offset + 0x34);
        DispatchFn func = *(DispatchFn*)(vtableBase + 0xdc);
        func(base + offset, p2, p3);
    }
}

//800B5808
extern "C" void NoOpFunction2(void)
{
}

//800B580C
extern "C" void ChildObjectDispatch_800B580C(char* obj, int p2, int p3)
{
    RenderObstructionTexture(obj);

    DispatchIfNonZero(obj, 0x9AD0, p2, p3);
    DispatchIfNonZero(obj, 0xB1B0, p2, p3);
    DispatchIfNonZero(obj, 0xBB38, p2, p3);
    DispatchIfNonZero(obj, 0xC4C0, p2, p3);
    DispatchIfNonZero(obj, 0xCE58, p2, p3);

    char* ptr = obj;
    for (int i = 0; i < 9; i++) {
        DispatchIfNonZero(ptr, 0xD7F8, p2, p3);
        ptr += 0x980;
    }
}
