#include <types.h>

extern "C" char MainGame[];
extern "C" f32 lbl_8065D35C;
extern "C" int getBitwiseResultForFloatComparison(void* obj);

//8009FEDC
extern "C" int isWithinRange_8009fedc(char* obj)
{
    int result = 0;
    if (*(f32*)(obj + 0x9658) <= lbl_8065D35C) {
        if (getBitwiseResultForFloatComparison(MainGame + 0x8f38) != 0) {
            result = 1;
        }
    }
    return result;
}
