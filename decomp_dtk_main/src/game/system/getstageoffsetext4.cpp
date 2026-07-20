#include <types.h>

extern "C" int lbl_802244E4[];
extern "C" char lbl_803675CC[0x104];

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

static inline int RemapStageIndex(int idx)
{
    if (idx < 0x64) {
        char* p = (char*)lbl_802244E4;
        int count = 0;
        while (*(int*)p != 0) {
            p += 0xc;
            count++;
        }
        idx = count + idx - 0x63;
    }
    return idx;
}

//8006F73C
extern "C" void* get_offset_from_stage_ext4(int idx)
{
    idx = RemapStageIndex(idx);
    int* entry = (int*)((char*)lbl_802244E4 + idx * 0xc);
    int val = entry[1];
    if (val < 0) return 0;
    char* base = *(char**)(lbl_803675CC + 0xf0);
    u32 off1 = ReadLE32(base + 0x38);
    char* ptr1 = base + off1 + val * 8 + 4;
    u32 off2 = ReadLE32(ptr1);
    return base + off2;
}
