#include <types.h>

extern "C" void fn_800DD234(char* elem);
extern "C" char stageData[];
extern "C" void fn_800A2E88(char* obj, int param2);
extern "C" void fn_800D50D4(char* elem, char* obj);
extern "C" void fn_800B7D54(char* obj);
extern "C" void CheckIsPlayingEffect(char* obj);
extern "C" void fn_80068C24(void* a, void* b, void* c);
extern "C" char MainGame[];
extern "C" char lbl_80378300[0x700];
extern "C" char lbl_8037C040[0x200];
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065AB80;

typedef void (*VtableFn8)(void*);

static void ChildObjDispatch94(char* elem)
{
    VtableFn8 fn = *(VtableFn8*)(*(char**)(elem + 0x34) + 0x94);
    fn(elem);
}

//800BBDAC
extern "C" void fn_800BBDAC(char* obj)
{
    fn_800DD234(obj + 0x964c);

    *(int*)(obj + 0x95d0) = 0;
    *(int*)(obj + 0xa18) = *(int*)(stageData + 0xc);
    *(int*)(obj + 0xa24) = *(short*)(stageData + 0x10);
    *(int*)(obj + 0xa28) = *(short*)(stageData + 0x12);
    fn_800A2E88(obj, 0);

    fn_800D50D4(obj + 0xa44, obj);

    ChildObjDispatch94(obj + 0x9AD0);
    ChildObjDispatch94(obj + 0xB1B0);
    ChildObjDispatch94(obj + 0xBB38);
    ChildObjDispatch94(obj + 0xC4C0);
    ChildObjDispatch94(obj + 0xCE58);

    *(int*)(obj + 0xD7E0) = 0;
    *(int*)(obj + 0xD7E4) = 0;
    *(int*)(obj + 0xD7EC) = 0;
    *(int*)(obj + 0xD7E8) = 0;
    *(int*)(obj + 0xD7F0) = 0;

    {
        char* p = obj;
        for (int i = 0; i < 9; i++) {
            char* elem = p + 0xD7F8;
            VtableFn8 fn = *(VtableFn8*)(*(char**)(elem + 0x34) + 0x94);
            fn(elem);
            p += 0x980;
        }
    }

    fn_800B7D54(obj);

    *(int*)(obj + 0x12df4) = 1;
    CheckIsPlayingEffect(obj + 0x12dfc);

    {
        int v1 = (*(u8*)(stageData + 8) >> 6) & 0x3;
        if (v1 > 3) {
            *(int*)(obj + 0x130c4) = 0;
        } else {
            *(int*)(obj + 0x130c4) = v1;
        }
    }

    *(int*)(obj + 0x130d4) = 0;
    *(f32*)(obj + 0x130d8) = lbl_8065AB80;
    *(int*)(obj + 0x130dc) = 0;
    *(int*)(obj + 0x130e0) = 0;

    {
        int v2 = (*(u8*)(stageData + 8) >> 6) & 0x3;
        if (v2 > 3) {
            *(int*)(obj + 0x1335c) = 0;
        } else {
            *(int*)(obj + 0x1335c) = v2;
        }
    }

    *(int*)(obj + 0x1336c) = 0;
    *(f32*)(obj + 0x13370) = lbl_8065AB80;
    *(int*)(obj + 0x1338c) = 0;
    *(int*)(obj + 0x13388) = 0;
    *(int*)(obj + 0x1339c) = 0;
    *(int*)(obj + 0x13390) = 0;
    *(int*)(obj + 0x15890) = 0;
    *(short*)(obj + 0x15894) = -1;
    *(int*)(obj + 0x158a0) = 0;
    *(int*)(obj + 0x158a4) = 1;
    *(int*)(obj + 0x158a8) = 0;
    *(int*)(obj + 0x158ac) = -1;

    {
        char* p = lbl_80378300;
        for (int i = 0; i < 10; i++) {
            fn_80068C24(MainGame + 0x8F38, p, p + 4);
            *(int*)(p + 0xc) = 0;
            *(int*)(p + 0x74) = 0;
            p += 0x61c;
        }
    }

    {
        *(int*)lbl_8037C040 = 0;
        f32 one = lbl_8065D35C;
        char* p = lbl_8037C040;
        char* p2 = p + 0xf0;

        *(f32*)(p + 0x10) = one;
        *(f32*)(p + 0x18) = one;
        *(f32*)(p + 0x28) = one;
        *(f32*)(p + 0x30) = one;
        *(f32*)(p + 0x40) = one;
        *(f32*)(p + 0x48) = one;
        *(f32*)(p + 0x58) = one;
        *(f32*)(p + 0x60) = one;
        *(f32*)(p + 0x70) = one;
        *(f32*)(p + 0x78) = one;
        *(f32*)(p + 0x88) = one;
        *(f32*)(p + 0x90) = one;
        *(f32*)(p + 0xa0) = one;
        *(f32*)(p + 0xa8) = one;
        *(f32*)(p + 0xb8) = one;
        *(f32*)(p + 0xc0) = one;
        *(f32*)(p + 0xd0) = one;
        *(f32*)(p + 0xd8) = one;
        *(f32*)(p + 0xe8) = one;
        *(f32*)(p + 0xf0) = one;

        *(f32*)(p2 + 0x10) = one;
        *(f32*)(p2 + 0x18) = one;
        *(f32*)(p2 + 0x28) = one;
        *(f32*)(p2 + 0x30) = one;
        *(f32*)(p2 + 0x40) = one;
        *(f32*)(p2 + 0x48) = one;
        *(f32*)(p2 + 0x58) = one;
        *(f32*)(p2 + 0x60) = one;
        *(f32*)(p2 + 0x70) = one;
        *(f32*)(p2 + 0x78) = one;
        *(f32*)(p2 + 0x88) = one;
        *(f32*)(p2 + 0x90) = one;
        *(f32*)(p2 + 0xa0) = one;
        *(f32*)(p2 + 0xa8) = one;
        *(f32*)(p2 + 0xb8) = one;
        *(f32*)(p2 + 0xc0) = one;
        *(f32*)(p2 + 0xd0) = one;
        *(f32*)(p2 + 0xd8) = one;
        *(f32*)(p2 + 0xe8) = one;
        *(f32*)(p2 + 0xf0) = one;
    }

    *(int*)(obj + 0x980) = 0;
    *(int*)(obj + 0x980) = 0;
    *(int*)(obj + 0x980) = *(int*)(obj + 0x980) | 0x20000000;
    *(int*)(obj + 0x980) = *(int*)(obj + 0x980) | 7;

    *(int*)(obj + 0x12df4) = 1;
}
