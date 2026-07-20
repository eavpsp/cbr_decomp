#include <types.h>

typedef void (*CleanupFn)(void*);

extern "C" void InitializeDataValues(void* a, int b, int c);
extern "C" void cleanupFielderAction(void* obj);

//800911C0
extern "C" void cleanupObject(char* obj)
{
    CleanupFn cb = *(CleanupFn*)(*(char**)(obj + 0x978) + 0x18);
    cb(obj + 0x8fc);

    if (*(int*)(obj + 0x7a8) != 0) {
        InitializeDataValues(obj + 0x7a4, 1, 0);
    }

    int mask2 = 0;
    int a = *(int*)(obj + 0x228) & mask2;
    int b = *(int*)(obj + 0x22c) & 1;
    b = b ^ mask2;
    a = a ^ mask2;
    if ((b | a) != 0) {
        cleanupFielderAction(obj);

        void* q = *(void**)(obj + 0x240);
        if (q != 0) {
            void* r = *(void**)q;
            if (r != 0) {
                int s = *(int*)((char*)r + 4);
                if (s != 0) {
                    if (*(int*)(s + 0x130) <= 0) {
                        *(int*)((char*)r + 4) = 0;
                    }
                }
            }
        }
    }

    *(int*)(obj + 0x240) = 0;
    *(int*)(obj + 0x244) = 0;
    *(int*)(obj + 0x24c) = 0;
    *(int*)(obj + 0x22c) = *(int*)(obj + 0x22c) & 0xFFFEFFFE;
    *(int*)(obj + 0x228) = *(int*)(obj + 0x228) & 0xFFFFFFFF;
}
