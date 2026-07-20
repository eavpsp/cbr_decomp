#include <types.h>

extern "C" void CheckAndOpenCard(void* a, void* b);

//80089258
extern "C" int GetCardStatus(char* param)
{
    CheckAndOpenCard(*(void**)(param + 0), *(void**)(param + 4));
    return 0;
}
