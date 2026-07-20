#include <types.h>

//80169FA8
extern "C" int CheckStateField0x2C8(char* obj)
{
    u16 state = *(u16*)(obj + 0x2c8);
    return (state == 8 || state == 0);
}
