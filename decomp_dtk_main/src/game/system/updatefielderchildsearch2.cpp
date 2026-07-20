#include <types.h>

extern "C" char* searchLinkedListForValue(char* head);
extern "C" char* getCameraValue(char* head);
extern "C" char* findValueWithSetBit(char* head);
extern "C" void fn_801DD248(char* file, int line, char* assertion);
extern "C" char lbl_8065D528[8];
extern "C" char lbl_8065D530[8];
extern "C" char lbl_80209360[0x600];
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D43C;

typedef void (*VtableFn8)(void*);
typedef void (*VtableFn150)(void*);
typedef void (*VtableFn80)(void*, int, f32, f32, f32, f32, int, int, int, int);
typedef void (*VtableFnC18)(void*);

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

//800B8850
extern "C" void fn_800B8850(char* obj)
{
    char* head = *(char**)obj;
    int field158 = *(int*)(obj + 0x158);

    char* node;
    if (head == NULL) {
        node = (char*)NULL;
        goto Join;
    }
    node = searchLinkedListForValue(head);
    if (node != 0) goto Join;
    node = getCameraValue(head);
    if (node != 0) goto Join;
    node = findValueWithSetBit(head);
    if (node != 0) goto Join;
    node = (char*)NULL;

Join:
    f32 f31;
    if (node != NULL) {
        if (node == NULL) {
            fn_801DD248(lbl_8065D528, 0x95, lbl_8065D530);
        }
        f31 = *(f32*)(node + 0x4);
    } else {
        f31 = lbl_8065D35C;
    }

    {
        VtableFn8 fn84 = *(VtableFn8*)(*(char**)(obj + 0x34) + 0x84);
        fn84(obj);
        VtableFn8 fn8c = *(VtableFn8*)(*(char**)(obj + 0x34) + 0x8c);
        fn8c(obj);
    }

    // Block A: N=3 banks from lbl_80209360+0x318.., insert result into obj+0x12D78 list
    {
        int counts[3];
        counts[0] = *(int*)(lbl_80209360 + 0x318);
        counts[1] = *(int*)(lbl_80209360 + 0x31c);
        counts[2] = *(int*)(lbl_80209360 + 0x320);
        char* p = SearchBanks(obj, 3, counts);

        *(char**)(p + 0x10) = *(char**)(obj + 0x12D78);
        char* q = *(char**)(p + 0x10);
        while (q != NULL) {
            *(char**)(q + 0xc) = p;
            q = *(char**)(q + 0x8);
        }
    }

    {
        VtableFn80 fn = *(VtableFn80*)(*(char**)(obj + 0x34) + 0x80);
        fn(obj, field158, f31, lbl_8065D380, lbl_8065D380, lbl_8065D43C, 1, 0, 0, 0);
    }

    // Block B: N=8 banks from lbl_80209360+0x324.., result stored to obj+0x9534
    {
        int counts[8];
        for (int k = 0; k < 8; k++) counts[k] = *(int*)(lbl_80209360 + 0x324 + k * 4);
        char* p = SearchBanks(obj, 8, counts);
        *(char**)(obj + 0x9534) = p;
    }

    // Block C: N=8 banks from lbl_80209360+0x344.., result DEAD, dispatch obj+0xB1B0
    {
        int counts[8];
        for (int k = 0; k < 8; k++) counts[k] = *(int*)(lbl_80209360 + 0x344 + k * 4);
        SearchBanks(obj, 8, counts);
        ChildObjDispatch150(obj + 0xB1B0);
    }

    // Block D: N=5 banks from lbl_80209360+0x364.., result DEAD, dispatch obj+0xBB38
    {
        int counts[5];
        for (int k = 0; k < 5; k++) counts[k] = *(int*)(lbl_80209360 + 0x364 + k * 4);
        SearchBanks(obj, 5, counts);
        ChildObjDispatch150(obj + 0xBB38);
    }

    // Block E: N=8 banks from lbl_80209360+0x378.., result DEAD, dispatch obj+0xC4C0
    {
        int counts[8];
        for (int k = 0; k < 8; k++) counts[k] = *(int*)(lbl_80209360 + 0x378 + k * 4);
        SearchBanks(obj, 8, counts);
        ChildObjDispatch150(obj + 0xC4C0);
    }

    // Block F: N=8 banks from lbl_80209360+0x398.., result DEAD, dispatch obj+0xCE58
    {
        int counts[8];
        for (int k = 0; k < 8; k++) counts[k] = *(int*)(lbl_80209360 + 0x398 + k * 4);
        SearchBanks(obj, 8, counts);
        ChildObjDispatch150(obj + 0xCE58);
    }

    {
        int idx = *(int*)(obj + 0xD7E8);
        char* elem = obj + idx * 0x980 + 0xD7F8;

        int mask1 = 0;
        int mask2 = 1;
        int a = *(int*)(elem + 0x228) & mask1;
        int b = *(int*)(elem + 0x22c) & mask2;
        b = b ^ mask1;
        a = a ^ mask1;
        if ((b | a) != 0) {
            VtableFn8 fn = *(VtableFn8*)(*(char**)(elem + 0x34) + 0x54);
            fn(elem);
        }

        char** cache = (char**)(obj + 0x12D78);
        if (cache[idx] != 0) {
            cache[idx] = 0;
        }

        VtableFnC18 fn18 = *(VtableFnC18*)(*(char**)(obj + 0x159d4) + 0x18);
        fn18(obj + 0x15958);
    }
}
