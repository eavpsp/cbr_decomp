#include <types.h>

extern "C" int GetMemoryAddressAtIndex(int idx);
extern "C" char lbl_8036781C[0x210];

//80051C60
extern "C" bool IsBitSetAtIndex3(void)
{
    int bit = GetMemoryAddressAtIndex(3);
    u32 word = *(u32*)(lbl_8036781C + (bit >> 3));
    return (word & (1 << (bit & 0x1F))) != 0;
}
