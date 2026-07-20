#include <types.h>

struct Vec3F
{
    f32 x, y, z;
};

struct Vec3Tagged
{
    f32 x, y, z;
    void* vtable;
};

extern "C" char lbl_80378258[0x24];
extern "C" char lbl_8037824C[0xC];
extern "C" char lbl_80210314[12];
extern "C" f32 lbl_8065D3C4;
extern "C" void fn_8018E824(void* objB, Vec3F* a, Vec3F* b, Vec3Tagged* out);
extern "C" f32 fn_8015CAE4(f32 dx, f32 dz);

//800B1EC0
extern "C" f32 ComputeWrappedDistance(char* obj, char* objB, int idx)
{
    char* elem = obj + idx * 0x24;

    f32 cx = *(f32*)(obj + 0xc8);
    f32 dz = *(f32*)(obj + 0xd0);

    f32 x1 = cx + *(f32*)(elem + 0x284);
    f32 z1 = dz + *(f32*)(elem + 0x28c);
    f32 x2 = cx + *(f32*)(elem + 0x290);
    f32 z2 = dz + *(f32*)(elem + 0x298);
    f32 objBField4 = *(f32*)(objB + 0x4);

    Vec3F a = *(Vec3F*)lbl_80378258;
    Vec3F b = *(Vec3F*)lbl_8037824C;
    a.x = x1;
    a.y = objBField4;
    a.z = z1;
    b.x = x2;
    b.y = objBField4;
    b.z = z2;

    Vec3Tagged out;
    out.vtable = lbl_80210314;

    fn_8018E824(objB, &a, &b, &out);

    f32 dist = fn_8015CAE4(out.x, out.z);

    while (dist < 0.0f) {
        dist += lbl_8065D3C4;
    }
    while (dist >= lbl_8065D3C4) {
        dist -= lbl_8065D3C4;
    }

    return dist;
}
