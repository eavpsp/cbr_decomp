#include <types.h>

extern "C" void __dl__FPv(void* ptr);
extern "C" char lbl_80227E28[];
extern "C" char lbl_80227E58[];

//800BC480
extern "C" void* fn_800BC480(char* obj, short flag)
{
    if (obj == NULL) {
        return obj;
    }

    *(void**)(obj + 0x27c) = lbl_80227E28;
    if (obj != NULL) {
        *(void**)(obj + 0x27c) = lbl_80227E58;
    }

    if (flag > 0) {
        __dl__FPv(obj);
    }
    return obj;
}
