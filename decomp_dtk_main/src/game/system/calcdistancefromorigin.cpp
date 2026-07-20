#include <types.h>

extern "C" f64 __frsqrte(f64);
extern "C" f32 lbl_8065AB80;
extern "C" f64 lbl_8065D588;

static inline f32 dolsqrtf(f32 x)
{
    static const f64 _half = .5;
    static const f64 _three = 3.0;
    f64 guess = __frsqrte((f64)x);
    guess = _half * guess * (_three - guess * guess * x);
    guess = _half * guess * (_three - guess * guess * x);
    guess = _half * guess * (_three - guess * guess * x);
    return (f32)(x * guess);
}

//800B1C5C
extern "C" f32 calculate_distance_from_origin(char* obj)
{
    f32 z = *(f32*)(obj + 0x38);
    f32 y = *(f32*)(obj + 0x34);
    f32 sumSq = y * y + z * z;

    if (sumSq > 0.0f) {
        return dolsqrtf(sumSq);
    }

    if (sumSq < lbl_8065D588) {
        return lbl_8065AB80;
    }

    u32 bits = *(u32*)&sumSq;
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
        return lbl_8065AB80;
    }
    return sumSq;
}
