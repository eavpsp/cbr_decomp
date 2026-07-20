#include <types.h>

extern "C" char MainGame[];
extern "C" int checkTaskStatusForParam(void* obj, int id);
extern "C" void fn_8001E660(void* obj, int id);
extern "C" int fn_801A39D0(void* obj, int a, int b, int* words);
extern "C" void fn_801C4CA8(void* obj, int a, int b, int c);
extern "C" void fn_801C4A78(void* obj, f32 a);
extern "C" void fn_801C7468(void* obj, int a);
extern "C" void fn_801C5E74(void* obj);
extern "C" void fn_800A2E88(char* obj, int param2);
extern "C" void removeElementsAndStreams(char* obj);
extern "C" void fn_800DC9B0(void* obj, int a, int b, int c);
extern "C" void CleanUpAndDeallocateMemoryForNode(void* node);
extern "C" void fn_800C5A00(char* obj);
extern "C" void fn_800C490C(char* obj);
extern "C" void fn_800BFC6C(char* obj);
extern "C" void fn_8009F4F8(char* obj, int a, f32 b, f32 c, f32 d, int* e);
extern "C" void fn_800BB3D0(char* obj, f32 weight, int numBanks, int* counts);
extern "C" void fn_801A8A10();
extern "C" int lbl_802098FC[8];
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D43C;
extern "C" int lbl_8065FFE0;
extern "C" int lbl_8065FFE4;

typedef void (*VtableFnC)(void*);
typedef int (*VtableFn148)(void*);
typedef void (*VtableFn80)(void*, int, f32, f32, f32, f32, int, int, int, int);

static void ElemVtableCallC(char* elem)
{
    VtableFnC fn = *(VtableFnC*)(*(char**)(elem + 8) + 0xc);
    fn(elem);
}

static void RegisterDeviceAtSlot9534(char* obj)
{
    int words[8];
    words[0] = lbl_802098FC[0];
    words[1] = lbl_802098FC[1];
    words[2] = lbl_802098FC[2];
    words[3] = lbl_802098FC[3];
    words[4] = lbl_802098FC[4];
    words[5] = lbl_802098FC[5];
    words[6] = lbl_802098FC[6];
    words[7] = lbl_802098FC[7];
    int result = fn_801A39D0(obj + 0x48, 0x814, 8, words);
    fn_801C4CA8(obj + 0x9534, result, 0, 0);
    fn_801C4A78(obj + 0x9534, lbl_8065D35C);
    fn_801C7468(obj + 0x9534, 0x20000);
    fn_801C5E74(obj + 0x9534);
}

//800BAE70
extern "C" void fn_800BAE70(char* obj, int param2)
{
    int state = *(int*)(obj + 0x95D4);
    if (state < 0) {
        state = *(int*)(obj + 0x95D0);
    }

    if (state == 3) goto Case3;
    if (state > 3) goto Default;
    if (state == 1) goto Case1;
    if (state >= 1) goto Case2;
    goto Default;

Case1:
    {
        char* base = MainGame + 0xE7E24;
        if (checkTaskStatusForParam(base, 8) != 0) {
            fn_8001E660(base, 8);
        }
    }
    ElemVtableCallC(obj + 0xB1B0);
    RegisterDeviceAtSlot9534(obj);
    goto Join;

Case2:
    {
        char* base = MainGame + 0xE7E24;
        if (checkTaskStatusForParam(base, 0x186) != 0) {
            fn_8001E660(base, 0x186);
        }
        if (checkTaskStatusForParam(base, 0x18b) != 0) {
            fn_8001E660(base, 0x18b);
        }
    }
    ElemVtableCallC(obj + 0xBB38);
    fn_800A2E88(obj, 0);
    removeElementsAndStreams(obj + 0x9418);
    goto Join;

Case3:
    {
        char* base = MainGame + 0xE7E24;
        if (checkTaskStatusForParam(base, 0x18c) != 0) {
            fn_8001E660(base, 0x18c);
        }
        if (checkTaskStatusForParam(base, 0x18d) != 0) {
            fn_8001E660(base, 0x18d);
        }
        if (checkTaskStatusForParam(base, 0x18e) != 0) {
            fn_8001E660(base, 0x18e);
        }
    }
    ElemVtableCallC(obj + 0xC4C0);
    RegisterDeviceAtSlot9534(obj);
    goto Join;

Default:
    {
        char* subObj = *(char**)(obj + 0xa64);
        if (subObj == NULL) goto Join;

        char* inner = *(char**)(subObj + 0x240);
        short val;
        if (inner == NULL) goto SetNeg1a;
        if (inner == NULL) goto SetZeroA;
        val = *(short*)(inner + 0x14);
        goto ValADone;
    SetZeroA:
        val = 0;
        goto ValADone;
    SetNeg1a:
        val = -1;
    ValADone:
        if ((int)val == 8) {
            char* obj2 = *(char**)(MainGame + 0x96BC);
            char* target = obj2 + 0x9688;

            short val2;
            if (inner == NULL) goto SetNeg1b;
            if (inner == NULL) goto SetZeroB;
            val2 = *(short*)(inner + 0x16);
            goto ValBDone;
        SetZeroB:
            val2 = 0;
            goto ValBDone;
        SetNeg1b:
            val2 = -1;
        ValBDone:
            fn_800DC9B0(target, val2, 1, 1);

            char* reloadedSub = *(char**)(obj + 0xa64);
            VtableFn148 fn = *(VtableFn148*)(*(char**)(reloadedSub + 0x34) + 0x148);
            int idx = fn(reloadedSub);
            int* arr = (int*)(reloadedSub + 0x980);
            arr[idx >> 5] |= (1 << (idx & 0x1F));
        }

        char* subObj2 = *(char**)(obj + 0xa64);
        char* inner2 = *(char**)(subObj2 + 0x240);
        short val3;
        if (inner2 == NULL) goto SetNeg1c;
        if (inner2 == NULL) goto SetZeroC;
        val3 = *(short*)(inner2 + 0x14);
        goto ValCDone;
    SetZeroC:
        val3 = 0;
        goto ValCDone;
    SetNeg1c:
        val3 = -1;
    ValCDone:
        if ((int)val3 == 0x18) goto Join;

        VtableFnC fn2 = *(VtableFnC*)(*(char**)(subObj2 + 0x34) + 0x54);
        fn2(subObj2);
    }

Join:
    CleanUpAndDeallocateMemoryForNode(obj + 0xa44);
    ElemVtableCallC(obj + 0xac0);
    ElemVtableCallC(obj + 0xb10);
    ElemVtableCallC(obj + 0xb64);
    ElemVtableCallC(obj + 0xba8);
    fn_800C5A00(obj + 0xbe8);
    fn_800C490C(obj + 0xc40);
    ElemVtableCallC(obj + 0xc88);
    ElemVtableCallC(obj + 0xcc0);
    fn_800BFC6C(obj + 0x9438);

    if (*(int*)obj != 0) {
        int a = lbl_8065FFE0;
        fn_8009F4F8(obj, 1, lbl_8065D35C, lbl_8065D35C, lbl_8065D35C, &a);

        int b = lbl_8065FFE4;
        fn_800BB3D0(obj, lbl_8065D35C, 1, &b);
    }

    *(int*)(obj + 0x95D0) = 0;
    *(int*)(obj + 0x95D4) = -1;
    *(int*)(obj + 0x95D8) = 0;
    *(int*)(obj + 0x95DC) = 0;
    *(int*)(obj + 0x95E4) = 0;
    *(int*)(obj + 0x95E0) = 0;
    *(int*)(obj + 0x9cc) = -1;
    *(int*)(obj + 0x9d0) = -1;
    *(int*)(obj + 0x9dc) = -1;
    fn_801A8A10();

    if (param2 >= 0) {
        VtableFn80 fn = *(VtableFn80*)(*(char**)(obj + 0x34) + 0x80);
        fn(obj, param2, lbl_8065D35C, lbl_8065D380, lbl_8065D380, lbl_8065D43C, 1, 0, 0, 0);
    }

    *(f32*)(obj + 0x9a90) = lbl_8065D35C;
}
