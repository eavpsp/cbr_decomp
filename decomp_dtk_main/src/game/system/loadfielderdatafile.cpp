#include <types.h>

extern "C" int LoadFileInMemory(void* obj);
extern "C" char lbl_802262AC[0x24];
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D43C;

typedef void (*VtableFn80)(void*, int, f32, f32, f32, f32, int, int, int, int);

//800B9758
extern "C" int fn_800B9758(char* obj)
{
    int idx = *(int*)(obj + 0x95D0);
    char* entry = *(char**)((char*)lbl_802262AC + idx * 4);
    if (entry == NULL) {
        return 1;
    }
    if (LoadFileInMemory(obj + 0x158D4) == 0) {
        return 0;
    }
    VtableFn80 fn = *(VtableFn80*)(*(char**)(obj + 0x34) + 0x80);
    fn(obj, 0x11, lbl_8065D35C, lbl_8065D380, lbl_8065D380, lbl_8065D43C, 1, 0, 0, 0);
    return 1;
}
