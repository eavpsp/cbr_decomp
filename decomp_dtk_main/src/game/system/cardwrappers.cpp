#include <types.h>

extern "C" void CheckCardExists(void* a, void* b);

//80088E48
extern "C" int ReturnCardState(char* param)
{
    CheckCardExists(*(void**)(param + 0), *(void**)(param + 4));
    return 0;
}
