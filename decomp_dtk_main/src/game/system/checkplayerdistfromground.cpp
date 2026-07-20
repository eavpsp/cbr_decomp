#include <types.h>

extern "C" f32 fn_8015CAE4(f32 dx, f32 dz);
extern "C" f32 lbl_8065D3C4;
extern "C" f32 lbl_8065D434;
extern "C" f32 lbl_8065D5AC;

//800B1E0C
extern "C" int CheckPlayerDistanceFromGround(void* unused, f32* point, char* obj)
{
    f32 dx = *(f32*)(obj + 0xc8) - *(f32*)((char*)point + 0x0);
    f32 dz = *(f32*)(obj + 0xd0) - *(f32*)((char*)point + 0x8);
    f32 dist = fn_8015CAE4(dx, dz);

    f32 diff = dist - *(f32*)(obj + 0xfc);
    while (diff < 0.0f) {
        diff += lbl_8065D3C4;
    }
    while (diff >= lbl_8065D3C4) {
        diff -= lbl_8065D3C4;
    }

    int result = 0;
    if (diff >= lbl_8065D434) {
        if (diff <= lbl_8065D5AC) {
            result = 1;
        }
    }
    return result;
}

//800B1EB8
extern "C" f32 GetFieldAt0x77C(char* obj)
{
    return *(f32*)(obj + 0x77c);
}
