#include <types.h>

extern "C" char MainGame[];
extern "C" void HSD_ShadowAddObject(void* shadowList, void* jobj);

struct ShadowParam
{
    void* shadowList;
};

//800A45B8
extern "C" void HSD_AddShadowObjects(char* obj, ShadowParam* param)
{
    HSD_ShadowAddObject(param->shadowList, *(void**)(obj + 0x0));

    u32 mask2 = 0;
    u32 a = *(u32*)(MainGame + 0x1b10) & 0x00400000;
    u32 b = *(u32*)(MainGame + 0x1b14) & mask2;
    b = b ^ mask2;
    a = a ^ mask2;
    if ((b | a) != 0) {
        HSD_ShadowAddObject(param->shadowList, *(void**)(obj + 0x9AD0));
    }

    HSD_ShadowAddObject(param->shadowList, *(void**)(obj + 0xB1B0));
    HSD_ShadowAddObject(param->shadowList, *(void**)(obj + 0xBB38));
    HSD_ShadowAddObject(param->shadowList, *(void**)(obj + 0xC4C0));
    HSD_ShadowAddObject(param->shadowList, *(void**)(obj + 0xCE58));
}
