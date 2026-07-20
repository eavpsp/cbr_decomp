#include <types.h>

extern "C" f32 lbl_8065AB80;

//8008C7CC
extern "C" void findLargestValueAndIndex(char* obj)
{
    *(f32*)(obj + 0x780) = lbl_8065AB80;

    int idx = 0;
    int byteOffset = 0;

    for (;;) {
        int bitmask = *(int*)(obj + 0x250);
        int bit = 1 << idx;
        if ((bitmask & bit) != 0) {
            f32 best = *(f32*)(obj + 0x780);
            u32 bits = *(u32*)&best;
            u32 expField = bits & 0x7F800000;

            int cls;
            if (expField == 0x7F800000) {
                if ((bits & 0x7FFFFF) == 0) {
                    cls = 2;
                } else {
                    cls = 1;
                }
            } else if (expField >= 0x7F800000) {
                cls = 4;
            } else if (expField == 0) {
                if ((bits & 0x7FFFFF) == 0) {
                    cls = 3;
                } else {
                    cls = 5;
                }
            } else {
                cls = 4;
            }

            if (cls != 1) {
                f32 candidate = *(f32*)(obj + 0x6fc + idx * 4);
                if (candidate > best) {
                    *(int*)(obj + 0x784) = idx;
                    *(f32*)(obj + 0x780) = candidate;
                }
            }
        }

        idx += 1;
        byteOffset += 0x20;

        short* table = *(short**)(obj + 0x24c);
        if (*(short*)((char*)table + byteOffset) == -1) break;
    }
}
