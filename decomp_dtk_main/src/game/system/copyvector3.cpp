#include <types.h>

struct Vec3
{
    f32 x, y, z;
};

//800A2C98
extern "C" void copyVector3(Vec3* out, Vec3* in)
{
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

//800A2CB4
extern "C" int GetNumLeadingZerosInDifference(char* obj, int val)
{
    return *(int*)(obj + 4) - val == 0;
}
