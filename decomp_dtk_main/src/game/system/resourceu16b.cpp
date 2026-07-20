#include <types.h>

extern "C" char lbl_803675CC[0x104];

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

static inline u16 GetU16Field(int idx, int extra)
{
    char* base = *(char**)(lbl_803675CC + 0xf0);
    u32 off1 = ReadLE32(base + 0x28);
    return *(u16*)(base + off1 + extra + idx * 0x14);
}

//8006E28C
extern "C" u16 GetU16FieldAt0x10(int idx)
{
    return GetU16Field(idx, 0x10);
}

//8006E2D4
extern "C" u16 GetU16FieldAt0xE(int idx)
{
    return GetU16Field(idx, 0xe);
}

//8006E31C
extern "C" u16 GetU16FieldAt0xC(int idx)
{
    return GetU16Field(idx, 0xc);
}

//8006E364
extern "C" u16 GetU16FieldAt0xA(int idx)
{
    return GetU16Field(idx, 0xa);
}
