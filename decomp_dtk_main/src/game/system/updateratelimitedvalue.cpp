#include <types.h>

extern "C" char MainGame[];
extern "C" f32 lbl_8065D3EC;
extern "C" f32 lbl_8065D5F0;
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D4C0;
extern "C" f32 lbl_8065D4E8;
extern "C" f32 lbl_8065D5C4;
extern "C" f64 lbl_8065D388;

typedef union
{
    struct
    {
        u32 hi, lo;
    } parts;
    f64 d;
} DoubleBits;

//800B5C3C
extern "C" void UpdateRateLimitedValue(char* obj, u32 param2)
{
    if (*(int*)(obj + 0x58b4) == 0) {
        if (*(int*)(MainGame + 0x5D080) == 0) {
            *(int*)(obj + 0x58b4) = 1;
        }
    }

    f32 target;
    f32 step;

    int state = *(int*)(obj + 0xbec);
    if (state == 1 || state == 2) {
        int state2 = *(int*)(obj + 0xbf4);
        if (state2 == 1) {
            target = lbl_8065D3EC;
        } else if (state2 == -1) {
            target = lbl_8065D5F0;
        } else {
            target = lbl_8065D35C;
        }
        step = lbl_8065D4C0;
    } else if (*(int*)(MainGame + 0x5D080) != 0 && *(int*)(obj + 0x58b4) != 0) {
        target = 0.0f;
        step = lbl_8065D4E8;
    } else {
        int state3 = *(int*)(obj + 0xbac);
        if (state3 == 1 || state3 == 2 || state3 == 3 || state3 == 4 || state3 == 5 || state3 == 6 || state3 == 7 || state3 == 8) {
            target = 0.0f;
            step = lbl_8065D4E8;
        } else {
            target = lbl_8065D5C4;
            step = lbl_8065D4E8;
        }
    }

    u32 bits = *(u32*)&target;
    u32 expField = bits & 0x7F800000;
    int cls;
    if (expField == 0x7F800000) {
        cls = (bits & 0x7FFFFF) == 0 ? 2 : 1;
    } else if (expField >= 0x7F800000) {
        cls = 4;
    } else if (expField == 0) {
        cls = (bits & 0x7FFFFF) == 0 ? 3 : 5;
    } else {
        cls = 4;
    }

    if (cls == 1) {
        return;
    }

    f32 current = *(f32*)(obj + 0x58b0);

    if (current > target) {
        DoubleBits u;
        u.parts.hi = 0x43300000;
        u.parts.lo = param2;
        f32 delta = (f32)(u.d - lbl_8065D388);

        f32 newVal = current - step * delta;
        *(f32*)(obj + 0x58b0) = newVal;
        if (newVal < target) {
            *(f32*)(obj + 0x58b0) = target;
        }
    } else if (current < target) {
        DoubleBits u;
        u.parts.hi = 0x43300000;
        u.parts.lo = param2;
        f32 delta = (f32)(u.d - lbl_8065D388);

        f32 newVal = current + step * delta;
        *(f32*)(obj + 0x58b0) = newVal;
        if (newVal > target) {
            *(f32*)(obj + 0x58b0) = target;
        }
    }
}
