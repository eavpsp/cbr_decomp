#include <types.h>

extern "C" char MainGame[];

//8006E7BC
extern "C" int CheckMainGameFlags(void)
{
    int mask2 = 0;
    int a = *(int*)(MainGame + 0x1b10) & 0x80000;
    int b = *(int*)(MainGame + 0x1b14) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    if ((b | a) == 0) return 0xe;
    return 0;
}
