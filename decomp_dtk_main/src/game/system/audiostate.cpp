#include <types.h>

extern "C" void SetAudioState(int state);

//8001E00C
extern "C" void UpdateAudioState(int unused, int type)
{
    if (type == 1) {
        SetAudioState(1);
    } else {
        SetAudioState(0);
    }
}
