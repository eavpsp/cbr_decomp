#include <types.h>

extern "C" void fn_800929C4(char* obj, char* param2);
extern "C" void configureEffectBuffer(char* obj, char* param2);
extern "C" char stageData[];
extern "C" char lbl_80209E70[0xC];
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065AB80;
extern "C" f32 lbl_8065D49C;
extern "C" f32 lbl_8065D4A0;
extern "C" f32 lbl_8065D4A4;
extern "C" f32 lbl_8065D380;

typedef void (*VtableFn8_2)(void*, void*);
typedef void (*VtableFn8)(void*);
typedef void (*VtableFnC)(void*);

static void ChildObjDispatch90(char* elem, char* param2)
{
    VtableFn8_2 fn = *(VtableFn8_2*)(*(char**)(elem + 0x34) + 0x90);
    fn(elem, param2);
}

//800BC0E4
extern "C" void fn_800BC0E4(char* obj, char* param2)
{
    fn_800929C4(obj, param2);

    *(int*)(obj + 0x959c) = 0;
    *(int*)(obj + 0x95a0) = -1;
    *(int*)(obj + 0x95a4) = 0;
    *(f32*)(obj + 0x95a8) = *(f32*)(lbl_80209E70 + 0x0);
    *(f32*)(obj + 0x95ac) = *(f32*)(lbl_80209E70 + 0x4);
    *(f32*)(obj + 0x95b0) = *(f32*)(lbl_80209E70 + 0x8);
    *(f32*)(obj + 0x95c0) = lbl_8065D35C;
    *(f32*)(obj + 0x95c4) = lbl_8065D35C;
    *(f32*)(obj + 0x95c8) = lbl_8065D35C;
    *(int*)(obj + 0x9ac8) = 0;

    ChildObjDispatch90(obj + 0x9AD0, param2);
    ChildObjDispatch90(obj + 0xB1B0, param2);
    ChildObjDispatch90(obj + 0xBB38, param2);
    ChildObjDispatch90(obj + 0xC4C0, param2);
    ChildObjDispatch90(obj + 0xCE58, param2);

    configureEffectBuffer(obj + 0x12dfc, param2);

    *(char**)(obj + 0x12fac) = obj;
    *(int*)(obj + 0x12e44) = 0;
    *(int*)(obj + 0x12e48) = 0;
    {
        int v1 = (*(u8*)(stageData + 8) >> 6) & 0x3;
        *(int*)(obj + 0x130c4) = (v1 > 3) ? 0 : v1;
    }

    *(int*)(obj + 0x130d4) = 0;
    *(f32*)(obj + 0x130d8) = lbl_8065AB80;
    *(int*)(obj + 0x130cc) = 0;
    *(int*)(obj + 0x130d0) = -1;
    *(f32*)(obj + 0x12e54) = lbl_8065D49C;
    *(int*)(obj + 0x12e58) = 1;
    *(int*)(obj + 0x12e80) = 2;
    *(int*)(obj + 0x12ea8) = 3;
    *(int*)(obj + 0x12ed0) = 4;
    *(int*)(obj + 0x12ef8) = 6;
    *(int*)(obj + 0x12f20) = 5;
    *(int*)(obj + 0x12f48) = 7;
    *(int*)(obj + 0x12f70) = 8;
    *(f32*)(obj + 0x130c8) = lbl_8065D4A0;
    *(int*)(obj + 0x130cc) = 4;
    *(char**)(obj + 0x13244) = obj;
    *(int*)(obj + 0x130dc) = 0;
    *(int*)(obj + 0x130e0) = 0;

    {
        int v2 = (*(u8*)(stageData + 8) >> 6) & 0x3;
        *(int*)(obj + 0x1335c) = (v2 > 3) ? 0 : v2;
    }

    *(int*)(obj + 0x1336c) = 0;
    *(f32*)(obj + 0x13370) = lbl_8065AB80;
    *(f32*)(obj + 0x13360) = lbl_8065D35C;
    *(int*)(obj + 0x13364) = 0;
    *(int*)(obj + 0x13368) = -1;
    *(f32*)(obj + 0x130ec) = lbl_8065D380;

    if (*(int*)(obj + 0x1335c) == 3) {
        *(int*)(obj + 0x130f0) = 1;
        *(int*)(obj + 0x13118) = 4;
        *(int*)(obj + 0x13140) = 6;
        *(int*)(obj + 0x13168) = 3;
        *(int*)(obj + 0x13190) = 2;
        *(int*)(obj + 0x131b8) = 7;
        *(int*)(obj + 0x131e0) = 8;
        *(int*)(obj + 0x13208) = 5;
    } else {
        *(int*)(obj + 0x130f0) = 3;
        *(int*)(obj + 0x13118) = 5;
        *(int*)(obj + 0x13140) = 4;
        *(int*)(obj + 0x13168) = 1;
        *(int*)(obj + 0x13190) = 6;
        *(int*)(obj + 0x131b8) = 8;
        *(int*)(obj + 0x131e0) = 7;
        *(int*)(obj + 0x13208) = 2;
    }

    *(f32*)(obj + 0x13360) = lbl_8065D4A4;
    *(int*)(obj + 0x13364) = 4;
    *(int*)(obj + 0x1338c) = 0;
    *(int*)(obj + 0x13388) = 0;
    *(char**)(obj + 0x146c8) = obj;
    *(int*)(obj + 0x1339c) = 0;
    *(int*)(obj + 0x13390) = 0;

    {
        char* p = obj;
        for (int i = 0; i < 9; i++) {
            char* elem = p + 0xD7F8;
            ChildObjDispatch90(elem, param2);
            *(int*)(obj + 0x12D78 + i * 4) = 0;
            p += 0x980;
        }
    }

    {
        VtableFnC fn = *(VtableFnC*)(*(char**)(obj + 0x12df0) + 0xc);
        fn(obj + 0x12da0);
    }
    {
        VtableFn8 fn = *(VtableFn8*)(*(char**)(obj + 0x34) + 0x94);
        fn(obj);
    }
    {
        VtableFnC fn = *(VtableFnC*)(*(char**)(obj + 0x15950) + 0xc);
        fn(obj + 0x158d4);
    }
    {
        VtableFnC fn = *(VtableFnC*)(*(char**)(obj + 0x159d4) + 0xc);
        fn(obj + 0x15958);
    }
}
