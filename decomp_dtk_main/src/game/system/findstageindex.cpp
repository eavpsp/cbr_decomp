#include <types.h>

extern "C" char lbl_802244E4[];
extern "C" int strcmp(const char* s1, const char* s2);

//8006F654
extern "C" int find_stage_index(const char* name)
{
    char* p = lbl_802244E4;
    int idx = 0;

    while (*(void**)p != 0) {
        if (strcmp(name, *(char**)p) == 0) {
            return idx;
        }
        p += 0xc;
        idx += 1;
    }

    idx += 1;
    p = lbl_802244E4 + idx * 0xc;

    while (*(void**)p != 0) {
        if (strcmp(name, *(char**)p) == 0) {
            char* q = lbl_802244E4;
            int count = 0;
            while (*(void**)q != 0) {
                q += 0xc;
                count++;
            }
            return idx - count + 0x63;
        }
        p += 0xc;
        idx += 1;
    }

    return -1;
}
