#include <types.h>

extern "C" f64 lbl_8065C488; // 4503601774854144.0 (2^52 + 2^31 bias)
extern "C" f32 lbl_8065C498; // 100.0f scale
extern "C" char lbl_80210314[12];
extern "C" char lbl_80362048[0x60];
extern "C" char lbl_8036203C[0xC];

struct CPositionSource
{
    char pad[0x238];
    void* data;
};

struct Vec3
{
    f32 x, y, z;
};

struct CVec3Tagged
{
    f32 x, y, z;
    void* vtable;
};

static inline f32 ConvertScaledInt(s32 value)
{
    union
    {
        struct
        {
            u32 hi;
            u32 lo;
        } i;
        f64 d;
    } u;
    u.i.hi = 0x43300000;
    u.i.lo = (u32)value ^ 0x80000000;
    return (f32)((u.d - lbl_8065C488) / lbl_8065C498);
}

//800621E0
extern "C" void GetNormalizedPositionVector(CVec3Tagged* out, CPositionSource* obj)
{
    Vec3 local = *(Vec3*)lbl_80362048;
    s32* src = (s32*)obj->data;
    local.x = ConvertScaledInt(src[7]);
    local.y = ConvertScaledInt(src[8]);
    local.z = ConvertScaledInt(src[9]);
    out->x = local.x;
    out->y = local.y;
    out->z = local.z;
    out->vtable = lbl_80210314;
}

//800622B8
extern "C" void compute_transform(CVec3Tagged* out, CPositionSource* obj)
{
    Vec3 local = *(Vec3*)lbl_8036203C;
    s32* src = (s32*)obj->data;
    local.x = ConvertScaledInt(src[1]);
    local.y = ConvertScaledInt(src[2]);
    local.z = ConvertScaledInt(src[3]);
    out->x = local.x;
    out->y = local.y;
    out->z = local.z;
    out->vtable = lbl_80210314;
}
