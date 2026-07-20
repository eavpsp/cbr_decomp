#include <types.h>

extern "C" void* lbl_8065FFC0;
extern "C" void* lbl_8065FFC4;
extern "C" void RenderChildObjects(void* list, void* callback, void* param);
extern "C" void processObjectsInTree(void);

struct TreeCtx
{
    f32 floatField;
    void* objParam;
    void* selfPtr;
};

//8009172C
extern "C" void UpdateChildObjTree(void** obj, f32 param)
{
    TreeCtx ctx;
    ctx.objParam = lbl_8065FFC0;
    ctx.selfPtr = lbl_8065FFC4;
    ctx.floatField = param;
    ctx.objParam = obj;
    ctx.selfPtr = (void*)&ctx;

    void* list = *obj;
    if (list != 0) {
        RenderChildObjects(list, (void*)processObjectsInTree, &ctx.objParam);
    }
}
