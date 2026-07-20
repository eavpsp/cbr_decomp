#include <types.h>

extern "C" void UpdateTreeNodeState(void* obj, int a, int b);
extern "C" void* getValueIfBitSetInMask(void* obj);
extern "C" void updateFlagState(void* obj, int a, int b);
extern "C" void setFlagOnObject(void* obj, u32 mask);
extern "C" void processDataForQueue(void* obj);
extern "C" f32 getFloatValueFromArray(void* a, void* b);
extern "C" void setTranslationX(void* obj, f32 val);

//8009136C
extern "C" void processTranslationXAndDependencies(void* obj, void** param2)
{
    void* p0 = param2[0];
    f32 scale = *(f32*)param2[1];

    UpdateTreeNodeState(obj, 0x80000, 0x1c0000);

    void* node = getValueIfBitSetInMask(obj);
    while (node != 0) {
        updateFlagState(node, 4, 0xe);

        void* sub = (node != 0) ? *(void**)((char*)node + 8) : 0;
        if (sub != 0) {
            setFlagOnObject(sub, 0x60000000);
            setFlagOnObject(sub, 0x2000);
            processDataForQueue(sub);

            if (*(int*)((char*)sub + 0xc) != 0) {
                f32 val = scale * getFloatValueFromArray(p0, sub);
                setTranslationX(sub, val);
            }
        }

        node = (node != 0) ? *(void**)((char*)node + 4) : 0;
    }
}
