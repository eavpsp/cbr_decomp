#include <types.h>

extern "C" f32 lbl_8065D5C4;

//800B5E1C
extern "C" void initialize_param_1_158b0_and_158b4(char* obj)
{
    *(f32*)(obj + 0x58b0) = lbl_8065D5C4;
    *(int*)(obj + 0x58b4) = 0;
}
