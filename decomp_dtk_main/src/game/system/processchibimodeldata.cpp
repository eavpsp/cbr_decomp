#include <types.h>

extern "C" int GetDeviceEntryAt0x38B(int idx);
extern "C" char lbl_802100A4[0xC];
extern "C" char lbl_802262F4[0xC];
extern "C" char lbl_802262D0[0x24];
extern "C" int lbl_80209668[4];
extern "C" int LoadFileInMemory(void* obj);
extern "C" void fn_800B7D54(char* obj);

typedef int (*VtableFn9C)(void*, void*);

struct DeviceRequest
{
    int deviceResult;
    char* label;
};

//800B8EC4
extern "C" int ProcessChibiModelData(char* obj)
{
    if (*(int*)(obj + 0xD7E0) == 0) {
        *(int*)(obj + 0xD7E0) = 1;
    }

    if (*(int*)(obj + 0xD7E8) != *(int*)(obj + 0xD7EC)) {
        *(int*)(obj + 0xD7E4) = 1;
        *(int*)(obj + 0xD7E8) = *(int*)(obj + 0xD7EC);
    }

    int result;

    if (*(int*)(obj + 0xD7E8) == 0) {
        result = 1;
        goto Finish;
    }
    if (*(int*)(obj + 0xD7E0) == 0) {
        result = 1;
        goto Finish;
    }

    {
        int state = *(int*)(obj + 0xD7E0);
        if (state == 2) {
            goto L_800B90A4;
        }
        if (state > 2) {
            result = 0;
            goto Finish;
        }
        if (state != 1) {
            result = 0;
            goto Finish;
        }
    }

    {
        int idx = *(int*)(obj + 0xD7E8);
        char* elem = obj + idx * 0x980 + 0xD7F8;

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

        VtableFn9C fn = *(VtableFn9C*)(*(char**)(elem + 0x34) + 0x9c);
        int callResult = fn(elem, &req);

        if (callResult == 0) {
            result = 0;
            goto Finish;
        }

        char** cache = (char**)(obj + 0x12D78);
        char* node = cache[idx];
        if (node == NULL) {
            char* outer = *(char**)elem;
            int counts[4];
            counts[0] = lbl_80209668[0];
            counts[1] = lbl_80209668[1];
            counts[2] = lbl_80209668[2];
            counts[3] = lbl_80209668[3];

            if (outer == NULL) {
                node = (char*)NULL;
                goto SearchDone;
            }

            for (int i = 0; i < 4; i++) {
                outer = outer ? *(char**)(outer + 0x10) : (char*)0;

                int innerCount = counts[i];
                for (int j = 0; j < innerCount; j++) {
                    outer = outer ? *(char**)(outer + 0x8) : (char*)0;
                    if (outer == NULL) {
                        node = (char*)NULL;
                        goto SearchDone;
                    }
                }
            }
            node = outer;

        SearchDone:
            cache[idx] = node;
        }

        *(int*)(obj + 0xD7E0) = *(int*)(obj + 0xD7E0) + 1;
    }

L_800B90A4 : {
    int idx = *(int*)(obj + 0xD7E8);
    int useDefault = *(int*)((char*)lbl_802262D0 + idx * 4);
    int ok;
    if (useDefault != 0) {
        ok = LoadFileInMemory(obj + 0x5958);
    } else {
        ok = 1;
    }

    if (ok == 0) {
        result = 0;
        goto Finish;
    }

    *(int*)(obj + 0xD7E0) = 0;
    result = 1;
}

Finish:
    if (result != 0) {
        *(int*)(obj + 0xD7E4) = 0;
        fn_800B7D54(obj);
        return 1;
    }
    return 0;
}
