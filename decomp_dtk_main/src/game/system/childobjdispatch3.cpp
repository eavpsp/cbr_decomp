#include <types.h>

extern "C" void UpdateRenderStateForChildren(char* obj);

typedef void (*DispatchFn2)(void*, void*);

static void DispatchUnconditional(char* base, int offset, void* p2)
{
    char* vtableBase = *(char**)(base + offset + 0x34);
    DispatchFn2 func = *(DispatchFn2*)(vtableBase + 0x120);
    func(base + offset, p2);
}

//800B5AB8
extern "C" void ChildObjectDispatch_800B5AB8(char* obj, void* param2)
{
    UpdateRenderStateForChildren(obj);

    DispatchUnconditional(obj, 0x9AD0, param2);
    DispatchUnconditional(obj, 0xB1B0, param2);
    DispatchUnconditional(obj, 0xBB38, param2);
    DispatchUnconditional(obj, 0xC4C0, param2);
    DispatchUnconditional(obj, 0xCE58, param2);
}
