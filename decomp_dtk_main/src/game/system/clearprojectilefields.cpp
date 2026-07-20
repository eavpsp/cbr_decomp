#include <types.h>

extern "C" void fn_801C70F4(void* node, int flag);

//800BB708
extern "C" void fn_800BB708(char* obj)
{
    *(int*)(obj + 0x4) = 0;
    *(int*)(obj + 0xc) = 0;
    *(int*)(obj + 0x20) = 0;
    *(int*)(obj + 0x24) = 0;
}

//800BB720
extern "C" void* fn_800BB720(char* obj)
{
    return *(void**)(obj + 0x260);
}

//800BB728
extern "C" void fn_800BB728(char* obj)
{
    *(int*)(obj + 0x984) = 0;
    if (*(int*)(obj + 0x22c) & 1) {
        fn_801C70F4(*(void**)obj, 0x10);
    }
}
