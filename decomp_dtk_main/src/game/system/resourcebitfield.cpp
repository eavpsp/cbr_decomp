#include <types.h>

extern "C" char lbl_803675CC[0x104];

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

static inline u16* GetU16FieldPtrAt0x28Ext8(int idx)
{
    char* base = *(char**)(lbl_803675CC + 0xf0);
    u32 off1 = ReadLE32(base + 0x28);
    return (u16*)(base + off1 + 8 + idx * 0x14);
}

//8006E3AC
extern "C" void ClearBitsU16FieldAt0x28Ext8(int idx, u16 mask)
{
    u16* p = GetU16FieldPtrAt0x28Ext8(idx);
    *p = *p & ~mask;
}

//8006E3FC
extern "C" void SetBitsU16FieldAt0x28Ext8(int idx, u16 mask)
{
    u16* p = GetU16FieldPtrAt0x28Ext8(idx);
    *p = *p | mask;
}

//8006E44C
extern "C" u16 GetMaskedU16FieldAt0x28Ext8(int idx, u16 mask)
{
    u16* p = GetU16FieldPtrAt0x28Ext8(idx);
    return *p & mask;
}
