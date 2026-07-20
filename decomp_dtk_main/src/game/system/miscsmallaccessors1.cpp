#include <types.h>

extern "C" char lbl_80378234[12];

//800B1D50
extern "C" int IsFlag4SetInParams(char* obj)
{
    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & 4;
    int b = *(int*)(obj + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    return (b | a) != 0;
}

//800B1D84
extern "C" char* GetFieldPtrAt0xB4(char* obj)
{
    return obj + 0xb4;
}

struct Vec3Fields
{
    f32 x, y, z;
};

//800B1D8C
extern "C" void SetVec3FieldsAt0x18(char* obj, f32 x, f32 y, f32 z)
{
    Vec3Fields tmp = *(Vec3Fields*)lbl_80378234;

    tmp.x = x;
    tmp.y = y;
    tmp.z = z;

    *(f32*)(obj + 0x18) = x;
    *(f32*)(obj + 0x1c) = y;
    *(f32*)(obj + 0x20) = z;
}

//800B1DDC
extern "C" void SetFieldAt0x4(char* obj, int value)
{
    *(int*)(obj + 4) = value;
}

//800B1DE4
extern "C" void SetFieldToOne(char* obj)
{
    *(int*)(obj) = 1;
}

//800B1DF0
extern "C" int GetMaskedValueAtOffset_8b0(char* obj, int mask)
{
    return *(int*)(obj + 0x8b0) & mask;
}

//800B1DFC
extern "C" int GetValueAtOffset_8b0(char* obj)
{
    return *(int*)(obj + 0x8b0);
}

//800B1E04
extern "C" int gdev_cc_shutdown_6(void)
{
    return 0;
}
