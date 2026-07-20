#include <types.h>

typedef unsigned char BOOL8;

extern "C" int CheckSubsystemState_(void* obj);
extern "C" u32 ReadIntFromByteArray(int idx);
extern "C" f64 lbl_8065D398;
extern "C" f32 lbl_8065D484;

typedef union
{
    struct
    {
        u32 hi, lo;
    } parts;
    f64 d;
} DoubleBits;

static f32 NormalizeByteValueAt(int idx)
{
    u32 raw = ReadIntFromByteArray(idx);
    DoubleBits u;
    u.parts.hi = 0x43300000;
    u.parts.lo = raw ^ 0x80000000;
    f64 val = u.d - lbl_8065D398;
    return (f32)(val / lbl_8065D484);
}

//800B1B24
extern "C" int CheckSubsystemActive_(char* obj)
{
    BOOL8 result = 0;
    if (*(int*)(obj + 0xa48) == 4) {
        if (CheckSubsystemState_(obj + 0xa44) != 0) {
            result = 1;
        }
    }
    return result;
}

//800B1B70
extern "C" void SetParameterValueAtAddress(char* obj, char* param)
{
    *(char**)(obj + 0x20) = param;
    *(int*)(obj + 0x28) = *(int*)(param + 0x784);
}

//800B1B84
extern "C" f32 GetNormalizedValueAt2(void)
{
    return NormalizeByteValueAt(2);
}

//800B1BCC
extern "C" f32 ConvertByteArrayToAngleRadians_(void)
{
    return NormalizeByteValueAt(1);
}

//800B1C14
extern "C" f32 GetNormalizedTimeStamp(void)
{
    return NormalizeByteValueAt(0);
}
