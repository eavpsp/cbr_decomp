#include <types.h>

extern "C" void* lbl_8065FFD0;
extern "C" void RenderChildObjects(void* list, void* callback, void* param);
extern "C" void processTreeNodeAndDependencies(void);
extern "C" void UpdateTreeNodeState(void* obj, int a, int b);

//8009146C
extern "C" void renderChildObjectsAndUpdateState(void** obj)
{
    void* ctx = lbl_8065FFD0;
    ctx = obj;

    void* list = *obj;
    if (list != 0) {
        RenderChildObjects(list, (void*)processTreeNodeAndDependencies, &ctx);
    }

    UpdateTreeNodeState(*obj, 0x10000000, 0x70000000);
}
