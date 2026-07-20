#include <types.h>

extern "C" char MainGame[];
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D43C;
extern "C" char lbl_802100A4[0xC];
extern "C" void CleanUpAndDeallocateMemoryForNode(void* node);
extern "C" int GetDeviceEntryAt0x38A(int idx);
extern "C" int ProcessObjectTask(void* obj, void* param2, int p3, int p4);
extern "C" int GetObjectUnderwaterStatus(void* obj);
extern "C" void processCameraData(void* obj);

typedef void (*VtableFn80)(void*, int, f32, f32, f32, f32, int, int, int, int);

//800B78FC
extern "C" int processFielderDesire(char* obj)
{
    if (*(int*)(obj + 0xa48) != 0) {
        char* node = *(char**)(obj + 0xa64);
        if (node == NULL) {
            goto Cleanup1;
        }

        {
            char* inner = *(char**)(node + 0x240);
            short val;
            if (inner == NULL) {
                goto SetNeg1;
            }
            if (inner == NULL) {
                goto SetZero;
            }
            val = *(short*)(inner + 0x14);
            goto ValDone;
        SetZero:
            val = 0;
            goto ValDone;
        SetNeg1:
            val = -1;
        ValDone:

            if ((int)val == 0x18) {
                char* subobj = obj + 0x9AD0;
                *(char**)(obj + 0xa64) = subobj;

                char* reloaded = *(char**)(obj + 0xa64);
                *(int*)(obj + 0xa6c) = *(int*)(reloaded + 0x784);
                *(u32*)(obj + 0x9CF8) = *(u32*)(obj + 0x9CF8) | 0x04000000;

                VtableFn80 fn = *(VtableFn80*)(*(char**)(obj + 0x34) + 0x80);
                fn(obj, 8, 0.0f, lbl_8065D380, lbl_8065D380, lbl_8065D43C, 1, 0, 0, 0);
                return 1;
            }
        }

    Cleanup1:
        CleanUpAndDeallocateMemoryForNode(obj + 0xa44);
    }

    if (*(short*)(obj + 0x5894) >= 0) {
        int devResult = GetDeviceEntryAt0x38A(*(short*)(obj + 0x5894));
        struct
        {
            int deviceResult;
            char* label;
        } buf;
        buf.deviceResult = devResult;
        buf.label = lbl_802100A4;
        int result = ProcessObjectTask(MainGame + 0x9694, &buf, 0, 1);
        *(int*)(obj + 0x58a0) = result;
        *(short*)(obj + 0x5894) = -1;
    }

    char* dev = *(char**)(obj + 0x58a0);
    if (dev == NULL) {
        return 1;
    }

    int mask2 = 0;
    int a = *(int*)(dev + 0x228) & 0x40000000;
    int b = *(int*)(dev + 0x22c) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    if ((b | a) != 0) {
        return 0;
    }

    CleanUpAndDeallocateMemoryForNode(obj + 0xa44);
    *(int*)(obj + 0xa48) = 4;

    char* devReload = *(char**)(obj + 0x58a0);
    *(char**)(obj + 0xa64) = devReload;

    char* node2 = *(char**)(obj + 0xa64);
    *(int*)(obj + 0xa6c) = *(int*)(node2 + 0x784);
    *(int*)(obj + 0xa68) = 4;

    char* node3 = *(char**)(obj + 0xa64);
    int p3val = *(int*)(obj + 0x5898);
    VtableFn80 fn2 = *(VtableFn80*)(*(char**)(node3 + 0x34) + 0x80);
    fn2(node3, p3val, 0.0f, lbl_8065D380, lbl_8065D380, lbl_8065D43C, 1, 0, 0, 0);

    char* node4 = *(char**)(obj + 0xa64);
    *(u32*)(node4 + 0x228) = *(u32*)(node4 + 0x228) | 0x40000000;

    VtableFn80 fn3 = *(VtableFn80*)(*(char**)(obj + 0x34) + 0x80);
    fn3(obj, 8, 0.0f, lbl_8065D380, lbl_8065D380, lbl_8065D43C, 1, 0, 0, 0);

    *(int*)(obj + 0x58a0) = 0;

    if (GetObjectUnderwaterStatus(obj + 0xa44) != 0) {
        processCameraData(obj + 0xa44);
    }

    return 1;
}
