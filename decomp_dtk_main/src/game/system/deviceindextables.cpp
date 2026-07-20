#include <types.h>

extern "C" void* lbl_80215050[];
extern "C" char lbl_80212D88[];
extern "C" char lbl_80223A80[];
extern "C" char lbl_80223690[];
extern "C" char lbl_8021C70C[];
extern "C" char lbl_80216C30[];

//8006ED90
extern "C" void* GetDeviceHandleByIndex(int idx)
{
    if (idx < 0) return (void*)-1;
    return lbl_80215050[idx];
}

//8006EDB4
extern "C" void* GetDeviceEntryAt0x38A(int idx)
{
    return lbl_80212D88 + idx * 0x38;
}

//8006EDC8
extern "C" void* GetDeviceEntryAt0x38B(int idx)
{
    return lbl_80223A80 + idx * 0x38;
}

//8006EDDC
extern "C" void* GetObjectAddressByIndex_(int** param)
{
    int val = **param;
    if (val < 0x2710) {
        return lbl_8021C70C + val * 0x18;
    }
    return lbl_80223690 + (val - 0x2710) * 0x18;
}

//8006EE18
extern "C" void* GetField_lbl_80216C30(void)
{
    return lbl_80216C30;
}
