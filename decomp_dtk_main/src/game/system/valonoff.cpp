#include <types.h>

extern "C" char lbl_80366E58[0x14C];

//80068B48
extern "C" void SetValOff(void)
{
    ((char*)lbl_80366E58)[0x1e0 + 0x75] = 0;
    ((char*)lbl_80366E58)[0x14c + 0x75] = 0;
    ((char*)lbl_80366E58)[0x274 + 0x75] = 0;
}

//80068B70
extern "C" void SetValOn(void)
{
    ((char*)lbl_80366E58)[0x1e0 + 0x75] = 1;
    ((char*)lbl_80366E58)[0x14c + 0x75] = 1;
    ((char*)lbl_80366E58)[0x274 + 0x75] = 1;
}
