#include <types.h>

extern "C" char MainGame[];
extern "C" f32 lbl_8065D35C;
extern "C" int getBitwiseResultForFloatComparison(void* obj);

//8009FDE4
extern "C" int IsProcessConditionMet(char* obj)
{
    int result = 0;
    int condA = 0;

    int mask2 = 0;
    int a = *(int*)(MainGame + 0x1b10) & mask2;
    int b = *(int*)(MainGame + 0x1b14) & 0x40000000;
    b = b ^ mask2;
    a = a ^ mask2;
    if ((b | a) != 0) {
        int condB = 0;
        int condC = 0;

        if (*(f32*)(obj + 0x9658) <= lbl_8065D35C) {
            if (getBitwiseResultForFloatComparison(MainGame + 0x8f38) != 0) {
                condC = 1;
            }
        }
        if (condC != 0) {
            if (*(int*)(obj + 0x58a4) != 0) {
                condB = 1;
            }
        }
        if (condB != 0) {
            condA = 1;
        }
    }

    if (condA != 0) {
        int val = *(int*)(obj + 0xc44);
        int flag = (val == 4 || val == 5 || val == 6);
        if (flag != 0) {
            result = 1;
        }
    }

    return result;
}
