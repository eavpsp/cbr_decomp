#include <types.h>

//800B2BB0
extern "C" void SetObjectFlagsAndTimer(char* obj, int value, int param2)
{
    *(int*)(obj + 0xc44) = value;
    if (param2 == 0) {
        return;
    }
    *(int*)(obj + 0xc6c) = 1;
    *(f32*)(obj + 0xc7c) = 0.0f;
}
