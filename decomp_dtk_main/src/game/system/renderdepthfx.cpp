#include <types.h>

extern "C" void RenderChildObjects(void* list, void* callback, void* param);
extern "C" void RenderDepthFXCallback(void);

//80091C44
extern "C" void RenderDepthFX(void** obj, void* param2)
{
    void* list = *obj;
    if (list != 0) {
        RenderChildObjects(list, (void*)RenderDepthFXCallback, param2);
    }
}
