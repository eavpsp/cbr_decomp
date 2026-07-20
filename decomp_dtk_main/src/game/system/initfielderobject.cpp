#include <types.h>

extern "C" void initGraphicSettings(char* obj);
extern "C" void fn_800A30EC(char* obj, int param2);
extern "C" void fn_800C1674(char* elem, char* obj);
extern "C" void fn_800BFD38(char* elem, char* obj);
extern "C" void fn_801A0A58(void* dest, void* obj, int count, int* words, int flag);
extern "C" void fn_80024FAC(char* elem, char* elem2, int a, int b);
extern "C" void fn_80068C24(void* a, void* b, void* c);
extern "C" char MainGame[];
extern "C" char lbl_803781C0[0x4200];
extern "C" char lbl_80209360[0x200];
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D3D0;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D4CC;
extern "C" f32 lbl_8065D49C;
extern "C" f32 lbl_8065D5C4;
extern "C" f32 lbl_8065AB80;

typedef void (*VtableFn8)(void*);
typedef void (*VtableFn8_2)(void*, void*);

static void ElemVtableCall8(char* elem)
{
    VtableFn8 fn = *(VtableFn8*)(*(char**)(elem + 8) + 8);
    fn(elem);
}

static void ElemVtableCall8_2(char* elem, char* obj)
{
    VtableFn8_2 fn = *(VtableFn8_2*)(*(char**)(elem + 8) + 8);
    fn(elem, obj);
}

static void ChildObjDispatch98(char* elem)
{
    VtableFn8 fn = *(VtableFn8*)(*(char**)(elem + 0x34) + 0x98);
    fn(elem);
}

static void InitStateGroup(char* dest, char* obj, char* globalBase, int flag)
{
    int words[5];
    words[0] = *(int*)(globalBase + 0x0);
    words[1] = *(int*)(globalBase + 0x4);
    words[2] = *(int*)(globalBase + 0x8);
    words[3] = *(int*)(globalBase + 0xc);
    words[4] = *(int*)(globalBase + 0x10);
    fn_801A0A58(dest, obj, 5, words, flag);
}

//800BB77C
extern "C" void fn_800BB77C(char* obj)
{
    initGraphicSettings(obj);
    fn_800A30EC(obj, 0);

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
    *(f32*)(obj + 0x9c0) = one;
    *(f32*)(obj + 0x9bc) = one;
    *(f32*)(obj + 0x9c8) = one;
    *(f32*)(obj + 0x9c4) = one;
    *(int*)(obj + 0x9cc) = -1;
    *(int*)(obj + 0x9d0) = -1;
    *(int*)(obj + 0x9d8) = -1;
    *(int*)(obj + 0x9d4) = -1;
    *(int*)(obj + 0x9dc) = -1;
    *(int*)(obj + 0x9e4) = -1;
    *(int*)(obj + 0x9f8) = -1;
    *(f32*)(obj + 0xa0c) = lbl_8065D3D0;
    *(int*)(obj + 0xa10) = -1;
    *(int*)(obj + 0xa14) = 0;
    *(u32*)(obj + 0xa18) = *(u32*)(obj + 0xa18) & 0xFFFFFF7Fu;
    *(int*)(obj + 0xa1c) = 0;
    *(int*)(obj + 0xa20) = 0;
    *(int*)(obj + 0xa2c) = 0;
    *(f32*)(obj + 0xa30) = one;
    *(int*)(obj + 0xa38) = 0;
    *(int*)(obj + 0xa34) = 0;
    *(f32*)(obj + 0xa3c) = one;
    *(f32*)(obj + 0xa40) = lbl_8065D380;

    ElemVtableCall8(obj + 0xac0);
    ElemVtableCall8_2(obj + 0xb10, obj);
    ElemVtableCall8_2(obj + 0xb64, obj);
    ElemVtableCall8_2(obj + 0xba8, obj);
    ElemVtableCall8_2(obj + 0xbe8, obj);
    ElemVtableCall8_2(obj + 0xc40, obj);
    ElemVtableCall8_2(obj + 0xc88, obj);

    *(f32*)(obj + 0xcb4) = lbl_8065D4CC;
    fn_800C1674(obj + 0xcc0, obj);

    fn_800BFD38(obj + 0x9438, obj);

    {
        f32 c = lbl_8065D49C;
        *(f32*)(obj + 0x94fc) = c;
        *(f32*)(obj + 0x94f8) = c;
        *(int*)(obj + 0x9500) = 0;
        *(int*)(obj + 0x9504) = 0;
        *(int*)(obj + 0x9508) = 0;
        *(int*)(obj + 0x950c) = 0;
        *(int*)(obj + 0x9510) = 0;
        *(int*)(obj + 0x9514) = 0;
        *(int*)(obj + 0x9518) = 0;
        *(int*)(obj + 0x951c) = 0;
        *(int*)(obj + 0x9520) = 0;
        *(int*)(obj + 0x9524) = 0;
        *(int*)(obj + 0x9528) = 0;
        *(int*)(obj + 0x952c) = 0;
        *(int*)(obj + 0x9530) = 0;
        *(int*)(obj + 0x9534) = 0;
        *(int*)(obj + 0x9538) = 0;
    }

    InitStateGroup(obj + 0x953c, obj, lbl_80209360 + 0x48, 0x79);
    InitStateGroup(obj + 0x955c, obj, lbl_80209360 + 0x5c, 0x79);
    InitStateGroup(obj + 0x957c, obj, lbl_80209360 + 0x70, 0x7a);

    {
        f32 one2 = lbl_8065D35C;
        f32 c380 = lbl_8065D380;
        f32 cAB80 = lbl_8065AB80;

        *(int*)(obj + 0x959c) = 0;
        *(int*)(obj + 0x95a0) = -1;
        *(int*)(obj + 0x95a4) = 0;
        *(f32*)(obj + 0x95a8) = *(f32*)(lbl_80209360 + 0xb10);
        *(f32*)(obj + 0x95ac) = *(f32*)(lbl_80209360 + 0xb14);
        *(f32*)(obj + 0x95b0) = *(f32*)(lbl_80209360 + 0xb18);
        *(f32*)(obj + 0x95c0) = one2;
        *(f32*)(obj + 0x95c4) = one2;
        *(f32*)(obj + 0x95c8) = one2;
        *(char**)(obj + 0x95a4) = obj;
        *(int*)(obj + 0x95d4) = -1;
        *(int*)(obj + 0x95d8) = 0;
        *(int*)(obj + 0x95dc) = 0;
        *(int*)(obj + 0x95e4) = 0;
        *(int*)(obj + 0x95e0) = 0;
        *(f32*)(obj + 0x9a90) = one2;
        *(f32*)(obj + 0x9a9c) = cAB80;
        *(f32*)(obj + 0x9a98) = cAB80;
        *(f32*)(obj + 0x9a94) = cAB80;
        *(f32*)(obj + 0x9aa4) = c380;
        *(f32*)(obj + 0x9aa0) = c380;
        *(f32*)(obj + 0x9ab0) = cAB80;
        *(f32*)(obj + 0x9aac) = cAB80;
        *(f32*)(obj + 0x9aa8) = cAB80;
        *(int*)(obj + 0x9ab4) = 0;
        *(f32*)(obj + 0x9ab8) = one2;
        *(f32*)(obj + 0x9abc) = one2;
        *(int*)(obj + 0x9ac0) = 0;
        *(f32*)(obj + 0x9ac4) = one2;
    }

    ChildObjDispatch98(obj + 0x9AD0);
    ChildObjDispatch98(obj + 0xB1B0);
    ChildObjDispatch98(obj + 0xBB38);
    ChildObjDispatch98(obj + 0xC4C0);
    ChildObjDispatch98(obj + 0xCE58);

    {
        char* p = obj;
        for (int i = 0; i < 9; i++) {
            char* elem = p + 0xD7F8;
            VtableFn8 fn = *(VtableFn8*)(*(char**)(elem + 0x34) + 0x98);
            fn(elem);
            p += 0x980;
        }
    }

    {
        f32 one3 = lbl_8065D35C;
        *(f32*)(obj + 0x12df8) = lbl_8065AB80;
        *(int*)(obj + 0x12e44) = 0;
        *(f32*)(obj + 0x12e4c) = one3;
        *(f32*)(obj + 0x12e6c) = one3;
        *(f32*)(obj + 0x12e94) = one3;
        *(f32*)(obj + 0x12ebc) = one3;
        *(f32*)(obj + 0x12ee4) = one3;
        *(f32*)(obj + 0x12f0c) = one3;
        *(f32*)(obj + 0x12f34) = one3;
        *(f32*)(obj + 0x12f5c) = one3;
        *(f32*)(obj + 0x12f84) = one3;
        *(int*)(obj + 0x130dc) = 0;
        *(f32*)(obj + 0x130e4) = one3;
        *(f32*)(obj + 0x13104) = one3;
        *(f32*)(obj + 0x1312c) = one3;
        *(f32*)(obj + 0x13154) = one3;
        *(f32*)(obj + 0x1317c) = one3;
        *(f32*)(obj + 0x131a4) = one3;
        *(f32*)(obj + 0x131cc) = one3;
        *(f32*)(obj + 0x131f4) = one3;
        *(f32*)(obj + 0x1321c) = one3;
        *(f32*)(obj + 0x13374) = one3;
        *(f32*)(obj + 0x13378) = one3;
        *(f32*)(obj + 0x1337c) = one3;
        *(int*)(obj + 0x13394) = 0;
        *(f32*)(obj + 0x133a0) = one3;
        *(int*)(obj + 0x146d8) = 1;
        fn_80024FAC(obj + 0x146dc, obj + 0x146f0, 0x50, 0x32);
    }

    {
        char* p28 = lbl_803781C0 + 0x140;
        char* p27 = lbl_803781C0 + 0x3e58;
        for (int i = 0; i < 10; i++) {
            fn_80068C24(MainGame + 0x8F38, p28, p28 + 4);
            *(int*)(p28 + 0xc) = 0;
            *(int*)(p28 + 0x74) = 0;
            *(int*)p27 = 0;
            p28 += 0x61c;
            p27 += 4;
        }
    }

    {
        f32 one4 = lbl_8065D35C;
        *(int*)(lbl_803781C0 + 0x3e80) = 0;
        char* p = lbl_803781C0 + 0x3e80;

        *(f32*)(p + 0x10) = one4;
        *(f32*)(p + 0x18) = one4;
        *(f32*)(p + 0x28) = one4;
        *(f32*)(p + 0x30) = one4;
        *(f32*)(p + 0x40) = one4;
        *(f32*)(p + 0x48) = one4;
        *(f32*)(p + 0x58) = one4;
        *(f32*)(p + 0x60) = one4;
        *(f32*)(p + 0x70) = one4;
        *(f32*)(p + 0x78) = one4;
        *(f32*)(p + 0x88) = one4;
        *(f32*)(p + 0x90) = one4;
        *(f32*)(p + 0xa0) = one4;
        *(f32*)(p + 0xa8) = one4;
        *(f32*)(p + 0xb8) = one4;
        *(f32*)(p + 0xc0) = one4;
        *(f32*)(p + 0xd0) = one4;
        *(f32*)(p + 0xd8) = one4;
        *(f32*)(p + 0xe8) = one4;
        *(f32*)(p + 0xf0) = one4;
        p += 0xf0;

        *(f32*)(p + 0x10) = one4;
        *(f32*)(p + 0x18) = one4;
        *(f32*)(p + 0x28) = one4;
        *(f32*)(p + 0x30) = one4;
        *(f32*)(p + 0x40) = one4;
        *(f32*)(p + 0x48) = one4;
        *(f32*)(p + 0x58) = one4;
        *(f32*)(p + 0x60) = one4;
        *(f32*)(p + 0x70) = one4;
        *(f32*)(p + 0x78) = one4;
        *(f32*)(p + 0x88) = one4;
        *(f32*)(p + 0x90) = one4;
        *(f32*)(p + 0xa0) = one4;
        *(f32*)(p + 0xa8) = one4;
        *(f32*)(p + 0xb8) = one4;
        *(f32*)(p + 0xc0) = one4;
        *(f32*)(p + 0xd0) = one4;
        *(f32*)(p + 0xd8) = one4;
        *(f32*)(p + 0xe8) = one4;
        *(f32*)(p + 0xf0) = one4;

        *(int*)(obj + 0x158b8) = 0;
        *(int*)(obj + 0x158bc) = 0;
        *(int*)(obj + 0x158c0) = 0;
        *(f32*)(obj + 0x158c4) = one4;
        *(f32*)(obj + 0x158c8) = one4;
        *(f32*)(obj + 0x158cc) = one4;
        *(f32*)(obj + 0x158b0) = lbl_8065D5C4;
        *(int*)(obj + 0x158b4) = 0;
    }
}
