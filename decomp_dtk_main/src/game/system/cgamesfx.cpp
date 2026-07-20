#include <types.h>

struct cGameSFX
{
    char pad[0x1A0];
    bool unk1A0;
    bool unk1A1;

    void Init();
};

//8001DC10
void cGameSFX::Init()
{
    unk1A0 = false;
    unk1A1 = false;
}
