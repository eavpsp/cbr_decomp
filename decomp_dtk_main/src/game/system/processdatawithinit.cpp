#include <types.h>

extern "C" char MainGame[];
extern "C" f32 lbl_8065D35C;
extern "C" int getBitwiseResultForFloatComparison(void* obj);
extern "C" void InitializeDataStructure(void* obj, int p2, int p3, int p4, int p5);

//800B501C
extern "C" void SetFieldAt0x4_501C(char* obj, int value)
{
    *(int*)(obj + 4) = value;
}

//800B5024
extern "C" void SetFieldAt0x4_5024(char* obj, int value)
{
    *(int*)(obj + 4) = value;
}

//800B502C
extern "C" void SetFieldAt0x4_502C(char* obj, int value)
{
    *(int*)(obj + 4) = value;
}

//800B5034
extern "C" void SetFieldAt0x4_5034(char* obj, int value)
{
    *(int*)(obj + 4) = value;
}

//800B503C
extern "C" void SetFieldAt0x24_503C(char* obj, int value)
{
    *(int*)(obj + 0x24) = value;
}

//800B5044
extern "C" void SetFieldAt0x4_5044(char* obj, int value)
{
    *(int*)(obj + 4) = value;
}

//800B504C
extern "C" void ProcessDataWithInitialization(char* obj, int p2, int p3, int p4, int p5)
{
    char* obj2 = *(char**)(MainGame + 0x96BC);

    int mask2 = 0;
    int a = *(int*)(MainGame + 0x1b10) & mask2;
    int b = *(int*)(MainGame + 0x1b14) & 0x40000000;
    b = b ^ mask2;
    a = a ^ mask2;

    int shouldSkip = 0;
    if ((b | a) != 0) {
        int condC = 0;
        int condB = 0;
        int condA = 0;

        if (*(f32*)(obj2 + 0x9658) <= lbl_8065D35C) {
            if (getBitwiseResultForFloatComparison(MainGame + 0x8f38) != 0) {
                condC = 1;
            }
        }
        if (condC != 0) {
            if (*(int*)(obj2 + 0x58a4) != 0) {
                condB = 1;
            }
        }
        if (condB != 0) {
            condA = 1;
        }

        if (condA != 0) {
            int val = *(int*)(obj2 + 0xc44);
            int flag = (val == 4 || val == 5 || val == 6);
            if (flag != 0) {
                shouldSkip = 1;
            }
        }
    }

    if (shouldSkip == 0) {
        InitializeDataStructure(obj + 0x5D07C, p2, p3, p4, p5);
    }
}

//800B517C
extern "C" int IsObjectEnabled(char* obj)
{
    int result = 0;
    int mask2 = 0;
    int a = *(int*)(MainGame + 0x1b10) & mask2;
    int b = *(int*)(MainGame + 0x1b14) & 1;
    b = b ^ mask2;
    a = a ^ mask2;

    if ((b | a) != 0) {
        int c = *(int*)(MainGame + 0x1b14) & 0x22;
        c = c ^ mask2;

        if ((c | a) == 0) {
            if ((*(int*)(obj + 0x331c) != 0 || *(int*)(obj + 0x3320) != 0) && *(int*)(obj + 0x3324) == 0) {
                result = 1;
            }
        }
    }

    return result;
}
