#include <types.h>

extern "C" char lbl_802247B0[];
extern "C" char MainGame[];

typedef unsigned char BOOL8;

//8006FCAC
extern "C" void registerShortcutWithValue(int unused, s16 shortcutKey, s16 value)
{
    int* countPtr = (int*)lbl_802247B0;
    int origCount = *countPtr;
    void* obj = 0;

    if (origCount > 0) {
        char* p = lbl_802247B0;
        int idx = 0;
        int remaining = origCount;
        do {
            s16 key = *(s16*)(p + 4);
            if (key == shortcutKey) {
                s16 stageIdx = *(s16*)(lbl_802247B0 + idx * 4 + 6);
                obj = *(void**)(MainGame + 0x9860 + stageIdx * 4);
                if (obj != 0) {
                    BOOL8 already = ((*(int*)((char*)obj + 0x22c) & 1) != 0);
                    if (already) return;
                }
                obj = 0;
                break;
            }
            p += 4;
            idx += 1;
            remaining--;
        } while (remaining != 0);
    }

    char* entry = lbl_802247B0 + origCount * 4;
    *(s16*)(entry + 4) = shortcutKey;
    entry = lbl_802247B0 + (*countPtr) * 4;
    *(s16*)(entry + 6) = value;
    *countPtr = *countPtr + 1;
}
