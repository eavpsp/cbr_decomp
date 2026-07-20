#include <types.h>

extern "C" char MainGame[];
extern "C" void stopAudioAndResetDvdDataAndCloseDvdIfNeeded(void* addr, int a, int b);
extern "C" void HandleAudioDataAndStreaming(char* obj);

typedef void (*AudioSubsystemFn)(void*, int);

//800B53A0
extern "C" void UpdateAudioStreamState(char* obj, int param2)
{
    if (param2 != 0) {
        goto CheckNegative;
    }

    stopAudioAndResetDvdDataAndCloseDvdIfNeeded(MainGame + 0xE7E24, 0x86, 0xFF);
    if (*(int*)(obj + 0x30c4) != 3) {
        *(int*)(obj + 0x3388) = *(int*)(obj + 0x338c);
    }
    goto Merge;

CheckNegative:
    if (param2 <= 0) {
        goto Negative;
    }

    stopAudioAndResetDvdDataAndCloseDvdIfNeeded(MainGame + 0xE7E24, 0x88, 0xFF);
    goto Merge;

Negative:
    if (param2 >= 0) {
        goto Merge;
    }

    stopAudioAndResetDvdDataAndCloseDvdIfNeeded(MainGame + 0xE7E24, 0x86, 0xFF);
    if (*(int*)(obj + 0x30c4) != 3) {
        *(int*)(obj + 0x3388) = *(int*)(obj + 0x338c);
    }

Merge:
{
    char* sub1 = obj + 0x2e44;
    AudioSubsystemFn f1 = *(AudioSubsystemFn*)(*(char**)(obj + 0x30c0) + 0x10);
    f1(sub1, param2);

    char* sub2 = obj + 0x30dc;
    AudioSubsystemFn f2 = *(AudioSubsystemFn*)(*(char**)(sub2 + 0x27c) + 0x10);
    f2(sub2, param2);
}
}

//800B54A4
extern "C" void HandleAudioDataAndStreamingConditionally(char* obj, int param2)
{
    if (param2 >= 0) {
        *(int*)(obj + 0x338c) = *(int*)(obj + 0x3388);
        *(int*)(obj + 0x3388) = param2;
    }

    int cond = 0;
    if (*(int*)(obj + 0x2e44) > 0) {
        cond = 1;
    } else if (*(int*)(obj + 0x30dc) > 0) {
        cond = 1;
    }

    if (cond != 0) {
        if (*(int*)(obj + 0x3388) == 0) {
            *(int*)(obj + 0x30d4) = 0;
            *(int*)(obj + 0x336c) = 1;
            *(int*)(obj + 0x30e0) = -1;
        } else {
            *(int*)(obj + 0x30d4) = 1;
            *(int*)(obj + 0x2e48) = -1;
            *(int*)(obj + 0x336c) = 0;
        }
        stopAudioAndResetDvdDataAndCloseDvdIfNeeded(MainGame + 0xE7E24, 0x86, 0xFF);
    } else {
        HandleAudioDataAndStreaming(obj);
    }
}

//800B556C
extern "C" void ResetTimerCounters(char* obj)
{
    if (*(int*)(obj + 0x95D0) == 0) {
        return;
    }
    *(int*)(obj + 0x95D4) = 0;
    *(int*)(obj + 0x95D8) = 0;
}
