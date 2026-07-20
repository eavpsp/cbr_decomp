#include <types.h>

extern "C" void AddPSVecWithScalar(void* dst, void* a, void* b);
extern "C" char lbl_80210314[12];

struct Vec3Tagged
{
    u32 x, y, z;
    void* vtable;
};

//800B7898
extern "C" void AddPSVectorWithScalarAndReturn(char* obj)
{
    int idx = *(int*)(obj + 0x784);
    char* elem = obj + idx * 0x24;

    u32 bVec[3];
    bVec[0] = *(u32*)(elem + 0x278);
    bVec[1] = *(u32*)(elem + 0x27c);
    bVec[2] = *(u32*)(elem + 0x280);

    Vec3Tagged dst;
    AddPSVecWithScalar(&dst, obj + 0xc8, bVec);

    dst.vtable = lbl_80210314;
}
