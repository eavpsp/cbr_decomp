#include <types.h>

extern "C" void fn_800A0894(char* obj);
extern "C" void fn_800C5A00(char* obj);
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D43C;

typedef void (*VtableFn80)(void*, int, f32, f32, f32, f32, int, int, int, int);

//800BAD80
extern "C" void fn_800BAD80(char* obj)
{
    fn_800A0894(obj);
}

//800BADAC
extern "C" void fn_800BADAC(char* obj)
{
    f32 one = lbl_8065D35C;
    *(f32*)(obj + 0x988) = one;
    *(f32*)(obj + 0x98c) = one;
    *(f32*)(obj + 0x990) = one;
    *(f32*)(obj + 0x998) = one;
    *(f32*)(obj + 0x99c) = one;
    *(f32*)(obj + 0x9a0) = one;
    *(f32*)(obj + 0x9a8) = one;
    *(f32*)(obj + 0x9ac) = one;
    *(f32*)(obj + 0x9b0) = one;

    *(f32*)(obj + 0xf8) = *(f32*)(obj + 0x108);
    *(f32*)(obj + 0xfc) = *(f32*)(obj + 0x10c);
    *(f32*)(obj + 0x100) = *(f32*)(obj + 0x110);

    if (*(int*)(obj + 0xbec) != 0) {
        fn_800C5A00(obj + 0xbe8);
        *(int*)(obj + 0xbec) = 0;
        VtableFn80 fn = *(VtableFn80*)(*(char**)(obj + 0x34) + 0x80);
        fn(obj, 0x11, lbl_8065D35C, lbl_8065D380, lbl_8065D35C, lbl_8065D43C, 0, 0, 0, 0);
        *(int*)(obj + 0xa2c) = 3;
    }
}
