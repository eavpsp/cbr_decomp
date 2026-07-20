#include <types.h>

extern "C" f32 lbl_8065D4E8;
extern "C" int fn_801A43B8(char* bucketEntry, char* param2, char* param3plus8, char* param4);

//800B2ABC
extern "C" int FindMatchingBucket(char* obj, char* param2, char* param3, char* param4)
{
    f32 threshold = lbl_8065D4E8 + *(f32*)(param2 + 4);
    int count = 0;
    int total = *(int*)(obj + 0x980);

    if (total > 0) {
        char* scan = obj;
        int ctr = total;
        goto loop_check;
    loop_body:
        scan += 4;
        count += 1;
        ctr -= 1;
        if (ctr != 0) {
            goto loop_check;
        }
        count = 0;
        goto loop_done;
    loop_check : {
        int id = *(int*)(scan + 0x984);
        f32 val = *(f32*)(obj + id * 0x1c + 0x9d0);
        if (val <= threshold) {
            goto loop_body;
        }
    }
    loop_done:;
    }

    int bucketCount = *(int*)(obj + 0x980);
    for (int j = 0; j < bucketCount; j++) {
        int combined = count + j;
        int modIdx = combined % bucketCount;
        int id = *(int*)(obj + modIdx * 4 + 0x984);
        char* bucketEntry = obj + id * 0x1c + 0x9c4;
        int result = fn_801A43B8(bucketEntry, param2, param3 + 8, param4);
        if (result >= 0) {
            *(int*)(param3 + 4) = id;
            *(int*)(param3 + 0) = result;
            return 1;
        }
    }
    return 0;
}
