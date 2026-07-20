#include <types.h>

extern "C" int lbl_802244E4[];

//8006F924
extern "C" int getStageCount(void)
{
    int count = 0;
    char* p = (char*)lbl_802244E4;
    while (*(int*)p != 0) {
        p += 0xc;
        count++;
    }
    return count;
}
