#include <types.h>

extern "C" f32 lbl_8065D35C;
extern "C" f32 fn_8015CAE4(f32 dx, f32 dz);

//800B2004
extern "C" int GetValueAtOffset_784(char* obj)
{
    return *(int*)(obj + 0x784);
}

//800B200C
extern "C" int gdev_cc_shutdown_7(void)
{
    return 0;
}

//800B2014
extern "C" int IsFlag80Set_(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & 0x80;
    int b = *(int*)(obj + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    return (b | a) != 0;
}

//800B2048
extern "C" int IsFlagSetInParameter_228(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & 1;
    int b = *(int*)(obj + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    return (b | a) != 0;
}

//800B207C
extern "C" void SetFieldToZero(char* obj)
{
    *(int*)(obj) = 0;
}

//800B2088
extern "C" int GetFloatCompareBool(char* obj)
{
    return *(f32*)(obj + 0x24) > lbl_8065D35C;
}

//800B20A0
extern "C" int GetElementAtIndex_9698(char* obj, int idx, int unused)
{
    return *(int*)(obj + idx * 0x14 + 0x9698);
}

//800B20B4
extern "C" void* GetArrayElementPtr_0x38(char* obj, int idx)
{
    char* base = *(char**)obj;
    return base + idx * 0x38;
}

//800B20C4
extern "C" char* GetFieldPtrAt0x238(char* obj)
{
    return obj + 0x238;
}

//800B20CC
extern "C" f32 CalculateDistanceBetweenPoints(f32* p1, f32* p2)
{
    f32 dx = p2[0] - p1[0];
    f32 dz = p2[2] - p1[2];
    return fn_8015CAE4(dx, dz);
}
