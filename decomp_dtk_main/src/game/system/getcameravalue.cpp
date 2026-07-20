#include <types.h>

extern "C" char lbl_80210314[12];

struct TaggedStruct
{
    void* a;
    void* b;
    void* c;
    void* vtable;
};

//800A2E2C
extern "C" void GetCameraValueOrDefault(TaggedStruct* out, TaggedStruct* in)
{
    out->a = in->a;
    out->b = in->b;
    out->c = in->c;
    out->vtable = lbl_80210314;
}

//800A2E54
extern "C" int IsFlagSetInDataStructure(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & mask2;
    int b = *(int*)(obj + 0x22c) & 1;
    b = b ^ mask2;
    a = a ^ mask2;
    return (b | a) != 0;
}
