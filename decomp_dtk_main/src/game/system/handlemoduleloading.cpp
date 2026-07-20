#include <types.h>

extern "C" char MainGame[];
extern "C" char lbl_802244E4[];
extern "C" char* lbl_802244C8[7];
extern "C" char lbl_8065CA58[4];
extern "C" char* WriteStringToBuffer(char* fmt, void* a, void* b);
extern "C" void ShutDownDevice(void* arg);
extern "C" int LoadModuleAndExecute(void* ctx, char* path);
extern "C" int HandleBGM(void* ctx, int idx);
extern "C" char* strcpy(char*, const char*);

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

static inline void* ComputeField(char* base, int k)
{
    return base + ReadLE32(base + k);
}

static inline void* ComputeFieldOrNull(char* base, int k)
{
    void* val = base + ReadLE32(base + k);
    if (val == (void*)base) val = 0;
    return val;
}

typedef int (*OpenDeviceFn)(void*, void*, int, int);

//8006EE24
extern "C" int HandleLoadingAndExecutionOfModules(void* thisObj, int idx)
{
    char* obj = (char*)thisObj;
    int state = *(int*)(obj + 0x80);

    if (state == 2) goto State2;
    if (state > 2) {
        if (state == 4) goto State4;
        if (state > 4) goto Finish;
        goto State3;
    } else {
        if (state == 0) goto State0;
        if (state >= 0) goto State1;
        goto Finish;
    }

State0:
    {
        int stageIdx = MainGame[0x3318];
        char* stageNamePtr = *(char**)(lbl_802244E4 + idx * 0xc);
        char* r1 = WriteStringToBuffer("bin%s/%s.bin", lbl_802244C8[stageIdx], stageNamePtr);
        strcpy(obj, r1);

        char* r2 = WriteStringToBuffer("rel/%s%s.rel", stageNamePtr, lbl_8065CA58);
        strcpy(obj + 0x40, r2);

        int mask2 = 0;
        int a = *(int*)(MainGame + 0x1b10) & 1;
        int b = *(int*)(MainGame + 0x1b14) & mask2;
        b = b ^ mask2;
        a = a ^ mask2;
        if ((b | a) == 0) {
            obj[0x40] = 0;
        }
        (*(int*)(obj + 0x80))++;
    }
    // fallthrough
State1:
    {
        void* devDriver = *(void**)(obj + 0x16c);
        OpenDeviceFn open = *(OpenDeviceFn*)((char*)devDriver + 0x24);
        int success = open(obj + 0x84, obj, 0, 0);
        if (success == 0) goto Finish;

        ShutDownDevice(obj + 0x84);
        char* base = *(char**)(obj + 0x150);

        *(void**)(obj + 0x170) = ComputeField(base, 0x0);
        *(void**)(obj + 0x178) = ComputeField(base, 0x4);
        *(void**)(obj + 0x180) = ComputeField(base, 0x8);
        *(void**)(obj + 0x184) = ComputeFieldOrNull(base, 0xc);
        *(void**)(obj + 0x188) = ComputeFieldOrNull(base, 0x10);
        *(void**)(obj + 0x18c) = ComputeFieldOrNull(base, 0x14);
        *(void**)(obj + 0x190) = ComputeFieldOrNull(base, 0x18);
        *(void**)(obj + 0x194) = ComputeFieldOrNull(base, 0x1c);
        *(void**)(obj + 0x198) = ComputeFieldOrNull(base, 0x20);
        *(void**)(obj + 0x19c) = ComputeField(base, 0x24);
        *(void**)(obj + 0x1a0) = ComputeFieldOrNull(base, 0x28);
        *(void**)(obj + 0x1a4) = ComputeFieldOrNull(base, 0x2c);
        *(void**)(obj + 0x1a8) = ComputeFieldOrNull(base, 0x30);

        (*(int*)(obj + 0x80))++;
    }
    // fallthrough
State2:
    if (obj[0x40] != 0) {
        int success = LoadModuleAndExecute(obj + 0x1ac, obj + 0x40);
        if (success == 0) goto Finish;
        (*(int*)(obj + 0x80))++;
        goto State3;
    } else {
        (*(int*)(obj + 0x80))++;
    }
    // fallthrough
State3:
    (*(int*)(obj + 0x80))++;
    // fallthrough
State4:
    {
        int success = HandleBGM(MainGame + 0xE7E24, idx);
        if (success == 0) goto Finish;
        (*(int*)(obj + 0x80))++;
    }

Finish:
    return *(int*)(obj + 0x80) >= 5;
}
