#include <types.h>

extern "C" void* searchLinkedListForValue(void* node);
extern "C" void* getCameraValue(void* node);
extern "C" void* findValueWithSetBit(void* node);
extern "C" void fn_801DD248(char* assertion, int line, char* file);
extern "C" f32 lbl_8065D35C;
extern "C" char lbl_8065D528[8];
extern "C" char lbl_8065D530[8];

//800A2CE4
extern "C" f32 get_camera_value_by_searching_linked_list_and_bitset_(void** obj)
{
    void* node = *obj;
    if (node != 0) {
        void* r;
        r = searchLinkedListForValue(node);
        if (r != 0) { node = r; goto Found; }
        r = getCameraValue(node);
        if (r != 0) { node = r; goto Found; }
        r = findValueWithSetBit(node);
        if (r != 0) { node = r; goto Found; }
        node = 0;
    }
Found:
    if (node == 0) goto UseDefault;
    if (node != 0) goto UseIt;
    fn_801DD248(lbl_8065D528, 0xab, lbl_8065D530);
UseIt:
    return *(f32*)((char*)node + 0xc);
UseDefault:
    return lbl_8065D35C;
}

//800A2D88
extern "C" f32 getCameraZoomFactor(void** obj)
{
    void* node = *obj;
    if (node != 0) {
        void* r;
        r = searchLinkedListForValue(node);
        if (r != 0) { node = r; goto Found; }
        r = getCameraValue(node);
        if (r != 0) { node = r; goto Found; }
        r = findValueWithSetBit(node);
        if (r != 0) { node = r; goto Found; }
        node = 0;
    }
Found:
    if (node == 0) goto UseDefault;
    if (node != 0) goto UseIt;
    fn_801DD248(lbl_8065D528, 0x95, lbl_8065D530);
UseIt:
    return *(f32*)((char*)node + 0x4);
UseDefault:
    return lbl_8065D35C;
}
