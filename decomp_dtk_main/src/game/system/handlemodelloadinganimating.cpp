#include <types.h>

typedef unsigned char BOOL8;

extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D43C;
extern "C" char lbl_802262AC[0x24];
extern "C" int CheckSubsystemState_(void* obj);
extern "C" int checkIfSpecialObj_(void* obj);
extern "C" int isFirstLayerFifteen(void* obj);
extern "C" int IsObjectInSpecialState(void* obj);
extern "C" int GetObjectUnderwaterStatus(void* obj);
extern "C" void removeElementsAndStreams(void* obj);
extern "C" int LoadFileInMemory(void* obj);

typedef void (*VtableFn80)(void*, int, f32, f32, f32, f32, int, int, int, int);
typedef void (*VtableFn18)(void*);

static void SetStateFlags(char* obj, short a8cValue)
{
    if (*(int*)(obj + 0x95DC) == 0) {
        *(int*)(obj + 0xa48) = 0x14;
    } else {
        *(int*)(obj + 0xa48) = 0x18;
    }
    *(short*)(obj + 0xa8c) = a8cValue;
}

//800B31B8
extern "C" void HandleModelLoadingAnimating(char* obj, f32* out)
{
    int stage = *(int*)(obj + 0x95D4);
    if (stage < 0) {
        return;
    }

    int step = *(int*)(obj + 0x95D8);
    if (step > 30) {
        goto ExitZero;
    }

    if (step == 0) {
        goto Step0;
    }
    if (step == 10) {
        goto Step10;
    }
    if (step == 15) {
        goto Step15;
    }
    if (step == 20) {
        goto Step20;
    }
    if (step == 30) {
        goto Step30;
    }
    goto ExitZero;

Step0 : {
    BOOL8 flag = 0;
    if (*(int*)(obj + 0xa48) == 4) {
        if (CheckSubsystemState_(obj + 0xa44) != 0) {
            flag = 1;
        }
    }
    if (flag != 0) {
        char* sub = *(char**)(obj + 0xa64);
        if (sub != NULL) {
            *(u32*)(sub + 0x22c) = *(u32*)(sub + 0x22c) & 0xFFFFFFFF;
            *(u32*)(sub + 0x228) = *(u32*)(sub + 0x228) & ~0x04000000u;
            *(void**)(obj + 0xa64) = (void*)NULL;
        }
        *(int*)(obj + 0xa48) = 0;
    }
}

    {
        int val = *(int*)(obj + 0x95D0);
        if (val == 3) {
            goto Path943C;
        }
        if (val >= 3) {
            if (val >= 9) {
                goto MainChain;
            }
            goto Path9418;
        }
        if (val == 1) {
            goto Pathc8c;
        }
        if (val >= 1) {
            goto Pathcc4;
        }
        goto MainChain;

    Pathc8c:
        *(int*)(obj + 0xc8c) = 2;
        goto Merge0;

    Pathcc4:
        *(int*)(obj + 0xcc4) = 9;
        removeElementsAndStreams(obj + 0x9418);
        goto Merge0;

    Path943C:
        *(int*)(obj + 0x943C) = 2;
        goto Merge0;

    Path9418:
        *(int*)(obj + 0xa48) = 0x13;
        goto Merge0;

    MainChain:
        if (checkIfSpecialObj_(obj + 0xa44) != 0) {
            goto SetA48_13;
        }
        if (isFirstLayerFifteen(obj + 0xa44) != 0) {
            goto SetA48_13;
        }
        if (IsObjectInSpecialState(obj + 0xa44) != 0) {
            goto SetA48_13;
        }
        if (GetObjectUnderwaterStatus(obj + 0xa44) == 0) {
            goto Merge0;
        }
    SetA48_13:
        *(int*)(obj + 0xa48) = 0x13;
    }

Merge0:
    *(int*)(obj + 0x95D8) = 10;

Step10:
    if (*(int*)(obj + 0xc8c) != 0) {
        goto ExitZero;
    }
    if (*(int*)(obj + 0xcc4) != 0) {
        goto ExitZero;
    }
    if (*(int*)(obj + 0x943C) != 0) {
        goto ExitZero;
    }
    if (*(int*)(obj + 0xa48) != 0) {
        goto ExitZero;
    }

    if (*(int*)(obj + 0x5954) == 0) {
        *(int*)(obj + 0x95D0) = *(int*)(obj + 0x95D4);
        *(int*)(obj + 0x95D8) = 15;

        VtableFn18 fn18 = *(VtableFn18*)(*(char**)(obj + 0x5950) + 0x18);
        fn18(obj + 0x58d4);
    }

Step15 : {
    int val = *(int*)(obj + 0x95D0);
    void* entry = *(void**)(lbl_802262AC + val * 4);
    int result;
    if (entry == NULL) {
        result = 1;
    } else if (LoadFileInMemory(obj + 0x58d4) == 0) {
        result = 0;
    } else {
        VtableFn80 fn = *(VtableFn80*)(*(char**)(obj + 0x34) + 0x80);
        fn(obj, 0x11, 0.0f, lbl_8065D380, lbl_8065D380, lbl_8065D43C, 1, 0, 0, 0);
        result = 1;
    }

    if (result == 0) {
        goto ExitZero;
    }

    *(int*)(obj + 0x95D8) = 20;
}

Step20 : {
    if (stage > 8) {
        goto Common1;
    }

    switch (stage) {
    case 1:
        *(int*)(obj + 0xc8c) = 1;
        goto Common1;
    case 2:
        *(int*)(obj + 0xcc4) = 1;
        goto Common1;
    case 3:
        *(int*)(obj + 0x943C) = 1;
        goto Common1;
    case 4:
        SetStateFlags(obj, 0x10);
        goto Common1;
    case 5:
        SetStateFlags(obj, 0x15);
        goto Common1;
    case 6:
        SetStateFlags(obj, 0x16);
        goto Common1;
    case 7:
        SetStateFlags(obj, 0x38);
        goto Common1;
    case 8:
        *(int*)(obj + 0x95D0) = 0;
        goto Common1;
    default:
        goto Common1;
    }
}

Common1:
    *(int*)(obj + 0x95D8) = 30;
    *(int*)(obj + 0x95DC) = 0;
    goto ExitZero;

Step30:
    if (*(int*)(obj + 0xc8c) != 0) {
        goto ExitZero;
    }
    if (*(int*)(obj + 0xcc4) != 0) {
        goto ExitZero;
    }
    if (*(int*)(obj + 0x943C) != 0) {
        goto ExitZero;
    }

    *(int*)(obj + 0x95D4) = -1;
    *(int*)(obj + 0x95D8) = 0;
    *(int*)(obj + 0x95DC) = 0;
    *(int*)(obj + 0x95E0) = *(int*)(obj + 0x95E4);
    *(int*)(obj + 0x95E4) = 0;

ExitZero:
    *out = lbl_8065D35C;
}
