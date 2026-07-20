#include <types.h>

extern "C" char lbl_803672CC[0x300];
extern "C" int HandleLoadingAndExecutionOfModules(void* base, int param);

//8006F5D4
extern "C" void StartLoadAndModuleExec(int param)
{
    HandleLoadingAndExecutionOfModules(lbl_803672CC, param);
}
