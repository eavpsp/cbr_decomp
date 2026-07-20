#include <types.h>

extern "C" int generateRandomNumber();
extern "C" void stopAudioAndResetDvdDataAndCloseDvdIfNeeded(void* addr, int a, int b);
extern "C" int fn_801514C8(f32 v);
extern "C" void fn_800B8850(char* obj);
extern "C" void fn_800B7D54(char* obj);
extern "C" int GetDeviceEntryAt0x38B(int idx);
extern "C" char lbl_802100A4[0xC];
extern "C" char lbl_802262F4[0xC];
extern "C" char lbl_802262D0[0x24];
extern "C" int lbl_80209668[4];
extern "C" int LoadFileInMemory(void* obj);
extern "C" char MainGame[];
extern "C" f32 lbl_8065B264;
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D3B4;
extern "C" f32 lbl_8065D3D0;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D390;
extern "C" f32 lbl_8065D394;
extern "C" f32 lbl_8065D458;
extern "C" char lbl_8020A298[0xC];
extern "C" char lbl_8037C040[0x200];

typedef void (*VtableFn12C)(void*, int, f32, int, int, int);
typedef int (*VtableFn9C)(void*, void*);

struct DeviceRequest
{
    int deviceResult;
    char* label;
};

static int AllThreeFieldsEqual1(char* obj)
{
    int result = 0;
    if (lbl_8065D35C == *(f32*)(obj + 0x8f0)) {
        if (lbl_8065D35C == *(f32*)(obj + 0x8f4)) {
            if (lbl_8065D35C == *(f32*)(obj + 0x8f8)) {
                result = 1;
            }
        }
    }
    return result;
}

//800B9134
extern "C" void HandleFielderDesire(char* obj)
{
    int step = *(int*)(obj + 0xD7E4);
    if (step == 4) goto Step4;
    if (step > 4) goto CheckHigh;
    if (step == 2) goto Step2;
    if (step > 2) goto Step3;
    if (step == 1) goto Step1;
    goto End;

CheckHigh:
    if (step == 6) goto Step6;
    if (step > 6) goto End;
    goto Step5;

Step1:
    {
        VtableFn12C fn = *(VtableFn12C*)(*(char**)(obj + 0x34) + 0x12c);
        fn(obj, 2, lbl_8065D3B4, 0xff, 0xff, 0xff);
    }
    *(int*)lbl_8037C040 = 1;
    {
        f32 one = lbl_8065D35C;
        char* base = lbl_8037C040;
        for (int outer = 0; outer < 2; outer++) {
            char* p = base;
            for (int inner = 0; inner < 10; inner++) {
                *(f32*)(p + 0x4) = *(f32*)(lbl_8020A298 + 0x0);
                *(f32*)(p + 0x8) = *(f32*)(lbl_8020A298 + 0x4);
                *(f32*)(p + 0xc) = *(f32*)(lbl_8020A298 + 0x8);
                *(f32*)(p + 0x10) = one;

                int c1 = generateRandomNumber() % 0x9c + 0x64;
                int packed = c1 << 16;
                int c2 = generateRandomNumber() % 0x9c + 0x64;
                packed |= c2 << 24;
                int c3 = generateRandomNumber() % 0x9c + 0x64;
                packed |= c3 << 8;

                *(int*)(p + 0x14) = packed;
                *(f32*)(p + 0x18) = one;
                p += 0x18;
            }
            base += 0xf0;
        }
    }
    *(f32*)(lbl_8037C040 + 0x10) = lbl_8065D380;
    {
        int rv = generateRandomNumber();
        *(f32*)(lbl_8037C040 + 0x100) = lbl_8065D380;
        f32 hue = lbl_8065D390 * (f32)(rv % 360);
        f32 sum = lbl_8065D394 + hue;
        *(f32*)(lbl_8037C040 + 0x18) = hue;
        *(f32*)(lbl_8037C040 + 0x108) = sum;
    }
    stopAudioAndResetDvdDataAndCloseDvdIfNeeded(MainGame + 0xE7E24, 0x45, 0xff);
    *(int*)(obj + 0xD7E4) = *(int*)(obj + 0xD7E4) + 1;
    goto End;

Step2:
    if (!AllThreeFieldsEqual1(obj)) goto End;
    *(int*)(obj + 0xD7E4) = *(int*)(obj + 0xD7E4) + 1;
    goto End;

Step3:
    {
        int idx0 = *(int*)(obj + 0xD7E8);
        if (idx0 != 0) {
            fn_800B8850(obj);
            VtableFn12C fn = *(VtableFn12C*)(*(char**)(obj + 0x34) + 0x12c);
            fn(obj, 2, lbl_8065D35C, 0xff, 0xff, 0xff);
        }
    }
    *(int*)(obj + 0xD7E8) = *(int*)(obj + 0xD7EC);
    *(int*)(obj + 0xD7E0) = 1;
    *(int*)(obj + 0xD7E4) = *(int*)(obj + 0xD7E4) + 1;
    lbl_8065B264 = lbl_8065D458;

Step4:
    {
        f32 timer = lbl_8065B264 - lbl_8065D3D0;
        if (timer <= lbl_8065D35C) {
            timer = lbl_8065D35C;
        }
        lbl_8065B264 = timer;
    }
    {
        int ready;
        int idx = *(int*)(obj + 0xD7E8);
        if (idx == 0) { ready = 1; goto JoinEnd; }
        int flag = *(int*)(obj + 0xD7E0);
        if (flag == 0) { ready = 1; goto JoinEnd; }
        if (flag == 2) goto FlagIs2;
        if (flag > 2) goto ActionFail;
        if (flag < 1) goto ActionFail;

        {
            int devArg;
            if (idx == 7) {
                devArg = *(int*)((char*)lbl_802262F4 + *(int*)(obj + 0xD7F0) * 4);
            } else {
                devArg = idx + 0x19;
            }
            int devResult = GetDeviceEntryAt0x38B(devArg);
            DeviceRequest req;
            req.deviceResult = devResult;
            req.label = lbl_802100A4;

            char* elem = obj + idx * 0x980 + 0xD7F8;
            VtableFn9C fn = *(VtableFn9C*)(*(char**)(elem + 0x34) + 0x9c);
            int callResult = fn(elem, &req);
            if (callResult == 0) goto ActionFail;

            char** cache = (char**)(obj + 0x12D78);
            char* node = cache[idx];
            if (node == NULL) {
                char* outer = *(char**)elem;
                int counts[4];
                counts[0] = lbl_80209668[0];
                counts[1] = lbl_80209668[1];
                counts[2] = lbl_80209668[2];
                counts[3] = lbl_80209668[3];

                if (outer == NULL) { node = (char*)NULL; goto SearchDone; }

                for (int i = 0; i < 4; i++) {
                    outer = outer ? *(char**)(outer + 0x10) : (char*)0;
                    int innerCount = counts[i];
                    for (int j = 0; j < innerCount; j++) {
                        outer = outer ? *(char**)(outer + 0x8) : (char*)0;
                        if (outer == NULL) { node = (char*)NULL; goto SearchDone; }
                    }
                }
                node = outer;
            SearchDone:
                cache[idx] = node;
            }
            *(int*)(obj + 0xD7E0) = *(int*)(obj + 0xD7E0) + 1;
        }

    FlagIs2:
        {
            int idx2 = *(int*)(obj + 0xD7E8);
            int useDefault = *(int*)((char*)lbl_802262D0 + idx2 * 4);
            int ok;
            if (useDefault != 0) {
                ok = LoadFileInMemory(obj + 0x5958);
            } else {
                ok = 1;
            }
            if (ok == 0) goto ActionFail;
            *(int*)(obj + 0xD7E0) = 0;
            ready = 1;
            goto JoinEnd;
        }

    ActionFail:
        ready = 0;
    JoinEnd:
        if (ready == 0) goto End;
        if (lbl_8065B264 != lbl_8065D35C) goto End;
        *(int*)(obj + 0xD7E4) = *(int*)(obj + 0xD7E4) + 1;
    }

Step5:
    fn_800B7D54(obj);
    {
        VtableFn12C fn = *(VtableFn12C*)(*(char**)(obj + 0x34) + 0x12c);
        fn(obj, 2, lbl_8065D35C, 0xff, 0xff, 0xff);
    }
    {
        VtableFn12C fn = *(VtableFn12C*)(*(char**)(obj + 0x34) + 0x12c);
        fn(obj, 2, lbl_8065D3B4, 0, 0, 0);
    }
    {
        int b8b8 = fn_801514C8(*(f32*)(obj + 0x8b8));
        int b8b4 = fn_801514C8(*(f32*)(obj + 0x8b4));
        int b8bc = fn_801514C8(*(f32*)(obj + 0x8bc));
        VtableFn12C fn = *(VtableFn12C*)(*(char**)(obj + 0x34) + 0x12c);
        fn(obj, 0, lbl_8065D35C, b8b4, b8b8, b8bc);
    }
    *(int*)(obj + 0xD7E4) = *(int*)(obj + 0xD7E4) + 1;
    goto End;

Step6:
    if (AllThreeFieldsEqual1(obj)) {
        *(int*)(obj + 0xD7E4) = 0;
    }
    goto End;

End:
    return;
}
