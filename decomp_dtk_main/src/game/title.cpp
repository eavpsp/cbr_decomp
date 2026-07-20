#include <game.h>

//8000A4B8
int CGame::CheckTitleLogo()
{
    bool bVar1;
    uint uVar2;

    uVar2 = 0;
    bVar1 = false;
    if (this->logo.unk0[2] >= 1 && this->logo.unk0[2] < 0xf)
    {
        bVar1 = true;
    }
    if(!bVar1)
    {

        if (this->titleObject.unk0[0] >= 1 && this->titleObject.unk0[0] < 0x17)
        {
            bVar1 = true;
        }
        if(!bVar1)
        {
            uVar2 = 1;
        }
    }
    else{
        uVar2 = 1;
    }


    return ((int)(-uVar2 | uVar2) >> 0x1f) + 2;
}

//8000A520
f32* CGame::GetMotionCamera()
{
    return &this->cmotionControlCam.camera.viewport.right;
}
