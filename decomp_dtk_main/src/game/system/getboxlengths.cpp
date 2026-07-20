#include <types.h>

typedef unsigned char BOOL8;

extern "C" void fn_801DD248(char* file, int line, char* assertion);
extern "C" char lbl_8065D3A0[8];
extern "C" char lbl_8065D3A8[8];
extern "C" void HSD_JObjSetupMatrixSub(void* jobj);
extern "C" void HSD_MtxGetTranslate(void* mtx, f32* outVec);

//800B4F28
extern "C" int Vec3NotEqual(f32* a, f32* b)
{
    return !(a[0] == b[0] && a[1] == b[1] && a[2] == b[2]);
}

//800B4F68
extern "C" void GetBoxLengths(f32* dst, void* unused, char* jobj)
{
    BOOL8 valid = (jobj != NULL);
    if (!valid) {
        fn_801DD248(lbl_8065D3A0, 0x47c, lbl_8065D3A8);
    }

    if (jobj != NULL) {
        if (jobj != NULL) {
            int flags = *(int*)(jobj + 0x14);
            BOOL8 needsUpdate = 0;
            if (!(flags & 0x800000)) {
                if (flags & 0x40) {
                    needsUpdate = 1;
                }
            }
            if (needsUpdate) {
                HSD_JObjSetupMatrixSub(jobj);
            }
        } else {
            fn_801DD248(lbl_8065D3A0, 0x25d, lbl_8065D3A8);
        }
    }

    f32 translate[3];
    HSD_MtxGetTranslate(jobj + 0x44, translate);
    dst[0] = translate[0];
    dst[1] = translate[1];
    dst[2] = translate[2];
}
