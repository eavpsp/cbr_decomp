#include <types.h>

extern "C" void fn_800A2E88(char* obj, int param2);
extern "C" void fn_800A30EC(char* obj, int param2);
extern "C" char lbl_80209360[0x600];
extern "C" char MainGame[];
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D43C;

typedef void (*VtableFn150)(void*);
typedef void (*VtableFn80)(void*, int, f32, f32, f32, f32, int, int, int, int);

static char* SearchBanks(char* container, int numBanks, int* counts)
{
    char* p = *(char**)container;
    for (int i = 0; i < numBanks; i++) {
        p = p ? *(char**)(p + 0x10) : (char*)0;
        int innerCount = counts[i];
        for (int j = 0; j < innerCount; j++) {
            p = p ? *(char**)(p + 0x8) : (char*)0;
            if (p == NULL) return (char*)NULL;
        }
    }
    return p;
}

static void ChildObjDispatch150(char* elem)
{
    VtableFn150 fn = *(VtableFn150*)(*(char**)(elem + 0x34) + 0x150);
    fn(elem);
}

//800B7D54
extern "C" void fn_800B7D54(char* obj)
{
    {
        int mask1 = 0;
        int mask2 = 1;
        int a = *(int*)(obj + 0x228) & mask1;
        int b = *(int*)(obj + 0x22c) & mask2;
        b = b ^ mask1;
        a = a ^ mask1;
        if ((b | a) == 0) return;
    }

    {
        int idx = *(int*)(obj + 0xD7E8);
        char** cache = (char**)(obj + 0x12D78);
        if (cache[idx] == 0) return;
    }

    {
        VtableFn150 fn84 = *(VtableFn150*)(*(char**)(obj + 0x34) + 0x84);
        fn84(obj);
        VtableFn150 fn8c = *(VtableFn150*)(*(char**)(obj + 0x34) + 0x8c);
        fn8c(obj);
    }

    {
        int state = *(int*)(obj + 0x95D4);
        if (state < 0) state = *(int*)(obj + 0x95D0);
        if (state == 2) {
            fn_800A2E88(obj, 0);
        }
    }

    // Block 1: N=3 banks from lbl_80209360+0x3b8/0x3bc/0x3c0, insert result into cache[idx] list
    {
        int counts[3];
        counts[0] = *(int*)(lbl_80209360 + 0x3b8);
        counts[1] = *(int*)(lbl_80209360 + 0x3bc);
        counts[2] = *(int*)(lbl_80209360 + 0x3c0);
        char* p = SearchBanks(obj, 3, counts);

        int idx = *(int*)(obj + 0xD7E8);
        char** cache = (char**)(obj + 0x12D78);
        *(char**)(p + 0x10) = cache[idx];
        char* q = *(char**)(p + 0x10);
        while (q != NULL) {
            *(char**)(q + 0xc) = p;
            q = *(char**)(q + 0x8);
        }
    }

    // Block 2: N=8 banks from lbl_80209360+0x474.., result stored to obj+0x9534
    {
        int counts[8];
        for (int k = 0; k < 8; k++) counts[k] = *(int*)(lbl_80209360 + 0x474 + k * 4);
        char* p = SearchBanks(obj, 8, counts);
        *(char**)(obj + 0x9534) = p;
    }

    // Block 3: N=8 banks from lbl_80209360+0x494.., result DEAD, dispatch obj+0xB1B0
    {
        int counts[8];
        for (int k = 0; k < 8; k++) counts[k] = *(int*)(lbl_80209360 + 0x494 + k * 4);
        SearchBanks(obj, 8, counts);
        ChildObjDispatch150(obj + 0xB1B0);
    }

    // Block 4: N=5 banks from lbl_80209360+0x4b4.., result DEAD, dispatch obj+0xBB38
    {
        int counts[5];
        for (int k = 0; k < 5; k++) counts[k] = *(int*)(lbl_80209360 + 0x4b4 + k * 4);
        SearchBanks(obj, 5, counts);
        ChildObjDispatch150(obj + 0xBB38);
    }

    // Block 5: N=8 banks from lbl_80209360+0x4c8.., result DEAD, dispatch obj+0xC4C0
    {
        int counts[8];
        for (int k = 0; k < 8; k++) counts[k] = *(int*)(lbl_80209360 + 0x4c8 + k * 4);
        SearchBanks(obj, 8, counts);
        ChildObjDispatch150(obj + 0xC4C0);
    }

    // Block 6: N=8 banks from lbl_80209360+0x4e8.., result DEAD, dispatch obj+0xCE58
    {
        int counts[8];
        for (int k = 0; k < 8; k++) counts[k] = *(int*)(lbl_80209360 + 0x4e8 + k * 4);
        SearchBanks(obj, 8, counts);
        ChildObjDispatch150(obj + 0xCE58);
    }

    // Block cond-1: guarded by obj+0x954C, N=5 from lbl_80209360+0x508.., result to obj+0x9550
    {
        char* guard = *(char**)(obj + 0x954C);
        if (guard != NULL) {
            int counts[5];
            for (int k = 0; k < 5; k++) counts[k] = *(int*)(lbl_80209360 + 0x508 + k * 4);
            char* p = SearchBanks(guard, 5, counts);
            *(char**)(obj + 0x9550) = p;
        }
    }

    // Block cond-2: guarded by obj+0x956C, N=5 from lbl_80209360+0x51c.., result to obj+0x9570
    {
        char* guard = *(char**)(obj + 0x956C);
        if (guard != NULL) {
            int counts[5];
            for (int k = 0; k < 5; k++) counts[k] = *(int*)(lbl_80209360 + 0x51c + k * 4);
            char* p = SearchBanks(guard, 5, counts);
            *(char**)(obj + 0x9570) = p;
        }
    }

    // Block cond-3: guarded by obj+0x958C, N=5 from lbl_80209360+0x530.., result to obj+0x9590
    {
        char* guard = *(char**)(obj + 0x958C);
        if (guard != NULL) {
            int counts[5];
            for (int k = 0; k < 5; k++) counts[k] = *(int*)(lbl_80209360 + 0x530 + k * 4);
            char* p = SearchBanks(guard, 5, counts);
            *(char**)(obj + 0x9590) = p;
        }
    }

    {
        int mask1 = 0;
        int mask2 = 0x100;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & mask2;
        b = b ^ mask1;
        a = a ^ mask1;
        if ((b | a) == 0) {
            fn_800A30EC(obj, 0);
        }
    }

    {
        int state = *(int*)(obj + 0x95D4);
        if (state < 0) state = *(int*)(obj + 0x95D0);
        if (state == 2) {
            fn_800A2E88(obj, 1);
        }
    }

    {
        VtableFn80 fn = *(VtableFn80*)(*(char**)(obj + 0x34) + 0x80);
        fn(obj, 0x11, lbl_8065D35C, lbl_8065D380, lbl_8065D380, lbl_8065D43C, 0, 0, 0, 0);
    }

    *(int*)(obj + 0xa2c) = 3;
}
