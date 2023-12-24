#include "float.h"
#include "math.h"
#include "Dolphin/mtx.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JParticle/JPABlock.h"
#include "JSystem/JParticle/JPAEmitter.h"
#include "JSystem/JParticle/JPAField.h"
#include "types.h"

/*
    Generated from dpostproc

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global lbl_804A3268
    lbl_804A3268:
        .4byte lbl_800934C8
        .4byte lbl_800934FC
        .4byte lbl_80093530
        .4byte lbl_80093564
        .4byte lbl_80093598
        .4byte lbl_800935CC
        .4byte lbl_80093600
        .4byte lbl_80093634
        .4byte lbl_80093668
    .global __vt__12JPAFieldBase
    __vt__12JPAFieldBase:
        .4byte 0
        .4byte 0
        .4byte __dt__12JPAFieldBaseFv
        .4byte prepare__12JPAFieldBaseFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte 0
    .global __vt__12JPAFieldSpin
    __vt__12JPAFieldSpin:
        .4byte 0
        .4byte 0
        .4byte __dt__12JPAFieldSpinFv
        .4byte prepare__12JPAFieldSpinFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte
   calc__12JPAFieldSpinFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
    .global __vt__12JPAFieldDrag
    __vt__12JPAFieldDrag:
        .4byte 0
        .4byte 0
        .4byte __dt__12JPAFieldDragFv
        .4byte prepare__12JPAFieldBaseFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte
   calc__12JPAFieldDragFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
    .global __vt__14JPAFieldRandom
    __vt__14JPAFieldRandom:
        .4byte 0
        .4byte 0
        .4byte __dt__14JPAFieldRandomFv
        .4byte prepare__12JPAFieldBaseFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte
   calc__14JPAFieldRandomFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
    .global __vt__18JPAFieldConvection
    __vt__18JPAFieldConvection:
        .4byte 0
        .4byte 0
        .4byte __dt__18JPAFieldConvectionFv
        .4byte
   prepare__18JPAFieldConvectionFP18JPAEmitterWorkDataP13JPAFieldBlock .4byte
   calc__18JPAFieldConvectionFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
    .global __vt__14JPAFieldVortex
    __vt__14JPAFieldVortex:
        .4byte 0
        .4byte 0
        .4byte __dt__14JPAFieldVortexFv
        .4byte prepare__14JPAFieldVortexFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte
   calc__14JPAFieldVortexFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
    .global __vt__14JPAFieldNewton
    __vt__14JPAFieldNewton:
        .4byte 0
        .4byte 0
        .4byte __dt__14JPAFieldNewtonFv
        .4byte prepare__14JPAFieldNewtonFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte
   calc__14JPAFieldNewtonFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
    .global __vt__14JPAFieldMagnet
    __vt__14JPAFieldMagnet:
        .4byte 0
        .4byte 0
        .4byte __dt__14JPAFieldMagnetFv
        .4byte prepare__14JPAFieldMagnetFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte
   calc__14JPAFieldMagnetFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
    .global __vt__11JPAFieldAir
    __vt__11JPAFieldAir:
        .4byte 0
        .4byte 0
        .4byte __dt__11JPAFieldAirFv
        .4byte prepare__11JPAFieldAirFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte
   calc__11JPAFieldAirFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
    .global __vt__15JPAFieldGravity
    __vt__15JPAFieldGravity:
        .4byte 0
        .4byte 0
        .4byte __dt__15JPAFieldGravityFv
        .4byte prepare__15JPAFieldGravityFP18JPAEmitterWorkDataP13JPAFieldBlock
        .4byte
   calc__15JPAFieldGravityFP18JPAEmitterWorkDataP13JPAFieldBlockP15JPABaseParticle
        .4byte 0

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_80516BF8
    lbl_80516BF8:
        .float 1.0
    .global lbl_80516BFC
    lbl_80516BFC:
        .4byte 0x00000000
    .global lbl_80516C00
    lbl_80516C00:
        .4byte 0x42000000
    .global lbl_80516C04
    lbl_80516C04:
        .float 0.5
    .global lbl_80516C08
    lbl_80516C08:
        .4byte 0x40400000
    .global lbl_80516C0C
    lbl_80516C0C:
        .4byte 0x41200000
*/

void doTheThing(Vec& vec)
{
	f32 v1 = SQUARE(vec.x) + SQUARE(vec.y) + SQUARE(vec.z);
	if (v1 <= __float_epsilon[0] * 32.0f) {
		return;
	}
	if (v1 > 0.0f) {
		f32 v2 = 1.0f / __frsqrte(v1);
		v1     = v2 * 0.5f * -(v1 * v2 * v2 - 3.0f);
	}
	vec.x *= v1;
	vec.y *= v1;
	vec.z *= v1;
}

typedef f32 RawVec[3];

void getContiguousVecFromMtx(const Mtx& mtx, RawVec& output, int p3)
{
	output[0] = mtx[p3][0];
	output[1] = mtx[p3][1];
	output[2] = mtx[p3][2];
}

void getDisjointedVecFromMtx(const Mtx& mtx, RawVec& output, int p3)
{
	output[0] = mtx[0][p3];
	output[1] = mtx[1][p3];
	output[2] = mtx[2][p3];
}

void setContiguousVecOfMtx33(Mtx33& mtx, const RawVec& vec, int p3)
{
	mtx[p3][0] = vec[0];
	mtx[p3][1] = vec[1];
	mtx[p3][2] = vec[2];
	// *(Vec*)(mtx[p3]) = vec;
}

void setDisjointedVecOfMtx33(Mtx33& mtx, const RawVec& vec, int p3)
{
	mtx[0][p3] = vec[0];
	mtx[1][p3] = vec[1];
	mtx[2][p3] = vec[2];
}

/**
 * @note Address: N/A
 * @note Size: 0x15C
 */
void JPAFieldBase::calcAffect(JPAFieldBlock*, JPABaseParticle*)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x9C
 */
void JPAFieldBase::calcFadeAffect(JPAFieldBlock*, f32) const
{
	// UNUSED FUNCTION
	// TODO: I suspect this is the switch statement/vector addition at the end of most (all?) calc functions.
	// TODO: Then again, where's the JPABaseParticle in that case...
}

/**
 * @note Address: 0x800915A0
 * @note Size: 0xA8
 */
void JPAFieldGravity::prepare(JPAEmitterWorkData* workData, JPAFieldBlock* block)
{
	if ((*(u32*)(block->mData + 8) >> 0x10 & 2) != 0) {
		f32 multiplier = block->_28;
		_04.x          = block->_1C.x * multiplier;
		_04.y          = block->_1C.y * multiplier;
		_04.z          = block->_1C.z * multiplier;
	} else {
		PSMTXMultVecSR(workData->mRotationMtx, (Vec*)&block->_1C, (Vec*)&_04);
		f32 multiplier = block->_28;
		_04.x *= multiplier;
		_04.y *= multiplier;
		_04.z *= multiplier;
	}
}

/**
 * @note Address: 0x80091648
 * @note Size: 0x1BC
 */
void JPAFieldGravity::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x20(r1)
	  lwz       r0, 0x7C(r6)
	  lwz       r7, 0x4(r3)
	  lwz       r4, 0x8(r3)
	  rlwinm.   r0,r0,0,29,29
	  lwz       r3, 0xC(r3)
	  stw       r7, 0x8(r1)
	  stw       r4, 0xC(r1)
	  stw       r3, 0x10(r1)
	  bne-      .loc_0xEC
	  lwz       r4, 0x0(r5)
	  lwz       r3, 0x8(r4)
	  rlwinm.   r0,r3,16,25,28
	  rlwinm    r3,r3,16,16,31
	  beq-      .loc_0xEC
	  rlwinm.   r0,r3,0,28,28
	  lfs       f2, 0x84(r6)
	  lfs       f3, -0x7768(r2)
	  beq-      .loc_0x58
	  lfs       f0, 0x38(r4)
	  fcmpo     cr0, f2, f0
	  blt-      .loc_0x70

	.loc_0x58:
	  rlwinm.   r0,r3,0,27,27
	  beq-      .loc_0x78
	  lfs       f0, 0x3C(r4)
	  fcmpo     cr0, f2, f0
	  cror      2, 0x1, 0x2
	  bne-      .loc_0x78

	.loc_0x70:
	  lfs       f3, -0x7764(r2)
	  b         .loc_0xC8

	.loc_0x78:
	  rlwinm.   r0,r3,0,25,25
	  beq-      .loc_0xA4
	  lfs       f0, 0x34(r4)
	  fcmpo     cr0, f2, f0
	  cror      2, 0x1, 0x2
	  bne-      .loc_0xA4
	  lfs       f1, 0x3C(r4)
	  lfs       f0, 0xC(r5)
	  fsubs     f1, f1, f2
	  fmuls     f3, f1, f0
	  b         .loc_0xC8

	.loc_0xA4:
	  rlwinm.   r0,r3,0,26,26
	  beq-      .loc_0xC8
	  lfs       f0, 0x30(r4)
	  fcmpo     cr0, f2, f0
	  bge-      .loc_0xC8
	  lfs       f1, 0x38(r4)
	  lfs       f0, 0x8(r5)
	  fsubs     f1, f2, f1
	  fmuls     f3, f1, f0

	.loc_0xC8:
	  lfs       f2, 0x8(r1)
	  lfs       f1, 0xC(r1)
	  lfs       f0, 0x10(r1)
	  fmuls     f2, f2, f3
	  fmuls     f1, f1, f3
	  fmuls     f0, f0, f3
	  stfs      f2, 0x8(r1)
	  stfs      f1, 0xC(r1)
	  stfs      f0, 0x10(r1)

	.loc_0xEC:
	  lwz       r3, 0x0(r5)
	  lwz       r0, 0x8(r3)
	  rlwinm    r0,r0,24,30,31
	  cmpwi     r0, 0x1
	  beq-      .loc_0x150
	  bge-      .loc_0x110
	  cmpwi     r0, 0
	  bge-      .loc_0x11C
	  b         .loc_0x1B4

	.loc_0x110:
	  cmpwi     r0, 0x3
	  bge-      .loc_0x1B4
	  b         .loc_0x184

	.loc_0x11C:
	  lfs       f2, 0x3C(r6)
	  lfs       f0, 0x8(r1)
	  lfs       f1, 0xC(r1)
	  fadds     f2, f2, f0
	  lfs       f0, 0x10(r1)
	  stfs      f2, 0x3C(r6)
	  lfs       f2, 0x40(r6)
	  fadds     f1, f2, f1
	  stfs      f1, 0x40(r6)
	  lfs       f1, 0x44(r6)
	  fadds     f0, f1, f0
	  stfs      f0, 0x44(r6)
	  b         .loc_0x1B4

	.loc_0x150:
	  lfs       f2, 0x30(r6)
	  lfs       f0, 0x8(r1)
	  lfs       f1, 0xC(r1)
	  fadds     f2, f2, f0
	  lfs       f0, 0x10(r1)
	  stfs      f2, 0x30(r6)
	  lfs       f2, 0x34(r6)
	  fadds     f1, f2, f1
	  stfs      f1, 0x34(r6)
	  lfs       f1, 0x38(r6)
	  fadds     f0, f1, f0
	  stfs      f0, 0x38(r6)
	  b         .loc_0x1B4

	.loc_0x184:
	  lfs       f2, 0x48(r6)
	  lfs       f0, 0x8(r1)
	  lfs       f1, 0xC(r1)
	  fadds     f2, f2, f0
	  lfs       f0, 0x10(r1)
	  stfs      f2, 0x48(r6)
	  lfs       f2, 0x4C(r6)
	  fadds     f1, f2, f1
	  stfs      f1, 0x4C(r6)
	  lfs       f1, 0x50(r6)
	  fadds     f0, f1, f0
	  stfs      f0, 0x50(r6)

	.loc_0x1B4:
	  addi      r1, r1, 0x20
	  blr
	*/
}

/**
 * @note Address: 0x80091804
 * @note Size: 0x150
 */
void JPAFieldAir::prepare(JPAEmitterWorkData* data, JPAFieldBlock* block)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	mr       r31, r5
	lis      r5, __float_epsilon@ha
	stw      r30, 0x18(r1)
	mr       r30, r3
	lfs      f1, 0x1c(r31)
	lfs      f0, 0x20(r31)
	fmuls    f3, f1, f1
	lfs      f4, 0x24(r31)
	fmuls    f2, f0, f0
	lfs      f1, lbl_80516C00@sda21(r2)
	lfs      f0, __float_epsilon@l(r5)
	fmuls    f4, f4, f4
	fadds    f2, f3, f2
	fmuls    f0, f1, f0
	fadds    f4, f4, f2
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_80091870
	lfs      f0, lbl_80516BFC@sda21(r2)
	stfs     f0, 0x10(r1)
	stfs     f0, 0xc(r1)
	stfs     f0, 8(r1)
	b        lbl_800918C8

lbl_80091870:
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_80091884
	b        lbl_800918A4

lbl_80091884:
	frsqrte  f3, f4
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f3, f3
	fmuls    f1, f3, f3
	fmuls    f2, f2, f3
	fnmsubs  f0, f4, f1, f0
	fmuls    f4, f2, f0

lbl_800918A4:
	lfs      f0, 0x1c(r31)
	fmuls    f0, f0, f4
	stfs     f0, 8(r1)
	lfs      f0, 0x20(r31)
	fmuls    f0, f0, f4
	stfs     f0, 0xc(r1)
	lfs      f0, 0x24(r31)
	fmuls    f0, f0, f4
	stfs     f0, 0x10(r1)

lbl_800918C8:
	lwz      r3, 0(r31)
	lwz      r0, 8(r3)
	rlwinm.  r0, r0, 0x10, 0x1e, 0x1e
	beq      lbl_80091904
	lfs      f1, 0x28(r31)
	lfs      f0, 8(r1)
	fmuls    f0, f0, f1
	stfs     f0, 4(r30)
	lfs      f0, 0xc(r1)
	fmuls    f0, f0, f1
	stfs     f0, 8(r30)
	lfs      f0, 0x10(r1)
	fmuls    f0, f0, f1
	stfs     f0, 0xc(r30)
	b        lbl_8009193C

lbl_80091904:
	addi     r3, r4, 0x78
	addi     r4, r1, 8
	addi     r5, r30, 4
	bl       PSMTXMultVecSR
	lfs      f1, 0x28(r31)
	lfs      f0, 4(r30)
	fmuls    f0, f0, f1
	stfs     f0, 4(r30)
	lfs      f0, 8(r30)
	fmuls    f0, f0, f1
	stfs     f0, 8(r30)
	lfs      f0, 0xc(r30)
	fmuls    f0, f0, f1
	stfs     f0, 0xc(r30)

lbl_8009193C:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80091954
 * @note Size: 0x25C
 */
void JPAFieldAir::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	stwu     r1, -0x20(r1)
	lwz      r0, 0x7c(r6)
	lwz      r7, 4(r3)
	lwz      r4, 8(r3)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	lwz      r3, 0xc(r3)
	stw      r7, 8(r1)
	stw      r4, 0xc(r1)
	stw      r3, 0x10(r1)
	bne      lbl_80091A40
	lwz      r4, 0(r5)
	lwz      r3, 8(r4)
	rlwinm.  r0, r3, 0x10, 0x19, 0x1c
	srwi     r3, r3, 0x10
	beq      lbl_80091A40
	rlwinm.  r0, r3, 0, 0x1c, 0x1c
	lfs      f2, 0x84(r6)
	lfs      f3, lbl_80516BF8@sda21(r2)
	beq      lbl_800919AC
	lfs      f0, 0x38(r4)
	fcmpo    cr0, f2, f0
	blt      lbl_800919C4

lbl_800919AC:
	rlwinm.  r0, r3, 0, 0x1b, 0x1b
	beq      lbl_800919CC
	lfs      f0, 0x3c(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_800919CC

lbl_800919C4:
	lfs      f3, lbl_80516BFC@sda21(r2)
	b        lbl_80091A1C

lbl_800919CC:
	rlwinm.  r0, r3, 0, 0x19, 0x19
	beq      lbl_800919F8
	lfs      f0, 0x34(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_800919F8
	lfs      f1, 0x3c(r4)
	lfs      f0, 0xc(r5)
	fsubs    f1, f1, f2
	fmuls    f3, f1, f0
	b        lbl_80091A1C

lbl_800919F8:
	rlwinm.  r0, r3, 0, 0x1a, 0x1a
	beq      lbl_80091A1C
	lfs      f0, 0x30(r4)
	fcmpo    cr0, f2, f0
	bge      lbl_80091A1C
	lfs      f1, 0x38(r4)
	lfs      f0, 8(r5)
	fsubs    f1, f2, f1
	fmuls    f3, f1, f0

lbl_80091A1C:
	lfs      f2, 8(r1)
	lfs      f1, 0xc(r1)
	lfs      f0, 0x10(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 8(r1)
	stfs     f1, 0xc(r1)
	stfs     f0, 0x10(r1)

lbl_80091A40:
	lwz      r3, 0(r5)
	lwz      r0, 8(r3)
	rlwinm   r0, r0, 0x18, 0x1e, 0x1f
	cmpwi    r0, 1
	beq      lbl_80091AA4
	bge      lbl_80091A64
	cmpwi    r0, 0
	bge      lbl_80091A70
	b        lbl_80091B08

lbl_80091A64:
	cmpwi    r0, 3
	bge      lbl_80091B08
	b        lbl_80091AD8

lbl_80091A70:
	lfs      f2, 0x3c(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x3c(r6)
	lfs      f2, 0x40(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x40(r6)
	lfs      f1, 0x44(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x44(r6)
	b        lbl_80091B08

lbl_80091AA4:
	lfs      f2, 0x30(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x30(r6)
	lfs      f2, 0x34(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x34(r6)
	lfs      f1, 0x38(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x38(r6)
	b        lbl_80091B08

lbl_80091AD8:
	lfs      f2, 0x48(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x48(r6)
	lfs      f2, 0x4c(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x4c(r6)
	lfs      f1, 0x50(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x50(r6)

lbl_80091B08:
	lwz      r3, 0(r5)
	lwz      r0, 8(r3)
	rlwinm.  r0, r0, 0x10, 0x1d, 0x1d
	beq      lbl_80091BA8
	lfs      f1, 0x30(r6)
	lfs      f0, 0x34(r6)
	fmuls    f2, f1, f1
	lfs      f3, 0x38(r6)
	fmuls    f1, f0, f0
	lfs      f0, lbl_80516BFC@sda21(r2)
	fmuls    f3, f3, f3
	fadds    f1, f2, f1
	fadds    f4, f3, f1
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_80091B4C
	b        lbl_80091B70

lbl_80091B4C:
	frsqrte  f3, f4
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f3, f3
	fmuls    f1, f3, f3
	fmuls    f2, f2, f3
	fnmsubs  f0, f4, f1, f0
	fmuls    f0, f2, f0
	fmuls    f4, f4, f0

lbl_80091B70:
	lwz      r3, 0(r5)
	lfs      f0, 0x28(r3)
	fcmpo    cr0, f4, f0
	ble      lbl_80091BA8
	fdivs    f1, f0, f4
	lfs      f0, 0x30(r6)
	fmuls    f0, f0, f1
	stfs     f0, 0x30(r6)
	lfs      f0, 0x34(r6)
	fmuls    f0, f0, f1
	stfs     f0, 0x34(r6)
	lfs      f0, 0x38(r6)
	fmuls    f0, f0, f1
	stfs     f0, 0x38(r6)

lbl_80091BA8:
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80091BB0
 * @note Size: 0x60
 */
void JPAFieldMagnet::prepare(JPAEmitterWorkData* data, JPAFieldBlock* block)
{
	_10.x = block->_10.x - data->mEmitterPos.x;
	_10.y = block->_10.y - data->mEmitterPos.y;
	_10.z = block->_10.z - data->mEmitterPos.z;
	PSMTXMultVecSR(data->mRotationMtx, (Vec*)&_10, (Vec*)&_10);
}

/**
 * @note Address: 0x80091C10
 * @note Size: 0x288
 */
void JPAFieldMagnet::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	stwu     r1, -0x20(r1)
	lis      r4, __float_epsilon@ha
	lfs      f1, lbl_80516C00@sda21(r2)
	lfs      f2, 0x10(r3)
	lfs      f0, 0xc(r6)
	fsubs    f0, f2, f0
	stfs     f0, 4(r3)
	lfs      f2, 0x14(r3)
	lfs      f0, 0x10(r6)
	fsubs    f0, f2, f0
	stfs     f0, 8(r3)
	lfs      f2, 0x18(r3)
	lfs      f0, 0x14(r6)
	fsubs    f0, f2, f0
	stfs     f0, 0xc(r3)
	lfs      f2, 4(r3)
	lfs      f4, 0xc(r3)
	lfs      f0, 8(r3)
	fmuls    f3, f2, f2
	fmuls    f4, f4, f4
	lfs      f5, 0x28(r5)
	fmuls    f2, f0, f0
	lfs      f0, __float_epsilon@l(r4)
	fmuls    f0, f1, f0
	fadds    f1, f3, f2
	fadds    f4, f4, f1
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	beq      lbl_80091CE0
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_80091C98
	b        lbl_80091CB8

lbl_80091C98:
	frsqrte  f3, f4
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f3, f3
	fmuls    f1, f3, f3
	fmuls    f2, f2, f3
	fnmsubs  f0, f4, f1, f0
	fmuls    f4, f2, f0

lbl_80091CB8:
	fmuls    f1, f4, f5
	lfs      f0, 4(r3)
	fmuls    f0, f0, f1
	stfs     f0, 4(r3)
	lfs      f0, 8(r3)
	fmuls    f0, f0, f1
	stfs     f0, 8(r3)
	lfs      f0, 0xc(r3)
	fmuls    f0, f0, f1
	stfs     f0, 0xc(r3)

lbl_80091CE0:
	lwz      r0, 0x7c(r6)
	lwz      r7, 4(r3)
	lwz      r4, 8(r3)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	lwz      r3, 0xc(r3)
	stw      r7, 8(r1)
	stw      r4, 0xc(r1)
	stw      r3, 0x10(r1)
	bne      lbl_80091DC8
	lwz      r4, 0(r5)
	lwz      r3, 8(r4)
	rlwinm.  r0, r3, 0x10, 0x19, 0x1c
	srwi     r3, r3, 0x10
	beq      lbl_80091DC8
	rlwinm.  r0, r3, 0, 0x1c, 0x1c
	lfs      f2, 0x84(r6)
	lfs      f3, lbl_80516BF8@sda21(r2)
	beq      lbl_80091D34
	lfs      f0, 0x38(r4)
	fcmpo    cr0, f2, f0
	blt      lbl_80091D4C

lbl_80091D34:
	rlwinm.  r0, r3, 0, 0x1b, 0x1b
	beq      lbl_80091D54
	lfs      f0, 0x3c(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80091D54

lbl_80091D4C:
	lfs      f3, lbl_80516BFC@sda21(r2)
	b        lbl_80091DA4

lbl_80091D54:
	rlwinm.  r0, r3, 0, 0x19, 0x19
	beq      lbl_80091D80
	lfs      f0, 0x34(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80091D80
	lfs      f1, 0x3c(r4)
	lfs      f0, 0xc(r5)
	fsubs    f1, f1, f2
	fmuls    f3, f1, f0
	b        lbl_80091DA4

lbl_80091D80:
	rlwinm.  r0, r3, 0, 0x1a, 0x1a
	beq      lbl_80091DA4
	lfs      f0, 0x30(r4)
	fcmpo    cr0, f2, f0
	bge      lbl_80091DA4
	lfs      f1, 0x38(r4)
	lfs      f0, 8(r5)
	fsubs    f1, f2, f1
	fmuls    f3, f1, f0

lbl_80091DA4:
	lfs      f2, 8(r1)
	lfs      f1, 0xc(r1)
	lfs      f0, 0x10(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 8(r1)
	stfs     f1, 0xc(r1)
	stfs     f0, 0x10(r1)

lbl_80091DC8:
	lwz      r3, 0(r5)
	lwz      r0, 8(r3)
	rlwinm   r0, r0, 0x18, 0x1e, 0x1f
	cmpwi    r0, 1
	beq      lbl_80091E2C
	bge      lbl_80091DEC
	cmpwi    r0, 0
	bge      lbl_80091DF8
	b        lbl_80091E90

lbl_80091DEC:
	cmpwi    r0, 3
	bge      lbl_80091E90
	b        lbl_80091E60

lbl_80091DF8:
	lfs      f2, 0x3c(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x3c(r6)
	lfs      f2, 0x40(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x40(r6)
	lfs      f1, 0x44(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x44(r6)
	b        lbl_80091E90

lbl_80091E2C:
	lfs      f2, 0x30(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x30(r6)
	lfs      f2, 0x34(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x34(r6)
	lfs      f1, 0x38(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x38(r6)
	b        lbl_80091E90

lbl_80091E60:
	lfs      f2, 0x48(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x48(r6)
	lfs      f2, 0x4c(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x4c(r6)
	lfs      f1, 0x50(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x50(r6)

lbl_80091E90:
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80091E98
 * @note Size: 0x84
 */
void JPAFieldNewton::prepare(JPAEmitterWorkData* data, JPAFieldBlock* block)
{
	_10.x = block->_10.x - data->mEmitterPos.x;
	_10.y = block->_10.y - data->mEmitterPos.y;
	_10.z = block->_10.z - data->mEmitterPos.z;
	PSMTXMultVecSR(data->mRotationMtx, (Vec*)&_10, (Vec*)&_10);
	_1C = SQUARE(*(f32*)(block->mData + 0x2C));
}

/**
 * @note Address: 0x80091F1C
 * @note Size: 0x32C
 */
void JPAFieldNewton::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	stwu     r1, -0x20(r1)
	lfs      f1, 0x10(r3)
	lfs      f0, 0xc(r6)
	fsubs    f0, f1, f0
	stfs     f0, 4(r3)
	lfs      f1, 0x14(r3)
	lfs      f0, 0x10(r6)
	fsubs    f0, f1, f0
	stfs     f0, 8(r3)
	lfs      f1, 0x18(r3)
	lfs      f0, 0x14(r6)
	fsubs    f0, f1, f0
	stfs     f0, 0xc(r3)
	lfs      f1, 4(r3)
	lfs      f0, 8(r3)
	lfs      f2, 0xc(r3)
	fmuls    f1, f1, f1
	fmuls    f0, f0, f0
	lfs      f3, 0x1c(r3)
	fmuls    f2, f2, f2
	fadds    f0, f1, f0
	fadds    f5, f2, f0
	fcmpo    cr0, f5, f3
	ble      lbl_8009200C
	lfs      f2, lbl_80516C0C@sda21(r2)
	lis      r4, __float_epsilon@ha
	lfs      f0, 0x28(r5)
	lfs      f1, lbl_80516C00@sda21(r2)
	fmuls    f2, f2, f0
	lfs      f0, __float_epsilon@l(r4)
	fmuls    f0, f1, f0
	fmuls    f1, f3, f2
	fcmpo    cr0, f5, f0
	fdivs    f3, f1, f5
	cror     2, 0, 2
	beq      lbl_80092090
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f5, f0
	cror     2, 0, 2
	bne      lbl_80091FC0
	b        lbl_80091FE0

lbl_80091FC0:
	frsqrte  f4, f5
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f4, f4
	fmuls    f1, f4, f4
	fmuls    f2, f2, f4
	fnmsubs  f0, f5, f1, f0
	fmuls    f5, f2, f0

lbl_80091FE0:
	fmuls    f1, f5, f3
	lfs      f0, 4(r3)
	fmuls    f0, f0, f1
	stfs     f0, 4(r3)
	lfs      f0, 8(r3)
	fmuls    f0, f0, f1
	stfs     f0, 8(r3)
	lfs      f0, 0xc(r3)
	fmuls    f0, f0, f1
	stfs     f0, 0xc(r3)
	b        lbl_80092090

lbl_8009200C:
	lis      r4, __float_epsilon@ha
	lfs      f1, lbl_80516C00@sda21(r2)
	lfs      f0, __float_epsilon@l(r4)
	lfs      f3, lbl_80516C0C@sda21(r2)
	fmuls    f0, f1, f0
	lfs      f2, 0x28(r5)
	fmuls    f3, f3, f2
	fcmpo    cr0, f5, f0
	cror     2, 0, 2
	beq      lbl_80092090
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f5, f0
	cror     2, 0, 2
	bne      lbl_80092048
	b        lbl_80092068

lbl_80092048:
	frsqrte  f4, f5
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f4, f4
	fmuls    f1, f4, f4
	fmuls    f2, f2, f4
	fnmsubs  f0, f5, f1, f0
	fmuls    f5, f2, f0

lbl_80092068:
	fmuls    f1, f5, f3
	lfs      f0, 4(r3)
	fmuls    f0, f0, f1
	stfs     f0, 4(r3)
	lfs      f0, 8(r3)
	fmuls    f0, f0, f1
	stfs     f0, 8(r3)
	lfs      f0, 0xc(r3)
	fmuls    f0, f0, f1
	stfs     f0, 0xc(r3)

lbl_80092090:
	lwz      r0, 0x7c(r6)
	lwz      r7, 4(r3)
	lwz      r4, 8(r3)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	lwz      r3, 0xc(r3)
	stw      r7, 8(r1)
	stw      r4, 0xc(r1)
	stw      r3, 0x10(r1)
	bne      lbl_80092178
	lwz      r4, 0(r5)
	lwz      r3, 8(r4)
	rlwinm.  r0, r3, 0x10, 0x19, 0x1c
	srwi     r3, r3, 0x10
	beq      lbl_80092178
	rlwinm.  r0, r3, 0, 0x1c, 0x1c
	lfs      f2, 0x84(r6)
	lfs      f3, lbl_80516BF8@sda21(r2)
	beq      lbl_800920E4
	lfs      f0, 0x38(r4)
	fcmpo    cr0, f2, f0
	blt      lbl_800920FC

lbl_800920E4:
	rlwinm.  r0, r3, 0, 0x1b, 0x1b
	beq      lbl_80092104
	lfs      f0, 0x3c(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80092104

lbl_800920FC:
	lfs      f3, lbl_80516BFC@sda21(r2)
	b        lbl_80092154

lbl_80092104:
	rlwinm.  r0, r3, 0, 0x19, 0x19
	beq      lbl_80092130
	lfs      f0, 0x34(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80092130
	lfs      f1, 0x3c(r4)
	lfs      f0, 0xc(r5)
	fsubs    f1, f1, f2
	fmuls    f3, f1, f0
	b        lbl_80092154

lbl_80092130:
	rlwinm.  r0, r3, 0, 0x1a, 0x1a
	beq      lbl_80092154
	lfs      f0, 0x30(r4)
	fcmpo    cr0, f2, f0
	bge      lbl_80092154
	lfs      f1, 0x38(r4)
	lfs      f0, 8(r5)
	fsubs    f1, f2, f1
	fmuls    f3, f1, f0

lbl_80092154:
	lfs      f2, 8(r1)
	lfs      f1, 0xc(r1)
	lfs      f0, 0x10(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 8(r1)
	stfs     f1, 0xc(r1)
	stfs     f0, 0x10(r1)

lbl_80092178:
	lwz      r3, 0(r5)
	lwz      r0, 8(r3)
	rlwinm   r0, r0, 0x18, 0x1e, 0x1f
	cmpwi    r0, 1
	beq      lbl_800921DC
	bge      lbl_8009219C
	cmpwi    r0, 0
	bge      lbl_800921A8
	b        lbl_80092240

lbl_8009219C:
	cmpwi    r0, 3
	bge      lbl_80092240
	b        lbl_80092210

lbl_800921A8:
	lfs      f2, 0x3c(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x3c(r6)
	lfs      f2, 0x40(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x40(r6)
	lfs      f1, 0x44(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x44(r6)
	b        lbl_80092240

lbl_800921DC:
	lfs      f2, 0x30(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x30(r6)
	lfs      f2, 0x34(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x34(r6)
	lfs      f1, 0x38(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x38(r6)
	b        lbl_80092240

lbl_80092210:
	lfs      f2, 0x48(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x48(r6)
	lfs      f2, 0x4c(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x4c(r6)
	lfs      f1, 0x50(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x50(r6)

lbl_80092240:
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80092248
 * @note Size: 0xF4
 */
void JPAFieldVortex::prepare(JPAEmitterWorkData* data, JPAFieldBlock* block)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r5
	stw      r30, 8(r1)
	mr       r30, r3
	addi     r3, r4, 0xa8
	addi     r4, r31, 0x1c
	addi     r5, r30, 0x10
	bl       PSMTXMultVecSR
	lfs      f1, 0x10(r30)
	lis      r3, __float_epsilon@ha
	lfs      f0, 0x14(r30)
	fmuls    f3, f1, f1
	lfs      f4, 0x18(r30)
	fmuls    f2, f0, f0
	lfs      f1, lbl_80516C00@sda21(r2)
	lfs      f0, __float_epsilon@l(r3)
	fmuls    f4, f4, f4
	fadds    f2, f3, f2
	fmuls    f0, f1, f0
	fadds    f4, f4, f2
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	beq      lbl_80092308
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_800922C4
	b        lbl_800922E4

lbl_800922C4:
	frsqrte  f3, f4
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f3, f3
	fmuls    f1, f3, f3
	fmuls    f2, f2, f3
	fnmsubs  f0, f4, f1, f0
	fmuls    f4, f2, f0

lbl_800922E4:
	lfs      f0, 0x10(r30)
	fmuls    f0, f0, f4
	stfs     f0, 0x10(r30)
	lfs      f0, 0x14(r30)
	fmuls    f0, f0, f4
	stfs     f0, 0x14(r30)
	lfs      f0, 0x18(r30)
	fmuls    f0, f0, f4
	stfs     f0, 0x18(r30)

lbl_80092308:
	lfs      f0, 0x18(r31)
	lfs      f1, lbl_80516BF8@sda21(r2)
	fmuls    f0, f0, f0
	stfs     f0, 0x1c(r30)
	lfs      f0, 0x1c(r30)
	fdivs    f0, f1, f0
	stfs     f0, 0x20(r30)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009233C
 * @note Size: 0x2F0
 */
void JPAFieldVortex::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	stwu     r1, -0x20(r1)
	lfs      f1, 0x14(r3)
	lfs      f6, 0x10(r6)
	lfs      f2, 0x10(r3)
	fmuls    f0, f1, f6
	lfs      f5, 0xc(r6)
	lfs      f4, 0x18(r3)
	lfs      f7, 0x14(r6)
	fmadds   f0, f2, f5, f0
	lfs      f3, 0x1c(r3)
	fmadds   f0, f4, f7, f0
	fmuls    f1, f1, f0
	fmuls    f2, f2, f0
	fmuls    f4, f4, f0
	fsubs    f1, f6, f1
	fsubs    f0, f5, f2
	fsubs    f2, f7, f4
	fmuls    f4, f1, f1
	fmadds   f4, f0, f0, f4
	fmadds   f7, f2, f2, f4
	fcmpo    cr0, f7, f3
	ble      lbl_800923A0
	lwz      r4, 0(r5)
	lfs      f9, 0x28(r4)
	b        lbl_800923C4

lbl_800923A0:
	lfs      f3, 0x20(r3)
	lwz      r4, 0(r5)
	fmuls    f6, f7, f3
	lfs      f5, lbl_80516BF8@sda21(r2)
	lfs      f3, 0x28(r4)
	lfs      f4, 0x28(r5)
	fsubs    f5, f5, f6
	fmuls    f3, f6, f3
	fmadds   f9, f5, f4, f3

lbl_800923C4:
	lis      r4, __float_epsilon@ha
	lfs      f4, lbl_80516C00@sda21(r2)
	lfs      f3, __float_epsilon@l(r4)
	fmuls    f3, f4, f3
	fcmpo    cr0, f7, f3
	cror     2, 0, 2
	beq      lbl_80092420
	lfs      f3, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f7, f3
	cror     2, 0, 2
	bne      lbl_800923F4
	b        lbl_80092414

lbl_800923F4:
	frsqrte  f6, f7
	lfs      f5, lbl_80516C04@sda21(r2)
	lfs      f3, lbl_80516C08@sda21(r2)
	frsp     f6, f6
	fmuls    f4, f6, f6
	fmuls    f5, f5, f6
	fnmsubs  f3, f7, f4, f3
	fmuls    f7, f5, f3

lbl_80092414:
	fmuls    f0, f0, f7
	fmuls    f1, f1, f7
	fmuls    f2, f2, f7

lbl_80092420:
	lfs      f7, 0x14(r3)
	lfs      f8, 0x18(r3)
	fmuls    f3, f2, f7
	lfs      f6, 0x10(r3)
	fmuls    f4, f0, f8
	fmuls    f5, f1, f6
	fmsubs   f1, f1, f8, f3
	fmsubs   f2, f2, f6, f4
	fmsubs   f0, f0, f7, f5
	stfs     f1, 4(r3)
	stfs     f2, 8(r3)
	stfs     f0, 0xc(r3)
	lfs      f0, 4(r3)
	fmuls    f0, f0, f9
	stfs     f0, 4(r3)
	lfs      f0, 8(r3)
	fmuls    f0, f0, f9
	stfs     f0, 8(r3)
	lfs      f0, 0xc(r3)
	fmuls    f0, f0, f9
	stfs     f0, 0xc(r3)
	lwz      r0, 0x7c(r6)
	lwz      r7, 4(r3)
	lwz      r4, 8(r3)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	lwz      r3, 0xc(r3)
	stw      r7, 8(r1)
	stw      r4, 0xc(r1)
	stw      r3, 0x10(r1)
	bne      lbl_8009255C
	lwz      r4, 0(r5)
	lwz      r3, 8(r4)
	rlwinm.  r0, r3, 0x10, 0x19, 0x1c
	srwi     r3, r3, 0x10
	beq      lbl_8009255C
	rlwinm.  r0, r3, 0, 0x1c, 0x1c
	lfs      f2, 0x84(r6)
	lfs      f3, lbl_80516BF8@sda21(r2)
	beq      lbl_800924C8
	lfs      f0, 0x38(r4)
	fcmpo    cr0, f2, f0
	blt      lbl_800924E0

lbl_800924C8:
	rlwinm.  r0, r3, 0, 0x1b, 0x1b
	beq      lbl_800924E8
	lfs      f0, 0x3c(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_800924E8

lbl_800924E0:
	lfs      f3, lbl_80516BFC@sda21(r2)
	b        lbl_80092538

lbl_800924E8:
	rlwinm.  r0, r3, 0, 0x19, 0x19
	beq      lbl_80092514
	lfs      f0, 0x34(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80092514
	lfs      f1, 0x3c(r4)
	lfs      f0, 0xc(r5)
	fsubs    f1, f1, f2
	fmuls    f3, f1, f0
	b        lbl_80092538

lbl_80092514:
	rlwinm.  r0, r3, 0, 0x1a, 0x1a
	beq      lbl_80092538
	lfs      f0, 0x30(r4)
	fcmpo    cr0, f2, f0
	bge      lbl_80092538
	lfs      f1, 0x38(r4)
	lfs      f0, 8(r5)
	fsubs    f1, f2, f1
	fmuls    f3, f1, f0

lbl_80092538:
	lfs      f2, 8(r1)
	lfs      f1, 0xc(r1)
	lfs      f0, 0x10(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 8(r1)
	stfs     f1, 0xc(r1)
	stfs     f0, 0x10(r1)

lbl_8009255C:
	lwz      r3, 0(r5)
	lwz      r0, 8(r3)
	rlwinm   r0, r0, 0x18, 0x1e, 0x1f
	cmpwi    r0, 1
	beq      lbl_800925C0
	bge      lbl_80092580
	cmpwi    r0, 0
	bge      lbl_8009258C
	b        lbl_80092624

lbl_80092580:
	cmpwi    r0, 3
	bge      lbl_80092624
	b        lbl_800925F4

lbl_8009258C:
	lfs      f2, 0x3c(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x3c(r6)
	lfs      f2, 0x40(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x40(r6)
	lfs      f1, 0x44(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x44(r6)
	b        lbl_80092624

lbl_800925C0:
	lfs      f2, 0x30(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x30(r6)
	lfs      f2, 0x34(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x34(r6)
	lfs      f1, 0x38(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x38(r6)
	b        lbl_80092624

lbl_800925F4:
	lfs      f2, 0x48(r6)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x48(r6)
	lfs      f2, 0x4c(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x4c(r6)
	lfs      f1, 0x50(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x50(r6)

lbl_80092624:
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x8009262C
 * @note Size: 0x28C
 */
void JPAFieldConvection::prepare(JPAEmitterWorkData* data, JPAFieldBlock* block)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stw      r31, 0x2c(r1)
	mr       r31, r5
	stw      r30, 0x28(r1)
	mr       r30, r4
	addi     r4, r1, 0x14
	stw      r29, 0x24(r1)
	mr       r29, r3
	addi     r3, r30, 0xa8
	lfs      f2, 0x10(r5)
	lfs      f8, 0x24(r5)
	lfs      f7, 0x20(r5)
	lfs      f3, 0x18(r5)
	fmuls    f1, f2, f8
	lfs      f6, 0x1c(r5)
	addi     r5, r29, 0x10
	lfs      f5, 0x14(r31)
	fmuls    f0, f3, f7
	fmsubs   f4, f3, f6, f1
	fmuls    f1, f5, f6
	fmsubs   f3, f5, f8, f0
	fmuls    f0, f8, f4
	stfs     f4, 0xc(r1)
	fmsubs   f5, f2, f7, f1
	fmuls    f2, f7, f3
	stfs     f3, 8(r1)
	fmuls    f1, f6, f5
	stfs     f5, 0x10(r1)
	fmsubs   f2, f6, f4, f2
	fmsubs   f0, f7, f5, f0
	fmsubs   f1, f8, f3, f1
	stfs     f2, 0x1c(r1)
	stfs     f0, 0x14(r1)
	stfs     f1, 0x18(r1)
	bl       PSMTXMultVecSR
	addi     r3, r30, 0xa8
	addi     r4, r31, 0x1c
	addi     r5, r29, 0x1c
	bl       PSMTXMultVecSR
	addi     r3, r30, 0xa8
	addi     r4, r1, 8
	addi     r5, r29, 0x28
	bl       PSMTXMultVecSR
	lfs      f1, 0x10(r29)
	lis      r3, __float_epsilon@ha
	lfs      f0, 0x14(r29)
	fmuls    f3, f1, f1
	lfs      f4, 0x18(r29)
	fmuls    f2, f0, f0
	lfs      f1, lbl_80516C00@sda21(r2)
	lfs      f0, __float_epsilon@l(r3)
	fmuls    f4, f4, f4
	fadds    f2, f3, f2
	fmuls    f0, f1, f0
	fadds    f4, f4, f2
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	beq      lbl_80092774
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_80092730
	b        lbl_80092750

lbl_80092730:
	frsqrte  f3, f4
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f3, f3
	fmuls    f1, f3, f3
	fmuls    f2, f2, f3
	fnmsubs  f0, f4, f1, f0
	fmuls    f4, f2, f0

lbl_80092750:
	lfs      f0, 0x10(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x10(r29)
	lfs      f0, 0x14(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x14(r29)
	lfs      f0, 0x18(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x18(r29)

lbl_80092774:
	lfs      f1, 0x1c(r29)
	lis      r3, __float_epsilon@ha
	lfs      f0, 0x20(r29)
	fmuls    f3, f1, f1
	lfs      f4, 0x24(r29)
	fmuls    f2, f0, f0
	lfs      f1, lbl_80516C00@sda21(r2)
	lfs      f0, __float_epsilon@l(r3)
	fmuls    f4, f4, f4
	fadds    f2, f3, f2
	fmuls    f0, f1, f0
	fadds    f4, f4, f2
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	beq      lbl_80092808
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_800927C4
	b        lbl_800927E4

lbl_800927C4:
	frsqrte  f3, f4
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f3, f3
	fmuls    f1, f3, f3
	fmuls    f2, f2, f3
	fnmsubs  f0, f4, f1, f0
	fmuls    f4, f2, f0

lbl_800927E4:
	lfs      f0, 0x1c(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x1c(r29)
	lfs      f0, 0x20(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x20(r29)
	lfs      f0, 0x24(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x24(r29)

lbl_80092808:
	lfs      f1, 0x28(r29)
	lis      r3, __float_epsilon@ha
	lfs      f0, 0x2c(r29)
	fmuls    f3, f1, f1
	lfs      f4, 0x30(r29)
	fmuls    f2, f0, f0
	lfs      f1, lbl_80516C00@sda21(r2)
	lfs      f0, __float_epsilon@l(r3)
	fmuls    f4, f4, f4
	fadds    f2, f3, f2
	fmuls    f0, f1, f0
	fadds    f4, f4, f2
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	beq      lbl_8009289C
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_80092858
	b        lbl_80092878

lbl_80092858:
	frsqrte  f3, f4
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f3, f3
	fmuls    f1, f3, f3
	fmuls    f2, f2, f3
	fnmsubs  f0, f4, f1, f0
	fmuls    f4, f2, f0

lbl_80092878:
	lfs      f0, 0x28(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x28(r29)
	lfs      f0, 0x2c(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x2c(r29)
	lfs      f0, 0x30(r29)
	fmuls    f0, f0, f4
	stfs     f0, 0x30(r29)

lbl_8009289C:
	lwz      r0, 0x34(r1)
	lwz      r31, 0x2c(r1)
	lwz      r30, 0x28(r1)
	lwz      r29, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x800928B8
 * @note Size: 0x39C
 */
void JPAFieldConvection::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x20(r1)
	  lis       r4, 0x8051
	  lfs       f3, 0x14(r3)
	  lfs       f0, 0x10(r6)
	  lfs       f7, 0x2C(r3)
	  fmuls     f1, f3, f0
	  lfs       f5, 0x10(r3)
	  lfs       f2, 0xC(r6)
	  fmuls     f0, f7, f0
	  lfs       f10, 0x28(r3)
	  fmadds    f1, f5, f2, f1
	  fmadds    f0, f10, f2, f0
	  lfs       f9, 0x18(r3)
	  lfs       f2, 0x14(r6)
	  lfs       f11, 0x30(r3)
	  fmadds    f4, f9, f2, f1
	  lfs       f1, 0x48DC(r4)
	  fmadds    f6, f11, f2, f0
	  lfs       f2, -0x7760(r2)
	  lwz       r7, 0x0(r5)
	  fmuls     f8, f3, f4
	  fmuls     f3, f7, f6
	  lfs       f7, 0x2C(r7)
	  fmuls     f0, f5, f4
	  fmuls     f5, f10, f6
	  fadds     f8, f8, f3
	  fmuls     f9, f9, f4
	  fmuls     f4, f11, f6
	  fadds     f0, f0, f5
	  fmuls     f3, f8, f8
	  fmuls     f1, f2, f1
	  fadds     f9, f9, f4
	  fmadds    f2, f0, f0, f3
	  fmadds    f5, f9, f9, f2
	  fcmpo     cr0, f5, f1
	  cror      2, 0, 0x2
	  bne-      .loc_0xA4
	  lfs       f9, -0x7764(r2)
	  fmr       f8, f9
	  fmr       f0, f9
	  b         .loc_0xE8

	.loc_0xA4:
	  lfs       f1, -0x7764(r2)
	  fcmpo     cr0, f5, f1
	  cror      2, 0, 0x2
	  bne-      .loc_0xB8
	  b         .loc_0xD8

	.loc_0xB8:
	  fsqrte    f4, f5
	  lfs       f3, -0x775C(r2)
	  lfs       f1, -0x7758(r2)
	  frsp      f4, f4
	  fmuls     f2, f4, f4
	  fmuls     f3, f3, f4
	  fnmsubs   f1, f5, f2, f1
	  fmuls     f5, f3, f1

	.loc_0xD8:
	  fmuls     f1, f5, f7
	  fmuls     f0, f0, f1
	  fmuls     f8, f8, f1
	  fmuls     f9, f9, f1

	.loc_0xE8:
	  lfs       f12, 0x20(r3)
	  lis       r4, 0x8051
	  lfs       f11, 0x24(r3)
	  fmuls     f1, f12, f0
	  lfs       f6, 0x1C(r3)
	  lfs       f5, 0x10(r6)
	  fmuls     f2, f11, f8
	  fmuls     f3, f6, f9
	  lfs       f4, 0x14(r6)
	  fmsubs    f7, f6, f8, f1
	  lfs       f1, -0x7760(r2)
	  fsubs     f10, f5, f8
	  lfs       f5, 0xC(r6)
	  fsubs     f8, f4, f9
	  fmsubs    f4, f12, f9, f2
	  fmsubs    f6, f11, f0, f3
	  fmuls     f3, f7, f10
	  fsubs     f5, f5, f0
	  fmuls     f2, f4, f8
	  fmsubs    f3, f6, f8, f3
	  fmuls     f0, f6, f5
	  fmsubs    f2, f7, f5, f2
	  stfs      f3, 0x4(r3)
	  fmsubs    f0, f4, f10, f0
	  stfs      f2, 0x8(r3)
	  stfs      f0, 0xC(r3)
	  lfs       f2, 0x4(r3)
	  lfs       f4, 0xC(r3)
	  lfs       f0, 0x8(r3)
	  fmuls     f3, f2, f2
	  fmuls     f4, f4, f4
	  lfs       f5, 0x28(r5)
	  fmuls     f2, f0, f0
	  lfs       f0, 0x48DC(r4)
	  fmuls     f0, f1, f0
	  fadds     f1, f3, f2
	  fadds     f4, f4, f1
	  fcmpo     cr0, f4, f0
	  cror      2, 0, 0x2
	  beq-      .loc_0x1E4
	  lfs       f0, -0x7764(r2)
	  fcmpo     cr0, f4, f0
	  cror      2, 0, 0x2
	  bne-      .loc_0x19C
	  b         .loc_0x1BC

	.loc_0x19C:
	  fsqrte    f3, f4
	  lfs       f2, -0x775C(r2)
	  lfs       f0, -0x7758(r2)
	  frsp      f3, f3
	  fmuls     f1, f3, f3
	  fmuls     f2, f2, f3
	  fnmsubs   f0, f4, f1, f0
	  fmuls     f4, f2, f0

	.loc_0x1BC:
	  fmuls     f1, f4, f5
	  lfs       f0, 0x4(r3)
	  fmuls     f0, f0, f1
	  stfs      f0, 0x4(r3)
	  lfs       f0, 0x8(r3)
	  fmuls     f0, f0, f1
	  stfs      f0, 0x8(r3)
	  lfs       f0, 0xC(r3)
	  fmuls     f0, f0, f1
	  stfs      f0, 0xC(r3)

	.loc_0x1E4:
	  lwz       r0, 0x7C(r6)
	  lwz       r7, 0x4(r3)
	  lwz       r4, 0x8(r3)
	  rlwinm.   r0,r0,0,29,29
	  lwz       r3, 0xC(r3)
	  stw       r7, 0x8(r1)
	  stw       r4, 0xC(r1)
	  stw       r3, 0x10(r1)
	  bne-      .loc_0x2CC
	  lwz       r4, 0x0(r5)
	  lwz       r3, 0x8(r4)
	  rlwinm.   r0,r3,16,25,28
	  rlwinm    r3,r3,16,16,31
	  beq-      .loc_0x2CC
	  rlwinm.   r0,r3,0,28,28
	  lfs       f2, 0x84(r6)
	  lfs       f3, -0x7768(r2)
	  beq-      .loc_0x238
	  lfs       f0, 0x38(r4)
	  fcmpo     cr0, f2, f0
	  blt-      .loc_0x250

	.loc_0x238:
	  rlwinm.   r0,r3,0,27,27
	  beq-      .loc_0x258
	  lfs       f0, 0x3C(r4)
	  fcmpo     cr0, f2, f0
	  cror      2, 0x1, 0x2
	  bne-      .loc_0x258

	.loc_0x250:
	  lfs       f3, -0x7764(r2)
	  b         .loc_0x2A8

	.loc_0x258:
	  rlwinm.   r0,r3,0,25,25
	  beq-      .loc_0x284
	  lfs       f0, 0x34(r4)
	  fcmpo     cr0, f2, f0
	  cror      2, 0x1, 0x2
	  bne-      .loc_0x284
	  lfs       f1, 0x3C(r4)
	  lfs       f0, 0xC(r5)
	  fsubs     f1, f1, f2
	  fmuls     f3, f1, f0
	  b         .loc_0x2A8

	.loc_0x284:
	  rlwinm.   r0,r3,0,26,26
	  beq-      .loc_0x2A8
	  lfs       f0, 0x30(r4)
	  fcmpo     cr0, f2, f0
	  bge-      .loc_0x2A8
	  lfs       f1, 0x38(r4)
	  lfs       f0, 0x8(r5)
	  fsubs     f1, f2, f1
	  fmuls     f3, f1, f0

	.loc_0x2A8:
	  lfs       f2, 0x8(r1)
	  lfs       f1, 0xC(r1)
	  lfs       f0, 0x10(r1)
	  fmuls     f2, f2, f3
	  fmuls     f1, f1, f3
	  fmuls     f0, f0, f3
	  stfs      f2, 0x8(r1)
	  stfs      f1, 0xC(r1)
	  stfs      f0, 0x10(r1)

	.loc_0x2CC:
	  lwz       r3, 0x0(r5)
	  lwz       r0, 0x8(r3)
	  rlwinm    r0,r0,24,30,31
	  cmpwi     r0, 0x1
	  beq-      .loc_0x330
	  bge-      .loc_0x2F0
	  cmpwi     r0, 0
	  bge-      .loc_0x2FC
	  b         .loc_0x394

	.loc_0x2F0:
	  cmpwi     r0, 0x3
	  bge-      .loc_0x394
	  b         .loc_0x364

	.loc_0x2FC:
	  lfs       f2, 0x3C(r6)
	  lfs       f0, 0x8(r1)
	  lfs       f1, 0xC(r1)
	  fadds     f2, f2, f0
	  lfs       f0, 0x10(r1)
	  stfs      f2, 0x3C(r6)
	  lfs       f2, 0x40(r6)
	  fadds     f1, f2, f1
	  stfs      f1, 0x40(r6)
	  lfs       f1, 0x44(r6)
	  fadds     f0, f1, f0
	  stfs      f0, 0x44(r6)
	  b         .loc_0x394

	.loc_0x330:
	  lfs       f2, 0x30(r6)
	  lfs       f0, 0x8(r1)
	  lfs       f1, 0xC(r1)
	  fadds     f2, f2, f0
	  lfs       f0, 0x10(r1)
	  stfs      f2, 0x30(r6)
	  lfs       f2, 0x34(r6)
	  fadds     f1, f2, f1
	  stfs      f1, 0x34(r6)
	  lfs       f1, 0x38(r6)
	  fadds     f0, f1, f0
	  stfs      f0, 0x38(r6)
	  b         .loc_0x394

	.loc_0x364:
	  lfs       f2, 0x48(r6)
	  lfs       f0, 0x8(r1)
	  lfs       f1, 0xC(r1)
	  fadds     f2, f2, f0
	  lfs       f0, 0x10(r1)
	  stfs      f2, 0x48(r6)
	  lfs       f2, 0x4C(r6)
	  fadds     f1, f2, f1
	  stfs      f1, 0x4C(r6)
	  lfs       f1, 0x50(r6)
	  fadds     f0, f1, f0
	  stfs      f0, 0x50(r6)

	.loc_0x394:
	  addi      r1, r1, 0x20
	  blr
	*/
}

/**
 * @note Address: 0x80092C54
 * @note Size: 0x2B0
 */
void JPAFieldRandom::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	stwu     r1, -0x20(r1)
	lha      r8, 0x80(r6)
	extsh.   r0, r8
	beq      lbl_80092C84
	lwz      r7, 0(r5)
	lbz      r7, 0x40(r7)
	cmplwi   r7, 0
	beq      lbl_80092EFC
	divw     r0, r8, r7
	mullw    r0, r0, r7
	subf.    r0, r0, r8
	bne      lbl_80092EFC

lbl_80092C84:
	lwz      r8, 0(r4)
	lis      r4, 0x0019660D@ha
	addi     r7, r4, 0x0019660D@l
	lfs      f3, lbl_80516BF8@sda21(r2)
	lwz      r0, 0xc4(r8)
	lfs      f1, lbl_80516C04@sda21(r2)
	mullw    r4, r0, r7
	addis    r4, r4, 0x3c6f
	addi     r0, r4, -3233
	stw      r0, 0xc4(r8)
	srwi     r0, r0, 9
	oris     r4, r0, 0x3f80
	lwz      r0, 0xc4(r8)
	stw      r4, 0x10(r1)
	mullw    r4, r0, r7
	lfs      f0, 0x10(r1)
	fsubs    f0, f0, f3
	addis    r4, r4, 0x3c6f
	addi     r0, r4, -3233
	fsubs    f2, f0, f1
	stw      r0, 0xc4(r8)
	srwi     r0, r0, 9
	oris     r4, r0, 0x3f80
	lwz      r0, 0xc4(r8)
	stw      r4, 0xc(r1)
	mullw    r4, r0, r7
	lfs      f0, 0xc(r1)
	fsubs    f0, f0, f3
	addis    r4, r4, 0x3c6f
	addi     r4, r4, -3233
	fsubs    f4, f0, f1
	srwi     r0, r4, 9
	stw      r4, 0xc4(r8)
	oris     r0, r0, 0x3f80
	stw      r0, 8(r1)
	lfs      f0, 8(r1)
	fsubs    f0, f0, f3
	fsubs    f0, f0, f1
	stfs     f0, 4(r3)
	stfs     f4, 8(r3)
	stfs     f2, 0xc(r3)
	lfs      f1, 0x28(r5)
	lfs      f0, 4(r3)
	fmuls    f0, f0, f1
	stfs     f0, 4(r3)
	lfs      f0, 8(r3)
	fmuls    f0, f0, f1
	stfs     f0, 8(r3)
	lfs      f0, 0xc(r3)
	fmuls    f0, f0, f1
	stfs     f0, 0xc(r3)
	lwz      r0, 0x7c(r6)
	lwz      r7, 4(r3)
	lwz      r4, 8(r3)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	lwz      r3, 0xc(r3)
	stw      r7, 0x14(r1)
	stw      r4, 0x18(r1)
	stw      r3, 0x1c(r1)
	bne      lbl_80092E34
	lwz      r4, 0(r5)
	lwz      r3, 8(r4)
	rlwinm.  r0, r3, 0x10, 0x19, 0x1c
	srwi     r3, r3, 0x10
	beq      lbl_80092E34
	rlwinm.  r0, r3, 0, 0x1c, 0x1c
	lfs      f2, 0x84(r6)
	beq      lbl_80092DA0
	lfs      f0, 0x38(r4)
	fcmpo    cr0, f2, f0
	blt      lbl_80092DB8

lbl_80092DA0:
	rlwinm.  r0, r3, 0, 0x1b, 0x1b
	beq      lbl_80092DC0
	lfs      f0, 0x3c(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80092DC0

lbl_80092DB8:
	lfs      f3, lbl_80516BFC@sda21(r2)
	b        lbl_80092E10

lbl_80092DC0:
	rlwinm.  r0, r3, 0, 0x19, 0x19
	beq      lbl_80092DEC
	lfs      f0, 0x34(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80092DEC
	lfs      f1, 0x3c(r4)
	lfs      f0, 0xc(r5)
	fsubs    f1, f1, f2
	fmuls    f3, f1, f0
	b        lbl_80092E10

lbl_80092DEC:
	rlwinm.  r0, r3, 0, 0x1a, 0x1a
	beq      lbl_80092E10
	lfs      f0, 0x30(r4)
	fcmpo    cr0, f2, f0
	bge      lbl_80092E10
	lfs      f1, 0x38(r4)
	lfs      f0, 8(r5)
	fsubs    f1, f2, f1
	fmuls    f3, f1, f0

lbl_80092E10:
	lfs      f2, 0x14(r1)
	lfs      f1, 0x18(r1)
	lfs      f0, 0x1c(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 0x14(r1)
	stfs     f1, 0x18(r1)
	stfs     f0, 0x1c(r1)

lbl_80092E34:
	lwz      r3, 0(r5)
	lwz      r0, 8(r3)
	rlwinm   r0, r0, 0x18, 0x1e, 0x1f
	cmpwi    r0, 1
	beq      lbl_80092E98
	bge      lbl_80092E58
	cmpwi    r0, 0
	bge      lbl_80092E64
	b        lbl_80092EFC

lbl_80092E58:
	cmpwi    r0, 3
	bge      lbl_80092EFC
	b        lbl_80092ECC

lbl_80092E64:
	lfs      f2, 0x3c(r6)
	lfs      f0, 0x14(r1)
	lfs      f1, 0x18(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x1c(r1)
	stfs     f2, 0x3c(r6)
	lfs      f2, 0x40(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x40(r6)
	lfs      f1, 0x44(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x44(r6)
	b        lbl_80092EFC

lbl_80092E98:
	lfs      f2, 0x30(r6)
	lfs      f0, 0x14(r1)
	lfs      f1, 0x18(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x1c(r1)
	stfs     f2, 0x30(r6)
	lfs      f2, 0x34(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x34(r6)
	lfs      f1, 0x38(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x38(r6)
	b        lbl_80092EFC

lbl_80092ECC:
	lfs      f2, 0x48(r6)
	lfs      f0, 0x14(r1)
	lfs      f1, 0x18(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x1c(r1)
	stfs     f2, 0x48(r6)
	lfs      f2, 0x4c(r6)
	fadds    f1, f2, f1
	stfs     f1, 0x4c(r6)
	lfs      f1, 0x50(r6)
	fadds    f0, f1, f0
	stfs     f0, 0x50(r6)

lbl_80092EFC:
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x80092F04
 * @note Size: 0xD8
 */
void JPAFieldDrag::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	lwz      r0, 0x7c(r6)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	bne      lbl_80092FC8
	lwz      r4, 0(r5)
	lfs      f2, 0x84(r6)
	lwz      r3, 8(r4)
	lfs      f3, lbl_80516BF8@sda21(r2)
	rlwinm.  r0, r3, 0x10, 0x1c, 0x1c
	srwi     r3, r3, 0x10
	beq      lbl_80092F38
	lfs      f0, 0x38(r4)
	fcmpo    cr0, f2, f0
	blt      lbl_80092F50

lbl_80092F38:
	rlwinm.  r0, r3, 0, 0x1b, 0x1b
	beq      lbl_80092F58
	lfs      f0, 0x3c(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80092F58

lbl_80092F50:
	lfs      f3, lbl_80516BFC@sda21(r2)
	b        lbl_80092FA8

lbl_80092F58:
	rlwinm.  r0, r3, 0, 0x19, 0x19
	beq      lbl_80092F84
	lfs      f0, 0x34(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80092F84
	lfs      f1, 0x3c(r4)
	lfs      f0, 0xc(r5)
	fsubs    f1, f1, f2
	fmuls    f3, f1, f0
	b        lbl_80092FA8

lbl_80092F84:
	rlwinm.  r0, r3, 0, 0x1a, 0x1a
	beq      lbl_80092FA8
	lfs      f0, 0x30(r4)
	fcmpo    cr0, f2, f0
	bge      lbl_80092FA8
	lfs      f1, 0x38(r4)
	lfs      f0, 8(r5)
	fsubs    f1, f2, f1
	fmuls    f3, f1, f0

lbl_80092FA8:
	lfs      f1, lbl_80516BF8@sda21(r2)
	lfs      f0, 0x28(r5)
	lfs      f2, 0x74(r6)
	fsubs    f0, f1, f0
	fnmsubs  f0, f3, f0, f1
	fmuls    f0, f2, f0
	stfs     f0, 0x74(r6)
	blr

lbl_80092FC8:
	lfs      f1, 0x74(r6)
	lfs      f0, 0x28(r5)
	fmuls    f0, f1, f0
	stfs     f0, 0x74(r6)
	blr
	*/
}

/**
 * @note Address: 0x80092FDC
 * @note Size: 0x130
 */
void JPAFieldSpin::prepare(JPAEmitterWorkData* data, JPAFieldBlock* block)
{
	Vec v1;
	PSMTXMultVecSR(data->mGlobalRot, (Vec*)&block->_1C, &v1);
	doTheThing(v1);
	Mtx v2;
	PSMTXRotAxisRad(v2, &v1, block->_28);

	RawVec v3;
	getDisjointedVecFromMtx(v2, v3, 0);
	setContiguousVecOfMtx33(_10, v3, 0);
	getDisjointedVecFromMtx(v2, v3, 1);
	setContiguousVecOfMtx33(_10, v3, 1);
	getDisjointedVecFromMtx(v2, v3, 2);
	setContiguousVecOfMtx33(_10, v3, 2);
	// _10[0][2] = v2[2][0];
	// _10[0][1] = v2[1][0];
	// _10[0][0] = v2[0][0];
	// _10[1][0] = v2[0][1];
	// _10[1][1] = v2[1][1];
	// _10[1][2] = v2[2][1];
	// _10[2][0] = v2[0][2];
	// _10[2][1] = v2[1][2];
	// _10[2][2] = v2[2][2];
	/*
	stwu     r1, -0x50(r1)
	mflr     r0
	stw      r0, 0x54(r1)
	stw      r31, 0x4c(r1)
	mr       r31, r5
	addi     r5, r1, 8
	stw      r30, 0x48(r1)
	mr       r30, r3
	addi     r3, r4, 0xa8
	addi     r4, r31, 0x1c
	bl       PSMTXMultVecSR
	lfs      f1, 8(r1)
	lis      r3, __float_epsilon@ha
	lfs      f0, 0xc(r1)
	fmuls    f3, f1, f1
	lfs      f4, 0x10(r1)
	fmuls    f2, f0, f0
	lfs      f1, lbl_80516C00@sda21(r2)
	lfs      f0, __float_epsilon@l(r3)
	fmuls    f4, f4, f4
	fadds    f2, f3, f2
	fmuls    f0, f1, f0
	fadds    f4, f4, f2
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	beq      lbl_8009309C
	lfs      f0, lbl_80516BFC@sda21(r2)
	fcmpo    cr0, f4, f0
	cror     2, 0, 2
	bne      lbl_80093058
	b        lbl_80093078

lbl_80093058:
	frsqrte  f3, f4
	lfs      f2, lbl_80516C04@sda21(r2)
	lfs      f0, lbl_80516C08@sda21(r2)
	frsp     f3, f3
	fmuls    f1, f3, f3
	fmuls    f2, f2, f3
	fnmsubs  f0, f4, f1, f0
	fmuls    f4, f2, f0

lbl_80093078:
	lfs      f2, 8(r1)
	lfs      f1, 0xc(r1)
	lfs      f0, 0x10(r1)
	fmuls    f2, f2, f4
	fmuls    f1, f1, f4
	fmuls    f0, f0, f4
	stfs     f2, 8(r1)
	stfs     f1, 0xc(r1)
	stfs     f0, 0x10(r1)

lbl_8009309C:
	lfs      f1, 0x28(r31)
	addi     r3, r1, 0x14
	addi     r4, r1, 8
	bl       PSMTXRotAxisRad
	lfs      f2, 0x34(r1)
	lfs      f1, 0x24(r1)
	lfs      f0, 0x14(r1)
	stfs     f0, 0x10(r30)
	stfs     f1, 0x14(r30)
	stfs     f2, 0x18(r30)
	lfs      f2, 0x38(r1)
	lfs      f1, 0x28(r1)
	lfs      f0, 0x18(r1)
	stfs     f0, 0x1c(r30)
	stfs     f1, 0x20(r30)
	stfs     f2, 0x24(r30)
	lfs      f2, 0x3c(r1)
	lfs      f1, 0x2c(r1)
	lfs      f0, 0x1c(r1)
	stfs     f0, 0x28(r30)
	stfs     f1, 0x2c(r30)
	stfs     f2, 0x30(r30)
	lwz      r31, 0x4c(r1)
	lwz      r30, 0x48(r1)
	lwz      r0, 0x54(r1)
	mtlr     r0
	addi     r1, r1, 0x50
	blr
	*/
}

/**
 * @note Address: 0x8009310C
 * @note Size: 0x288
 */
void JPAFieldSpin::calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*)
{
	/*
	stwu     r1, -0x60(r1)
	mflr     r0
	lfs      f0, lbl_80516BFC@sda21(r2)
	stw      r0, 0x64(r1)
	stw      r31, 0x5c(r1)
	mr       r31, r6
	addi     r4, r31, 0xc
	stw      r30, 0x58(r1)
	mr       r30, r5
	addi     r5, r1, 0x14
	stw      r29, 0x54(r1)
	mr       r29, r3
	lfs      f1, 0x10(r3)
	addi     r3, r1, 0x20
	stfs     f1, 0x20(r1)
	lfs      f1, 0x14(r29)
	stfs     f1, 0x30(r1)
	lfs      f1, 0x18(r29)
	stfs     f1, 0x40(r1)
	lfs      f1, 0x1c(r29)
	stfs     f1, 0x24(r1)
	lfs      f1, 0x20(r29)
	stfs     f1, 0x34(r1)
	lfs      f1, 0x24(r29)
	stfs     f1, 0x44(r1)
	lfs      f1, 0x28(r29)
	stfs     f1, 0x28(r1)
	lfs      f1, 0x2c(r29)
	stfs     f1, 0x38(r1)
	lfs      f1, 0x30(r29)
	stfs     f1, 0x48(r1)
	stfs     f0, 0x4c(r1)
	stfs     f0, 0x3c(r1)
	stfs     f0, 0x2c(r1)
	bl       PSMTXMultVecSR
	lfs      f1, 0x14(r1)
	lfs      f0, 0xc(r31)
	lfs      f3, 0x18(r1)
	lfs      f2, 0x10(r31)
	fsubs    f0, f1, f0
	lfs      f4, 0x1c(r1)
	lfs      f1, 0x14(r31)
	fsubs    f2, f3, f2
	stfs     f0, 4(r29)
	fsubs    f0, f4, f1
	stfs     f2, 8(r29)
	stfs     f0, 0xc(r29)
	lwz      r0, 0x7c(r31)
	lwz      r5, 4(r29)
	lwz      r4, 8(r29)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	lwz      r3, 0xc(r29)
	stw      r5, 8(r1)
	stw      r4, 0xc(r1)
	stw      r3, 0x10(r1)
	bne      lbl_800932B0
	lwz      r4, 0(r30)
	lwz      r3, 8(r4)
	rlwinm.  r0, r3, 0x10, 0x19, 0x1c
	srwi     r3, r3, 0x10
	beq      lbl_800932B0
	rlwinm.  r0, r3, 0, 0x1c, 0x1c
	lfs      f2, 0x84(r31)
	lfs      f3, lbl_80516BF8@sda21(r2)
	beq      lbl_8009321C
	lfs      f0, 0x38(r4)
	fcmpo    cr0, f2, f0
	blt      lbl_80093234

lbl_8009321C:
	rlwinm.  r0, r3, 0, 0x1b, 0x1b
	beq      lbl_8009323C
	lfs      f0, 0x3c(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_8009323C

lbl_80093234:
	lfs      f3, lbl_80516BFC@sda21(r2)
	b        lbl_8009328C

lbl_8009323C:
	rlwinm.  r0, r3, 0, 0x19, 0x19
	beq      lbl_80093268
	lfs      f0, 0x34(r4)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_80093268
	lfs      f1, 0x3c(r4)
	lfs      f0, 0xc(r30)
	fsubs    f1, f1, f2
	fmuls    f3, f1, f0
	b        lbl_8009328C

lbl_80093268:
	rlwinm.  r0, r3, 0, 0x1a, 0x1a
	beq      lbl_8009328C
	lfs      f0, 0x30(r4)
	fcmpo    cr0, f2, f0
	bge      lbl_8009328C
	lfs      f1, 0x38(r4)
	lfs      f0, 8(r30)
	fsubs    f1, f2, f1
	fmuls    f3, f1, f0

lbl_8009328C:
	lfs      f2, 8(r1)
	lfs      f1, 0xc(r1)
	lfs      f0, 0x10(r1)
	fmuls    f2, f2, f3
	fmuls    f1, f1, f3
	fmuls    f0, f0, f3
	stfs     f2, 8(r1)
	stfs     f1, 0xc(r1)
	stfs     f0, 0x10(r1)

lbl_800932B0:
	lwz      r3, 0(r30)
	lwz      r0, 8(r3)
	rlwinm   r0, r0, 0x18, 0x1e, 0x1f
	cmpwi    r0, 1
	beq      lbl_80093314
	bge      lbl_800932D4
	cmpwi    r0, 0
	bge      lbl_800932E0
	b        lbl_80093378

lbl_800932D4:
	cmpwi    r0, 3
	bge      lbl_80093378
	b        lbl_80093348

lbl_800932E0:
	lfs      f2, 0x3c(r31)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x3c(r31)
	lfs      f2, 0x40(r31)
	fadds    f1, f2, f1
	stfs     f1, 0x40(r31)
	lfs      f1, 0x44(r31)
	fadds    f0, f1, f0
	stfs     f0, 0x44(r31)
	b        lbl_80093378

lbl_80093314:
	lfs      f2, 0x30(r31)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x30(r31)
	lfs      f2, 0x34(r31)
	fadds    f1, f2, f1
	stfs     f1, 0x34(r31)
	lfs      f1, 0x38(r31)
	fadds    f0, f1, f0
	stfs     f0, 0x38(r31)
	b        lbl_80093378

lbl_80093348:
	lfs      f2, 0x48(r31)
	lfs      f0, 8(r1)
	lfs      f1, 0xc(r1)
	fadds    f2, f2, f0
	lfs      f0, 0x10(r1)
	stfs     f2, 0x48(r31)
	lfs      f2, 0x4c(r31)
	fadds    f1, f2, f1
	stfs     f1, 0x4c(r31)
	lfs      f1, 0x50(r31)
	fadds    f0, f1, f0
	stfs     f0, 0x50(r31)

lbl_80093378:
	lwz      r0, 0x64(r1)
	lwz      r31, 0x5c(r1)
	lwz      r30, 0x58(r1)
	lwz      r29, 0x54(r1)
	mtlr     r0
	addi     r1, r1, 0x60
	blr
	*/
}

/**
 * @note Address: 0x80093394
 * @note Size: 0x38
 */
JPAFieldBlock::JPAFieldBlock(const u8* data, JKRHeap* heap)
{
	mData = data;
	init(heap);
}

/**
 * @note Address: N/A
 * @note Size: 0x114
 */
void JPAFieldBlock::init_jpa(const u8*, JKRHeap*)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800933CC
 * @note Size: 0x2EC
 */
void JPAFieldBlock::init(JKRHeap*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	lfs      f0, lbl_80516BFC@sda21(r2)
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	lwz      r3, 0(r3)
	lfs      f2, 0x30(r3)
	lfs      f1, 0x38(r3)
	fsubs    f1, f2, f1
	stfs     f1, 8(r31)
	lfs      f1, 8(r31)
	fcmpu    cr0, f0, f1
	bne      lbl_80093410
	lfs      f0, lbl_80516BF8@sda21(r2)
	stfs     f0, 8(r31)
	b        lbl_8009341C

lbl_80093410:
	lfs      f0, lbl_80516BF8@sda21(r2)
	fdivs    f0, f0, f1
	stfs     f0, 8(r31)

lbl_8009341C:
	lwz      r3, 0(r31)
	lfs      f0, lbl_80516BFC@sda21(r2)
	lfs      f2, 0x3c(r3)
	lfs      f1, 0x34(r3)
	fsubs    f1, f2, f1
	stfs     f1, 0xc(r31)
	lfs      f1, 0xc(r31)
	fcmpu    cr0, f0, f1
	bne      lbl_8009344C
	lfs      f0, lbl_80516BF8@sda21(r2)
	stfs     f0, 0xc(r31)
	b        lbl_80093458

lbl_8009344C:
	lfs      f0, lbl_80516BF8@sda21(r2)
	fdivs    f0, f0, f1
	stfs     f0, 0xc(r31)

lbl_80093458:
	lwz      r3, 0(r31)
	lfs      f0, 0xc(r3)
	stfs     f0, 0x10(r31)
	lfs      f0, 0x10(r3)
	stfs     f0, 0x14(r31)
	lfs      f0, 0x14(r3)
	stfs     f0, 0x18(r31)
	lwz      r3, 0(r31)
	lfs      f0, 0x18(r3)
	stfs     f0, 0x1c(r31)
	lfs      f0, 0x1c(r3)
	stfs     f0, 0x20(r31)
	lfs      f0, 0x20(r3)
	stfs     f0, 0x24(r31)
	lwz      r3, 0(r31)
	lfs      f0, 0x24(r3)
	stfs     f0, 0x28(r31)
	lwz      r3, 0(r31)
	lwz      r0, 8(r3)
	clrlwi   r0, r0, 0x1c
	cmplwi   r0, 8
	bgt      lbl_8009369C
	lis      r3, lbl_804A3268@ha
	slwi     r0, r0, 2
	addi     r3, r3, lbl_804A3268@l
	lwzx     r0, r3, r0
	mtctr    r0
	bctr
	.global  lbl_800934C8

lbl_800934C8:
	li       r3, 0x10
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_800934F4
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__15JPAFieldGravity@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__15JPAFieldGravity@l
	stw      r0, 0(r3)

lbl_800934F4:
	stw      r3, 4(r31)
	b        lbl_800936A4
	.global  lbl_800934FC

lbl_800934FC:
	li       r3, 0x10
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_80093528
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__11JPAFieldAir@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__11JPAFieldAir@l
	stw      r0, 0(r3)

lbl_80093528:
	stw      r3, 4(r31)
	b        lbl_800936A4
	.global  lbl_80093530

lbl_80093530:
	li       r3, 0x1c
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_8009355C
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__14JPAFieldMagnet@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__14JPAFieldMagnet@l
	stw      r0, 0(r3)

lbl_8009355C:
	stw      r3, 4(r31)
	b        lbl_800936A4
	.global  lbl_80093564

lbl_80093564:
	li       r3, 0x20
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_80093590
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__14JPAFieldNewton@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__14JPAFieldNewton@l
	stw      r0, 0(r3)

lbl_80093590:
	stw      r3, 4(r31)
	b        lbl_800936A4
	.global  lbl_80093598

lbl_80093598:
	li       r3, 0x24
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_800935C4
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__14JPAFieldVortex@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__14JPAFieldVortex@l
	stw      r0, 0(r3)

lbl_800935C4:
	stw      r3, 4(r31)
	b        lbl_800936A4
	.global  lbl_800935CC

lbl_800935CC:
	li       r3, 0x10
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_800935F8
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__14JPAFieldRandom@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__14JPAFieldRandom@l
	stw      r0, 0(r3)

lbl_800935F8:
	stw      r3, 4(r31)
	b        lbl_800936A4
	.global  lbl_80093600

lbl_80093600:
	li       r3, 0x10
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_8009362C
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__12JPAFieldDrag@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__12JPAFieldDrag@l
	stw      r0, 0(r3)

lbl_8009362C:
	stw      r3, 4(r31)
	b        lbl_800936A4
	.global  lbl_80093634

lbl_80093634:
	li       r3, 0x34
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_80093660
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__18JPAFieldConvection@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__18JPAFieldConvection@l
	stw      r0, 0(r3)

lbl_80093660:
	stw      r3, 4(r31)
	b        lbl_800936A4
	.global  lbl_80093668

lbl_80093668:
	li       r3, 0x34
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	cmplwi   r3, 0
	beq      lbl_80093694
	lis      r5, __vt__12JPAFieldBase@ha
	lis      r4, __vt__12JPAFieldSpin@ha
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r3)
	addi     r0, r4, __vt__12JPAFieldSpin@l
	stw      r0, 0(r3)

lbl_80093694:
	stw      r3, 4(r31)
	b        lbl_800936A4

lbl_8009369C:
	li       r0, 0
	stw      r0, 4(r31)

lbl_800936A4:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800936B8
 * @note Size: 0x48
 */
JPAFieldBase::~JPAFieldBase()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_800936E8
	lis      r5, __vt__12JPAFieldBase@ha
	extsh.   r0, r4
	addi     r0, r5, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)
	ble      lbl_800936E8
	bl       __dl__FPv

lbl_800936E8:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x80093700
 * @note Size: 0x4
 */
void JPAFieldBase::prepare(JPAEmitterWorkData* data, JPAFieldBlock* block) { }

/**
 * @note Address: 0x80093704
 * @note Size: 0x5C
 */
JPAFieldSpin::~JPAFieldSpin()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_80093748
	lis      r3, __vt__12JPAFieldSpin@ha
	addi     r0, r3, __vt__12JPAFieldSpin@l
	stw      r0, 0(r31)
	beq      lbl_80093738
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_80093738:
	extsh.   r0, r4
	ble      lbl_80093748
	mr       r3, r31
	bl       __dl__FPv

lbl_80093748:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x80093760
 * @note Size: 0x5C
 */
JPAFieldDrag::~JPAFieldDrag()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_800937A4
	lis      r3, __vt__12JPAFieldDrag@ha
	addi     r0, r3, __vt__12JPAFieldDrag@l
	stw      r0, 0(r31)
	beq      lbl_80093794
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_80093794:
	extsh.   r0, r4
	ble      lbl_800937A4
	mr       r3, r31
	bl       __dl__FPv

lbl_800937A4:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800937BC
 * @note Size: 0x5C
 */
JPAFieldRandom::~JPAFieldRandom()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_80093800
	lis      r3, __vt__14JPAFieldRandom@ha
	addi     r0, r3, __vt__14JPAFieldRandom@l
	stw      r0, 0(r31)
	beq      lbl_800937F0
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_800937F0:
	extsh.   r0, r4
	ble      lbl_80093800
	mr       r3, r31
	bl       __dl__FPv

lbl_80093800:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x80093818
 * @note Size: 0x5C
 */
JPAFieldConvection::~JPAFieldConvection()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_8009385C
	lis      r3, __vt__18JPAFieldConvection@ha
	addi     r0, r3, __vt__18JPAFieldConvection@l
	stw      r0, 0(r31)
	beq      lbl_8009384C
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_8009384C:
	extsh.   r0, r4
	ble      lbl_8009385C
	mr       r3, r31
	bl       __dl__FPv

lbl_8009385C:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x80093874
 * @note Size: 0x5C
 */
JPAFieldVortex::~JPAFieldVortex()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_800938B8
	lis      r3, __vt__14JPAFieldVortex@ha
	addi     r0, r3, __vt__14JPAFieldVortex@l
	stw      r0, 0(r31)
	beq      lbl_800938A8
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_800938A8:
	extsh.   r0, r4
	ble      lbl_800938B8
	mr       r3, r31
	bl       __dl__FPv

lbl_800938B8:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800938D0
 * @note Size: 0x5C
 */
JPAFieldNewton::~JPAFieldNewton()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_80093914
	lis      r3, __vt__14JPAFieldNewton@ha
	addi     r0, r3, __vt__14JPAFieldNewton@l
	stw      r0, 0(r31)
	beq      lbl_80093904
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_80093904:
	extsh.   r0, r4
	ble      lbl_80093914
	mr       r3, r31
	bl       __dl__FPv

lbl_80093914:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009392C
 * @note Size: 0x5C
 */
JPAFieldMagnet::~JPAFieldMagnet()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_80093970
	lis      r3, __vt__14JPAFieldMagnet@ha
	addi     r0, r3, __vt__14JPAFieldMagnet@l
	stw      r0, 0(r31)
	beq      lbl_80093960
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_80093960:
	extsh.   r0, r4
	ble      lbl_80093970
	mr       r3, r31
	bl       __dl__FPv

lbl_80093970:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x80093988
 * @note Size: 0x5C
 */
JPAFieldAir::~JPAFieldAir()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_800939CC
	lis      r3, __vt__11JPAFieldAir@ha
	addi     r0, r3, __vt__11JPAFieldAir@l
	stw      r0, 0(r31)
	beq      lbl_800939BC
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_800939BC:
	extsh.   r0, r4
	ble      lbl_800939CC
	mr       r3, r31
	bl       __dl__FPv

lbl_800939CC:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800939E4
 * @note Size: 0x5C
 */
JPAFieldGravity::~JPAFieldGravity()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_80093A28
	lis      r3, __vt__15JPAFieldGravity@ha
	addi     r0, r3, __vt__15JPAFieldGravity@l
	stw      r0, 0(r31)
	beq      lbl_80093A18
	lis      r3, __vt__12JPAFieldBase@ha
	addi     r0, r3, __vt__12JPAFieldBase@l
	stw      r0, 0(r31)

lbl_80093A18:
	extsh.   r0, r4
	ble      lbl_80093A28
	mr       r3, r31
	bl       __dl__FPv

lbl_80093A28:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}
