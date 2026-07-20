#include <types.h>

extern "C" char lbl_803675CC[0x104];

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

//8006E240
extern "C" u8 GetU8FieldAt0x28Ext0x12(int idx, int extraOffset)
{
    char* base = *(char**)(lbl_803675CC + 0xf0);
    u32 off1 = ReadLE32(base + 0x28);
    return *(u8*)(base + off1 + 0x12 + idx * 0x14 + extraOffset);
}
