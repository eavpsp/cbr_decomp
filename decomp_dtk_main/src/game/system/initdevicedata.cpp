#include <types.h>

extern "C" char MainGame[];
extern "C" char* lbl_802244C8[7];
extern "C" char* lbl_8065A390;
extern "C" char lbl_803675CC[0x104];
extern "C" int sprintf(char*, char*, ...);
extern "C" void ShutDownDevice(void* arg);

static inline u32 ReadLE32(void* p)
{
    unsigned char* b = (unsigned char*)p;
    return b[0] | (b[1] << 8) | (b[2] << 16) | ((u32)b[3] << 24);
}

typedef int (*OpenDeviceFn)(void*, void*, int, int);

//8006EC50
extern "C" int InitializeDeviceData(void)
{
    int stageIdx = MainGame[0x3318];
    char buf[0x48];
    sprintf(buf, "bin%s/%s", lbl_802244C8[stageIdx], lbl_8065A390);

    void* devDriver = *(void**)(lbl_803675CC + 0xe8);
    OpenDeviceFn open = *(OpenDeviceFn*)((char*)devDriver + 0x24);
    int result = open(lbl_803675CC, buf, 0, 0);
    if (result == 0) {
        return 0;
    }

    ShutDownDevice(lbl_803675CC);

    char* obj = *(char**)(lbl_803675CC + 0xcc);
    *(char**)(lbl_803675CC + 0xec) = obj;
    *(char**)(lbl_803675CC + 0xf0) = obj + ReadLE32(obj + 0) + 0x18;
    *(char**)(lbl_803675CC + 0xf4) = obj + ReadLE32(obj + 8) + 0x18;
    *(char**)(lbl_803675CC + 0xf8) = obj + ReadLE32(obj + 0x10) + 0x18;

    return result;
}
