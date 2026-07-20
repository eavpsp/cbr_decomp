#include <types.h>

extern "C" f32 lbl_8065D390;
extern "C" f64 lbl_8065D398;
extern "C" f32 lbl_8065AB80;
extern "C" f64 lbl_8065D588;
extern "C" f64 __frsqrte(f64);
extern "C" void fn_801DD248(char* file, int line, char* assertion);
extern "C" char lbl_8065D3A0[8];
extern "C" char lbl_8065D3A8[8];
extern "C" char lbl_8065D540[8];

typedef union
{
    struct
    {
        u32 hi, lo;
    } parts;
    f64 d;
} DoubleBits;

static f32 SqrtWithNaNFallback2(f32 x)
{
    if (x > 0.0f) {
        static const f64 _half = .5;
        static const f64 _three = 3.0;
        f64 guess = __frsqrte((f64)x);
        guess = _half * guess * (_three - guess * guess * x);
        guess = _half * guess * (_three - guess * guess * x);
        guess = _half * guess * (_three - guess * guess * x);
        return (f32)(x * guess);
    }

    if (x < lbl_8065D588) {
        return lbl_8065AB80;
    }

    u32 bits = *(u32*)&x;
    u32 expField = bits & 0x7F800000;
    int cls;
    if (expField == 0x7F800000) {
        cls = (bits & 0x7FFFFF) == 0 ? 2 : 1;
    } else if (expField >= 0x7F800000) {
        cls = 4;
    } else if (expField == 0) {
        cls = (bits & 0x7FFFFF) == 0 ? 3 : 5;
    } else {
        cls = 4;
    }

    if (cls == 1) {
        return lbl_8065AB80;
    }
    return x;
}

//800B247C
extern "C" f32 GetScaledSignedValueAt0x10(char* obj, int idx)
{
    char* base = *(char**)obj;
    u32 raw = *(u32*)(base + idx * 32 + 0x10);
    DoubleBits u;
    u.parts.hi = 0x43300000;
    u.parts.lo = raw ^ 0x80000000;
    f64 val = u.d - lbl_8065D398;
    return lbl_8065D390 * (f32)val;
}

//800B24BC
extern "C" int GetFieldAt0x28(char* obj)
{
    return *(int*)(obj + 0x28);
}

//800B24C4
extern "C" char* GetFieldPtrAt0x24C(char* obj)
{
    return obj + 0x24c;
}

//800B24CC
extern "C" char* GetFieldPtrAt0x128(char* obj)
{
    return obj + 0x128;
}

//800B24D4
extern "C" char* GetFieldPtrAt0xF8(char* obj)
{
    return obj + 0xf8;
}

//800B24DC
extern "C" int getIndexFromDataStructure(char* obj)
{
    typedef unsigned char BOOL8;

    char* ptr = *(char**)(obj + 0x240);
    BOOL8 valid = (ptr != NULL);
    if (!valid) goto ReturnNeg1;
    if (!valid) goto ReturnZero;
    return *(short*)(ptr + 0x14);
ReturnZero:
    return 0;
ReturnNeg1:
    return -1;
}

//800B2504
extern "C" int GetArrayElementAt0xC070(char* obj, int idx)
{
    return *(int*)(obj + idx * 0x1804 + 0xC070);
}

//800B2518
extern "C" void ClearBitsInParams(char* obj, int clearMask1, int clearMask2)
{
    *(int*)(obj + 0x22c) = *(int*)(obj + 0x22c) & ~clearMask2;
    *(int*)(obj + 0x228) = *(int*)(obj + 0x228) & ~clearMask1;
}

//800B253C
extern "C" int getBitwiseAndOfMemoryAndParam(char* obj, int mask)
{
    return *(int*)(obj + 0x980) & mask;
}

//800B2548
extern "C" short GetShortAt2DArray_B870(char* obj, int idx1, int idx2)
{
    return *(short*)(obj + idx1 * 0x1804 + idx2 * 2 + 0xB870);
}

//800B2564
extern "C" void SetBitsInParams(char* obj, int setMask1, int setMask2)
{
    *(int*)(obj + 0x22c) = *(int*)(obj + 0x22c) | setMask2;
    *(int*)(obj + 0x228) = *(int*)(obj + 0x228) | setMask1;
}

//800B2580
extern "C" f32 GetCandidateValueAtStoredIndex(char* obj)
{
    int idx = *(int*)(obj + 0x274);
    return *(f32*)(obj + idx * 4 + 0x6fc);
}

//800B2594
extern "C" f32 GetFieldAt0x6F8(char* obj)
{
    return *(f32*)(obj + 0x6f8);
}

//800B259C
extern "C" f32 CalculateDistanceBetweenPointsChecked(f32* p1, f32* p2)
{
    f32 dx = *(f32*)((char*)p2 + 0x0) - *(f32*)((char*)p1 + 0x0);
    f32 dz = *(f32*)((char*)p2 + 0x8) - *(f32*)((char*)p1 + 0x8);
    f32 sumSq = dx * dx + dz * dz;
    return SqrtWithNaNFallback2(sumSq);
}

//800B26A0
extern "C" int IsValueEqualToField0xC(char* obj, int value)
{
    return (value - *(int*)(obj + 0xc)) == 0;
}

//800B26B4
extern "C" int GetFieldAt0x38(char* obj)
{
    return *(int*)(obj + 0x38);
}

//800B26BC
extern "C" int getCombinedMask(char* obj, int mask1, int mask2)
{
    int deadVal = *(int*)(obj + 0x22c) & mask2;
    return *(int*)(obj + 0x228) & mask1;
}

//800B26D0
extern "C" int GetIntAt2DArray_A870(char* obj, int idx1, int idx2)
{
    return *(int*)(obj + idx1 * 0x1804 + idx2 * 4 + 0xA870);
}

//800B26EC
extern "C" void CopyVec3FromOffset0x2C(void* unused, char* src, f32* dst)
{
    if (src == NULL) {
        fn_801DD248(lbl_8065D3A0, 0x351, lbl_8065D3A8);
    }
    if (dst == NULL) {
        fn_801DD248(lbl_8065D3A0, 0x352, lbl_8065D540);
    }
    dst[0] = *(f32*)(src + 0x2c);
    dst[1] = *(f32*)(src + 0x30);
    dst[2] = *(f32*)(src + 0x34);
}

//800B2764
extern "C" void* FindNodeInArrayOfLists(char* obj, int outerCount, int* innerCounts)
{
    char* node = *(char**)obj;
    if (node == NULL) {
        return NULL;
    }

    for (int i = 0; i < outerCount; i++) {
        node = node ? *(char**)(node + 0x10) : (char*)NULL;

        int innerCount = innerCounts[i];
        for (int j = 0; j < innerCount; j++) {
            node = node ? *(char**)(node + 0x8) : (char*)NULL;
            if (node == NULL) {
                return NULL;
            }
        }
    }

    return node;
}
