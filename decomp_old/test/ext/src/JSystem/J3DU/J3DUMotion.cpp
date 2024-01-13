#include "JSystem/J3D/J3DAnmTransform.h"
#include "JSystem/J3D/J3DAnmLoader.h"
#include "JSystem/J3D/J3DMtxCalc.h"
#include "types.h"

/**
 * @note Address: 0x80015DF0
 * @note Size: 0x590
 */
J3DMtxCalc* J3DUNewMtxCalcAnm(u32, J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*, J3DMtxCalcFlag)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x20(r1)
	  mflr      r0
	  cmpwi     r3, 0x1
	  stw       r0, 0x24(r1)
	  stmw      r27, 0xC(r1)
	  mr        r28, r4
	  mr        r29, r5
	  mr        r30, r6
	  mr        r31, r7
	  li        r27, 0
	  beq-      .loc_0x204
	  bge-      .loc_0x3C
	  cmpwi     r3, 0
	  bge-      .loc_0x48
	  b         .loc_0x578

	.loc_0x3C:
	  cmpwi     r3, 0x3
	  bge-      .loc_0x578
	  b         .loc_0x3C0

	.loc_0x48:
	  cmpwi     r8, 0x1
	  beq-      .loc_0xD0
	  bge-      .loc_0x13C
	  cmpwi     r8, 0
	  bge-      .loc_0x60
	  b         .loc_0x13C

	.loc_0x60:
	  li        r3, 0x28
	  bl        0xE050
	  cmplwi    r3, 0
	  beq-      .loc_0xC8
	  lis       r4, 0x804A
	  lis       r5, 0x804A
	  subi      r0, r4, 0x4C4
	  lis       r4, 0x804A
	  stw       r0, 0x0(r3)
	  subi      r0, r5, 0x4F0
	  li        r5, 0
	  lfs       f1, -0x7EA8(r2)
	  stw       r0, 0x0(r3)
	  subi      r0, r4, 0x51C
	  lfs       f0, -0x7EA4(r2)
	  stw       r5, 0x4(r3)
	  stfs      f1, 0x14(r3)
	  stw       r5, 0x8(r3)
	  stfs      f1, 0x18(r3)
	  stw       r5, 0xC(r3)
	  stfs      f1, 0x1C(r3)
	  stw       r5, 0x10(r3)
	  stfs      f1, 0x20(r3)
	  stw       r0, 0x0(r3)
	  stw       r28, 0x4(r3)
	  stfs      f0, 0x14(r3)

	.loc_0xC8:
	  mr        r27, r3
	  b         .loc_0x13C

	.loc_0xD0:
	  li        r3, 0x28
	  bl        0xDFE0
	  cmplwi    r3, 0
	  beq-      .loc_0x138
	  lis       r4, 0x804A
	  lis       r5, 0x804A
	  subi      r0, r4, 0x4C4
	  lis       r4, 0x804A
	  stw       r0, 0x0(r3)
	  subi      r0, r5, 0x4F0
	  li        r5, 0
	  lfs       f1, -0x7EA8(r2)
	  stw       r0, 0x0(r3)
	  subi      r0, r4, 0x548
	  lfs       f0, -0x7EA4(r2)
	  stw       r5, 0x4(r3)
	  stfs      f1, 0x14(r3)
	  stw       r5, 0x8(r3)
	  stfs      f1, 0x18(r3)
	  stw       r5, 0xC(r3)
	  stfs      f1, 0x1C(r3)
	  stw       r5, 0x10(r3)
	  stfs      f1, 0x20(r3)
	  stw       r0, 0x0(r3)
	  stw       r28, 0x4(r3)
	  stfs      f0, 0x14(r3)

	.loc_0x138:
	  mr        r27, r3

	.loc_0x13C:
	  mr        r3, r27
	  mr        r5, r29
	  lwz       r12, 0x0(r27)
	  li        r4, 0x1
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  mr        r5, r30
	  lwz       r12, 0x0(r27)
	  li        r4, 0x2
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  mr        r5, r31
	  lwz       r12, 0x0(r27)
	  li        r4, 0x3
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA4(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x1
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x2
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x3
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  b         .loc_0x578

	.loc_0x204:
	  cmpwi     r8, 0x1
	  beq-      .loc_0x28C
	  bge-      .loc_0x2F8
	  cmpwi     r8, 0
	  bge-      .loc_0x21C
	  b         .loc_0x2F8

	.loc_0x21C:
	  li        r3, 0x28
	  bl        0xDE94
	  cmplwi    r3, 0
	  beq-      .loc_0x284
	  lis       r4, 0x804A
	  lis       r5, 0x804A
	  subi      r0, r4, 0x4C4
	  lis       r4, 0x804A
	  stw       r0, 0x0(r3)
	  subi      r0, r5, 0x4F0
	  li        r5, 0
	  lfs       f1, -0x7EA8(r2)
	  stw       r0, 0x0(r3)
	  subi      r0, r4, 0x574
	  lfs       f0, -0x7EA4(r2)
	  stw       r5, 0x4(r3)
	  stfs      f1, 0x14(r3)
	  stw       r5, 0x8(r3)
	  stfs      f1, 0x18(r3)
	  stw       r5, 0xC(r3)
	  stfs      f1, 0x1C(r3)
	  stw       r5, 0x10(r3)
	  stfs      f1, 0x20(r3)
	  stw       r0, 0x0(r3)
	  stw       r28, 0x4(r3)
	  stfs      f0, 0x14(r3)

	.loc_0x284:
	  mr        r27, r3
	  b         .loc_0x2F8

	.loc_0x28C:
	  li        r3, 0x28
	  bl        0xDE24
	  cmplwi    r3, 0
	  beq-      .loc_0x2F4
	  lis       r4, 0x804A
	  lis       r5, 0x804A
	  subi      r0, r4, 0x4C4
	  lis       r4, 0x804A
	  stw       r0, 0x0(r3)
	  subi      r0, r5, 0x4F0
	  li        r5, 0
	  lfs       f1, -0x7EA8(r2)
	  stw       r0, 0x0(r3)
	  subi      r0, r4, 0x5A0
	  lfs       f0, -0x7EA4(r2)
	  stw       r5, 0x4(r3)
	  stfs      f1, 0x14(r3)
	  stw       r5, 0x8(r3)
	  stfs      f1, 0x18(r3)
	  stw       r5, 0xC(r3)
	  stfs      f1, 0x1C(r3)
	  stw       r5, 0x10(r3)
	  stfs      f1, 0x20(r3)
	  stw       r0, 0x0(r3)
	  stw       r28, 0x4(r3)
	  stfs      f0, 0x14(r3)

	.loc_0x2F4:
	  mr        r27, r3

	.loc_0x2F8:
	  mr        r3, r27
	  mr        r5, r29
	  lwz       r12, 0x0(r27)
	  li        r4, 0x1
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  mr        r5, r30
	  lwz       r12, 0x0(r27)
	  li        r4, 0x2
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  mr        r5, r31
	  lwz       r12, 0x0(r27)
	  li        r4, 0x3
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA4(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x1
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x2
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x3
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  b         .loc_0x578

	.loc_0x3C0:
	  cmpwi     r8, 0x1
	  beq-      .loc_0x448
	  bge-      .loc_0x4B4
	  cmpwi     r8, 0
	  bge-      .loc_0x3D8
	  b         .loc_0x4B4

	.loc_0x3D8:
	  li        r3, 0x28
	  bl        0xDCD8
	  cmplwi    r3, 0
	  beq-      .loc_0x440
	  lis       r4, 0x804A
	  lis       r5, 0x804A
	  subi      r0, r4, 0x4C4
	  lis       r4, 0x804A
	  stw       r0, 0x0(r3)
	  subi      r0, r5, 0x4F0
	  li        r5, 0
	  lfs       f1, -0x7EA8(r2)
	  stw       r0, 0x0(r3)
	  subi      r0, r4, 0x5CC
	  lfs       f0, -0x7EA4(r2)
	  stw       r5, 0x4(r3)
	  stfs      f1, 0x14(r3)
	  stw       r5, 0x8(r3)
	  stfs      f1, 0x18(r3)
	  stw       r5, 0xC(r3)
	  stfs      f1, 0x1C(r3)
	  stw       r5, 0x10(r3)
	  stfs      f1, 0x20(r3)
	  stw       r0, 0x0(r3)
	  stw       r28, 0x4(r3)
	  stfs      f0, 0x14(r3)

	.loc_0x440:
	  mr        r27, r3
	  b         .loc_0x4B4

	.loc_0x448:
	  li        r3, 0x28
	  bl        0xDC68
	  cmplwi    r3, 0
	  beq-      .loc_0x4B0
	  lis       r4, 0x804A
	  lis       r5, 0x804A
	  subi      r0, r4, 0x4C4
	  lis       r4, 0x804A
	  stw       r0, 0x0(r3)
	  subi      r0, r5, 0x4F0
	  li        r5, 0
	  lfs       f1, -0x7EA8(r2)
	  stw       r0, 0x0(r3)
	  subi      r0, r4, 0x5F8
	  lfs       f0, -0x7EA4(r2)
	  stw       r5, 0x4(r3)
	  stfs      f1, 0x14(r3)
	  stw       r5, 0x8(r3)
	  stfs      f1, 0x18(r3)
	  stw       r5, 0xC(r3)
	  stfs      f1, 0x1C(r3)
	  stw       r5, 0x10(r3)
	  stfs      f1, 0x20(r3)
	  stw       r0, 0x0(r3)
	  stw       r28, 0x4(r3)
	  stfs      f0, 0x14(r3)

	.loc_0x4B0:
	  mr        r27, r3

	.loc_0x4B4:
	  mr        r3, r27
	  mr        r5, r29
	  lwz       r12, 0x0(r27)
	  li        r4, 0x1
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  mr        r5, r30
	  lwz       r12, 0x0(r27)
	  li        r4, 0x2
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  mr        r5, r31
	  lwz       r12, 0x0(r27)
	  li        r4, 0x3
	  lwz       r12, 0x14(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA4(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x1
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x2
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl
	  mr        r3, r27
	  lfs       f1, -0x7EA8(r2)
	  lwz       r12, 0x0(r27)
	  li        r4, 0x3
	  lwz       r12, 0x1C(r12)
	  mtctr     r12
	  bctrl

	.loc_0x578:
	  mr        r3, r27
	  lmw       r27, 0xC(r1)
	  lwz       r0, 0x24(r1)
	  mtlr      r0
	  addi      r1, r1, 0x20
	  blr
	*/
}

/**
 * @note Address: 0x80016380
 * @note Size: 0x4
 */
void J3DMtxCalc::setWeight(u8, f32) { }

/**
 * @note Address: 0x80016384
 * @note Size: 0x4
 */
void J3DMtxCalc::setAnmTransform(u8, J3DAnmTransform*) { }

/**
 * @note Address: 0x80016388
 * @note Size: 0x5C
 */
J3DMtxCalcBlendAnmBase::~J3DMtxCalcBlendAnmBase()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_800163CC
	lis      r3, __vt__22J3DMtxCalcBlendAnmBase@ha
	addi     r0, r3, __vt__22J3DMtxCalcBlendAnmBase@l
	stw      r0, 0(r31)
	beq      lbl_800163BC
	lis      r3, __vt__10J3DMtxCalc@ha
	addi     r0, r3, __vt__10J3DMtxCalc@l
	stw      r0, 0(r31)

lbl_800163BC:
	extsh.   r0, r4
	ble      lbl_800163CC
	mr       r3, r31
	bl       __dl__FPv

lbl_800163CC:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800163E4
 * @note Size: 0x48
 */
// J3DMtxCalc::~J3DMtxCalc()
// {
// 	/*
// 	stwu     r1, -0x10(r1)
// 	mflr     r0
// 	stw      r0, 0x14(r1)
// 	stw      r31, 0xc(r1)
// 	or.      r31, r3, r3
// 	beq      lbl_80016414
// 	lis      r5, __vt__10J3DMtxCalc@ha
// 	extsh.   r0, r4
// 	addi     r0, r5, __vt__10J3DMtxCalc@l
// 	stw      r0, 0(r31)
// 	ble      lbl_80016414
// 	bl       __dl__FPv

// lbl_80016414:
// 	lwz      r0, 0x14(r1)
// 	mr       r3, r31
// 	lwz      r31, 0xc(r1)
// 	mtlr     r0
// 	addi     r1, r1, 0x10
// 	blr
// 	*/
// }

/**
 * @note Address: 0x8001642C
 * @note Size: 0x348
 */
void J3DMtxCalcBlend::calcBlend(Vec*, Vec*, J3DAnmTransform**, f32*)
{
	/*
	stwu     r1, -0xb0(r1)
	mflr     r0
	stw      r0, 0xb4(r1)
	stfd     f31, 0xa0(r1)
	psq_st   f31, 168(r1), 0, qr0
	stfd     f30, 0x90(r1)
	psq_st   f30, 152(r1), 0, qr0
	stmw     r24, 0x70(r1)
	lwz      r8, mJoint__10J3DMtxCalc@sda21(r13)
	mr       r30, r3
	lwz      r0, 0(r5)
	mr       r31, r4
	lhz      r29, 0x14(r8)
	li       r25, 0
	lwz      r7, mMtxBuffer__10J3DMtxCalc@sda21(r13)
	cmplwi   r0, 0
	mulli    r3, r29, 0x30
	lfs      f31, lbl_805164B8@sda21(r2)
	lwz      r4, 0xc(r7)
	li       r7, 0
	lfs      f0, lbl_805164C0@sda21(r2)
	add      r28, r4, r3
	beq      lbl_800164A0
	lfs      f1, 0(r6)
	fcmpo    cr0, f1, f0
	ble      lbl_800164A0
	fadds    f31, f31, f1
	li       r25, 0
	li       r7, 1

lbl_800164A0:
	lwz      r0, 4(r5)
	cmplwi   r0, 0
	beq      lbl_800164C4
	lfs      f1, 4(r6)
	fcmpo    cr0, f1, f0
	ble      lbl_800164C4
	fadds    f31, f31, f1
	li       r25, 1
	addi     r7, r7, 1

lbl_800164C4:
	lwz      r0, 8(r5)
	cmplwi   r0, 0
	beq      lbl_800164E8
	lfs      f1, 8(r6)
	fcmpo    cr0, f1, f0
	ble      lbl_800164E8
	fadds    f31, f31, f1
	li       r25, 2
	addi     r7, r7, 1

lbl_800164E8:
	lwz      r0, 0xc(r5)
	cmplwi   r0, 0
	beq      lbl_8001650C
	lfs      f1, 0xc(r6)
	fcmpo    cr0, f1, f0
	ble      lbl_8001650C
	fadds    f31, f31, f1
	li       r25, 3
	addi     r7, r7, 1

lbl_8001650C:
	cmpwi    r7, 1
	beq      lbl_8001654C
	bge      lbl_80016634
	cmpwi    r7, 0
	bge      lbl_80016524
	b        lbl_80016634

lbl_80016524:
	mr       r3, r28
	bl       PSMTXIdentity
	lfs      f0, lbl_805164B8@sda21(r2)
	stfs     f0, 8(r30)
	stfs     f0, 4(r30)
	stfs     f0, 0(r30)
	stfs     f0, 8(r31)
	stfs     f0, 4(r31)
	stfs     f0, 0(r31)
	b        lbl_80016750

lbl_8001654C:
	slwi     r0, r25, 2
	mr       r4, r29
	lwzx     r3, r5, r0
	addi     r5, r1, 0x48
	lwz      r12, 0(r3)
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	lfs      f0, 0x48(r1)
	lis      r3, sincosTable___5JMath@ha
	addi     r4, r3, sincosTable___5JMath@l
	stfs     f0, 0(r30)
	addi     r6, r4, 4
	lfs      f0, 0x4c(r1)
	stfs     f0, 4(r30)
	lfs      f0, 0x50(r1)
	stfs     f0, 8(r30)
	lfs      f0, 0x5c(r1)
	stfs     f0, 0(r31)
	lfs      f0, 0x60(r1)
	stfs     f0, 4(r31)
	lfs      f0, 0x64(r1)
	stfs     f0, 8(r31)
	lha      r3, 0x56(r1)
	lha      r0, 0x58(r1)
	rlwinm   r3, r3, 0x1e, 0x12, 0x1c
	lha      r5, 0x54(r1)
	lfsx     f5, r4, r3
	rlwinm   r7, r0, 0x1e, 0x12, 0x1c
	rlwinm   r0, r5, 0x1e, 0x12, 0x1c
	lfsx     f6, r6, r3
	lfsx     f8, r6, r7
	fneg     f0, f5
	lfsx     f7, r4, r7
	lfsx     f3, r4, r0
	fmuls    f2, f8, f6
	lfsx     f4, r6, r0
	fmuls    f1, f7, f6
	fmuls    f9, f3, f8
	stfs     f0, 0x20(r28)
	fmuls    f0, f6, f3
	fmuls    f3, f3, f7
	stfs     f2, 0(r28)
	fmuls    f2, f4, f7
	stfs     f1, 0x10(r28)
	fmuls    f1, f6, f4
	fmuls    f4, f4, f8
	stfs     f0, 0x24(r28)
	fmsubs   f0, f9, f5, f2
	fmsubs   f2, f2, f5, f9
	stfs     f1, 0x28(r28)
	fmadds   f1, f4, f5, f3
	stfs     f0, 4(r28)
	fmadds   f0, f3, f5, f4
	stfs     f2, 0x18(r28)
	stfs     f1, 8(r28)
	stfs     f0, 0x14(r28)
	b        lbl_80016750

lbl_80016634:
	lfs      f0, lbl_805164B8@sda21(r2)
	mr       r27, r5
	mr       r26, r6
	li       r24, 0
	stfs     f0, 8(r30)
	stfs     f0, 4(r30)
	stfs     f0, 0(r30)
	stfs     f0, 8(r31)
	stfs     f0, 4(r31)
	stfs     f0, 0(r31)
	stfs     f0, 0x24(r1)
	stfs     f0, 0x20(r1)
	stfs     f0, 0x1c(r1)
	stfs     f0, 0x18(r1)
	b        lbl_8001673C

lbl_80016670:
	lwz      r3, 0(r27)
	cmplwi   r3, 0
	beq      lbl_80016730
	lfs      f30, 0(r26)
	lfs      f0, lbl_805164C0@sda21(r2)
	fcmpo    cr0, f30, f0
	ble      lbl_80016730
	fdivs    f30, f30, f31
	lwz      r12, 0(r3)
	mr       r4, r29
	addi     r5, r1, 0x28
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	lfs      f1, 0x28(r1)
	addi     r6, r1, 8
	lfs      f0, 0(r30)
	fmadds   f0, f1, f30, f0
	stfs     f0, 0(r30)
	lfs      f1, 0x2c(r1)
	lfs      f0, 4(r30)
	fmadds   f0, f1, f30, f0
	stfs     f0, 4(r30)
	lfs      f1, 0x30(r1)
	lfs      f0, 8(r30)
	fmadds   f0, f1, f30, f0
	stfs     f0, 8(r30)
	lfs      f1, 0x3c(r1)
	lfs      f0, 0(r31)
	fmadds   f0, f1, f30, f0
	stfs     f0, 0(r31)
	lfs      f1, 0x40(r1)
	lfs      f0, 4(r31)
	fmadds   f0, f1, f30, f0
	stfs     f0, 4(r31)
	lfs      f1, 0x44(r1)
	lfs      f0, 8(r31)
	fmadds   f0, f1, f30, f0
	stfs     f0, 8(r31)
	lha      r3, 0x34(r1)
	lha      r4, 0x36(r1)
	lha      r5, 0x38(r1)
	bl       JMAEulerToQuat__FsssP10Quaternion
	fmr      f1, f30
	addi     r3, r1, 0x18
	mr       r5, r3
	addi     r4, r1, 8
	bl       JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion

lbl_80016730:
	addi     r27, r27, 4
	addi     r26, r26, 4
	addi     r24, r24, 1

lbl_8001673C:
	cmpw     r24, r25
	ble      lbl_80016670
	mr       r3, r28
	addi     r4, r1, 0x18
	bl       PSMTXQuat

lbl_80016750:
	psq_l    f31, 168(r1), 0, qr0
	lfd      f31, 0xa0(r1)
	psq_l    f30, 152(r1), 0, qr0
	lfd      f30, 0x90(r1)
	lmw      r24, 0x70(r1)
	lwz      r0, 0xb4(r1)
	mtlr     r0
	addi     r1, r1, 0xb0
	blr
	*/
}

/**
 * @note Address: 0x80016774
 * @note Size: 0x390
 */
void J3DMtxCalcBlendSharedMotionT::calcBlend(Vec*, Vec*, J3DAnmTransform**, f32*)
{
	/*
	.loc_0x0:
	  stwu      r1, -0xB0(r1)
	  mflr      r0
	  stw       r0, 0xB4(r1)
	  stfd      f31, 0xA0(r1)
	  psq_st    f31,0xA8(r1),0,0
	  stfd      f30, 0x90(r1)
	  psq_st    f30,0x98(r1),0,0
	  stmw      r23, 0x6C(r1)
	  lwz       r25, -0x7674(r13)
	  mr        r30, r3
	  lwz       r0, 0x0(r5)
	  mr        r31, r4
	  lhz       r29, 0x14(r25)
	  li        r24, 0
	  lwz       r7, -0x7678(r13)
	  cmplwi    r0, 0
	  mulli     r3, r29, 0x30
	  lfs       f31, -0x7EA8(r2)
	  lwz       r4, 0xC(r7)
	  li        r7, 0
	  lfs       f0, -0x7EA0(r2)
	  add       r28, r4, r3
	  beq-      .loc_0x74
	  lfs       f1, 0x0(r6)
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0x74
	  fadds     f31, f31, f1
	  li        r24, 0
	  li        r7, 0x1

	.loc_0x74:
	  lwz       r0, 0x4(r5)
	  cmplwi    r0, 0
	  beq-      .loc_0x98
	  lfs       f1, 0x4(r6)
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0x98
	  fadds     f31, f31, f1
	  li        r24, 0x1
	  addi      r7, r7, 0x1

	.loc_0x98:
	  lwz       r0, 0x8(r5)
	  cmplwi    r0, 0
	  beq-      .loc_0xBC
	  lfs       f1, 0x8(r6)
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0xBC
	  fadds     f31, f31, f1
	  li        r24, 0x2
	  addi      r7, r7, 0x1

	.loc_0xBC:
	  lwz       r0, 0xC(r5)
	  cmplwi    r0, 0
	  beq-      .loc_0xE0
	  lfs       f1, 0xC(r6)
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0xE0
	  fadds     f31, f31, f1
	  li        r24, 0x3
	  addi      r7, r7, 0x1

	.loc_0xE0:
	  cmpwi     r7, 0x1
	  beq-      .loc_0x120
	  bge-      .loc_0x238
	  cmpwi     r7, 0
	  bge-      .loc_0xF8
	  b         .loc_0x238

	.loc_0xF8:
	  mr        r3, r28
	  bl        0xD3A30
	  lfs       f0, -0x7EA8(r2)
	  stfs      f0, 0x8(r30)
	  stfs      f0, 0x4(r30)
	  stfs      f0, 0x0(r30)
	  stfs      f0, 0x8(r31)
	  stfs      f0, 0x4(r31)
	  stfs      f0, 0x0(r31)
	  b         .loc_0x36C

	.loc_0x120:
	  rlwinm    r0,r24,2,0,29
	  mr        r4, r29
	  lwzx      r3, r5, r0
	  addi      r5, r1, 0x48
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x10(r12)
	  mtctr     r12
	  bctrl
	  lfs       f1, 0x5C(r1)
	  lis       r3, 0x8050
	  lfs       f0, 0x2C(r25)
	  addi      r4, r3, 0x71A0
	  lfs       f3, 0x60(r1)
	  addi      r6, r4, 0x4
	  fmuls     f1, f1, f0
	  lfs       f2, 0x64(r1)
	  lfs       f0, 0x48(r1)
	  stfs      f1, 0x5C(r1)
	  lfs       f1, 0x30(r25)
	  fmuls     f1, f3, f1
	  stfs      f1, 0x60(r1)
	  lfs       f1, 0x34(r25)
	  fmuls     f1, f2, f1
	  stfs      f1, 0x64(r1)
	  stfs      f0, 0x0(r30)
	  lfs       f0, 0x4C(r1)
	  stfs      f0, 0x4(r30)
	  lfs       f0, 0x50(r1)
	  stfs      f0, 0x8(r30)
	  lfs       f0, 0x5C(r1)
	  stfs      f0, 0x0(r31)
	  lfs       f0, 0x60(r1)
	  stfs      f0, 0x4(r31)
	  lfs       f0, 0x64(r1)
	  stfs      f0, 0x8(r31)
	  lha       r3, 0x56(r1)
	  lha       r0, 0x58(r1)
	  rlwinm    r5,r3,30,18,28
	  lha       r3, 0x54(r1)
	  rlwinm    r7,r0,30,18,28
	  lfsx      f5, r4, r5
	  rlwinm    r0,r3,30,18,28
	  lfsx      f6, r6, r5
	  lfsx      f8, r6, r7
	  fneg      f0, f5
	  lfsx      f7, r4, r7
	  lfsx      f3, r4, r0
	  fmuls     f2, f8, f6
	  lfsx      f4, r6, r0
	  fmuls     f1, f7, f6
	  fmuls     f9, f3, f8
	  stfs      f0, 0x20(r28)
	  fmuls     f0, f6, f3
	  fmuls     f3, f3, f7
	  stfs      f2, 0x0(r28)
	  fmuls     f2, f4, f7
	  stfs      f1, 0x10(r28)
	  fmuls     f1, f6, f4
	  fmuls     f4, f4, f8
	  stfs      f0, 0x24(r28)
	  fmsubs    f0, f9, f5, f2
	  fmsubs    f2, f2, f5, f9
	  stfs      f1, 0x28(r28)
	  fmadds    f1, f4, f5, f3
	  stfs      f0, 0x4(r28)
	  fmadds    f0, f3, f5, f4
	  stfs      f2, 0x18(r28)
	  stfs      f1, 0x8(r28)
	  stfs      f0, 0x14(r28)
	  b         .loc_0x36C

	.loc_0x238:
	  lfs       f0, -0x7EA8(r2)
	  mr        r27, r5
	  mr        r26, r6
	  li        r23, 0
	  stfs      f0, 0x8(r30)
	  stfs      f0, 0x4(r30)
	  stfs      f0, 0x0(r30)
	  stfs      f0, 0x8(r31)
	  stfs      f0, 0x4(r31)
	  stfs      f0, 0x0(r31)
	  stfs      f0, 0x24(r1)
	  stfs      f0, 0x20(r1)
	  stfs      f0, 0x1C(r1)
	  stfs      f0, 0x18(r1)
	  b         .loc_0x358

	.loc_0x274:
	  lwz       r3, 0x0(r27)
	  cmplwi    r3, 0
	  beq-      .loc_0x34C
	  lfs       f30, 0x0(r26)
	  lfs       f0, -0x7EA0(r2)
	  fcmpo     cr0, f30, f0
	  ble-      .loc_0x34C
	  fdivs     f30, f30, f31
	  lwz       r12, 0x0(r3)
	  mr        r4, r29
	  addi      r5, r1, 0x28
	  lwz       r12, 0x10(r12)
	  mtctr     r12
	  bctrl
	  lfs       f1, 0x28(r1)
	  addi      r6, r1, 0x8
	  lfs       f0, 0x0(r30)
	  fmadds    f0, f1, f30, f0
	  stfs      f0, 0x0(r30)
	  lfs       f1, 0x2C(r1)
	  lfs       f0, 0x4(r30)
	  fmadds    f0, f1, f30, f0
	  stfs      f0, 0x4(r30)
	  lfs       f1, 0x30(r1)
	  lfs       f0, 0x8(r30)
	  fmadds    f0, f1, f30, f0
	  stfs      f0, 0x8(r30)
	  lfs       f2, 0x3C(r1)
	  lfs       f1, 0x2C(r25)
	  lfs       f0, 0x0(r31)
	  fmuls     f1, f2, f1
	  fmadds    f0, f30, f1, f0
	  stfs      f0, 0x0(r31)
	  lfs       f2, 0x40(r1)
	  lfs       f1, 0x30(r25)
	  lfs       f0, 0x4(r31)
	  fmuls     f1, f2, f1
	  fmadds    f0, f30, f1, f0
	  stfs      f0, 0x4(r31)
	  lfs       f2, 0x44(r1)
	  lfs       f1, 0x34(r25)
	  lfs       f0, 0x8(r31)
	  fmuls     f1, f2, f1
	  fmadds    f0, f30, f1, f0
	  stfs      f0, 0x8(r31)
	  lha       r3, 0x34(r1)
	  lha       r4, 0x36(r1)
	  lha       r5, 0x38(r1)
	  bl        0x1E460
	  fmr       f1, f30
	  addi      r3, r1, 0x18
	  mr        r5, r3
	  addi      r4, r1, 0x8
	  bl        0x1E508

	.loc_0x34C:
	  addi      r27, r27, 0x4
	  addi      r26, r26, 0x4
	  addi      r23, r23, 0x1

	.loc_0x358:
	  cmpw      r23, r24
	  ble+      .loc_0x274
	  mr        r3, r28
	  addi      r4, r1, 0x18
	  bl        0xD3D78

	.loc_0x36C:
	  psq_l     f31,0xA8(r1),0,0
	  lfd       f31, 0xA0(r1)
	  psq_l     f30,0x98(r1),0,0
	  lfd       f30, 0x90(r1)
	  lmw       r23, 0x6C(r1)
	  lwz       r0, 0xB4(r1)
	  mtlr      r0
	  addi      r1, r1, 0xB0
	  blr
	*/
}

/**
 * @note Address: 0x80016B04
 * @note Size: 0x198
 */
void J3DMtxCalcScaleBlendMaya::calcScaleBlend(const Vec&, const Vec&)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lfs      f2, 0(r4)
	stw      r0, 0x24(r1)
	lfs      f3, 4(r4)
	stw      r31, 0x1c(r1)
	mr       r31, r3
	lfs      f1, lbl_805164BC@sda21(r2)
	stw      r30, 0x18(r1)
	lfs      f0, 0(r31)
	stw      r29, 0x14(r1)
	fcmpu    cr0, f1, f0
	lwz      r29, mJoint__10J3DMtxCalc@sda21(r13)
	lwz      r5, mMtxBuffer__10J3DMtxCalc@sda21(r13)
	lhz      r6, 0x14(r29)
	lwz      r3, 0xc(r5)
	mulli    r0, r6, 0x30
	add      r30, r3, r0
	stfs     f2, 0xc(r30)
	lfs      f2, 8(r4)
	stfs     f3, 0x1c(r30)
	stfs     f2, 0x2c(r30)
	bne      lbl_80016B88
	lfs      f0, 4(r31)
	fcmpu    cr0, f1, f0
	bne      lbl_80016B88
	lfs      f0, 8(r31)
	fcmpu    cr0, f1, f0
	bne      lbl_80016B88
	lwz      r3, 4(r5)
	li       r0, 1
	stbx     r0, r3, r6
	b        lbl_80016BAC

lbl_80016B88:
	lwz      r4, 4(r5)
	li       r0, 0
	lfs      f1, 0(r31)
	mr       r3, r30
	stbx     r0, r4, r6
	mr       r4, r30
	lfs      f2, 4(r31)
	lfs      f3, 8(r31)
	bl       JMAMTXApplyScale__FPA4_CfPA4_ffff

lbl_80016BAC:
	lbz      r0, 0x17(r29)
	cmplwi   r0, 1
	bne      lbl_80016C40
	lis      r3, mParentS__6J3DSys@ha
	lfsu     f1, mParentS__6J3DSys@l(r3)
	lfs      f0, 0(r30)
	fres     f3, f1
	lfs      f2, 4(r3)
	lfs      f1, 8(r3)
	fmuls    f0, f0, f3
	fres     f2, f2
	stfs     f0, 0(r30)
	lfs      f0, 4(r30)
	fmuls    f0, f0, f3
	fres     f1, f1
	stfs     f0, 4(r30)
	lfs      f0, 8(r30)
	fmuls    f0, f0, f3
	stfs     f0, 8(r30)
	lfs      f0, 0x10(r30)
	fmuls    f0, f0, f2
	stfs     f0, 0x10(r30)
	lfs      f0, 0x14(r30)
	fmuls    f0, f0, f2
	stfs     f0, 0x14(r30)
	lfs      f0, 0x18(r30)
	fmuls    f0, f0, f2
	stfs     f0, 0x18(r30)
	lfs      f0, 0x20(r30)
	fmuls    f0, f0, f1
	stfs     f0, 0x20(r30)
	lfs      f0, 0x24(r30)
	fmuls    f0, f0, f1
	stfs     f0, 0x24(r30)
	lfs      f0, 0x28(r30)
	fmuls    f0, f0, f1
	stfs     f0, 0x28(r30)

lbl_80016C40:
	lis      r3, mCurrentMtx__6J3DSys@ha
	mr       r4, r30
	addi     r3, r3, mCurrentMtx__6J3DSys@l
	mr       r5, r3
	bl       PSMTXConcat
	lis      r3, mCurrentMtx__6J3DSys@ha
	mr       r4, r30
	addi     r3, r3, mCurrentMtx__6J3DSys@l
	bl       PSMTXCopy
	lfs      f2, 0(r31)
	lis      r3, mParentS__6J3DSys@ha
	lfs      f1, 4(r31)
	stfsu    f2, mParentS__6J3DSys@l(r3)
	lfs      f0, 8(r31)
	stfs     f1, 4(r3)
	stfs     f0, 8(r3)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r0, 0x24(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80016C9C
 * @note Size: 0x8
 */
void J3DMtxCalcBlendAnmBase::setAnmTransform(J3DAnmTransform* a1) { mAnim = a1; }

/**
 * @note Address: 0x80016CA4
 * @note Size: 0x10
 */
J3DAnmTransform* J3DMtxCalcBlendAnmBase::getAnmTransform(u8)
{
	/*
	rlwinm   r0, r4, 2, 0x16, 0x1d
	add      r3, r3, r0
	lwz      r3, 4(r3)
	blr
	*/
}

/**
 * @note Address: 0x80016CB4
 * @note Size: 0x8
 */
J3DAnmTransform* J3DMtxCalcBlendAnmBase::getAnmTransform()
{
	/*
	lwz      r3, 4(r3)
	blr
	*/
}

/**
 * @note Address: 0x80016CBC
 * @note Size: 0x10
 */
void J3DMtxCalcBlendAnmBase::getWeight(u8) const
{
	/*
	rlwinm   r0, r4, 2, 0x16, 0x1d
	add      r3, r3, r0
	lfs      f1, 0x14(r3)
	blr
	*/
}

/**
 * @note Address: 0x80016CCC
 * @note Size: 0x10
 */
void J3DMtxCalcBlendAnmBase::setAnmTransform(u8, J3DAnmTransform*)
{
	/*
	rlwinm   r0, r4, 2, 0x16, 0x1d
	add      r3, r3, r0
	stw      r5, 4(r3)
	blr
	*/
}

/**
 * @note Address: 0x80016CDC
 * @note Size: 0x10
 */
void J3DMtxCalcBlendAnmBase::setWeight(u8, f32)
{
	/*
	rlwinm   r0, r4, 2, 0x16, 0x1d
	add      r3, r3, r0
	stfs     f1, 0x14(r3)
	blr
	*/
}

/**
 * @note Address: 0x80016CEC
 * @note Size: 0x4
 */
void J3DMtxCalc::setAnmTransform(J3DAnmTransform*) { }

/**
 * @note Address: 0x80016CF0
 * @note Size: 0x8
 */
J3DAnmTransform* J3DMtxCalc::getAnmTransform(u8) { return nullptr; }

/**
 * @note Address: 0x80016CF8
 * @note Size: 0x8
 */
J3DAnmTransform* J3DMtxCalc::getAnmTransform() { return nullptr; }

/**
 * @note Address: 0x80016D00
 * @note Size: 0x8
 */
void J3DMtxCalc::getWeight(u8) const
{
	/*
	lfs      f1, lbl_805164B8@sda21(r2)
	blr
	*/
}
