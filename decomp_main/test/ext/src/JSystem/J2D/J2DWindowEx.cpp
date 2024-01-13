#include "Dolphin/gx.h"
#include "Dolphin/mtx.h"
#include "JSystem/J2D/J2DAnm.h"
#include "JSystem/J2D/J2DColorBlock.h"
#include "JSystem/J2D/J2DMaterial.h"
#include "JSystem/J2D/J2DPane.h"
#include "JSystem/J2D/J2DTevBlock.h"
#include "JSystem/J2D/J2DTypes.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "JSystem/JUtility/TColor.h"
#include "types.h"

/*
    Generated from dpostproc

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global lbl_804784E0
    lbl_804784E0:
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x0F080A0F
        .4byte 0x0F080A0F
        .4byte 0x0F0A000F
        .4byte 0x0204080F
        .4byte 0x0204080F
        .4byte 0x0F0F0F0A
        .4byte 0x07040507
        .4byte 0x05070707
        .4byte 0x07050007
        .4byte 0x01020407
        .4byte 0x07070702
        .4byte 0x07070705
        .4byte 0x00000001
        .4byte 0x00000000
        .4byte 0x01000000
        .4byte 0x00010000
        .4byte 0x00000100
        .4byte 0x00000001
        .4byte 0x00000000
        .4byte 0x01000000
    .global lbl_804785C0
    lbl_804785C0:
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global __vt__11J2DWindowEx
    __vt__11J2DWindowEx:
        .4byte 0
        .4byte 0
        .4byte __dt__11J2DWindowExFv
        .4byte getTypeID__9J2DWindowCFv
        .4byte move__7J2DPaneFff
        .4byte add__7J2DPaneFff
        .4byte resize__9J2DWindowFff
        .4byte setCullBack__11J2DWindowExFb
        .4byte setCullBack__11J2DWindowExF11_GXCullMode
        .4byte setAlpha__11J2DWindowExFUc
        .4byte setConnectParent__7J2DPaneFb
        .4byte calcMtx__7J2DPaneFv
        .4byte update__7J2DPaneFv
        .4byte drawSelf__9J2DWindowFff
        .4byte drawSelf__11J2DWindowExFffPA3_A4_f
        .4byte search__7J2DPaneFUx
        .4byte searchUserInfo__7J2DPaneFUx
        .4byte makeMatrix__7J2DPaneFff
        .4byte makeMatrix__7J2DPaneFffff
        .4byte isUsed__11J2DWindowExFPC7ResTIMG
        .4byte isUsed__11J2DWindowExFPC7ResFONT
        .4byte clearAnmTransform__7J2DPaneFv
        .4byte rewriteAlpha__11J2DWindowExFv
        .4byte setAnimation__11J2DWindowExFP10J2DAnmBase
        .4byte setAnimation__11J2DWindowExFP15J2DAnmTransform
        .4byte setAnimation__11J2DWindowExFP11J2DAnmColor
        .4byte setAnimation__11J2DWindowExFP16J2DAnmTexPattern
        .4byte setAnimation__11J2DWindowExFP19J2DAnmTextureSRTKey
        .4byte setAnimation__11J2DWindowExFP15J2DAnmTevRegKey
        .4byte setAnimation__11J2DWindowExFP20J2DAnmVisibilityFull
        .4byte setAnimation__11J2DWindowExFP14J2DAnmVtxColor
        .4byte animationTransform__7J2DPaneFPC15J2DAnmTransform
        .4byte setVisibileAnimation__7J2DPaneFP20J2DAnmVisibilityFull
        .4byte setAnimationVF__7J2DPaneFP20J2DAnmVisibilityFull
        .4byte setVtxColorAnimation__7J2DPaneFP14J2DAnmVtxColor
        .4byte setAnimationVC__7J2DPaneFP14J2DAnmVtxColor
        .4byte animationPane__11J2DWindowExFPC15J2DAnmTransform
        .4byte "draw__11J2DWindowExFRCQ29JGeometry8TBox2<f>"
        .4byte
   "draw__11J2DWindowExFRCQ29JGeometry8TBox2<f>RCQ29JGeometry8TBox2<f>" .4byte
   draw__11J2DWindowExFffff .4byte setBlack__11J2DWindowExFQ28JUtility6TColor
        .4byte setWhite__11J2DWindowExFQ28JUtility6TColor
        .4byte setBlackWhite__11J2DWindowExFQ28JUtility6TColorQ28JUtility6TColor
        .4byte getBlack__11J2DWindowExCFv
        .4byte getWhite__11J2DWindowExCFv
        .4byte getFrameTexture__11J2DWindowExCFUcUc
        .4byte getContentsTexture__11J2DWindowExCFUc
        .4byte getMaterial__11J2DWindowExCFRQ29J2DWindow9TMaterial
        .4byte getFrameMaterial__11J2DWindowExCFUc
        .4byte getContentsMaterial__11J2DWindowExCFv
        .4byte "drawContents__11J2DWindowExFRCQ29JGeometry8TBox2<f>"
        .4byte 0

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_805168A0
    lbl_805168A0:
        .4byte 0x43300000
        .4byte 0x80000000
    .global lbl_805168A8
    lbl_805168A8:
        .4byte 0x43300000
        .4byte 0x00000000
    .global lbl_805168B0
    lbl_805168B0:
        .4byte 0x00000000
    .global lbl_805168B4
    lbl_805168B4:
        .float 1.0
    .global lbl_805168B8
    lbl_805168B8:
        .float 0.5
        .4byte 0x00000000
*/

/**
 * @note Address: 0x80044E34
 * @note Size: 0x2E8
 */
J2DWindowEx::J2DWindowEx(J2DPane* parent, JSURandomInputStream* input, u32 flags, J2DMaterial* materials)
{
	/*
	.loc_0x0:
	  stwu      r1, -0xB0(r1)
	  mflr      r0
	  stw       r0, 0xB4(r1)
	  stmw      r26, 0x98(r1)
	  mr        r28, r3
	  mr        r26, r4
	  mr        r29, r5
	  mr        r30, r7
	  bl        -0x2910
	  lis       r3, 0x804A
	  li        r0, 0
	  addi      r4, r3, 0xB20
	  mr        r3, r29
	  stw       r4, 0x0(r28)
	  stw       r0, 0x174(r28)
	  stw       r0, 0x178(r28)
	  lwz       r12, 0x0(r29)
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r31, r3
	  mr        r3, r29
	  addi      r4, r1, 0x14
	  li        r5, 0x8
	  bl        -0x1EAC0
	  lwz       r0, 0x14(r1)
	  mr        r3, r29
	  stw       r0, 0x8(r28)
	  lwz       r12, 0x0(r29)
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r27, r3
	  mr        r3, r29
	  addi      r4, r1, 0xC
	  li        r5, 0x8
	  bl        -0x1E878
	  mr        r3, r28
	  mr        r4, r26
	  mr        r5, r29
	  bl        -0xBDD8
	  lwz       r0, 0x10(r1)
	  mr        r3, r29
	  li        r5, 0
	  add       r4, r27, r0
	  bl        -0x1E7E0
	  mr        r3, r29
	  addi      r4, r1, 0x2C
	  li        r5, 0x40
	  bl        -0x1EB24
	  lis       r3, 0x8048
	  addi      r7, r1, 0x2C
	  subi      r4, r3, 0x7B20
	  addi      r11, r28, 0x128
	  lwz       r0, 0x0(r4)
	  li        r3, 0
	  lwz       r5, 0x4(r4)
	  addi      r10, r28, 0x12C
	  stw       r0, 0x1C(r1)
	  addi      r9, r28, 0x130
	  lwz       r27, 0x8(r4)
	  addi      r8, r28, 0x134
	  lwz       r12, 0xC(r4)
	  li        r0, 0x4
	  stw       r5, 0x20(r1)
	  mr        r4, r3
	  mr        r5, r7
	  addi      r6, r1, 0x1C
	  stw       r27, 0x24(r1)
	  stw       r12, 0x28(r1)
	  stw       r11, 0x1C(r1)
	  stw       r10, 0x20(r1)
	  stw       r9, 0x24(r1)
	  stw       r8, 0x28(r1)
	  mtctr     r0

	.loc_0x12C:
	  lhz       r10, 0x10(r7)
	  addi      r9, r3, 0x158
	  addi      r8, r4, 0x148
	  li        r0, 0
	  sthx      r10, r28, r9
	  stwx      r0, r28, r8
	  lhzx      r0, r28, r9
	  cmplwi    r0, 0xFFFF
	  beq-      .loc_0x16C
	  mulli     r0, r0, 0x88
	  add       r0, r30, r0
	  stwx      r0, r28, r8
	  lhzx      r0, r28, r9
	  mulli     r8, r0, 0x88
	  addi      r0, r8, 0x4
	  stwx      r28, r30, r0

	.loc_0x16C:
	  lhz       r8, 0x28(r7)
	  addi      r0, r3, 0x168
	  lwz       r9, 0x0(r6)
	  addi      r7, r7, 0x2
	  sthx      r8, r28, r0
	  addi      r3, r3, 0x2
	  addi      r4, r4, 0x4
	  addi      r6, r6, 0x4
	  lwz       r0, 0x30(r5)
	  addi      r5, r5, 0x4
	  stw       r0, 0x8(r1)
	  lbz       r8, 0x8(r1)
	  lbz       r0, 0x9(r1)
	  stb       r8, 0x0(r9)
	  lbz       r8, 0xA(r1)
	  stb       r0, 0x1(r9)
	  lbz       r0, 0xB(r1)
	  stb       r8, 0x2(r9)
	  stb       r0, 0x3(r9)
	  bdnz+     .loc_0x12C
	  lbz       r3, 0x44(r1)
	  lis       r4, 0x4330
	  stw       r4, 0x80(r1)
	  li        r0, 0
	  lfd       f2, -0x7AB8(r2)
	  stb       r3, 0x144(r28)
	  lfd       f3, -0x7AC0(r2)
	  lhz       r7, 0x46(r1)
	  lhz       r6, 0x48(r1)
	  stw       r7, 0x84(r1)
	  lhz       r3, 0x4A(r1)
	  lhz       r5, 0x4C(r1)
	  add       r3, r7, r3
	  lfd       f0, 0x80(r1)
	  xoris     r3, r3, 0x8000
	  add       r5, r6, r5
	  fsubs     f1, f0, f2
	  xoris     r5, r5, 0x8000
	  stw       r6, 0x8C(r1)
	  stw       r4, 0x88(r1)
	  lfd       f0, 0x88(r1)
	  stw       r3, 0x7C(r1)
	  fsubs     f0, f0, f2
	  stw       r4, 0x78(r1)
	  lfd       f2, 0x78(r1)
	  stfs      f1, 0x114(r28)
	  fsubs     f1, f2, f3
	  stfs      f0, 0x118(r28)
	  stw       r5, 0x74(r1)
	  stw       r4, 0x70(r1)
	  lfd       f0, 0x70(r1)
	  stfs      f1, 0x11C(r28)
	  fsubs     f0, f0, f3
	  stfs      f0, 0x120(r28)
	  lhz       r3, 0x4E(r1)
	  sth       r3, 0x166(r28)
	  lhz       r3, 0x50(r1)
	  sth       r3, 0x164(r28)
	  stw       r0, 0x160(r28)
	  lhz       r0, 0x164(r28)
	  cmplwi    r0, 0xFFFF
	  beq-      .loc_0x280
	  mulli     r0, r0, 0x88
	  add       r0, r30, r0
	  stw       r0, 0x160(r28)
	  lhz       r0, 0x164(r28)
	  mulli     r0, r0, 0x88
	  add       r3, r30, r0
	  stw       r28, 0x4(r3)

	.loc_0x280:
	  lwz       r0, 0x18(r1)
	  mr        r3, r29
	  li        r5, 0
	  add       r4, r31, r0
	  bl        -0x1E9BC
	  mr        r3, r28
	  lwz       r12, 0x0(r28)
	  lwz       r12, 0x58(r12)
	  mtctr     r12
	  bctrl
	  li        r0, 0
	  mr        r3, r28
	  stw       r0, 0x100(r28)
	  stw       r0, 0x104(r28)
	  stw       r0, 0x108(r28)
	  stw       r0, 0x10C(r28)
	  stw       r0, 0x124(r28)
	  stw       r0, 0x110(r28)
	  stb       r0, 0x170(r28)
	  bl        0x3C
	  mr        r3, r28
	  lmw       r26, 0x98(r1)
	  lwz       r0, 0xB4(r1)
	  mtlr      r0
	  addi      r1, r1, 0xB0
	  blr
	*/
}

/**
 * @note Address: 0x8004511C
 * @note Size: 0x8
 */
// J2DTevStage* J2DTevBlock::getTevStage(u32 index) { return nullptr; }

/**
 * @note Address: 0x80045124
 * @note Size: 0x4
 */
// void J2DTevBlock::setTevOrder(u32 index, J2DTevOrder order) { }

/**
 * @note Address: 0x80045128
 * @note Size: 0x8
 */
// bool J2DTevBlock::insertTexture(u32 index, const ResTIMG* img) { return false; }

/**
 * @note Address: 0x80045130
 * @note Size: 0x4
 */
// void J2DTevBlock::setTevKAlphaSel(u32 index, u8 sel) { }

/**
 * @note Address: 0x80045134
 * @note Size: 0x4
 */
// void J2DTevBlock::setTevKColorSel(u32 index, u8 sel) { }

/**
 * @note Address: 0x80045138
 * @note Size: 0x4
 */
// void J2DTevBlock::setTevStageNum(u8) { }

/**
 * @note Address: 0x8004513C
 * @note Size: 0x1C4
 */
void J2DWindowEx::setMinSize()
{
	_140 = 1;
	_142 = 1;
	if (mFrameMaterials[0] != nullptr && mFrameMaterials[1] != nullptr && mFrameMaterials[2] != nullptr && mFrameMaterials[3] != nullptr
	    && mFrameMaterials[0]->mTevBlock != nullptr && mFrameMaterials[1]->mTevBlock != nullptr && mFrameMaterials[2]->mTevBlock != nullptr
	    && mFrameMaterials[3]->mTevBlock != nullptr && mFrameMaterials[0]->mTevBlock->getTexture(0) != nullptr
	    && mFrameMaterials[1]->mTevBlock->getTexture(0) != nullptr && mFrameMaterials[2]->mTevBlock->getTexture(0) != nullptr
	    && mFrameMaterials[3]->mTevBlock->getTexture(0) != nullptr) {
		_140 = mFrameMaterials[0]->mTevBlock->getTexture(0)->getSizeX() + mFrameMaterials[1]->mTevBlock->getTexture(0)->getSizeX();
		_142 = mFrameMaterials[0]->mTevBlock->getTexture(0)->getSizeY() + mFrameMaterials[2]->mTevBlock->getTexture(0)->getSizeY();
	}
}

/**
 * @note Address: 0x80045300
 * @note Size: 0xF8
 */
J2DWindowEx::~J2DWindowEx()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r4
	stw      r28, 0x10(r1)
	or.      r28, r3, r3
	beq      lbl_800453D4
	lis      r3, __vt__11J2DWindowEx@ha
	li       r30, 0
	addi     r0, r3, __vt__11J2DWindowEx@l
	li       r31, 1
	stw      r0, 0(r28)
	b        lbl_80045380

lbl_80045340:
	clrlwi   r0, r30, 0x18
	lbz      r3, 0x170(r28)
	slw      r0, r31, r0
	and.     r0, r3, r0
	beq      lbl_8004537C
	rlwinm   r3, r30, 2, 0x16, 0x1d
	addi     r0, r3, 0x148
	lwzx     r3, r28, r0
	cmplwi   r3, 0
	beq      lbl_8004537C
	lwz      r12, 0(r3)
	li       r4, 1
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl

lbl_8004537C:
	addi     r30, r30, 1

lbl_80045380:
	clrlwi   r0, r30, 0x18
	cmplwi   r0, 4
	blt      lbl_80045340
	lbz      r0, 0x170(r28)
	rlwinm.  r0, r0, 0, 0x1b, 0x1b
	beq      lbl_800453B8
	lwz      r3, 0x160(r28)
	cmplwi   r3, 0
	beq      lbl_800453B8
	lwz      r12, 0(r3)
	li       r4, 1
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl

lbl_800453B8:
	mr       r3, r28
	li       r4, 0
	bl       __dt__9J2DWindowFv
	extsh.   r0, r29
	ble      lbl_800453D4
	mr       r3, r28
	bl       __dl__FPv

lbl_800453D4:
	lwz      r0, 0x24(r1)
	mr       r3, r28
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	lwz      r28, 0x10(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x800453F8
 * @note Size: 0xA0
 */
void J2DWindowEx::drawSelf(f32 p1, f32 p2, f32 (*p3)[3][4])
{
	JGeometry::TBox2f box = mBounds;
	box.addPos(p1, p2);
	Mtx v1;
	PSMTXConcat(*p3, mGlobalMtx, v1);
	GXLoadPosMtxImm(v1, 0);
	draw_private(box, _114);
	clip(_114);
}

/**
 * @note Address: 0x80045498
 * @note Size: 0x6F0
 */
void J2DWindowEx::draw_private(const JGeometry::TBox2<f32>&, const JGeometry::TBox2<f32>&)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x140(r1)
	  mflr      r0
	  stw       r0, 0x144(r1)
	  stfd      f31, 0x130(r1)
	  psq_st    f31,0x138(r1),0,0
	  stfd      f30, 0x120(r1)
	  psq_st    f30,0x128(r1),0,0
	  stfd      f29, 0x110(r1)
	  psq_st    f29,0x118(r1),0,0
	  stfd      f28, 0x100(r1)
	  psq_st    f28,0x108(r1),0,0
	  stfd      f27, 0xF0(r1)
	  psq_st    f27,0xF8(r1),0,0
	  stfd      f26, 0xE0(r1)
	  psq_st    f26,0xE8(r1),0,0
	  stfd      f25, 0xD0(r1)
	  psq_st    f25,0xD8(r1),0,0
	  stmw      r25, 0xB4(r1)
	  mr        r31, r3
	  mr        r30, r4
	  lha       r0, 0x140(r3)
	  lis       r3, 0x4330
	  stw       r3, 0x28(r1)
	  mr        r25, r5
	  xoris     r0, r0, 0x8000
	  lfs       f2, 0x8(r4)
	  stw       r0, 0x2C(r1)
	  lfs       f1, 0x0(r4)
	  lfd       f3, -0x7AC0(r2)
	  lfd       f0, 0x28(r1)
	  fsubs     f1, f2, f1
	  fsubs     f0, f0, f3
	  fcmpo     cr0, f1, f0
	  cror      2, 0x1, 0x2
	  bne-      .loc_0x6A4
	  lha       r0, 0x142(r31)
	  stw       r3, 0x28(r1)
	  xoris     r0, r0, 0x8000
	  lfs       f2, 0xC(r30)
	  stw       r0, 0x2C(r1)
	  lfs       f1, 0x4(r30)
	  lfd       f0, 0x28(r1)
	  fsubs     f1, f2, f1
	  fsubs     f0, f0, f3
	  fcmpo     cr0, f1, f0
	  cror      2, 0x1, 0x2
	  bne-      .loc_0x6A4
	  mr        r29, r31
	  addi      r28, r1, 0x18
	  li        r27, 0
	  li        r26, 0

	.loc_0xCC:
	  lwz       r3, 0x148(r29)
	  cmplwi    r3, 0
	  beq-      .loc_0x6A4
	  lwz       r3, 0x70(r3)
	  cmplwi    r3, 0
	  beq-      .loc_0x6A4
	  lwz       r12, 0x0(r3)
	  li        r4, 0
	  lwz       r12, 0xA0(r12)
	  mtctr     r12
	  bctrl
	  stw       r3, 0x0(r28)
	  lwz       r0, 0x0(r28)
	  cmplwi    r0, 0
	  bne-      .loc_0x10C
	  li        r27, 0x1

	.loc_0x10C:
	  addi      r26, r26, 0x1
	  addi      r28, r28, 0x4
	  cmpwi     r26, 0x4
	  addi      r29, r29, 0x4
	  blt+      .loc_0xCC
	  lfs       f2, 0x0(r25)
	  mr        r3, r31
	  lfs       f6, 0x4(r25)
	  addi      r4, r1, 0x8
	  lfs       f5, 0x8(r25)
	  lfs       f1, 0x0(r30)
	  lfs       f4, 0xC(r25)
	  lfs       f0, 0x4(r30)
	  fadds     f3, f2, f1
	  stfs      f2, 0x8(r1)
	  fadds     f1, f5, f1
	  fadds     f2, f6, f0
	  stfs      f6, 0xC(r1)
	  fadds     f0, f4, f0
	  stfs      f5, 0x10(r1)
	  stfs      f4, 0x14(r1)
	  stfs      f3, 0x8(r1)
	  stfs      f2, 0xC(r1)
	  stfs      f1, 0x10(r1)
	  stfs      f0, 0x14(r1)
	  lwz       r12, 0x0(r31)
	  lwz       r12, 0xC8(r12)
	  mtctr     r12
	  bctrl
	  bl        0x9F0B8
	  li        r3, 0x9
	  li        r4, 0x1
	  bl        0x9EC60
	  li        r3, 0xB
	  li        r4, 0x1
	  bl        0x9EC54
	  li        r3, 0xD
	  li        r4, 0x1
	  bl        0x9EC48
	  rlwinm.   r0,r27,0,24,31
	  bne-      .loc_0x670
	  lwz       r5, 0x24(r1)
	  lis       r12, 0x4330
	  lwz       r4, 0x18(r1)
	  lis       r3, 0x1
	  lwz       r5, 0x20(r5)
	  subi      r7, r3, 0x8000
	  lwz       r6, 0x20(r4)
	  mr        r3, r31
	  lhz       r4, 0x2(r5)
	  li        r9, 0x1
	  lhz       r0, 0x4(r5)
	  xoris     r4, r4, 0x8000
	  lhz       r10, 0x2(r6)
	  stw       r4, 0x2C(r1)
	  xoris     r8, r0, 0x8000
	  xoris     r11, r10, 0x8000
	  lhz       r5, 0x4(r6)
	  stw       r12, 0x28(r1)
	  lfd       f5, -0x7AC0(r2)
	  xoris     r10, r5, 0x8000
	  lfd       f0, 0x28(r1)
	  stw       r8, 0x34(r1)
	  fsubs     f3, f0, f5
	  lfs       f6, 0x8(r30)
	  stw       r12, 0x30(r1)
	  lfs       f4, 0xC(r30)
	  lfd       f0, 0x30(r1)
	  fsubs     f29, f6, f3
	  stw       r11, 0x3C(r1)
	  fsubs     f3, f0, f5
	  lfs       f31, 0x0(r30)
	  stw       r12, 0x38(r1)
	  lbz       r0, 0x144(r31)
	  fmr       f1, f31
	  lfs       f30, 0x4(r30)
	  lfd       f0, 0x38(r1)
	  fsubs     f28, f4, f3
	  rlwinm    r4,r0,25,31,31
	  rlwinm    r0,r0,26,31,31
	  fsubs     f3, f0, f5
	  neg       r4, r4
	  neg       r0, r0
	  andc      r4, r7, r4
	  stw       r10, 0x44(r1)
	  andc      r5, r7, r0
	  stw       r12, 0x40(r1)
	  sub       r6, r7, r4
	  sub       r0, r7, r5
	  fadds     f27, f31, f3
	  lfd       f0, 0x40(r1)
	  fmr       f2, f30
	  stw       r11, 0x4C(r1)
	  rlwinm    r6,r6,0,16,31
	  fsubs     f3, f0, f5
	  stw       r12, 0x48(r1)
	  rlwinm    r7,r0,0,16,31
	  lwz       r8, 0x148(r31)
	  lfd       f0, 0x48(r1)
	  fadds     f26, f30, f3
	  stw       r10, 0x54(r1)
	  fsubs     f3, f0, f5
	  stw       r12, 0x50(r1)
	  lfd       f0, 0x50(r1)
	  fsubs     f4, f0, f5
	  bl        0x86C
	  lwz       r4, 0x24(r1)
	  lis       r10, 0x4330
	  lwz       r3, 0x18(r1)
	  lis       r5, 0x1
	  lwz       r4, 0x20(r4)
	  subi      r9, r5, 0x8000
	  lwz       r3, 0x20(r3)
	  fmr       f1, f29
	  lhz       r4, 0x2(r4)
	  fmr       f2, f30
	  lhz       r0, 0x4(r3)
	  mr        r3, r31
	  xoris     r4, r4, 0x8000
	  stw       r4, 0x5C(r1)
	  xoris     r7, r0, 0x8000
	  lbz       r11, 0x144(r31)
	  stw       r10, 0x58(r1)
	  lfd       f4, -0x7AC0(r2)
	  rlwinm    r5,r11,27,31,31
	  lfd       f0, 0x58(r1)
	  rlwinm    r0,r11,28,31,31
	  neg       r4, r5
	  stw       r7, 0x64(r1)
	  neg       r0, r0
	  lwz       r8, 0x14C(r31)
	  lwz       r6, 0x148(r31)
	  andc      r5, r9, r0
	  stw       r10, 0x60(r1)
	  fsubs     f3, f0, f4
	  andc      r4, r9, r4
	  sub       r11, r6, r8
	  sub       r0, r8, r6
	  lfd       f0, 0x60(r1)
	  sub       r6, r9, r4
	  or        r11, r11, r0
	  sub       r0, r9, r5
	  fsubs     f4, f0, f4
	  rlwinm    r9,r11,1,31,31
	  rlwinm    r6,r6,0,16,31
	  rlwinm    r7,r0,0,16,31
	  bl        0x7C8
	  lwz       r3, 0x18(r1)
	  lis       r0, 0x4330
	  lbz       r6, 0x144(r31)
	  fsubs     f25, f29, f27
	  lwz       r3, 0x20(r3)
	  lis       r5, 0x1
	  stw       r0, 0x68(r1)
	  rlwinm    r4,r6,28,31,31
	  lhz       r3, 0x4(r3)
	  rlwinm    r7,r6,27,31,31
	  lfd       f4, -0x7AC0(r2)
	  xoris     r0, r3, 0x8000
	  subi      r6, r5, 0x8000
	  stw       r0, 0x6C(r1)
	  neg       r3, r4
	  andc      r5, r6, r3
	  neg       r0, r7
	  lfd       f0, 0x68(r1)
	  and       r4, r6, r0
	  xori      r0, r5, 0x8000
	  fmr       f1, f27
	  fmr       f2, f30
	  lwz       r8, 0x14C(r31)
	  fmr       f3, f25
	  mr        r3, r31
	  fsubs     f4, f0, f4
	  mr        r6, r4
	  rlwinm    r7,r0,0,16,31
	  li        r9, 0
	  bl        0x750
	  lwz       r3, 0x24(r1)
	  lis       r7, 0x4330
	  lbz       r0, 0x144(r31)
	  lis       r4, 0x1
	  lwz       r9, 0x20(r3)
	  subi      r10, r4, 0x8000
	  rlwinm    r3,r0,31,31,31
	  rlwinm    r5,r0,0,31,31
	  lhz       r0, 0x2(r9)
	  neg       r4, r3
	  lhz       r6, 0x4(r9)
	  neg       r5, r5
	  xoris     r0, r0, 0x8000
	  stw       r7, 0x70(r1)
	  xoris     r3, r6, 0x8000
	  lfd       f4, -0x7AC0(r2)
	  stw       r0, 0x74(r1)
	  andc      r4, r10, r4
	  lwz       r8, 0x154(r31)
	  andc      r5, r10, r5
	  lwz       r9, 0x14C(r31)
	  fmr       f1, f29
	  lfd       f0, 0x70(r1)
	  fmr       f2, f28
	  stw       r3, 0x7C(r1)
	  sub       r6, r9, r8
	  sub       r0, r8, r9
	  or        r0, r6, r0
	  sub       r6, r10, r4
	  rlwinm    r9,r0,1,31,31
	  stw       r7, 0x78(r1)
	  fsubs     f3, f0, f4
	  sub       r0, r10, r5
	  lfd       f0, 0x78(r1)
	  mr        r3, r31
	  rlwinm    r6,r6,0,16,31
	  rlwinm    r7,r0,0,16,31
	  fsubs     f4, f0, f4
	  bl        0x6B4
	  lwz       r3, 0x24(r1)
	  lis       r0, 0x4330
	  lbz       r5, 0x144(r31)
	  lis       r4, 0x1
	  lwz       r3, 0x20(r3)
	  subi      r6, r4, 0x8000
	  rlwinm    r4,r5,0,31,31
	  stw       r0, 0x80(r1)
	  lhz       r3, 0x4(r3)
	  rlwinm    r7,r5,31,31,31
	  neg       r4, r4
	  lfd       f4, -0x7AC0(r2)
	  xoris     r3, r3, 0x8000
	  fmr       f1, f27
	  stw       r3, 0x84(r1)
	  andc      r5, r6, r4
	  neg       r4, r7
	  fmr       f2, f28
	  lfd       f0, 0x80(r1)
	  and       r4, r6, r4
	  xori      r0, r5, 0x8000
	  fmr       f3, f25
	  lwz       r8, 0x154(r31)
	  fsubs     f4, f0, f4
	  mr        r3, r31
	  mr        r6, r4
	  rlwinm    r7,r0,0,16,31
	  li        r9, 0
	  bl        0x640
	  lwz       r3, 0x24(r1)
	  lis       r0, 0x4330
	  lbz       r5, 0x144(r31)
	  fsubs     f25, f28, f26
	  lwz       r3, 0x20(r3)
	  lis       r4, 0x1
	  rlwinm    r6,r5,31,31,31
	  stw       r0, 0x88(r1)
	  lhz       r3, 0x2(r3)
	  lfd       f3, -0x7AC0(r2)
	  rlwinm    r5,r5,0,31,31
	  xoris     r0, r3, 0x8000
	  neg       r6, r6
	  stw       r0, 0x8C(r1)
	  subi      r3, r4, 0x8000
	  neg       r0, r5
	  fmr       f1, f29
	  lfd       f0, 0x88(r1)
	  and       r5, r3, r0
	  andc      r4, r3, r6
	  fmr       f2, f26
	  fmr       f4, f25
	  xori      r0, r4, 0x8000
	  fsubs     f3, f0, f3
	  lwz       r8, 0x154(r31)
	  mr        r3, r31
	  mr        r7, r5
	  rlwinm    r6,r0,0,16,31
	  li        r9, 0
	  bl        0x5C8
	  lwz       r4, 0x18(r1)
	  lis       r10, 0x4330
	  lwz       r3, 0x24(r1)
	  lis       r5, 0x1
	  lwz       r4, 0x20(r4)
	  subi      r9, r5, 0x8000
	  lwz       r3, 0x20(r3)
	  fmr       f1, f31
	  lhz       r4, 0x2(r4)
	  fmr       f2, f28
	  lhz       r0, 0x4(r3)
	  mr        r3, r31
	  xoris     r4, r4, 0x8000
	  stw       r4, 0x94(r1)
	  xoris     r7, r0, 0x8000
	  lbz       r11, 0x144(r31)
	  stw       r10, 0x90(r1)
	  lfd       f4, -0x7AC0(r2)
	  rlwinm    r5,r11,29,31,31
	  lfd       f0, 0x90(r1)
	  rlwinm    r0,r11,30,31,31
	  neg       r4, r5
	  stw       r7, 0x9C(r1)
	  neg       r0, r0
	  lwz       r8, 0x150(r31)
	  lwz       r6, 0x154(r31)
	  andc      r5, r9, r0
	  stw       r10, 0x98(r1)
	  fsubs     f3, f0, f4
	  andc      r4, r9, r4
	  sub       r11, r6, r8
	  sub       r0, r8, r6
	  lfd       f0, 0x98(r1)
	  sub       r6, r9, r4
	  or        r11, r11, r0
	  sub       r0, r9, r5
	  fsubs     f4, f0, f4
	  rlwinm    r9,r11,1,31,31
	  rlwinm    r6,r6,0,16,31
	  rlwinm    r7,r0,0,16,31
	  bl        0x524
	  lwz       r3, 0x18(r1)
	  lis       r0, 0x4330
	  lis       r4, 0x1
	  lbz       r5, 0x144(r31)
	  lwz       r3, 0x20(r3)
	  subi      r6, r4, 0x8000
	  rlwinm    r4,r5,29,31,31
	  rlwinm    r5,r5,30,31,31
	  lhz       r3, 0x2(r3)
	  neg       r4, r4
	  neg       r5, r5
	  stw       r0, 0xA0(r1)
	  xoris     r3, r3, 0x8000
	  andc      r4, r6, r4
	  stw       r3, 0xA4(r1)
	  and       r5, r6, r5
	  xori      r0, r4, 0x8000
	  lfd       f3, -0x7AC0(r2)
	  lfd       f0, 0xA0(r1)
	  fmr       f1, f31
	  fmr       f2, f26
	  lwz       r8, 0x150(r31)
	  fmr       f4, f25
	  mr        r3, r31
	  fsubs     f3, f0, f3
	  mr        r7, r5
	  rlwinm    r6,r0,0,16,31
	  li        r9, 0
	  bl        0x4B0

	.loc_0x670:
	  li        r3, 0
	  li        r4, 0x4
	  bl        0xA296C
	  li        r3, 0
	  li        r4, 0xFF
	  li        r5, 0xFF
	  li        r6, 0x4
	  bl        0xA2EF8
	  li        r3, 0
	  bl        0x9F470
	  li        r3, 0xD
	  li        r4, 0
	  bl        0x9E74C

	.loc_0x6A4:
	  psq_l     f31,0x138(r1),0,0
	  lfd       f31, 0x130(r1)
	  psq_l     f30,0x128(r1),0,0
	  lfd       f30, 0x120(r1)
	  psq_l     f29,0x118(r1),0,0
	  lfd       f29, 0x110(r1)
	  psq_l     f28,0x108(r1),0,0
	  lfd       f28, 0x100(r1)
	  psq_l     f27,0xF8(r1),0,0
	  lfd       f27, 0xF0(r1)
	  psq_l     f26,0xE8(r1),0,0
	  lfd       f26, 0xE0(r1)
	  psq_l     f25,0xD8(r1),0,0
	  lfd       f25, 0xD0(r1)
	  lmw       r25, 0xB4(r1)
	  lwz       r0, 0x144(r1)
	  mtlr      r0
	  addi      r1, r1, 0x140
	  blr
	*/
}

/**
 * @note Address: 0x80045B88
 * @note Size: 0x42C
 */
void J2DWindowEx::drawContents(const JGeometry::TBox2<f32>&)
{
	/*
	stwu     r1, -0x80(r1)
	mflr     r0
	stw      r0, 0x84(r1)
	stfd     f31, 0x70(r1)
	psq_st   f31, 120(r1), 0, qr0
	stfd     f30, 0x60(r1)
	psq_st   f30, 104(r1), 0, qr0
	stfd     f29, 0x50(r1)
	psq_st   f29, 88(r1), 0, qr0
	stfd     f28, 0x40(r1)
	psq_st   f28, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	stw      r30, 0x38(r1)
	stw      r29, 0x34(r1)
	mr       r30, r4
	mr       r29, r3
	lfs      f1, 8(r4)
	li       r0, 0
	lfs      f0, 0(r4)
	fcmpo    cr0, f1, f0
	cror     2, 1, 2
	bne      lbl_80045BF8
	lfs      f1, 0xc(r30)
	lfs      f0, 4(r30)
	fcmpo    cr0, f1, f0
	cror     2, 1, 2
	bne      lbl_80045BF8
	li       r0, 1

lbl_80045BF8:
	clrlwi.  r0, r0, 0x18
	beq      lbl_80045F78
	lwz      r3, 0x160(r29)
	cmplwi   r3, 0
	bne      lbl_80045C10
	b        lbl_80045F78

lbl_80045C10:
	lbz      r0, 0xe(r3)
	cmplwi   r0, 0
	beq      lbl_80045F78
	bl       setGX__11J2DMaterialFv
	bl       GXClearVtxDesc
	li       r3, 9
	li       r4, 1
	bl       GXSetVtxDesc
	li       r3, 0xb
	li       r4, 1
	bl       GXSetVtxDesc
	lwz      r7, 0x160(r29)
	lwz      r6, 0x128(r29)
	lhz      r0, 0x1c(r7)
	lwz      r5, 0x130(r29)
	clrlwi   r0, r0, 0x1f
	lwz      r4, 0x12c(r29)
	lwz      r3, 0x134(r29)
	cmplwi   r0, 1
	stw      r6, 0x1c(r1)
	stw      r5, 0x18(r1)
	stw      r4, 0x14(r1)
	stw      r3, 0x10(r1)
	bne      lbl_80045D0C
	lbz      r0, 0xf(r7)
	cmpwi    r0, 1
	bne      lbl_80045D30
	lbz      r0, 0x1f(r1)
	lis      r3, 0x80808081@ha
	lbz      r7, 0xb3(r29)
	addi     r9, r3, 0x80808081@l
	lbz      r4, 0x1b(r1)
	mullw    r5, r0, r7
	lbz      r0, 0x13(r1)
	lbz      r3, 0x17(r1)
	mullw    r6, r4, r7
	mullw    r4, r3, r7
	mullw    r0, r0, r7
	mulhw    r7, r9, r5
	mulhw    r3, r9, r6
	add      r5, r7, r5
	srawi    r7, r5, 7
	mulhw    r5, r9, r4
	srwi     r8, r7, 0x1f
	add      r3, r3, r6
	add      r7, r7, r8
	srawi    r6, r3, 7
	stb      r7, 0x1f(r1)
	add      r4, r5, r4
	srwi     r5, r6, 0x1f
	mulhw    r3, r9, r0
	add      r6, r6, r5
	srawi    r4, r4, 7
	stb      r6, 0x1b(r1)
	srwi     r5, r4, 0x1f
	add      r0, r3, r0
	srawi    r0, r0, 7
	add      r4, r4, r5
	srwi     r3, r0, 0x1f
	stb      r4, 0x17(r1)
	add      r0, r0, r3
	stb      r0, 0x13(r1)
	b        lbl_80045D30

lbl_80045D0C:
	lbz      r0, 0xb4(r29)
	cmplwi   r0, 0
	beq      lbl_80045D30
	lbz      r0, 0xb3(r29)
	addi     r4, r1, 0xc
	li       r3, 2
	stw      r0, 8(r1)
	stw      r0, 0xc(r1)
	bl       GXSetChanMatColor

lbl_80045D30:
	lwz      r3, 0x160(r29)
	li       r31, 0
	lwz      r3, 0x70(r3)
	cmplwi   r3, 0
	beq      lbl_80045E38
	lwz      r12, 0(r3)
	li       r4, 0
	lwz      r12, 0xa0(r12)
	mtctr    r12
	bctrl
	cmplwi   r3, 0
	beq      lbl_80045E38
	li       r31, 1
	li       r3, 0xd
	li       r4, 1
	bl       GXSetVtxDesc
	lwz      r3, 0x160(r29)
	li       r4, 0
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0xa0(r12)
	mtctr    r12
	bctrl
	lwz      r5, 0x20(r3)
	lis      r0, 0x4330
	lwz      r3, 0x160(r29)
	li       r4, 0
	lhz      r5, 2(r5)
	lwz      r3, 0x70(r3)
	xoris    r5, r5, 0x8000
	stw      r0, 0x20(r1)
	lwz      r12, 0(r3)
	stw      r5, 0x24(r1)
	lfd      f1, lbl_805168A0@sda21(r2)
	lfd      f0, 0x20(r1)
	lwz      r12, 0xa0(r12)
	fsubs    f28, f0, f1
	mtctr    r12
	bctrl
	lwz      r3, 0x20(r3)
	lis      r0, 0x4330
	stw      r0, 0x28(r1)
	lhz      r0, 4(r3)
	lfs      f1, 8(r30)
	xoris    r0, r0, 0x8000
	lfs      f0, 0(r30)
	stw      r0, 0x2c(r1)
	fsubs    f4, f1, f0
	lfs      f3, 0xc(r30)
	lfs      f2, 4(r30)
	lfd      f1, lbl_805168A0@sda21(r2)
	lfd      f0, 0x28(r1)
	fsubs    f2, f3, f2
	fdivs    f5, f4, f28
	lfs      f4, lbl_805168B4@sda21(r2)
	lfs      f3, lbl_805168B8@sda21(r2)
	fsubs    f0, f0, f1
	fsubs    f1, f5, f4
	fdivs    f2, f2, f0
	fsubs    f0, f2, f4
	fneg     f1, f1
	fneg     f0, f0
	fmuls    f31, f1, f3
	fmuls    f29, f0, f3
	fadds    f28, f31, f5
	fadds    f30, f29, f2

lbl_80045E38:
	li       r3, 0
	li       r4, 9
	li       r5, 1
	li       r6, 4
	li       r7, 0
	bl       GXSetVtxAttrFmt
	li       r3, 0
	li       r4, 0xd
	li       r5, 1
	li       r6, 4
	li       r7, 0
	bl       GXSetVtxAttrFmt
	li       r3, 0x80
	li       r4, 0
	li       r5, 4
	bl       GXBegin
	lfs      f0, 0(r30)
	lis      r3, 0xCC008000@ha
	clrlwi.  r0, r31, 0x18
	lfs      f1, 4(r30)
	stfs     f0, 0xCC008000@l(r3)
	lfs      f0, lbl_805168B0@sda21(r2)
	stfs     f1, -0x8000(r3)
	lwz      r0, 0x1c(r1)
	stfs     f0, -0x8000(r3)
	stw      r0, -0x8000(r3)
	beq      lbl_80045EAC
	stfs     f31, -0x8000(r3)
	stfs     f29, -0x8000(r3)

lbl_80045EAC:
	lfs      f0, 8(r30)
	lis      r3, 0xCC008000@ha
	clrlwi.  r0, r31, 0x18
	lfs      f1, 4(r30)
	stfs     f0, 0xCC008000@l(r3)
	lfs      f0, lbl_805168B0@sda21(r2)
	stfs     f1, -0x8000(r3)
	lwz      r0, 0x14(r1)
	stfs     f0, -0x8000(r3)
	stw      r0, -0x8000(r3)
	beq      lbl_80045EE0
	stfs     f28, -0x8000(r3)
	stfs     f29, -0x8000(r3)

lbl_80045EE0:
	lfs      f0, 8(r30)
	lis      r3, 0xCC008000@ha
	clrlwi.  r0, r31, 0x18
	lfs      f1, 0xc(r30)
	stfs     f0, 0xCC008000@l(r3)
	lfs      f0, lbl_805168B0@sda21(r2)
	stfs     f1, -0x8000(r3)
	lwz      r0, 0x10(r1)
	stfs     f0, -0x8000(r3)
	stw      r0, -0x8000(r3)
	beq      lbl_80045F14
	stfs     f28, -0x8000(r3)
	stfs     f30, -0x8000(r3)

lbl_80045F14:
	lfs      f0, 0(r30)
	lis      r3, 0xCC008000@ha
	clrlwi.  r0, r31, 0x18
	lfs      f1, 0xc(r30)
	stfs     f0, 0xCC008000@l(r3)
	lfs      f0, lbl_805168B0@sda21(r2)
	stfs     f1, -0x8000(r3)
	lwz      r0, 0x18(r1)
	stfs     f0, -0x8000(r3)
	stw      r0, -0x8000(r3)
	beq      lbl_80045F48
	stfs     f31, -0x8000(r3)
	stfs     f30, -0x8000(r3)

lbl_80045F48:
	li       r3, 0
	li       r4, 0xd
	li       r5, 1
	li       r6, 2
	li       r7, 0xf
	bl       GXSetVtxAttrFmt
	li       r3, 0
	li       r4, 9
	li       r5, 1
	li       r6, 3
	li       r7, 0
	bl       GXSetVtxAttrFmt

lbl_80045F78:
	psq_l    f31, 120(r1), 0, qr0
	lfd      f31, 0x70(r1)
	psq_l    f30, 104(r1), 0, qr0
	lfd      f30, 0x60(r1)
	psq_l    f29, 88(r1), 0, qr0
	lfd      f29, 0x50(r1)
	psq_l    f28, 72(r1), 0, qr0
	lfd      f28, 0x40(r1)
	lwz      r31, 0x3c(r1)
	lwz      r30, 0x38(r1)
	lwz      r0, 0x84(r1)
	lwz      r29, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x80
	blr
	*/
}

/**
 * @note Address: 0x80045FB4
 * @note Size: 0x264
 */
void J2DWindowEx::drawFrameTexture(f32, f32, f32, f32, u16, u16, u16, u16, J2DMaterial*, bool)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x80(r1)
	  mflr      r0
	  stw       r0, 0x84(r1)
	  stfd      f31, 0x70(r1)
	  psq_st    f31,0x78(r1),0,0
	  stfd      f30, 0x60(r1)
	  psq_st    f30,0x68(r1),0,0
	  stfd      f29, 0x50(r1)
	  psq_st    f29,0x58(r1),0,0
	  stfd      f28, 0x40(r1)
	  psq_st    f28,0x48(r1),0,0
	  stmw      r25, 0x24(r1)
	  mr.       r31, r8
	  fmr       f28, f1
	  fmr       f29, f2
	  mr        r25, r3
	  mr        r27, r4
	  mr        r28, r5
	  mr        r29, r6
	  mr        r30, r7
	  mr        r26, r9
	  beq-      .loc_0x230
	  lbz       r0, 0xE(r31)
	  cmplwi    r0, 0
	  beq-      .loc_0x230
	  rlwinm.   r0,r26,0,24,31
	  fadds     f31, f28, f3
	  fadds     f30, f29, f4
	  beq-      .loc_0x7C
	  mr        r3, r31
	  bl        0xC21C

	.loc_0x7C:
	  li        r0, -0x1
	  mr        r3, r25
	  stw       r0, 0x14(r1)
	  bl        -0xCF5C
	  lhz       r0, 0x1C(r31)
	  rlwinm    r0,r0,0,31,31
	  cmplwi    r0, 0x1
	  bne-      .loc_0x128
	  lbz       r0, 0xF(r31)
	  cmpwi     r0, 0x1
	  bne-      .loc_0x184
	  addic.    r0, r31, 0x10
	  li        r4, 0xFF
	  beq-      .loc_0xB8
	  lbz       r4, 0x13(r31)

	.loc_0xB8:
	  cmplwi    r3, 0
	  beq-      .loc_0xF8
	  lbz       r0, 0xB4(r25)
	  cmplwi    r0, 0
	  beq-      .loc_0xF8
	  lbz       r0, 0xB3(r3)
	  rlwinm    r4,r4,0,24,31
	  lis       r3, 0x8081
	  mullw     r0, r4, r0
	  subi      r3, r3, 0x7F7F
	  mulhw     r3, r3, r0
	  add       r0, r3, r0
	  srawi     r0, r0, 0x7
	  rlwinm    r3,r0,1,31,31
	  add       r0, r0, r3
	  rlwinm    r4,r0,0,24,31

	.loc_0xF8:
	  li        r0, -0x100
	  rlwimi    r0,r4,0,24,31
	  stw       r0, 0x10(r1)
	  lbz       r5, 0x10(r1)
	  lbz       r4, 0x11(r1)
	  lbz       r3, 0x12(r1)
	  lbz       r0, 0x13(r1)
	  stb       r5, 0x14(r1)
	  stb       r4, 0x15(r1)
	  stb       r3, 0x16(r1)
	  stb       r0, 0x17(r1)
	  b         .loc_0x184

	.loc_0x128:
	  cmplwi    r3, 0
	  beq-      .loc_0x184
	  lbz       r0, 0xB4(r25)
	  cmplwi    r0, 0
	  beq-      .loc_0x184
	  rlwinm.   r0,r26,0,24,31
	  beq-      .loc_0x184
	  lbz       r0, 0xB3(r3)
	  lis       r3, 0x8081
	  lbz       r6, 0x13(r31)
	  subi      r5, r3, 0x7F7F
	  addi      r4, r1, 0xC
	  li        r3, 0x2
	  mullw     r0, r6, r0
	  mulhw     r5, r5, r0
	  add       r0, r5, r0
	  srawi     r0, r0, 0x7
	  rlwinm    r5,r0,1,31,31
	  add       r0, r0, r5
	  rlwinm    r0,r0,0,24,31
	  stw       r0, 0x8(r1)
	  stw       r0, 0xC(r1)
	  bl        0xA0C40

	.loc_0x184:
	  li        r3, 0
	  li        r4, 0x9
	  li        r5, 0x1
	  li        r6, 0x4
	  li        r7, 0
	  bl        0x9E5BC
	  li        r3, 0x80
	  li        r4, 0
	  li        r5, 0x4
	  bl        0x9F82C
	  lis       r8, 0xCC01
	  lfs       f0, -0x7AB0(r2)
	  stfs      f28, -0x8000(r8)
	  li        r3, 0
	  lwz       r0, 0x14(r1)
	  li        r4, 0x9
	  stfs      f29, -0x8000(r8)
	  li        r5, 0x1
	  li        r6, 0x3
	  li        r7, 0
	  stfs      f0, -0x8000(r8)
	  stw       r0, -0x8000(r8)
	  sth       r29, -0x8000(r8)
	  sth       r30, -0x8000(r8)
	  stfs      f31, -0x8000(r8)
	  stfs      f29, -0x8000(r8)
	  stfs      f0, -0x8000(r8)
	  stw       r0, -0x8000(r8)
	  sth       r27, -0x8000(r8)
	  sth       r30, -0x8000(r8)
	  stfs      f31, -0x8000(r8)
	  stfs      f30, -0x8000(r8)
	  stfs      f0, -0x8000(r8)
	  stw       r0, -0x8000(r8)
	  sth       r27, -0x8000(r8)
	  sth       r28, -0x8000(r8)
	  stfs      f28, -0x8000(r8)
	  stfs      f30, -0x8000(r8)
	  stfs      f0, -0x8000(r8)
	  stw       r0, -0x8000(r8)
	  sth       r29, -0x8000(r8)
	  sth       r28, -0x8000(r8)
	  bl        0x9E528

	.loc_0x230:
	  psq_l     f31,0x78(r1),0,0
	  lfd       f31, 0x70(r1)
	  psq_l     f30,0x68(r1),0,0
	  lfd       f30, 0x60(r1)
	  psq_l     f29,0x58(r1),0,0
	  lfd       f29, 0x50(r1)
	  psq_l     f28,0x48(r1),0,0
	  lfd       f28, 0x40(r1)
	  lmw       r25, 0x24(r1)
	  lwz       r0, 0x84(r1)
	  mtlr      r0
	  addi      r1, r1, 0x80
	  blr
	*/
}

/**
 * @note Address: 0x80046218
 * @note Size: 0x194
 */
void J2DWindowEx::draw(const JGeometry::TBox2<f32>&)
{
	/*
	stwu     r1, -0x60(r1)
	mflr     r0
	stw      r0, 0x64(r1)
	stmw     r26, 0x48(r1)
	mr       r30, r3
	mr       r31, r4
	addi     r28, r1, 0x18
	mr       r29, r30
	li       r27, 0
	li       r26, 0

lbl_80046240:
	lwz      r3, 0x148(r29)
	cmplwi   r3, 0
	beq      lbl_80046398
	lwz      r3, 0x70(r3)
	cmplwi   r3, 0
	beq      lbl_80046398
	lwz      r12, 0(r3)
	li       r4, 0
	lwz      r12, 0xa0(r12)
	mtctr    r12
	bctrl
	stw      r3, 0(r28)
	lwz      r0, 0(r28)
	cmplwi   r0, 0
	bne      lbl_80046280
	li       r27, 1

lbl_80046280:
	addi     r26, r26, 1
	addi     r28, r28, 4
	cmpwi    r26, 4
	addi     r29, r29, 4
	blt      lbl_80046240
	clrlwi.  r0, r27, 0x18
	bne      lbl_80046350
	lwz      r4, 0x20(r1)
	lis      r5, 0x4330
	lwz      r3, 0x1c(r1)
	lwz      r6, 0x20(r4)
	lwz      r4, 0x20(r3)
	lwz      r3, 0x18(r1)
	lhz      r6, 4(r6)
	lwz      r7, 0x20(r3)
	lhz      r0, 2(r4)
	xoris    r6, r6, 0x8000
	lhz      r3, 4(r7)
	xoris    r4, r0, 0x8000
	lhz      r0, 2(r7)
	xoris    r3, r3, 0x8000
	stw      r6, 0x2c(r1)
	xoris    r0, r0, 0x8000
	lfs      f1, 0xc(r31)
	stw      r5, 0x28(r1)
	lfs      f0, 4(r31)
	stw      r4, 0x34(r1)
	lfd      f5, lbl_805168A0@sda21(r2)
	fsubs    f6, f1, f0
	stw      r5, 0x30(r1)
	lfd      f1, 0x28(r1)
	lfd      f0, 0x30(r1)
	fsubs    f4, f1, f5
	lfs      f3, 8(r31)
	lfs      f2, 0(r31)
	fsubs    f1, f0, f5
	stw      r3, 0x3c(r1)
	fsubs    f2, f3, f2
	stw      r5, 0x38(r1)
	fsubs    f3, f6, f4
	lfd      f0, 0x38(r1)
	fsubs    f2, f2, f1
	stw      r0, 0x44(r1)
	fsubs    f1, f0, f5
	stw      r5, 0x40(r1)
	lfd      f0, 0x40(r1)
	stfs     f1, 0xc(r1)
	fsubs    f0, f0, f5
	stfs     f2, 0x10(r1)
	stfs     f0, 8(r1)
	stfs     f3, 0x14(r1)
	b        lbl_8004637C

lbl_80046350:
	lfs      f3, 0xc(r31)
	lfs      f1, 4(r31)
	lfs      f2, 8(r31)
	lfs      f0, lbl_805168B0@sda21(r2)
	fsubs    f3, f3, f1
	lfs      f1, 0(r31)
	stfs     f0, 8(r1)
	fsubs    f1, f2, f1
	stfs     f0, 0xc(r1)
	stfs     f1, 0x10(r1)
	stfs     f3, 0x14(r1)

lbl_8004637C:
	mr       r3, r30
	mr       r4, r31
	lwz      r12, 0(r30)
	addi     r5, r1, 8
	lwz      r12, 0x98(r12)
	mtctr    r12
	bctrl

lbl_80046398:
	lmw      r26, 0x48(r1)
	lwz      r0, 0x64(r1)
	mtlr     r0
	addi     r1, r1, 0x60
	blr
	*/
}

/**
 * @note Address: 0x800463AC
 * @note Size: 0x128
 * draw__11J2DWindowExFRCQ29JGeometry8TBox2<f>RCQ29JGeometry8TBox2<f>
 */
void J2DWindowEx::draw(const JGeometry::TBox2<f32>& p1, const JGeometry::TBox2<f32>& p2)
{
	rewriteAlpha();
	mColorAlpha = mAlpha;
	makeMatrix(p2.i.x, p2.i.y, 0.0f, 0.0f);
	GXLoadPosMtxImm(mPositionMtx, 0);
	GXSetCurrentMtx(0);
	draw_private(JGeometry::TBox2f(0.0f, 0.0f, p1.f.x - p1.i.x, p1.f.y - p1.i.y), p2);
	for (int i = 0; i < 4; i++) {
		GXSetTevSwapModeTable((GXTevSwapSel)i, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
	}
	GXSetNumIndStages(0);
	for (int i = 0; i < 0x10; i++) {
		GXSetTevDirect((GXTevStageID)i);
	}
	Mtx v1;
	PSMTXIdentity(v1);
	GXLoadPosMtxImm(v1, 0);
	/*
	.loc_0x0:
	  stwu      r1, -0x60(r1)
	  mflr      r0
	  stw       r0, 0x64(r1)
	  stw       r31, 0x5C(r1)
	  mr        r31, r5
	  stw       r30, 0x58(r1)
	  mr        r30, r4
	  stw       r29, 0x54(r1)
	  mr        r29, r3
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x58(r12)
	  mtctr     r12
	  bctrl
	  lbz       r0, 0xB2(r29)
	  mr        r3, r29
	  lfs       f3, -0x7AB0(r2)
	  stb       r0, 0xB3(r29)
	  fmr       f4, f3
	  lfs       f1, 0x0(r30)
	  lwz       r12, 0x0(r29)
	  lfs       f2, 0x4(r30)
	  lwz       r12, 0x48(r12)
	  mtctr     r12
	  bctrl
	  addi      r3, r29, 0x50
	  li        r4, 0
	  bl        0xA3164
	  li        r3, 0
	  bl        0xA31FC
	  lfs       f3, 0xC(r30)
	  mr        r3, r29
	  lfs       f1, 0x4(r30)
	  mr        r5, r31
	  lfs       f2, 0x8(r30)
	  addi      r4, r1, 0x8
	  lfs       f0, -0x7AB0(r2)
	  fsubs     f3, f3, f1
	  lfs       f1, 0x0(r30)
	  stfs      f0, 0x8(r1)
	  fsubs     f1, f2, f1
	  stfs      f0, 0xC(r1)
	  stfs      f1, 0x10(r1)
	  stfs      f3, 0x14(r1)
	  bl        -0xFC0
	  li        r31, 0

	.loc_0xB4:
	  mr        r3, r31
	  li        r4, 0
	  li        r5, 0x1
	  li        r6, 0x2
	  li        r7, 0x3
	  bl        0xA2458
	  addi      r31, r31, 0x1
	  cmpwi     r31, 0x4
	  blt+      .loc_0xB4
	  li        r3, 0
	  bl        0xA1ECC
	  li        r31, 0

	.loc_0xE4:
	  mr        r3, r31
	  bl        0xA1EE4
	  addi      r31, r31, 0x1
	  cmpwi     r31, 0x10
	  blt+      .loc_0xE4
	  addi      r3, r1, 0x18
	  bl        0xA3DF8
	  addi      r3, r1, 0x18
	  li        r4, 0
	  bl        0xA30C4
	  lwz       r0, 0x64(r1)
	  lwz       r31, 0x5C(r1)
	  lwz       r30, 0x58(r1)
	  lwz       r29, 0x54(r1)
	  mtlr      r0
	  addi      r1, r1, 0x60
	  blr
	*/
}

/**
 * @note Address: 0x800464D4
 * @note Size: 0x124
 */
void J2DWindowEx::setTevStage(bool)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r31, r3
	clrlwi   r30, r4, 0x18
	li       r28, 0
	mr       r29, r31

lbl_800464F4:
	lwz      r3, 0x148(r29)
	li       r4, 0
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x60(r12)
	mtctr    r12
	bctrl
	lwz      r5, 0x148(r29)
	mr       r27, r3
	li       r4, 0
	lwz      r3, 0x70(r5)
	lwz      r12, 0(r3)
	lwz      r12, 0xa0(r12)
	mtctr    r12
	bctrl
	cmplwi   r3, 0
	li       r4, 0
	beq      lbl_80046564
	lwz      r3, 0x20(r3)
	lbz      r0, 0(r3)
	cmpwi    r0, 0
	beq      lbl_80046554
	cmpwi    r0, 1
	bne      lbl_80046564

lbl_80046554:
	lbz      r0, 1(r3)
	cmpwi    r0, 0
	bne      lbl_80046564
	li       r4, 1

lbl_80046564:
	cmplwi   r30, 0
	bne      lbl_8004658C
	clrlwi   r5, r4, 0x18
	mr       r3, r31
	neg      r0, r5
	mr       r4, r27
	or       r0, r0, r5
	srwi     r5, r0, 0x1f
	bl       setStage__11J2DWindowExFP11J2DTevStageQ211J2DWindowEx10stage_enum
	b        lbl_800465D4

lbl_8004658C:
	clrlwi.  r0, r4, 0x18
	mr       r3, r31
	mr       r4, r27
	li       r5, 3
	beq      lbl_800465A4
	li       r5, 4

lbl_800465A4:
	bl       setStage__11J2DWindowExFP11J2DTevStageQ211J2DWindowEx10stage_enum
	lwz      r3, 0x148(r29)
	li       r4, 1
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x60(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	mr       r3, r31
	li       r5, 2
	bl       setStage__11J2DWindowExFP11J2DTevStageQ211J2DWindowEx10stage_enum

lbl_800465D4:
	addi     r28, r28, 1
	addi     r29, r29, 4
	cmpwi    r28, 4
	blt      lbl_800464F4
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x800465F8
 * @note Size: 0x2BC
 */
void J2DWindowEx::setStage(J2DTevStage*, J2DWindowEx::stage_enum)
{
	/*
	stwu     r1, -0xa0(r1)
	lis      r3, lbl_804784E0@ha
	stmw     r14, 0x58(r1)
	addi     r17, r3, lbl_804784E0@l
	slwi     r16, r5, 2
	addi     r14, r1, 0x40
	mulli    r15, r5, 5
	addi     r8, r1, 8
	addi     r3, r1, 0xc
	addi     r5, r1, 0xb
	addi     r6, r1, 0xa
	addi     r7, r1, 9
	lwz      r18, 0x90(r17)
	lwz      r19, 0x94(r17)
	lwz      r20, 0x98(r17)
	lwz      r21, 0x9c(r17)
	lwz      r22, 0xa0(r17)
	lwz      r23, 0xa4(r17)
	stw      r18, 0x40(r1)
	lwz      r24, 0xa8(r17)
	lwz      r25, 0xac(r17)
	lwz      r26, 0xb0(r17)
	lwz      r27, 0xb4(r17)
	lwz      r28, 0xb8(r17)
	lwz      r29, 0xbc(r17)
	lwz      r30, 0xc0(r17)
	lwz      r31, 0xc4(r17)
	lwz      r12, 0xc8(r17)
	lwz      r11, 0xcc(r17)
	lwz      r10, 0xd0(r17)
	lwz      r9, 0xd4(r17)
	lwz      r0, 0xd8(r17)
	lhz      r17, 0xdc(r17)
	stw      r19, 0x44(r1)
	stw      r20, 0x48(r1)
	stw      r21, 0x4c(r1)
	stw      r22, 0x50(r1)
	stw      r23, 0x54(r1)
	lbzx     r20, r14, r16
	addi     r14, r1, 0x42
	lbzx     r18, r14, r16
	addi     r14, r1, 0x41
	lbzx     r19, r14, r16
	slwi     r20, r20, 4
	addi     r14, r1, 0x43
	slwi     r18, r18, 4
	lbzx     r14, r14, r16
	or       r19, r20, r19
	stb      r19, 2(r4)
	or       r14, r18, r14
	stb      r14, 3(r4)
	lbz      r14, 1(r4)
	stw      r30, 8(r1)
	rlwinm   r14, r14, 0, 0x1e, 0x1c
	stw      r31, 0xc(r1)
	stw      r12, 0x10(r1)
	stw      r11, 0x14(r1)
	stw      r10, 0x18(r1)
	stw      r9, 0x1c(r1)
	stw      r0, 0x20(r1)
	sth      r17, 0x24(r1)
	lbzx     r11, r8, r15
	stw      r24, 0x28(r1)
	rlwinm   r0, r11, 2, 0x16, 0x1d
	cmplwi   r11, 1
	or       r10, r14, r0
	stw      r25, 0x2c(r1)
	lbzx     r9, r3, r15
	stw      r26, 0x30(r1)
	lbzx     r0, r5, r15
	stw      r27, 0x34(r1)
	lbzx     r14, r6, r15
	stw      r28, 0x38(r1)
	lbzx     r12, r7, r15
	stw      r29, 0x3c(r1)
	stb      r10, 1(r4)
	bgt      lbl_80046754
	lbz      r11, 1(r4)
	rlwinm   r10, r14, 4, 0x14, 0x1b
	rlwinm   r11, r11, 0, 0x1c, 0x19
	or       r10, r11, r10
	stb      r10, 1(r4)
	lbz      r10, 1(r4)
	rlwinm   r10, r10, 0, 0, 0x1d
	or       r10, r10, r12
	stb      r10, 1(r4)
	b        lbl_80046770

lbl_80046754:
	lbz      r10, 1(r4)
	rlwimi   r10, r11, 3, 0x1a, 0x1b
	stb      r10, 1(r4)
	lbz      r10, 1(r4)
	rlwinm   r10, r10, 0, 0, 0x1d
	ori      r10, r10, 3
	stb      r10, 1(r4)

lbl_80046770:
	lbz      r10, 1(r4)
	rlwinm   r11, r9, 6, 0x12, 0x19
	lbzx     r8, r8, r15
	rlwinm   r0, r0, 3, 0x15, 0x1c
	rlwinm   r10, r10, 0, 0x1d, 0x1b
	addi     r9, r1, 0x28
	or       r10, r10, r0
	lbzx     r0, r9, r16
	stb      r10, 1(r4)
	addi     r9, r1, 0x29
	lbzx     r14, r9, r16
	addi     r10, r1, 0x2b
	lbz      r12, 1(r4)
	addi     r9, r1, 0x2a
	lbzx     r10, r10, r16
	slwi     r0, r0, 5
	rlwimi   r11, r12, 0, 0x1a, 0x1f
	lbzx     r12, r9, r16
	stb      r11, 1(r4)
	rlwinm   r14, r14, 2, 0x16, 0x1d
	rlwinm   r11, r12, 7, 0x11, 0x18
	rlwinm   r12, r12, 0x1f, 0x19, 0x1f
	lbz      r9, 6(r4)
	rlwinm   r10, r10, 4, 0x14, 0x1b
	cmplwi   r8, 1
	lbzx     r3, r3, r15
	rlwimi   r0, r9, 0, 0x1b, 0x1f
	rlwinm   r9, r8, 2, 0x16, 0x1d
	stb      r0, 6(r4)
	lbzx     r0, r5, r15
	lbz      r16, 6(r4)
	lbzx     r7, r7, r15
	rlwinm   r5, r16, 0, 0x1e, 0x1a
	lbzx     r16, r6, r15
	or       r5, r5, r14
	stb      r5, 6(r4)
	lbz      r5, 6(r4)
	rlwinm   r5, r5, 0, 0, 0x1d
	or       r5, r5, r12
	stb      r5, 6(r4)
	lbz      r5, 7(r4)
	rlwimi   r11, r5, 0, 0x19, 0x1f
	stb      r11, 7(r4)
	lbz      r5, 7(r4)
	rlwinm   r5, r5, 0, 0x1c, 0x18
	or       r5, r5, r10
	stb      r5, 7(r4)
	lbz      r5, 5(r4)
	rlwinm   r5, r5, 0, 0x1e, 0x1c
	or       r5, r5, r9
	stb      r5, 5(r4)
	bgt      lbl_80046868
	lbz      r6, 5(r4)
	rlwinm   r5, r16, 4, 0x14, 0x1b
	rlwinm   r6, r6, 0, 0, 0x1d
	or       r6, r6, r7
	stb      r6, 5(r4)
	lbz      r6, 5(r4)
	rlwinm   r6, r6, 0, 0x1c, 0x19
	or       r5, r6, r5
	stb      r5, 5(r4)
	b        lbl_80046884

lbl_80046868:
	lbz      r5, 5(r4)
	rlwimi   r5, r8, 3, 0x1a, 0x1b
	stb      r5, 5(r4)
	lbz      r5, 5(r4)
	rlwinm   r5, r5, 0, 0, 0x1d
	ori      r5, r5, 3
	stb      r5, 5(r4)

lbl_80046884:
	lbz      r5, 5(r4)
	rlwinm   r0, r0, 3, 0x15, 0x1c
	rlwinm   r3, r3, 6, 0x12, 0x19
	rlwinm   r5, r5, 0, 0x1d, 0x1b
	or       r0, r5, r0
	stb      r0, 5(r4)
	lbz      r0, 5(r4)
	rlwimi   r3, r0, 0, 0x1a, 0x1f
	stb      r3, 5(r4)
	lmw      r14, 0x58(r1)
	addi     r1, r1, 0xa0
	blr
	*/
}

/**
 * @note Address: 0x800468B4
 * @note Size: 0x88
 */
bool J2DWindowEx::setBlack(JUtility::TColor black)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	li       r0, -1
	addi     r5, r1, 0x10
	stw      r31, 0x1c(r1)
	mr       r31, r4
	addi     r4, r1, 0x14
	stw      r30, 0x18(r1)
	mr       r30, r3
	stw      r0, 0x14(r1)
	stw      r0, 0x10(r1)
	bl getBlackWhite__11J2DWindowExCFPQ28JUtility6TColorPQ28JUtility6TColor
	clrlwi.  r0, r3, 0x18
	bne      lbl_800468F8
	li       r3, 0
	b        lbl_80046924

lbl_800468F8:
	lwz      r5, 0x10(r1)
	mr       r3, r30
	lwz      r0, 0(r31)
	addi     r4, r1, 0xc
	stw      r5, 8(r1)
	addi     r5, r1, 8
	stw      r0, 0xc(r1)
	lwz      r12, 0(r30)
	lwz      r12, 0xa8(r12)
	mtctr    r12
	bctrl

lbl_80046924:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x8004693C
 * @note Size: 0x88
 */
bool J2DWindowEx::setWhite(JUtility::TColor white)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	li       r0, -1
	addi     r5, r1, 0x10
	stw      r31, 0x1c(r1)
	mr       r31, r4
	addi     r4, r1, 0x14
	stw      r30, 0x18(r1)
	mr       r30, r3
	stw      r0, 0x14(r1)
	stw      r0, 0x10(r1)
	bl getBlackWhite__11J2DWindowExCFPQ28JUtility6TColorPQ28JUtility6TColor
	clrlwi.  r0, r3, 0x18
	bne      lbl_80046980
	li       r3, 0
	b        lbl_800469AC

lbl_80046980:
	lwz      r5, 0(r31)
	mr       r3, r30
	lwz      r0, 0x14(r1)
	addi     r4, r1, 0xc
	stw      r5, 8(r1)
	addi     r5, r1, 8
	stw      r0, 0xc(r1)
	lwz      r12, 0(r30)
	lwz      r12, 0xa8(r12)
	mtctr    r12
	bctrl

lbl_800469AC:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x800469C4
 * @note Size: 0x2EC
 */
bool J2DWindowEx::setBlackWhite(JUtility::TColor black, JUtility::TColor white)
{
	/*
	stwu     r1, -0x60(r1)
	mflr     r0
	stw      r0, 0x64(r1)
	stmw     r22, 0x38(r1)
	mr       r29, r4
	mr       r28, r3
	mr       r30, r5
	lwz      r4, 0x148(r3)
	cmplwi   r4, 0
	bne      lbl_800469F4
	li       r3, 0
	b        lbl_80046C9C

lbl_800469F4:
	lwz      r0, 0x70(r4)
	cmplwi   r0, 0
	bne      lbl_80046A08
	li       r3, 0
	b        lbl_80046C9C

lbl_80046A08:
	lwz      r4, 0x14c(r28)
	cmplwi   r4, 0
	bne      lbl_80046A1C
	li       r3, 0
	b        lbl_80046C9C

lbl_80046A1C:
	lwz      r0, 0x70(r4)
	cmplwi   r0, 0
	bne      lbl_80046A30
	li       r3, 0
	b        lbl_80046C9C

lbl_80046A30:
	lwz      r4, 0x150(r28)
	cmplwi   r4, 0
	bne      lbl_80046A44
	li       r3, 0
	b        lbl_80046C9C

lbl_80046A44:
	lwz      r0, 0x70(r4)
	cmplwi   r0, 0
	bne      lbl_80046A58
	li       r3, 0
	b        lbl_80046C9C

lbl_80046A58:
	lwz      r4, 0x154(r28)
	cmplwi   r4, 0
	bne      lbl_80046A6C
	li       r3, 0
	b        lbl_80046C9C

lbl_80046A6C:
	lwz      r0, 0x70(r4)
	cmplwi   r0, 0
	bne      lbl_80046A80
	li       r3, 0
	b        lbl_80046C9C

lbl_80046A80:
	lwz      r6, 0(r30)
	addi     r4, r1, 0x18
	lwz      r0, 0(r29)
	addi     r5, r1, 0x14
	stw      r6, 0x14(r1)
	stw      r0, 0x18(r1)
	bl isSetBlackWhite__11J2DWindowExCFQ28JUtility6TColorQ28JUtility6TColor
	clrlwi.  r0, r3, 0x18
	bne      lbl_80046AAC
	li       r3, 0
	b        lbl_80046C9C

lbl_80046AAC:
	lwz      r0, 0(r29)
	li       r31, 0
	cmplwi   r0, 0
	bne      lbl_80046ACC
	lwz      r3, 0(r30)
	addis    r0, r3, 1
	cmplwi   r0, 0xffff
	beq      lbl_80046AD0

lbl_80046ACC:
	li       r31, 1

lbl_80046AD0:
	clrlwi   r3, r31, 0x18
	mr       r24, r28
	neg      r0, r3
	li       r23, 0
	or       r0, r0, r3
	srwi     r3, r0, 0x1f
	addi     r0, r3, 1
	clrlwi   r22, r0, 0x18

lbl_80046AF0:
	lwz      r3, 0x148(r24)
	mr       r4, r22
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x54(r12)
	mtctr    r12
	bctrl
	addi     r23, r23, 1
	addi     r24, r24, 4
	cmpwi    r23, 4
	blt      lbl_80046AF0
	clrlwi.  r0, r31, 0x18
	bne      lbl_80046B3C
	lis      r3, 0x0000FFFF@ha
	li       r4, 4
	addi     r0, r3, 0x0000FFFF@l
	sth      r4, 8(r1)
	sth      r0, 0xa(r1)
	b        lbl_80046B50

lbl_80046B3C:
	lis      r3, 0x0000FF04@ha
	li       r4, 0xff
	addi     r0, r3, 0x0000FF04@l
	sth      r4, 8(r1)
	sth      r0, 0xa(r1)

lbl_80046B50:
	addi     r26, r1, 8
	li       r24, 0
	b        lbl_80046BE0

lbl_80046B5C:
	rlwinm   r0, r24, 1, 0x17, 0x1e
	clrlwi   r22, r24, 0x18
	lhzx     r3, r26, r0
	mr       r23, r28
	li       r25, 0
	srawi    r0, r3, 8
	stb      r3, 0xe(r1)
	stb      r0, 0xc(r1)
	stb      r0, 0xd(r1)
	lwz      r27, 0xc(r1)

lbl_80046B84:
	lwz      r3, 0x148(r23)
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	clrlwi   r0, r3, 0x18
	cmplw    r0, r22
	ble      lbl_80046BCC
	stw      r27, 0x10(r1)
	mr       r4, r22
	addi     r5, r1, 0x10
	lwz      r3, 0x148(r23)
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x2c(r12)
	mtctr    r12
	bctrl

lbl_80046BCC:
	addi     r25, r25, 1
	addi     r23, r23, 4
	cmpwi    r25, 4
	blt      lbl_80046B84
	addi     r24, r24, 1

lbl_80046BE0:
	clrlwi   r0, r24, 0x18
	cmplwi   r0, 2
	blt      lbl_80046B5C
	mr       r3, r28
	mr       r4, r31
	bl       setTevStage__11J2DWindowExFb
	clrlwi.  r0, r31, 0x18
	beq      lbl_80046C98
	lbz      r24, 0(r29)
	mr       r23, r28
	lbz      r25, 1(r29)
	li       r22, 0
	lbz      r26, 2(r29)
	lbz      r27, 3(r29)
	lbz      r28, 0(r30)
	lbz      r29, 1(r30)
	lbz      r31, 2(r30)
	lbz      r30, 3(r30)

lbl_80046C28:
	sth      r24, 0x24(r1)
	addi     r5, r1, 0x24
	li       r4, 0
	sth      r25, 0x26(r1)
	sth      r26, 0x28(r1)
	sth      r27, 0x2a(r1)
	lwz      r3, 0x148(r23)
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x34(r12)
	mtctr    r12
	bctrl
	sth      r28, 0x1c(r1)
	addi     r5, r1, 0x1c
	li       r4, 1
	sth      r29, 0x1e(r1)
	sth      r31, 0x20(r1)
	sth      r30, 0x22(r1)
	lwz      r3, 0x148(r23)
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x34(r12)
	mtctr    r12
	bctrl
	addi     r22, r22, 1
	addi     r23, r23, 4
	cmpwi    r22, 4
	blt      lbl_80046C28

lbl_80046C98:
	li       r3, 1

lbl_80046C9C:
	lmw      r22, 0x38(r1)
	lwz      r0, 0x64(r1)
	mtlr     r0
	addi     r1, r1, 0x60
	blr
	*/
}

/**
 * @note Address: 0x80046CB0
 * @note Size: 0x4
 */
// void J2DTevBlock::setTevColor(u32 index, J2DGXColorS10 color) { }

/**
 * @note Address: 0x80046CB4
 * @note Size: 0x194
 */
void J2DWindowEx::getBlackWhite(JUtility::TColor*, JUtility::TColor*) const
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stmw     r26, 0x18(r1)
	mr       r29, r3
	lwz      r3, 0x148(r3)
	mr       r30, r4
	mr       r31, r5
	cmplwi   r3, 0
	bne      lbl_80046CE4
	li       r3, 0
	b        lbl_80046E34

lbl_80046CE4:
	lwz      r3, 0x70(r3)
	cmplwi   r3, 0
	bne      lbl_80046CF8
	li       r3, 0
	b        lbl_80046E34

lbl_80046CF8:
	lwz      r12, 0(r3)
	lwz      r12, 0x58(r12)
	mtctr    r12
	bctrl
	li       r0, 0
	clrlwi   r3, r3, 0x18
	stw      r0, 0x14(r1)
	li       r0, -1
	subfic   r5, r3, 1
	addi     r4, r3, -1
	lbz      r3, 0x14(r1)
	or       r4, r5, r4
	stw      r0, 0x10(r1)
	rlwinm.  r4, r4, 1, 0x1f, 0x1f
	lbz      r0, 0x15(r1)
	stb      r3, 0(r30)
	lbz      r3, 0x16(r1)
	stb      r0, 1(r30)
	lbz      r0, 0x17(r1)
	stb      r3, 2(r30)
	lbz      r3, 0x10(r1)
	stb      r0, 3(r30)
	lbz      r0, 0x11(r1)
	stb      r3, 0(r31)
	lbz      r3, 0x12(r1)
	stb      r0, 1(r31)
	lbz      r0, 0x13(r1)
	stb      r3, 2(r31)
	stb      r0, 3(r31)
	beq      lbl_80046E30
	lwz      r3, 0x148(r29)
	li       r4, 0
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x38(r12)
	mtctr    r12
	bctrl
	lwz      r5, 0x148(r29)
	li       r4, 1
	lha      r29, 0(r3)
	lha      r28, 2(r3)
	lha      r27, 4(r3)
	lha      r26, 6(r3)
	lwz      r3, 0x70(r5)
	lwz      r12, 0(r3)
	lwz      r12, 0x38(r12)
	mtctr    r12
	bctrl
	rlwinm   r4, r28, 0x10, 8, 0xf
	lha      r0, 2(r3)
	rlwimi   r4, r29, 0x18, 0, 7
	lha      r5, 0(r3)
	rlwimi   r4, r27, 8, 0x10, 0x17
	rlwinm   r0, r0, 0x10, 8, 0xf
	rlwimi   r4, r26, 0, 0x18, 0x1f
	lha      r6, 4(r3)
	stw      r4, 0xc(r1)
	rlwimi   r0, r5, 0x18, 0, 7
	lha      r7, 6(r3)
	rlwimi   r0, r6, 8, 0x10, 0x17
	lbz      r3, 0xc(r1)
	lbz      r5, 0xd(r1)
	rlwimi   r0, r7, 0, 0x18, 0x1f
	stb      r3, 0(r30)
	lbz      r4, 0xe(r1)
	stb      r5, 1(r30)
	lbz      r3, 0xf(r1)
	stw      r0, 8(r1)
	stb      r4, 2(r30)
	lbz      r0, 8(r1)
	stb      r3, 3(r30)
	lbz      r4, 9(r1)
	stb      r0, 0(r31)
	lbz      r3, 0xa(r1)
	stb      r4, 1(r31)
	lbz      r0, 0xb(r1)
	stb      r3, 2(r31)
	stb      r0, 3(r31)

lbl_80046E30:
	li       r3, 1

lbl_80046E34:
	lmw      r26, 0x18(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x80046E48
 * @note Size: 0x98
 */
void J2DWindowEx::isSetBlackWhite(JUtility::TColor, JUtility::TColor) const
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r0, 0(r4)
	stw      r31, 0xc(r1)
	cmplwi   r0, 0
	stw      r30, 8(r1)
	bne      lbl_80046E80
	lwz      r4, 0(r5)
	addis    r0, r4, 1
	cmplwi   r0, 0xffff
	bne      lbl_80046E80
	li       r3, 1
	b        lbl_80046EC8

lbl_80046E80:
	li       r30, 0
	mr       r31, r3

lbl_80046E88:
	lwz      r3, 0x148(r31)
	lwz      r3, 0x70(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	clrlwi   r0, r3, 0x18
	cmplwi   r0, 1
	bne      lbl_80046EB4
	li       r3, 0
	b        lbl_80046EC8

lbl_80046EB4:
	addi     r30, r30, 1
	addi     r31, r31, 4
	cmpwi    r30, 4
	blt      lbl_80046E88
	li       r3, 1

lbl_80046EC8:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x80046EE0
 * @note Size: 0x60
 */
JUtility::TColor J2DWindowEx::getBlack() const
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	li       r0, -1
	addi     r5, r1, 8
	stw      r31, 0x1c(r1)
	mr       r31, r3
	mr       r3, r4
	addi     r4, r1, 0xc
	stw      r0, 0xc(r1)
	stw      r0, 8(r1)
	bl getBlackWhite__11J2DWindowExCFPQ28JUtility6TColorPQ28JUtility6TColor
	clrlwi.  r0, r3, 0x18
	bne      lbl_80046F24
	li       r0, 0
	stw      r0, 0(r31)
	b        lbl_80046F2C

lbl_80046F24:
	lwz      r0, 0xc(r1)
	stw      r0, 0(r31)

lbl_80046F2C:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80046F40
 * @note Size: 0x60
 */
JUtility::TColor J2DWindowEx::getWhite() const
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	li       r0, -1
	addi     r5, r1, 8
	stw      r31, 0x1c(r1)
	mr       r31, r3
	mr       r3, r4
	addi     r4, r1, 0xc
	stw      r0, 0xc(r1)
	stw      r0, 8(r1)
	bl getBlackWhite__11J2DWindowExCFPQ28JUtility6TColorPQ28JUtility6TColor
	clrlwi.  r0, r3, 0x18
	bne      lbl_80046F84
	li       r0, -1
	stw      r0, 0(r31)
	b        lbl_80046F8C

lbl_80046F84:
	lwz      r0, 8(r1)
	stw      r0, 0(r31)

lbl_80046F8C:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80046FA0
 * @note Size: 0x84
 */
void J2DWindowEx::setAlpha(u8 alpha)
{
	mAlpha = alpha;
	J2DColorBlock* block;
	for (int i = 0; i < 4; i++) {
		// J2DMaterial* material = _148[i];
		// if (material && (block = &material->mColorBlock)) {
		// 	block->mColors[0].a = alpha;
		// }

		if (mFrameMaterials[i] && (block = &mFrameMaterials[i]->mColorBlock)) {
			block->mColors[0].a = alpha;
		}
	}
	// if (_148[0] && (block = &_148[0]->mColorBlock)) {
	// 	block->mColors[0].a = alpha;
	// }
	// if (_148[1] && (block = &_148[1]->mColorBlock)) {
	// 	block->mColors[0].a = alpha;
	// }
	// if (_150 && (block = &_150->mColorBlock)) {
	// 	block->mColors[0].a = alpha;
	// }
	// if (_154 && (block = &_154->mColorBlock)) {
	// 	block->mColors[0].a = alpha;
	// }
	if (mContentsMaterial && (block = &mContentsMaterial->mColorBlock)) {
		block->mColors[0].a = alpha;
	}
}

/**
 * @note Address: 0x80047024
 * @note Size: 0x78
 */
void J2DWindowEx::setCullBack(_GXCullMode cullMode)
{
	mCullMode = cullMode;

	for (int i = 0; i < 4; i++) {
		if (mFrameMaterials[i] != nullptr) {
			mFrameMaterials[i]->mColorBlock.mCullMode = cullMode;
		}
	}
	// if (_148[0]) {
	// 	_148[0]->mColorBlock.mCullMode = cullMode;
	// }
	// if (_148[1]) {
	// 	_148[1]->mColorBlock.mCullMode = cullMode;
	// }
	// if (_150) {
	// 	_150->mColorBlock.mCullMode = cullMode;
	// }
	// if (_154) {
	// 	_154->mColorBlock.mCullMode = cullMode;
	// }
	if (mContentsMaterial != nullptr) {
		mContentsMaterial->mColorBlock.mCullMode = cullMode;
	}
	J2DPane::setCullBack(cullMode);
}

/**
 * @note Address: 0x8004709C
 * @note Size: 0x18
 */
void J2DWindowEx::rewriteAlpha()
{
	if (mContentsMaterial != nullptr) {
		mAlpha = mContentsMaterial->mColorBlock.mColors[0].a;
	}
}

/**
 * @note Address: 0x800470B4
 * @note Size: 0x68
 */
JUTTexture* J2DWindowEx::getFrameTexture(u8 frameMaterialIndex, u8 textureIndex) const
{
	J2DMaterial* material = getFrameMaterial(frameMaterialIndex);
	if (material != nullptr && material->mTevBlock != nullptr) {
		return material->mTevBlock->getTexture(textureIndex);
	}
	return nullptr;
}

/**
 * @note Address: 0x8004711C
 * @note Size: 0x24
 */
// J2DMaterial* J2DWindowEx::getFrameMaterial(u8 index) const { return (index >= 4) ? nullptr : _148[index]; }

/**
 * @note Address: 0x80047140
 * @note Size: 0x68
 */
JUTTexture* J2DWindowEx::getContentsTexture(u8 textureIndex) const
{
	J2DMaterial* material = getContentsMaterial();
	if (material != nullptr && material->mTevBlock != nullptr) {
		return material->mTevBlock->getTexture(textureIndex);
	}
	return nullptr;
}

/**
 * @note Address: 0x800471A8
 * @note Size: 0x8
 */
// J2DMaterial* J2DWindowEx::getContentsMaterial() const { return mContentsMaterial; }

/**
 * @note Address: 0x800471B0
 * @note Size: 0x118
 */
bool J2DWindowEx::isUsed(const ResTIMG* resource)
{
	for (u8 i = 0; i < 4; i++) {
		if (mFrameMaterials[i] != nullptr && mFrameMaterials[i]->mTevBlock != nullptr) {
			for (u32 j = 0; j < 8; j++) {
				JUTTexture* texture = mFrameMaterials[i]->mTevBlock->getTexture(j);
				if (texture != nullptr && texture->mTexInfo == resource) {
					return true;
				}
			}
		}
	}
	if (mContentsMaterial != nullptr && mContentsMaterial->mTevBlock != nullptr) {
		for (u32 j = 0; j < 8; j++) {
			JUTTexture* texture = mContentsMaterial->mTevBlock->getTexture(j);
			if (texture != nullptr && texture->mTexInfo == resource) {
				return true;
			}
		}
	}
	return J2DPane::isUsed(resource);
}

/**
 * @note Address: 0x800472C8
 * @note Size: 0x90
 * setAnimation__11J2DWindowExFP11J2DAnmColor
 */
void J2DWindowEx::setAnimation(J2DAnmColor* animation)
{
	for (u8 i = 0; i < 4; i++) {
		if (isNeedSetAnm(i)) {
			mFrameMaterials[i]->setAnimation(animation);
		}
	}
	if (mContentsMaterial != nullptr) {
		mContentsMaterial->setAnimation(animation);
	}
}

/**
 * @note Address: 0x80047358
 * @note Size: 0x90
 * setAnimation__11J2DWindowExFP19J2DAnmTextureSRTKey
 */
void J2DWindowEx::setAnimation(J2DAnmTextureSRTKey* animation)
{
	for (u8 i = 0; i < 4; i++) {
		if (isNeedSetAnm(i)) {
			mFrameMaterials[i]->setAnimation(animation);
		}
	}
	if (mContentsMaterial != nullptr) {
		mContentsMaterial->setAnimation(animation);
	}
}

/**
 * @note Address: 0x800473E8
 * @note Size: 0x90
 * setAnimation__11J2DWindowExFP16J2DAnmTexPattern
 */
void J2DWindowEx::setAnimation(J2DAnmTexPattern* animation)
{
	for (u8 i = 0; i < 4; i++) {
		if (isNeedSetAnm(i)) {
			mFrameMaterials[i]->setAnimation(animation);
		}
	}
	if (mContentsMaterial != nullptr) {
		mContentsMaterial->setAnimation(animation);
	}
}

/**
 * @note Address: 0x80047478
 * @note Size: 0x90
 * setAnimation__11J2DWindowExFP15J2DAnmTevRegKey
 */
void J2DWindowEx::setAnimation(J2DAnmTevRegKey* animation)
{
	for (u8 i = 0; i < 4; i++) {
		if (isNeedSetAnm(i)) {
			mFrameMaterials[i]->setAnimation(animation);
		}
	}
	if (mContentsMaterial != nullptr) {
		mContentsMaterial->setAnimation(animation);
	}
}

/**
 * @note Address: 0x80047508
 * @note Size: 0x5C
 */
bool J2DWindowEx::isNeedSetAnm(u8 frameMaterialIndex)
{
	for (u8 i = 0; i < frameMaterialIndex; i++) {
		if (mFrameMaterials[i] == mFrameMaterials[frameMaterialIndex]) {
			return false;
		}
	}
	return (mFrameMaterials[frameMaterialIndex] != nullptr);
}

/**
 * @note Address: 0x80047564
 * @note Size: 0x8
 * setAnimation__11J2DWindowExFP20J2DAnmVisibilityFull
 */
void J2DWindowEx::setAnimation(J2DAnmVisibilityFull* animation) { mAnmVisibility = animation; }

/**
 * @note Address: 0x8004756C
 * @note Size: 0xE0
 * setAnimation__11J2DWindowExFP14J2DAnmVtxColor
 */
void J2DWindowEx::setAnimation(J2DAnmVtxColor* animation)
{
	/*
	stw      r4, 0x178(r3)
	li       r0, 0
	cmplwi   r4, 0
	stb      r0, 0x17c(r3)
	beq      lbl_80047634
	lhz      r7, 0x10(r4)
	li       r9, 0
	b        lbl_80047628

lbl_8004758C:
	rlwinm   r5, r9, 1, 0x17, 0x1e
	addi     r8, r5, 0x168
	lhzx     r0, r3, r8
	cmplwi   r0, 0xffff
	beq      lbl_80047624
	li       r10, 0
	b        lbl_80047618

lbl_800475A8:
	lwz      r6, 0x14(r4)
	rlwinm   r0, r10, 3, 0xd, 0x1c
	lwz      r5, 0x1c(r4)
	li       r12, 0
	add      r6, r6, r0
	lwz      r0, 4(r6)
	lhz      r6, 0(r6)
	slwi     r0, r0, 1
	add      r11, r5, r0
	b        lbl_80047608

lbl_800475D0:
	rlwinm   r0, r12, 1, 0xf, 0x1e
	lhzx     r5, r3, r8
	lhzx     r0, r11, r0
	cmplw    r5, r0
	bne      lbl_80047604
	stw      r4, 0x178(r3)
	clrlwi   r0, r9, 0x18
	li       r5, 1
	lbz      r6, 0x17c(r3)
	slw      r0, r5, r0
	or       r0, r6, r0
	stb      r0, 0x17c(r3)
	b        lbl_80047624

lbl_80047604:
	addi     r12, r12, 1

lbl_80047608:
	clrlwi   r0, r12, 0x10
	cmplw    r0, r6
	blt      lbl_800475D0
	addi     r10, r10, 1

lbl_80047618:
	clrlwi   r0, r10, 0x10
	cmplw    r0, r7
	blt      lbl_800475A8

lbl_80047624:
	addi     r9, r9, 1

lbl_80047628:
	clrlwi   r0, r9, 0x18
	cmplwi   r0, 4
	blt      lbl_8004758C

lbl_80047634:
	lbz      r0, 0x17c(r3)
	cmplwi   r0, 0
	bnelr
	li       r0, 0
	stw      r0, 0x178(r3)
	blr
	*/
}

/**
 * @note Address: 0x8004764C
 * @note Size: 0x1AC
 */
const J2DAnmTransform* J2DWindowEx::animationPane(const J2DAnmTransform* animation)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stw      r31, 0x2c(r1)
	stw      r30, 0x28(r1)
	stw      r29, 0x24(r1)
	mr       r29, r4
	stw      r28, 0x20(r1)
	mr       r28, r3
	lwz      r3, 0x174(r3)
	cmplwi   r3, 0
	beq      lbl_800476B0
	lhz      r4, 0x166(r28)
	cmplwi   r4, 0xffff
	beq      lbl_800476B0
	addi     r5, r1, 8
	bl       getVisibility__20J2DAnmVisibilityFullCFUsPUc
	lbz      r0, 8(r1)
	cmplwi   r0, 0
	beq      lbl_800476A8
	li       r0, 1
	stb      r0, 0xb0(r28)
	b        lbl_800476B0

lbl_800476A8:
	li       r0, 0
	stb      r0, 0xb0(r28)

lbl_800476B0:
	lis      r3, lbl_804785C0@ha
	lwz      r10, 0x178(r28)
	addi     r6, r3, lbl_804785C0@l
	addi     r5, r28, 0x128
	lwz      r9, 0(r6)
	cmplwi   r10, 0
	lwz      r8, 4(r6)
	addi     r4, r28, 0x12c
	lwz      r7, 8(r6)
	addi     r3, r28, 0x130
	lwz      r6, 0xc(r6)
	addi     r0, r28, 0x134
	stw      r9, 0xc(r1)
	stw      r8, 0x10(r1)
	stw      r7, 0x14(r1)
	stw      r6, 0x18(r1)
	stw      r5, 0xc(r1)
	stw      r4, 0x10(r1)
	stw      r3, 0x14(r1)
	stw      r0, 0x18(r1)
	beq      lbl_800477CC
	lhz      r31, 0x10(r10)
	li       r30, 0
	b        lbl_800477C0

lbl_80047710:
	clrlwi   r7, r30, 0x18
	li       r0, 1
	lbz      r3, 0x17c(r28)
	slw      r0, r0, r7
	and.     r0, r3, r0
	beq      lbl_800477BC
	rlwinm   r3, r30, 1, 0x17, 0x1e
	li       r5, 0
	addi     r8, r3, 0x168
	b        lbl_800477B0

lbl_80047738:
	lwz      r3, 0x178(r28)
	rlwinm   r0, r5, 3, 0xd, 0x1c
	li       r10, 0
	lwz      r6, 0x14(r3)
	lwz      r4, 0x1c(r3)
	add      r6, r6, r0
	lwz      r0, 4(r6)
	lhz      r6, 0(r6)
	slwi     r0, r0, 1
	add      r9, r4, r0
	b        lbl_800477A0

lbl_80047764:
	rlwinm   r0, r10, 1, 0xf, 0x1e
	lhzx     r4, r28, r8
	lhzx     r0, r9, r0
	cmplw    r4, r0
	bne      lbl_8004779C
	lwz      r12, 0(r3)
	slwi     r0, r7, 2
	addi     r4, r1, 0xc
	lwz      r12, 0x10(r12)
	lwzx     r6, r4, r0
	li       r4, 0
	mtctr    r12
	bctrl
	b        lbl_800477BC

lbl_8004779C:
	addi     r10, r10, 1

lbl_800477A0:
	clrlwi   r0, r10, 0x10
	cmplw    r0, r6
	blt      lbl_80047764
	addi     r5, r5, 1

lbl_800477B0:
	clrlwi   r0, r5, 0x10
	cmplw    r0, r31
	blt      lbl_80047738

lbl_800477BC:
	addi     r30, r30, 1

lbl_800477C0:
	clrlwi   r0, r30, 0x18
	cmplwi   r0, 4
	blt      lbl_80047710

lbl_800477CC:
	mr       r3, r28
	mr       r4, r29
	bl       animationPane__7J2DPaneFPC15J2DAnmTransform
	lwz      r0, 0x34(r1)
	lwz      r31, 0x2c(r1)
	lwz      r30, 0x28(r1)
	lwz      r29, 0x24(r1)
	lwz      r28, 0x20(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x800477F8
 * @note Size: 0x4
 */
// void J2DAnmVtxColor::getColor(u8, u16, _GXColor*) const { }

/**
 * @note Address: 0x800477FC
 * @note Size: 0x2C
 */
void J2DWindowEx::getMaterial(J2DWindow::TMaterial& material) const
{
	material._00 = mFrameMaterials[0];
	material._04 = mFrameMaterials[1];
	material._08 = mFrameMaterials[2];
	material._0C = mFrameMaterials[3];
	material._10 = mContentsMaterial;
}

/**
 * @note Address: 0x80047828
 * @note Size: 0x58
 * draw__11J2DWindowExFffff
 */
void J2DWindowEx::draw(f32 p1, f32 p2, f32 p3, f32 p4)
{
	// JGeometry::TBox2f box;
	// box.f.x = p3 + p1;
	// box.f.y = p4 + p2;
	// box.i.x = p1;
	// box.i.y = p2;
	// f32 x1 = p1 + p3;
	// f32 y1 = p2 + p4;
	// JGeometry::TBox2f box(p1, p2, x1, y1);
	// JGeometry::TVec2f bottomRight, topLeft = JGeometry::TVec2f(p1, p2);
	// bottomRight.add(p3, p4);
	// JGeometry::TBox2f box;
	// box.set(p1, p2, p1 + p3, p2 + p4);
	// JGeometry::TVec2f bottomRight = JGeometry::TVec2f(p1 + p3, p2 + p4);
	// JGeometry::TVec2f topLeft     = JGeometry::TVec2f(p1, p2);
	// JGeometry::TBox2f box(topLeft, bottomRight);
	// JGeometry::TBox2f box(p1, p2, p1 + p3, p2 + p4);
	// draw(box);
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	frsp     f6, f1
	stfs     f1, 8(r1)
	frsp     f5, f2
	fadds    f1, f1, f3
	addi     r4, r1, 0x10
	stw      r0, 0x24(r1)
	fadds    f0, f2, f4
	stfs     f6, 0x10(r1)
	stfs     f5, 0x14(r1)
	stfs     f1, 0x18(r1)
	stfs     f0, 0x1c(r1)
	lwz      r12, 0(r3)
	stfs     f2, 0xc(r1)
	lwz      r12, 0x94(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80047880
 * @note Size: 0x3C
 * setCullBack__11J2DWindowExFb
 */
void J2DWindowEx::setCullBack(bool shouldCullBack)
{
	GXCullMode cullMode = GX_CULL_NONE;
	if (shouldCullBack) {
		cullMode = GX_CULL_BACK;
	}
	setCullBack(cullMode);
}

/**
 * @note Address: 0x800478BC
 * @note Size: 0x20
 * isUsed__11J2DWindowExFPC7ResFONT
 */
// bool J2DWindowEx::isUsed(const ResFONT* resource) { return J2DPane::isUsed(resource); }

/**
 * @note Address: 0x800478DC
 * @note Size: 0x20
 * setAnimation__11J2DWindowExFP15J2DAnmTransform
 */
// void J2DWindowEx::setAnimation(J2DAnmTransform* animation) { J2DPane::setAnimation(animation); }

/**
 * @note Address: 0x800478FC
 * @note Size: 0x20
 * setAnimation__11J2DWindowExFP10J2DAnmBase
 */
// void J2DWindowEx::setAnimation(J2DAnmBase* animation) { J2DPane::setAnimation(animation); }
