#include <types.h>

extern "C" char lbl_803675CC[0x104];
extern "C" char lbl_803672CC[0x300];
extern "C" int lbl_802239F0[];

typedef unsigned char BOOL8;

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

//8006E580
extern "C" void* ResolvePtrByRange(u32 ptr)
{
    u32 lo = *(u32*)(lbl_803675CC + 0xf8);
    BOOL8 inRange = 0;
    if (ptr >= lo) {
        char* sizeTablePtr = *(char**)(lbl_803675CC + 0xec);
        u32 size = ReadLE32(sizeTablePtr + 0x14);
        if (ptr < lo + size) inRange = 1;
    }
    if (inRange) {
        u32 off = ReadLE32((char*)ptr);
        if (off == 0) return 0;
        return (char*)(lo + off);
    } else {
        u32 off = ReadLE32((char*)ptr);
        if (off == 0) return 0;
        char* fallbackBase = *(char**)(lbl_803672CC + 0x150);
        return fallbackBase + off;
    }
}

//8006E66C
extern "C" int IsPtrInRange(u32 ptr)
{
    u32 lo = *(u32*)(lbl_803675CC + 0xf8);
    if (ptr < lo) return 0;
    char* sizeTablePtr = *(char**)(lbl_803675CC + 0xec);
    u32 size = ReadLE32(sizeTablePtr + 0x14);
    if (ptr >= lo + size) return 0;
    return 1;
}

//8006E6D4
extern "C" void* GetTableEntry0xF8(int idx)
{
    char* base = *(char**)(lbl_803675CC + 0xf8);
    u32 off = ReadLE32(base + idx * 4);
    if (off == 0) return 0;
    return base + off;
}

//8006E724
extern "C" void* GetField0xF8(void)
{
    return *(void**)(lbl_803675CC + 0xf8);
}

//8006E734
extern "C" void* ResolveRemappedIndex(int idx)
{
    if (idx >= 0x2710) {
        idx = lbl_802239F0[idx - 0x2710];
        if (idx < 0) return 0;
    }
    char* base = *(char**)(lbl_803675CC + 0xf4);
    char* ptr = base + idx * 4;
    if (*(u32*)ptr == 0) return 0;
    u32 off = ReadLE32(ptr);
    return base + off;
}
