#include <types.h>

//80072214
extern "C" void InitializeParameters(void* unused, int val, int* obj)
{
    obj[0] = 1;
    obj[1] = val;
}
