#include <types.h>

extern "C" void UpdateTreeNodeState(void* obj, int a, int b);
extern "C" void* getValueIfBitSetInMask(void* obj);
extern "C" void updateFlagState(void* obj, int a, int b);
extern "C" void clearNodeFlag(void* obj, u32 mask);
extern "C" void setFlagOnObject(void* obj, u32 mask);
extern "C" void processDataForQueue(void* obj);

//800912B4
extern "C" void processTreeNodeAndDependencies(void* obj)
{
    UpdateTreeNodeState(obj, 0x40000, 0x1c0000);

    void* node = getValueIfBitSetInMask(obj);
    while (node != 0) {
        updateFlagState(node, 2, 0xe);

        void* sub = (node != 0) ? *(void**)((char*)node + 8) : 0;
        if (sub != 0) {
            clearNodeFlag(sub, 0x68000000);
            setFlagOnObject(sub, 0x2000);
            processDataForQueue(sub);
        }

        node = (node != 0) ? *(void**)((char*)node + 4) : 0;
    }
}
