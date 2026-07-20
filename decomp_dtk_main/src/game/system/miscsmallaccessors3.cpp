#include <types.h>

typedef unsigned char BOOL8;

extern "C" f64 __frsqrte(f64);
extern "C" f32 lbl_8065AB80;
extern "C" f64 lbl_8065D588;
extern "C" u32 get_4_byte_int_from_memory(int idx);
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

static f32 NormalizeMemoryIntAt(int idx)
{
    u32 raw = get_4_byte_int_from_memory(idx);
    DoubleBits u;
    u.parts.hi = 0x43300000;
    u.parts.lo = raw ^ 0x80000000;
    f64 val = u.d - lbl_8065D398;
    return (f32)(val / lbl_8065D484);
}

//800B2108
extern "C" int ComputeArrayBasedOffset(char* obj, int idx, int multiplier)
{
    return *(int*)(obj + idx * 0x14 + 0x9694) + multiplier * (*(int*)(obj + idx * 0x14 + 0x96A4));
}

//800B2128
extern "C" int GetValueAtOffset_A860(char* obj)
{
    return *(int*)(obj + 0xA860);
}

//800B2134
extern "C" f32 GetFieldAt0x780(char* obj)
{
    return *(f32*)(obj + 0x780);
}

//800B213C
extern "C" void SetFieldAt0x4_213C(char* obj, int value)
{
    *(int*)(obj + 4) = value;
}

//800B2144
extern "C" void SetGuardedParams_2144(char* obj, void* param1, char* param2)
{
    *(void**)(obj + 0xbac) = param1;
    if (param2 != NULL) {
        *(char**)(obj + 0xbc8) = param2;
        *(int*)(obj + 0xbd0) = *(int*)(param2 + 0x784);
    }
}

//800B2164
extern "C" int IsFlagSetInSystemState_(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & 0x10;
    int b = *(int*)(obj + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    return (b | a) != 0;
}

//800B2198
extern "C" void SetGuardedParams_2198(char* obj, void* param1, char* param2)
{
    *(void**)(obj + 0xb68) = param1;
    if (param2 != NULL) {
        *(char**)(obj + 0xb84) = param2;
        *(int*)(obj + 0xb8c) = *(int*)(param2 + 0x784);
    }
}

//800B21B8
extern "C" int IsBit3SetInParameter_(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & 0x8;
    int b = *(int*)(obj + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    return (b | a) != 0;
}

//800B21EC
extern "C" void ResetSubsystemState(char* obj)
{
    char* sub = *(char**)(obj + 0xa64);
    if (sub != NULL) {
        *(u32*)(sub + 0x22c) = *(u32*)(sub + 0x22c) & 0xFFFFFFFF;
        *(u32*)(sub + 0x228) = *(u32*)(sub + 0x228) & ~0x04000000u;
        *(void**)(obj + 0xa64) = NULL;
    }
    *(int*)(obj + 0xa48) = 0;
}

//800B2230
extern "C" void SetGuardedParams_2230(char* obj, void* param1, char* param2)
{
    *(void**)(obj + 0xac4) = param1;
    if (param2 != NULL) {
        *(char**)(obj + 0xae0) = param2;
        *(int*)(obj + 0xae8) = *(int*)(param2 + 0x784);
    }
}

//800B2250
extern "C" int IsDataStructureEnabled(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & 0x2;
    int b = *(int*)(obj + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    return (b | a) != 0;
}

//800B2284
extern "C" int GetArrayElementAt0x25C(char* obj, int idx)
{
    return *(int*)(obj + idx * 4 + 0x25c);
}

//800B2294
extern "C" int IsFlag0x20SetInParams(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & 0x20;
    int b = *(int*)(obj + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    return (b | a) != 0;
}

//800B22C8
extern "C" void SetFieldAt0x4_22C8(char* obj, int value)
{
    *(int*)(obj + 4) = value;
}

//800B22D0
extern "C" int IsFieldOrOffset298NonZero(char* obj)
{
    return (*(int*)(obj + 0x0) != 0) || (*(int*)(obj + 0x298) != 0);
}

//800B22F8
extern "C" f32 GetNormalizedMemoryIntAt2(void)
{
    return NormalizeMemoryIntAt(2);
}

//800B2340
extern "C" f32 GetNormalizedMemoryIntAt1(void)
{
    return NormalizeMemoryIntAt(1);
}

//800B2388
extern "C" void SetFieldAt0x14(char* obj, f32 value)
{
    *(f32*)(obj + 0x14) = value;
}

//800B2390
extern "C" int gdev_cc_shutdown_8(void)
{
    return 1;
}

//800B2398
extern "C" f32 SqrtWithNaNFallback(f32 x)
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
