#include <types.h>
#include <Dolphin/os.h>

extern "C" int strcmp(const char* s1, const char* s2);

struct CStringRegistryEntry
{
    char* str;
    s32 val;
    char pad[8];
};

struct CStringRegistry
{
    char pad0[0x100];
    s32 field_0x100;
    char pad1[0x2E0 - 0x104];
    CStringRegistryEntry entries[16];
    s32 nextId;
};

//8001E044
extern "C" s32 CheckAndStoreStringInArray(CStringRegistry* obj, char* newString)
{
    s32 savedField = obj->field_0x100;
    if (savedField != 0) {
        for (int i = 0; i < 16; i++) {
            if (obj->entries[i].str != nullptr) {
                if (strcmp(obj->entries[i].str, newString) == 0) {
                    return 0;
                }
            }
        }
    }

    for (int i = 0; i < 16; i++) {
        if (obj->entries[i].str == nullptr) {
            obj->entries[i].str = newString;
            obj->entries[i].val = savedField;
            obj->nextId = obj->nextId + 1;
            OSReport("Register:%s\n", newString);
            return 0;
        }
    }

    OSReport("Ssm:Load xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\n");
    return 0;
}
