#include <types.h>

extern "C" int lbl_802244E4[];

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

//8006F600
extern "C" int getMaskedValueForStageAndIndex(int idx, int mask)
{
    idx = RemapStageIndex(idx);
    int* entry = (int*)((char*)lbl_802244E4 + idx * 0xc);
    return entry[2] & mask;
}
