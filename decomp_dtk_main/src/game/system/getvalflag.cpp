#include <types.h>

//800A8640
extern "C" int GetValFlag(void* unused, f32* a, f32* b)
{
    f32 f1 = a[1];
    f32 f2 = b[1];
    if (f1 < f2) goto CheckSecond;
    {
        f32 f0 = a[0];
        if (f1 <= f0) return 0;
    }
CheckSecond:
    {
        f32 f0 = a[0];
        if (f0 >= f2) return 1;
        return 0;
    }
}
