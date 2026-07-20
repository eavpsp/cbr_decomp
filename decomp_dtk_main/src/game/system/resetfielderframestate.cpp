#include <types.h>

extern "C" void fn_801C89A8(char* jobj);
extern "C" void fn_801DD248(char* file, int line, char* assertion);
extern "C" char lbl_8065D3A0[8];
extern "C" char lbl_8065D3A8[8];
extern "C" void InitializeDataValues(void* a, int b, int c);
extern "C" void fn_800B8850(char* obj);

typedef void (*VtableFn18)(void*);

//800B7B5C
extern "C" void ResetFielderFrameState(char* obj)
{
    *(int*)(obj + 0x980) = 0;
    *(int*)(obj + 0x980) = *(int*)(obj + 0x980) | 0x20000000;
    *(int*)(obj + 0x980) = *(int*)(obj + 0x980) | 7;
    *(int*)(obj + 0x12DF4) = 1;

    char* node = *(char**)obj;
    if (node != NULL) {
        if (node == NULL) {
            fn_801DD248(lbl_8065D3A0, 0x4af, lbl_8065D3A8);
        }

        *(u32*)(node + 0x14) = *(u32*)(node + 0x14) & 0xFC7FFFFFu;

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

    if (*(int*)(obj + 0xa48) != 0) {
        char* sub = *(char**)(obj + 0xa64);
        if (sub == NULL) {
            goto L_800B7CD4;
        }

        {
            char* inner = *(char**)(sub + 0x240);
            short val;
            if (inner == NULL) {
                goto SetNeg1;
            }
            if (inner == NULL) {
                goto SetZero;
            }
            val = *(short*)(inner + 0x14);
            goto ValDone;
        SetZero:
            val = 0;
            goto ValDone;
        SetNeg1:
            val = -1;
        ValDone:
            if ((int)val != 8) {
                goto L_800B7CD4;
            }

            short val2;
            if (inner == NULL) {
                goto SetNeg1b;
            }
            if (inner == NULL) {
                goto SetZerob;
            }
            val2 = *(short*)(inner + 0x16);
            goto Val2Done;
        SetZerob:
            val2 = 0;
            goto Val2Done;
        SetNeg1b:
            val2 = -1;
        Val2Done:
            *(short*)(obj + 0x5894) = val2;

            char* subReload = *(char**)(obj + 0xa64);
            *(int*)(obj + 0x5898) = *(int*)(subReload + 0x158);
            *(int*)(obj + 0x589c) = *(int*)(obj + 0xa68);
        }
    } else {
        int stage = *(int*)(obj + 0x95D4);
        int v = (stage < 0) ? *(int*)(obj + 0x95D0) : stage;
        if (v < 8) {
            if (v >= 4) {
                *(int*)(obj + 0x95D0) = 0;
            }
        }
    }

L_800B7CD4:
    {
        VtableFn18 fn1 = *(VtableFn18*)(*(char**)(obj + 0x978) + 0x18);
        fn1(obj + 0x8fc);

        VtableFn18 fn2 = *(VtableFn18*)(*(char**)(obj + 0x5950) + 0x18);
        fn2(obj + 0x58d4);

        VtableFn18 fn3 = *(VtableFn18*)(*(char**)(obj + 0x59d4) + 0x18);
        fn3(obj + 0x5958);
    }

    fn_800B8850(obj);

    if (*(int*)(obj + 0x7a8) != 0) {
        InitializeDataValues(obj + 0x7a4, 1, 0);
    }
}
