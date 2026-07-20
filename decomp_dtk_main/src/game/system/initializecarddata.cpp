#include <types.h>

extern "C" void initialize_card_data(void* a, void* b);

//80089860
extern "C" int InitializeCardData(char* param)
{
    initialize_card_data(*(void**)(param + 0), *(void**)(param + 4));
    return 0;
}
