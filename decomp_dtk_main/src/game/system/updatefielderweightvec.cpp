#include <types.h>

extern "C" void fn_801DD248(char* file, int line, char* assertion);
extern "C" void fn_801D3E04(void* in, void* out);
extern "C" void fn_801C89A8(char* jobj);
extern "C" char lbl_8065D3A0[8];
extern "C" char lbl_8065D3A8[8];
extern "C" char lbl_8020A308[0x10];
extern "C" char lbl_8065D538[8];
extern "C" char lbl_8065D540[8];
extern "C" char lbl_8020A2E0[0x10];
extern "C" char lbl_80210058[0xC];
extern "C" char lbl_80210314[0xC];

//800BB3D0
extern "C" void fn_800BB3D0(char* obj, f32 weight, int numBanks, int* counts)
{
    char* node = *(char**)obj;
    if (node == NULL) {
        node = (char*)NULL;
        goto End;
    }

    for (int i = 0; i < numBanks; i++) {
        node = node ? *(char**)(node + 0x10) : (char*)NULL;
        int innerCount = counts[i];
        for (int j = 0; j < innerCount; j++) {
            node = node ? *(char**)(node + 0x8) : (char*)0;
            if (node == NULL) goto End;
        }
    }

End:
    {
        char* fmtA = lbl_80210058;
        char* fmtB = lbl_80210314;

        if (node == NULL) {
            fn_801DD248(lbl_8065D3A0, 0x3e4, lbl_8065D3A8);
        }

        f32 v1[3];
        if ((void*)v1 == NULL) {
            fn_801DD248(lbl_8065D3A0, 0x3e5, lbl_8020A308);
        }
        v1[0] = *(f32*)(node + 0x38);
        v1[1] = *(f32*)(node + 0x3c);
        v1[2] = *(f32*)(node + 0x40);
        if (node == NULL) {
            fn_801DD248(lbl_8065D3A0, 0x2dd, lbl_8065D3A8);
        }

        f32 v2[3];
        if ((void*)v2 == NULL) {
            fn_801DD248(lbl_8065D3A0, 0x2de, lbl_8065D538);
        }
        v2[0] = *(f32*)(node + 0x1c);
        v2[1] = *(f32*)(node + 0x20);
        v2[2] = *(f32*)(node + 0x24);
        if (node == NULL) {
            fn_801DD248(lbl_8065D3A0, 0x351, lbl_8065D3A8);
        }

        f32 v3[3];
        if ((void*)v3 == NULL) {
            fn_801DD248(lbl_8065D3A0, 0x352, lbl_8065D540);
        }
        v3[0] = *(f32*)(node + 0x2c);
        v3[1] = *(f32*)(node + 0x30);
        v3[2] = *(f32*)(node + 0x34);
        v2[1] = weight;

        if (*(int*)(node + 0x14) & 0x20000) {
            f32 outVec[4];
            fn_801D3E04(v2, outVec);
            if (node == NULL) {
                fn_801DD248(lbl_8065D3A0, 0x290, lbl_8065D3A8);
            }
            *(f32*)(node + 0x1c) = outVec[0];
            *(f32*)(node + 0x20) = outVec[1];
            *(f32*)(node + 0x24) = outVec[2];
            *(f32*)(node + 0x28) = outVec[3];

            if (!(*(int*)(node + 0x14) & 0x2000000)) {
                if (node != NULL) {
                    if (node == NULL) {
                        fn_801DD248(lbl_8065D3A0, 0x25d, lbl_8065D3A8);
                    }
                    int flags = *(int*)(node + 0x14);
                    int shouldDirty = 0;
                    if (!(flags & 0x800000)) {
                        if (flags & 0x40) {
                            shouldDirty = 1;
                        }
                    }
                    if (shouldDirty != 0) {
                        fn_801C89A8(node);
                    }
                }
            }
        } else {
            if (node == NULL) {
                fn_801DD248(lbl_8065D3A0, 0x2b8, lbl_8065D3A8);
            }
            if (*(int*)(node + 0x14) & 0x20000) {
                fn_801DD248(lbl_8065D3A0, 0x2b9, lbl_8020A2E0);
            }
            *(f32*)(node + 0x20) = weight;

            if (!(*(int*)(node + 0x14) & 0x2000000)) {
                if (node != NULL) {
                    if (node == NULL) {
                        fn_801DD248(lbl_8065D3A0, 0x25d, lbl_8065D3A8);
                    }
                    int flags = *(int*)(node + 0x14);
                    int shouldDirty = 0;
                    if (!(flags & 0x800000)) {
                        if (flags & 0x40) {
                            shouldDirty = 1;
                        }
                    }
                    if (shouldDirty != 0) {
                        fn_801C89A8(node);
                    }
                }
            }
        }

        (void)fmtA;
        (void)fmtB;
    }
}
