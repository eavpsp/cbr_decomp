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

//800A2C34
extern "C" int getLeadingZerosCount(char* obj, int val)
{
    return *(int*)(obj + 4) - val == 0;
}

//800A2C48
extern "C" void copyVector3WithTag(CVec3Tagged* out, Vec3* in)
{
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
    out->vtable = lbl_80210314;
}

//800A2C70
extern "C" int GetLeadingZerosShiftCount(char* obj, int val)
{
    return *(int*)(obj + 4) - val == 0;
}

//800A2C84
extern "C" int GetLeadingZeroCount(char* obj, int val)
{
    return *(int*)(obj + 4) - val == 0;
}
