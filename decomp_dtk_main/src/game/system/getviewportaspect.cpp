#include <types.h>

extern "C" f32 lbl_8065D554;
extern "C" f32 lbl_8065D380;
extern "C" int CheckSubsystemState_(void* obj);

//800A4574
extern "C" f32 GetViewportAspectRatio_(char* obj)
{
    if (*(int*)(obj + 0xa48) == 4) {
        if (CheckSubsystemState_(obj + 0xa44) != 0) {
            return lbl_8065D554;
        }
    }
    return lbl_8065D380;
}
