#include <types.h>

extern "C" f32 lbl_8065C8B0;

//800665E0
extern "C" int getBitwiseResultForFloatComparison(void* obj)
{
    return *(f32*)((char*)obj + 0x1d4) <= lbl_8065C8B0;
}
