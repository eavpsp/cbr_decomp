#include <types.h>

extern "C" void CheckIsPlayingEffect(void* obj);

//8009CED4
extern "C" void configureEffectBuffer(int* obj)
{
    obj[0] = 1;
    obj[2] = 2;
    obj[4] = 3;
    obj[6] = 4;
    obj[8] = 5;
    obj[10] = 6;
    obj[12] = 7;
    obj[14] = 8;
    CheckIsPlayingEffect(obj);
}
