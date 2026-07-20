#include <types.h>

//80087A40
extern "C" int GetValueAtAddress_80087a40(char* obj)
{
    return *(int*)(obj + 0xC408);
}
