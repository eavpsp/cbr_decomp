#include <types.h>

extern "C" f32 cosf(f32 x);
extern "C" f32 sinf(f32 x);
extern "C" char lbl_80210314[12];

//800B30C8
extern "C" void SetFieldAt0x18(char* obj, f32 value)
{
    *(f32*)(obj + 0x18) = value;
}

//800B30D0
extern "C" void SetFieldAt0x10(char* obj, f32 value)
{
    *(f32*)(obj + 0x10) = value;
}

//800B30D8
extern "C" f32 CallCosf(f32 x)
{
    return (f32)cosf(x);
}

//800B30FC
extern "C" f32 GetFieldAt0xA40(char* obj)
{
    return *(f32*)(obj + 0xa40);
}

//800B3104
extern "C" f32 CallSinf(f32 x)
{
    return (f32)sinf(x);
}

//800B3128
extern "C" int GetFieldAt0x20(char* obj)
{
    return *(int*)(obj + 0x20);
}

//800B3130
extern "C" int getBitShiftDifference(char* obj, int value)
{
    return *(int*)(obj + 4) == value;
}

//800B3144
extern "C" char* GetFieldPtrAt0x264(char* obj)
{
    return obj + 0x264;
}

//800B314C
extern "C" char* GetFieldPtrAt0xC8(char* obj)
{
    return obj + 0xc8;
}

//800B3154
extern "C" int GetArrayElement(char* obj, int idx)
{
    return *(int*)(obj + idx * 4 + 0x9860);
}

//800B3168
extern "C" int IsFieldAt0x20NonZero(char* obj)
{
    return *(int*)(obj + 0x20) != 0;
}

//800B317C
extern "C" int GetLeadingZeroCount_800b317c_(char* obj, int value)
{
    return *(int*)(obj + 4) == value;
}

//800B3190
extern "C" void set_3D_coordinate(char* obj, f32 x, f32 y, f32 z)
{
    *(char**)(obj + 0xc) = lbl_80210314;
    *(f32*)(obj + 0x0) = x;
    *(f32*)(obj + 0x4) = y;
    *(f32*)(obj + 0x8) = z;
}

//800B31AC
extern "C" int getFlagState(char* obj, int mask)
{
    return *(int*)(obj + 0x980) & mask;
}
