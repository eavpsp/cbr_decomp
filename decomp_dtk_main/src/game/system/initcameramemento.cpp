#include <types.h>

extern "C" char lbl_8020FFC0[];
extern "C" char lbl_80210314[12];

//8007FE14
extern "C" void initCameraMemento(char* obj)
{
    *(void**)(obj + 0x0) = lbl_8020FFC0;
    *(void**)(obj + 0x10) = lbl_80210314;
    *(void**)(obj + 0x20) = lbl_80210314;
    *(void**)(obj + 0x30) = lbl_80210314;
}
