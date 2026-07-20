#include <types.h>

extern "C" void* lbl_8065FFC8;
extern "C" void* lbl_8065FFCC;
extern "C" void RenderChildObjects(void* list, void* callback, void* param);
extern "C" void processTranslationXAndDependencies(void);
extern "C" void UpdateTreeNodeState(void* obj, int a, int b);

struct TreeCtx
{
    f32 floatField;
    void* objParam;
    void* selfPtr;
};

//800914CC
extern "C" void TranslateXAndDependencies(void** obj, f32 param)
{
    TreeCtx ctx;
    ctx.objParam = lbl_8065FFC8;
    ctx.selfPtr = lbl_8065FFCC;
    ctx.floatField = param;
    ctx.objParam = obj;
    ctx.selfPtr = (void*)&ctx;

    void* list = *obj;
    if (list != 0) {
        RenderChildObjects(list, (void*)processTranslationXAndDependencies, &ctx.objParam);
    }

    UpdateTreeNodeState(*obj, 0x20000000, 0x70000000);
}
