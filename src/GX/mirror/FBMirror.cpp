#include "include/GX/FBMirror.h"
/*Done*/

//Class_FBMirror:
///* 80019700 00014480  3C A0 80 21 */	lis r5, CFbTexEff_struct@ha
///* 80019704 00014484  3C C0 80 23 */	lis r6, lbl_80237644@ha
///* 80019708 00014488  38 05 02 EC */	addi r0, r5, CFbTexEff_struct@l
///* 8001970C 0001448C  3C 80 80 21 */	lis r4, lbl_8021032C@ha
///* 80019710 00014490  90 03 01 20 */	stw r0, 0x120(r3)
///* 80019714 00014494  38 04 03 2C */	addi r0, r4, lbl_8021032C@l
///* 80019718 00014498  3C A0 80 21 */	lis r5, lbl_80210314@ha
///* 8001971C 0001449C  3C E0 80 21 */	lis r7, FBMirror_struct@ha
///* 80019720 000144A0  90 03 01 18 */	stw r0, 0x118(r3)
///* 80019724 000144A4  38 07 04 3C */	addi r0, r7, FBMirror_struct@l
///* 80019728 000144A8  38 C6 76 44 */	addi r6, r6, lbl_80237644@l
///* 8001972C 000144AC  38 A5 03 14 */	addi r5, r5, lbl_80210314@l
///* 80019730 000144B0  90 03 01 20 */	stw r0, 0x120(r3)
///* 80019734 000144B4  3C 80 80 21 */	lis r4, lbl_802104C8@ha
///* 80019738 000144B8  38 04 04 C8 */	addi r0, r4, lbl_802104C8@l
///* 8001973C 000144BC  90 C3 02 B8 */	stw r6, 0x2b8(r3)
///* 80019740 000144C0  90 A3 01 C8 */	stw r5, 0x1c8(r3)
///* 80019744 000144C4  90 A3 01 D8 */	stw r5, 0x1d8(r3)
///* 80019748 000144C8  90 A3 01 E8 */	stw r5, 0x1e8(r3)
///* 8001974C 000144CC  90 A3 01 F8 */	stw r5, 0x1f8(r3)
///* 80019750 000144D0  90 A3 02 4C */	stw r5, 0x24c(r3)
///* 80019754 000144D4  90 03 01 20 */	stw r0, 0x120(r3)
///* 80019758 000144D8  4E 80 00 20 */	blr
/// This Code will always work if object ref is the proper obejct in .data
/// real test of class accuracy is when the class instantiated
    extern CFbTexEff CFbTexEff_struct;
    extern CCamera lbl_80237644;
    extern FBMirror FBMirror_struct;
    extern CTexObj lbl_8021032C;
    extern CVec lbl_80210314;
    extern FBMirrorEX lbl_802104C8;
#pragma dont_inline on
Class_FBMirror::Class_FBMirror(int param)
{
    //These arent variable fields but set offsets 
    *(CFbTexEff **)(this + 0x120) = &CFbTexEff_struct;
    *(CTexObj **)(this + 0x118) = &lbl_8021032C;
    *(FBMirror **)(this + 0x120) = &FBMirror_struct;
    *(CCamera **)(this + 0x2b8)  = &lbl_80237644;
    *(CVec **)(this + 0x1c8)  = &lbl_80210314;
    *(CVec **)(this + 0x1d8)  = &lbl_80210314;
    *(CVec **)(this + 0x1e8)  = &lbl_80210314;
    *(CVec **)(this + 0x1f8)  = &lbl_80210314;
    *(CVec **)(this + 0x24c)  = &lbl_80210314;
    *(FBMirrorEX **)(this + 0x120) = &lbl_802104C8;
    return;
}

