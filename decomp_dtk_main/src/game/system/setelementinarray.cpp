#include <types.h>

//8009C2C8
extern "C" void SetElementInArray(char* arr, int key, int value)
{
    int idx;
    if (*(int*)(arr + 0) == key) { idx = 0; }
    else if (*(int*)(arr + 8) == key) { idx = 1; }
    else if (*(int*)(arr + 0x10) == key) { idx = 2; }
    else if (*(int*)(arr + 0x18) == key) { idx = 3; }
    else if (*(int*)(arr + 0x20) == key) { idx = 4; }
    else if (*(int*)(arr + 0x28) == key) { idx = 5; }
    else if (*(int*)(arr + 0x30) == key) { idx = 6; }
    else if (*(int*)(arr + 0x38) == key) { idx = 7; }
    else if (*(int*)(arr + 0x40) == key) { idx = 8; }
    else { idx = -1; }

    if (idx < 0) return;
    *(int*)(arr + idx * 8 + 4) = value;
}
