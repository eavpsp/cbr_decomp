#include <types.h>

//80012A7C
extern "C" void increment_integer(void* unused, int* ptr)
{
    (*ptr)++;
}
