#include <types.h>

extern "C" char lbl_803675CC[0x104];

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

static inline u32 GetResourceRawValue(int idx, int off)
{
    char* base = *(char**)(lbl_803675CC + 0xf0);
    u32 off1 = ReadLE32(base + off);
    char* ptr1 = base + off1 + idx * 4;
    return ReadLE32(ptr1);
}

//8006E7FC
extern "C" u32 GetResourceValueAt0x24(int idx)
{
    return GetResourceRawValue(idx, 0x24);
}

//8006E868
extern "C" u32 GetResourceValueAt0x20(int idx)
{
    return GetResourceRawValue(idx, 0x20);
}

//8006E8D4
extern "C" u32 GetResourceValueAt0x1C(int idx)
{
    return GetResourceRawValue(idx, 0x1c);
}

//8006E940
extern "C" u32 GetImageDataAddress(int idx)
{
    return GetResourceRawValue(idx, 0x18);
}

//8006E9AC
extern "C" u32 ReadIntFromByteArray(int idx)
{
    return GetResourceRawValue(idx, 0x14);
}

//8006EA18
extern "C" u32 getIntFromMemory_8006ea18(int idx)
{
    return GetResourceRawValue(idx, 0x10);
}

//8006EA84
extern "C" u32 GetResourceValueAt0xC(int idx)
{
    return GetResourceRawValue(idx, 0xc);
}

//8006EAF0
extern "C" u32 get_4_byte_int_from_memory(int idx)
{
    return GetResourceRawValue(idx, 8);
}

//8006EB5C
extern "C" u32 GetResourceValueAt0x4(int idx)
{
    return GetResourceRawValue(idx, 4);
}

//8006EBC8
extern "C" u32 GetDataArrayElementValue(int idx)
{
    return GetResourceRawValue(idx, 0);
}

//8006EC34
extern "C" int CheckField0xCCNonZero(void)
{
    return *(int*)(lbl_803675CC + 0xcc) != 0;
}
