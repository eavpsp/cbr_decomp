#include <types.h>

extern "C" void* getValueIfBitSetInMask(void* obj);
extern "C" void set_memory_values_at_offset_c(void* obj, u8 a, u8 b, u8 c);
extern "C" void set_values_at_offset_c(void* obj, u8 a, u8 b, u8 c);
extern "C" void setTranslationX(void* obj, f32 value);

struct UpdateObjectsParam
{
    u32* wordA;
    u32* wordB;
    f32* translationX;
};

//800970E4
extern "C" void updateObjectsInLinkedListWithMask(void* obj, UpdateObjectsParam* param)
{
    u32 wordA = *param->wordA;
    u32 wordB = *param->wordB;
    f32 translationX = *param->translationX;

    u8 wordA0 = (u8)(wordA >> 24);
    u8 wordA1 = (u8)(wordA >> 16);
    u8 wordA2 = (u8)(wordA >> 8);

    u8 wordB0 = (u8)(wordB >> 24);
    u8 wordB1 = (u8)(wordB >> 16);
    u8 wordB2 = (u8)(wordB >> 8);

    void* node = getValueIfBitSetInMask(obj);

    while (node != NULL) {
        void* sub = node ? *(void**)((char*)node + 0x8) : NULL;

        if (sub != NULL) {
            set_memory_values_at_offset_c(sub, wordA0, wordA1, wordA2);
            set_values_at_offset_c(sub, wordB0, wordB1, wordB2);
            setTranslationX(sub, translationX);
        }

        node = node ? *(void**)((char*)node + 0x4) : NULL;
    }
}
