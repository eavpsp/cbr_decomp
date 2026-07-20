#include <types.h>

struct CFlagValueHolder
{
    char pad[0x138];
    int flag;
    int value;
};

//800313A4
extern "C" bool lessThanSix(int* ptr)
{
    int val = *ptr;
    return (val >= 1 && val < 6);
}

//800313C8
extern "C" void setFlagAndValue(CFlagValueHolder* obj, int value)
{
    obj->flag = 1;
    obj->value = value;
}
