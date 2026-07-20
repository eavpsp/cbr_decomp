#include <types.h>

extern "C" int generateRandomNumber(void);
extern "C" void stopAudioAndResetDvdDataAndCloseDvdIfNeeded(void* addr, int a, int b);
extern "C" char MainGame[];
extern "C" f32 lbl_8065D390;
extern "C" f64 lbl_8065D398;
extern "C" f32 lbl_8065D3B4;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D43C;

typedef union
{
    struct
    {
        u32 hi, lo;
    } parts;
    f64 d;
} DoubleBits;

static f32 ScaledRandomAngle(int r)
{
    int mod = r % 360;
    DoubleBits u;
    u.parts.hi = 0x43300000;
    u.parts.lo = mod ^ 0x80000000;
    f64 val = u.d - lbl_8065D398;
    return lbl_8065D390 * (f32)val;
}

typedef void (*VtableFn80)(void*, int, f32, f32, f32, f32, int, int, int, int);

//800B51FC
extern "C" void initialize_particle_emission_800b51fc(char* obj, int param2, int param3)
{
    if (*(int*)(obj + 0x3394) != 0) {
        return;
    }

    *(int*)(obj + 0x3394) = 1;
    *(int*)(obj + 0x3398) = param2;
    *(f32*)(obj + 0x46cc) = *(f32*)(*(char**)(obj + 0x46c8) + 0xfc);
    *(int*)(obj + 0x339c) = param3;

    char* entry = obj;
    for (int i = 0; i < 2; i++) {
        *(f32*)(entry + 0x33a8) = ScaledRandomAngle(generateRandomNumber());
        *(f32*)(entry + 0x33ac) = ScaledRandomAngle(generateRandomNumber());
        *(f32*)(entry + 0x33b0) = lbl_8065D3B4;
        entry += 0x990;
    }

    stopAudioAndResetDvdDataAndCloseDvdIfNeeded(MainGame + 0xE7E24, 0x86, 0xFF);

    char* obj2 = *(char**)(obj + 0x46c8);
    VtableFn80 fn = (VtableFn80)(*(void**)(*(char**)(obj2 + 0x34) + 0x80));
    fn(obj2, 0x5d, 0.0f, lbl_8065D380, 0.0f, lbl_8065D43C, 0, 0, 0, 0);

    *(int*)(MainGame + 0x1b14) = *(int*)(MainGame + 0x1b14) | 0x800;
}
