#include <types.h>

extern "C" int lbl_8065B260;
extern "C" f32 lbl_8065D35C;
extern "C" char lbl_8065D3A0[8];
extern "C" char lbl_8065D3A8[8];
extern "C" char lbl_8020A2E0[0x28];
extern "C" void fn_801DD248(char* file, int line, char* assertion);
extern "C" void fn_801C89A8(char* jobj);

//800B2BD0
extern "C" void ResetJObjMatrixDirty(char* obj, void* param2)
{
    *(int*)(obj + 0xd3c) = 0;

    if (param2 == NULL) {
        return;
    }

    int count = lbl_8065B260;
    char* node;

    char* head = *(char**)obj;
    if (head == NULL) {
        node = (char*)NULL;
        goto SearchDone;
    }

    node = *(char**)(head + 0x10);

    {
        int ctr = count;
        if (ctr > 0) {
            for (;;) {
                node = node ? *(char**)(node + 8) : (char*)NULL;
                if (node == NULL) {
                    goto SearchDone;
                }
                ctr--;
                if (ctr == 0) {
                    break;
                }
            }
        }
    }

SearchDone:
    if (node == NULL) {
        fn_801DD248(lbl_8065D3A0, 0x2a4, lbl_8065D3A8);
    }

    if (*(int*)(node + 0x14) & 0x20000) {
        fn_801DD248(lbl_8065D3A0, 0x2a5, lbl_8020A2E0);
    }

    *(f32*)(node + 0x1c) = lbl_8065D35C;

    if (*(int*)(node + 0x14) & 0x02000000) {
        return;
    }
    if (node == NULL) {
        return;
    }
    if (node == NULL) {
        fn_801DD248(lbl_8065D3A0, 0x25d, lbl_8065D3A8);
    }

    int flags = *(int*)(node + 0x14);
    int shouldUpdate = 0;
    if (!(flags & 0x800000)) {
        if (flags & 0x40) {
            shouldUpdate = 1;
        }
    }

    if (shouldUpdate != 0) {
        fn_801C89A8(node);
    }
}
