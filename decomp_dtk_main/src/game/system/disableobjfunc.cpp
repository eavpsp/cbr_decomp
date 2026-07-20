#include <types.h>

extern "C" char lbl_8036AC10[];
extern "C" int CheckStateField0x2C8(char* obj);

//80088848
extern "C" void disableObjectFunctionality(char* obj)
{
    if (*(int*)(obj + 0x6a08) != 0) {
        if (CheckStateField0x2C8(lbl_8036AC10) != 0) {
            *(int*)(obj + 0x6a08) = 0;
        }
    }
}
