#include <types.h>

struct CVec3Tagged
{
    f32 x, y, z;
    void* vtable;
};

extern "C" char lbl_80210314[12];

//8002442C
extern "C" void scale_vector_by_scalar(CVec3Tagged* out, CVec3Tagged* in, f32 divisor)
{
    out->x = in->x / divisor;
    out->y = in->y / divisor;
    out->z = in->z / divisor;
    out->vtable = lbl_80210314;
}
