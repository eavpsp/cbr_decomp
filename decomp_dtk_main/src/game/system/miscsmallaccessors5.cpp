#include <types.h>

extern "C" char lbl_8037827C[12];
extern "C" char lbl_80378288[12];
extern "C" f64 lbl_8065D398;
extern "C" f32 lbl_8065D484;
extern "C" void PSQUATScale(void* dst, void* src);
extern "C" void PSVECNormalize(void* dst, void* src);

typedef union
{
    struct
    {
        u32 hi, lo;
    } parts;
    f64 d;
} DoubleBits;

struct Vec3F
{
    f32 x, y, z;
};

static void ConvertElementToNormalizedVec3(Vec3F* result, char** arrayBase, int idx, char* scratch)
{
    char* elem = *arrayBase + idx * 32;
    u32 c1 = *(u32*)(elem + 4);
    u32 c2 = *(u32*)(elem + 8);
    u32 c3 = *(u32*)(elem + 0xc);

    DoubleBits d1;
    d1.parts.hi = 0x43300000;
    d1.parts.lo = c1 ^ 0x80000000;
    DoubleBits d2;
    d2.parts.hi = 0x43300000;
    d2.parts.lo = c2 ^ 0x80000000;
    DoubleBits d3;
    d3.parts.hi = 0x43300000;
    d3.parts.lo = c3 ^ 0x80000000;

    Vec3F tmp = *(Vec3F*)scratch;
    tmp.x = (f32)(d1.d - lbl_8065D398) / lbl_8065D484;
    tmp.y = (f32)(d2.d - lbl_8065D398) / lbl_8065D484;
    tmp.z = (f32)(d3.d - lbl_8065D398) / lbl_8065D484;

    result->x = tmp.x;
    result->y = tmp.y;
    result->z = tmp.z;
}

//800B27E0
extern "C" void ConvertElementToNormalizedVec3A(Vec3F* result, char** arrayBase, int idx)
{
    ConvertElementToNormalizedVec3(result, arrayBase, idx, lbl_8037827C);
}

//800B289C
extern "C" void ConvertElementToNormalizedVec3B(Vec3F* result, char** arrayBase, int idx)
{
    ConvertElementToNormalizedVec3(result, arrayBase, idx, lbl_80378288);
}

//800B2958
extern "C" void UpdateDataStructure(char* obj, f32* src)
{
    *(f32*)(obj + 0x10) = src[0];
    *(f32*)(obj + 0x14) = src[1];
    *(f32*)(obj + 0x18) = src[2];
}

//800B2974
extern "C" void SetVec3AtOffset0(char* obj, f32 x, f32 y, f32 z)
{
    *(f32*)(obj + 0x0) = x;
    *(f32*)(obj + 0x4) = y;
    *(f32*)(obj + 0x8) = z;
}

//800B2984
extern "C" void SetVec3AtOffset0x20(char* obj, f32 x, f32 y, f32 z)
{
    *(f32*)(obj + 0x20) = x;
    *(f32*)(obj + 0x24) = y;
    *(f32*)(obj + 0x28) = z;
}

//800B2994
extern "C" void ScaleQuatInPlace(void* obj)
{
    PSQUATScale(obj, obj);
}

//800B29B8
extern "C" int gdev_cc_shutdown_9(void)
{
    return 1;
}

//800B29C0
extern "C" int gdev_cc_shutdown_10(void)
{
    return 1;
}

//800B29C8
extern "C" int IsValueInSet_0_6_9(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 6 || val == 9;
}

//800B29F4
extern "C" int gdev_cc_shutdown_11(void)
{
    return 1;
}

//800B29FC
extern "C" int gdev_cc_shutdown_12(void)
{
    return 1;
}

//800B2A04
extern "C" int IsValueInSet_0_A(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 0xa;
}

//800B2A28
extern "C" int IsValueInSet_0_B(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 0xb;
}

//800B2A4C
extern "C" int IsValueInSet_0_4(char* obj)
{
    int val = *(int*)(obj + 4);
    return val == 0 || val == 4;
}

//800B2A70
extern "C" int IsFieldAt4Zero(char* obj)
{
    return *(int*)(obj + 4) == 0;
}

//800B2A80
extern "C" int gdev_cc_shutdown_13(void)
{
    return 1;
}

//800B2A88
extern "C" void* NormalizeVecInPlace(void* obj)
{
    PSVECNormalize(obj, obj);
    return obj;
}
