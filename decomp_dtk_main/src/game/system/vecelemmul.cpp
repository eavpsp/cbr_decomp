#include <types.h>

struct Vec3
{
    f32 x, y, z;
};

struct CVec3Tagged
{
    f32 x, y, z;
    void* vtable;
};

extern "C" char lbl_80210314[12];

//8008C1F4
extern "C" void ComputeCrossProduct(CVec3Tagged* out, Vec3* a, Vec3* b)
{
    Vec3 temp = *a;
    out->x = temp.x * b->x;
    out->y = temp.y * b->y;
    out->z = temp.z * b->z;
    out->vtable = lbl_80210314;
}
