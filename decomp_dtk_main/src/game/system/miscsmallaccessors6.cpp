#include <types.h>

extern "C" int getMaskedValueForStageAndIndex(int idx, int mask);
extern "C" f32 computeEuclideanDistance(void* obj);
extern "C" f32 computeVectorLength(void* obj);
extern "C" f32 lbl_8065D3C4;

//800B2CFC
extern "C" char* GetAddress_E7E24(char* obj)
{
    return obj + 0xE7E24;
}

//800B2D08
extern "C" int GetMaskedStageValueForField0x3444(char* obj, int mask)
{
    return getMaskedValueForStageAndIndex(*(int*)(obj + 0x3444), mask);
}

//800B2D2C
extern "C" int GetLeadingZeroCount_800b2d2c_(char* obj, int value)
{
    return *(int*)(obj + 4) == value;
}

//800B2D40
extern "C" int GetLeadingZeroCount_800b2d40_(char* obj, int value)
{
    return *(int*)(obj + 4) == value;
}

//800B2D54
extern "C" char* GetFieldPtrAt0x9EC(char* obj)
{
    return obj + 0x9ec;
}

//800B2D5C
extern "C" int gdev_cc_shutdown_14(void)
{
    return 1;
}

//800B2D64
extern "C" int gdev_cc_shutdown_15(void)
{
    return 1;
}

//800B2D6C
extern "C" int IsValueInSet_0_3_4_7_8_5_6_9(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 3 || val == 4 || val == 7 || val == 8 || val == 5 || val == 6 || val == 9;
}

//800B2DC0
extern "C" int IsValueNotIn8_9(char* obj)
{
    int val = *(int*)(obj + 4);
    return !(val == 8 || val == 9);
}

//800B2DE4
extern "C" int IsValueInSet_0_9_A_B(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 9 || val == 0xa || val == 0xb;
}

//800B2E18
extern "C" int IsValueInSet_0_A_B(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 0xa || val == 0xb;
}

//800B2E44
extern "C" int IsValueInSet_0_2_3_4_11(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 2 || val == 3 || val == 4 || val == 0x11;
}

//800B2E80
extern "C" int IsValueInSet_0_A_2(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 0xa;
}

//800B2EA4
extern "C" int GetValueAtOffset_8580(char* obj)
{
    return *(int*)(obj + 0x8580);
}

//800B2EB0
extern "C" int GetFieldAt0xD3C(char* obj)
{
    return *(int*)(obj + 0xd3c);
}

//800B2EB8
extern "C" int CalculateArrayIndex(char* obj, int idx)
{
    return *(int*)(obj + 0x96D0) + idx * (*(int*)(obj + 0x96E0));
}

//800B2ED0
extern "C" void SetFieldAt0x24(char* obj, f32 value)
{
    *(f32*)(obj + 0x24) = value;
}

//800B2ED8
extern "C" void CopyTripleVals(char* obj, f32* src)
{
    *(f32*)(obj + 0x0) = src[0];
    *(f32*)(obj + 0x4) = src[1];
    *(f32*)(obj + 0x8) = src[2];
    *(f32*)(obj + 0x10) = src[0];
    *(f32*)(obj + 0x14) = src[1];
    *(f32*)(obj + 0x18) = src[2];
}

//800B2F00
extern "C" int GetAndMaskUIntAtAddressPlus4(char* obj, int mask)
{
    return *(int*)(obj + 4) & mask;
}

//800B2F0C
extern "C" char* GetIndexFromByte(char* obj, int byteVal)
{
    return obj + (byteVal & 0xFF) * 0x54 + 0x19b4;
}

//800B2F20
extern "C" void setFloatValuesAtOffsets_(char* obj, f32 value)
{
    *(f32*)(obj + 0x8) = value;
    *(f32*)(obj + 0x18) = value;
}

//800B2F2C
extern "C" void convertDoubleToFloatArray(char* obj, f32 value)
{
    *(f32*)(obj + 0x0) = value;
    *(f32*)(obj + 0x10) = value;
}

//800B2F38
extern "C" int getLeadingZeroCountDifference(char* obj, int value)
{
    return *(int*)(obj + 4) == value;
}

//800B2F4C
extern "C" int GetTimeDifferenceLeadingZeros_(char* obj, int value)
{
    int a = *(int*)(obj + 0x95D4);
    int val = (a >= 0) ? a : *(int*)(obj + 0x95D0);
    return val == value;
}

//800B2F74
extern "C" int GetSignBitOfValue(char* obj)
{
    return *(int*)(obj + 0x5D080) != 0;
}

//800B2F8C
extern "C" int GetLeadingZeroCount_800b2f8c_(char* obj, int value)
{
    return *(int*)(obj + 4) == value;
}

//800B2FA0
extern "C" f32 GetEuclideanDistance(void* obj)
{
    return computeEuclideanDistance(obj);
}

//800B2FC0
extern "C" void NoOpFunction(void)
{
}

//800B2FC4
extern "C" int applyMaskToWord(char* obj, int mask1, int mask2)
{
    int dead = *(int*)(obj + 0x1b14) & mask2;
    return *(int*)(obj + 0x1b10) & mask1;
}

//800B2FD8
extern "C" void setFloatValueForTwoOffsets(char* obj, f32 value)
{
    *(f32*)(obj + 0x4) = value;
    *(f32*)(obj + 0x14) = value;
}

//800B2FE4
extern "C" int GetFieldAt0x158(char* obj)
{
    return *(int*)(obj + 0x158);
}

//800B2FEC
extern "C" void set_3d_vector(char* obj, f32 x, f32 y, f32 z)
{
    *(f32*)(obj + 0x0) = x;
    *(f32*)(obj + 0x4) = y;
    *(f32*)(obj + 0x8) = z;
    *(f32*)(obj + 0x10) = x;
    *(f32*)(obj + 0x14) = y;
    *(f32*)(obj + 0x18) = z;
}

//800B3008
extern "C" void SetFieldAt0x8(char* obj, f32 value)
{
    *(f32*)(obj + 0x8) = value;
}

//800B3010
extern "C" void SetFieldAt0x0(char* obj, f32 value)
{
    *(f32*)(obj + 0x0) = value;
}

//800B3018
extern "C" f32 WrapAngleToValidRange(f32 angle)
{
    while (angle < 0.0f) {
        angle += lbl_8065D3C4;
    }
    while (angle >= lbl_8065D3C4) {
        angle -= lbl_8065D3C4;
    }
    return angle;
}

//800B304C
extern "C" int GetFieldAt0xC(char* obj)
{
    return *(int*)(obj + 0xc);
}

//800B3054
extern "C" f32 GetFieldAt0x48(char* obj)
{
    return *(f32*)(obj + 0x48);
}

//800B305C
extern "C" char* GetFieldPtrAt0x3C(char* obj)
{
    return obj + 0x3c;
}

//800B3064
extern "C" int CountLeadingZerosInDifference(char* obj, int value)
{
    char* base = *(char**)(obj + 0x20);
    int idx = *(int*)(obj + 0x28);
    short* table = *(short**)(base + 0x24c);
    short entry = *(short*)((char*)table + idx * 32);
    return entry == value;
}

//800B3088
extern "C" void SetFieldAt0x28(char* obj, f32 value)
{
    *(f32*)(obj + 0x28) = value;
}

//800B3090
extern "C" void SetFieldAt0x20(char* obj, f32 value)
{
    *(f32*)(obj + 0x20) = value;
}

//800B3098
extern "C" char* GetFieldPtrAt0x20(char* obj)
{
    return obj + 0x20;
}

//800B30A0
extern "C" f32 GetVectorLength(void* obj)
{
    return computeVectorLength(obj);
}

//800B30C0
extern "C" char* GetFieldPtrAt0x10(char* obj)
{
    return obj + 0x10;
}
