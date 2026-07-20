#include <types.h>

typedef void (*Fn98)(void*);
typedef void (*FnA4)(void*, int);
typedef void (*Fn70)(void*, void*, int);

//8009FCC4
extern "C" void handleTextObjects(char* obj)
{
    void* subobj = obj + 0x9AD0;
    char* vtable = *(char**)(obj + 0x9B04);

    Fn98 fn98 = *(Fn98*)(vtable + 0x98);
    FnA4 fnA4 = *(FnA4*)(vtable + 0xA4);

    u32 wordA = *(u32*)(obj + 0x9CF8);
    u32 wordB = *(u32*)(obj + 0x9CFC);

    u32 mask2 = 0;
    u32 a = wordA & 0x04000000;
    u32 b = wordB & mask2;
    b = b ^ mask2;
    a = a ^ mask2;

    if ((b | a) != 0) {
        u32 v0 = *(u32*)(obj + 0x9BC8);
        u32 v1 = *(u32*)(obj + 0x9BCC);
        u32 v2 = *(u32*)(obj + 0x9BD0);
        u32 local[3] = { v0, v1, v2 };

        wordB = wordB & 0xFFFFFFFF;
        wordA = wordA & ~0x04000000u;
        *(u32*)(obj + 0x9CFC) = wordB;
        *(u32*)(obj + 0x9CF8) = wordA;

        Fn70 fn70 = *(Fn70*)(vtable + 0x70);

        fn98(subobj);
        fnA4(subobj, 0xA);
        fn70(subobj, local, 0);

        u32 reload = *(u32*)(obj + 0x9CF8);
        *(u32*)(obj + 0x9CF8) = reload | 0x04000000;
    } else {
        fn98(subobj);
        fnA4(subobj, 0xA);
    }
}
