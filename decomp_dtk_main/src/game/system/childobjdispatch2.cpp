#include <types.h>

extern "C" void RenderDepthFX(void** obj, void* param2);

typedef void (*DispatchFn1)(void*, void*);

static void DispatchIfNonZero1(char* base, int offset, void* p2)
{
    if (*(int*)(base + offset) != 0) {
        char* vtableBase = *(char**)(base + offset + 0x34);
        DispatchFn1 func = *(DispatchFn1*)(vtableBase + 0xd8);
        func(base + offset, p2);
    }
}

//800B5974
extern "C" void ChildObjectDispatch_800B5974(char* obj, void* param2)
{
    RenderDepthFX((void**)obj, param2);

    DispatchIfNonZero1(obj, 0x9AD0, param2);
    DispatchIfNonZero1(obj, 0xB1B0, param2);
    DispatchIfNonZero1(obj, 0xBB38, param2);
    DispatchIfNonZero1(obj, 0xC4C0, param2);
    DispatchIfNonZero1(obj, 0xCE58, param2);

    char* ptr = obj;
    for (int i = 0; i < 9; i++) {
        DispatchIfNonZero1(ptr, 0xD7F8, param2);
        ptr += 0x980;
    }
}
