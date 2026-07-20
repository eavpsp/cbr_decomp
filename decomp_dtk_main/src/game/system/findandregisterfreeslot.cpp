#include <types.h>

extern "C" char lbl_80378300[0x3D18];
extern "C" char* lbl_8037C018[10];
extern "C" void RegisterFreeSlotEntry(char* elem);

//800B5B7C
extern "C" void FindAndRegisterFreeSlot(void)
{
    char* outer = lbl_80378300;
    for (int i = 0; i < 10; i++) {
        if (*(int*)(outer + 0xc) == 0 && *(int*)(outer + 0x74) == 0) {
            for (int j = 0; j < 10; j++) {
                if (lbl_8037C018[j] == NULL) {
                    lbl_8037C018[j] = outer;
                    RegisterFreeSlotEntry(lbl_8037C018[j]);
                    goto Done;
                }
            }
            goto Done;
        }
        outer += 0x61c;
    }
Done:;
}
