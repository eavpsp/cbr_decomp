#include <types.h>

extern "C" char lbl_803675CC[0x104];

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

//8006E034
extern "C" void* GetPtrEntryAt0x34(int idx)
{
    char* base = *(char**)(lbl_803675CC + 0xf0);
    u32 off1 = ReadLE32(base + 0x34);
    char* ptr1 = base + off1 + idx * 4;
    u32 off2 = ReadLE32(ptr1);
    return base + off2;
}
