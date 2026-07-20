#include <types.h>

extern "C" char lbl_80366E58[0x308];

//8006D824
extern "C" int resetGlobalVariables(void)
{
    *(u8*)(lbl_80366E58 + 0x1e0 + 0x74) = 0;
    *(u8*)(lbl_80366E58 + 0x14c + 0x74) = 0;
    *(u8*)(lbl_80366E58 + 0x274 + 0x74) = 0;
    return 1;
}
