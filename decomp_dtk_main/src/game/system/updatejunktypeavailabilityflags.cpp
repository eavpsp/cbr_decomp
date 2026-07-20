#include <types.h>

typedef unsigned char BOOL8;

extern "C" char MainGame[];
extern "C" int getJunkType(void* base, int type);
extern "C" int checkIfSpecialObj_(void* obj);
extern "C" int IsObjectInSpecialState(void* obj);
extern "C" int isFirstLayerFifteen(void* obj);
extern "C" int GetObjectUnderwaterStatus(void* obj);

static void SetJunkFlagForKey(char* arr, int key, int value)
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

//8009C398
extern "C" void UpdateJunkTypeAvailabilityFlags(char* obj)
{
    char* base = *(char**)(MainGame + 0x96BC);

    {
        BOOL8 flag = 1;
        if (getJunkType(base + 0x9688, 0x10) < 0) {
            if (checkIfSpecialObj_(base + 0xa44) == 0) {
                flag = 0;
            }
        }
        SetJunkFlagForKey(obj, 4, flag);
    }
    {
        BOOL8 flag = 1;
        if (getJunkType(base + 0x9688, 0x16) < 0) {
            if (IsObjectInSpecialState(base + 0xa44) == 0) {
                flag = 0;
            }
        }
        SetJunkFlagForKey(obj, 6, flag);
    }
    {
        BOOL8 flag = 1;
        if (getJunkType(base + 0x9688, 0x15) < 0) {
            if (isFirstLayerFifteen(base + 0xa44) == 0) {
                flag = 0;
            }
        }
        SetJunkFlagForKey(obj, 5, flag);
    }
    {
        BOOL8 flag = 1;
        if (getJunkType(base + 0x9688, 0x38) < 0) {
            if (GetObjectUnderwaterStatus(base + 0xa44) == 0) {
                flag = 0;
            }
        }
        SetJunkFlagForKey(obj, 7, flag);
    }

    SetJunkFlagForKey(obj, 8, 0);
}
