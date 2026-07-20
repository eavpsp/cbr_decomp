#include <types.h>

//8008DEC0
extern "C" void clearInterrupts(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & 0x02000000;
    int b = *(int*)(obj + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    if ((b | a) == 0) return;

    *(int*)(obj + 0x254) = *(int*)(obj + 0x250);

    int idx = 0;
    int byteOffset = 0;
    for (;;) {
        short* table = *(short**)(obj + 0x24c);
        if (*(short*)((char*)table + byteOffset) == -1) break;

        int bit = 1 << idx;
        if ((*(int*)(obj + 0x250) & bit) != 0) {
            *(int*)(obj + 0x250) &= ~bit;
        }
        byteOffset += 0x20;
        idx += 1;
    }
}
