#include "Dolphin/gx.h"
#include "math.h"
#include "JSystem/J2D/J2DIndBlock.h"
#include "JSystem/J2D/J2DTexMtx.h"
#include "fdlibm.h"
#include "types.h"

// these all need to be const and at the end of the file to go in sdata2 instead of sdata
const u32 j2dDefaultColInfo                        = 0xFFFFFFFF;
const J2DTevOrderInfo j2dDefaultTevOrderInfoNull   = { 0xFF, 0xFF, 0xFF, 0 };
const J2DIndTexOrderNull j2dDefaultIndTexOrderNull = { 0xFF, 0xFF };

/**
 * @note Address: 0x8005921C
 * @note Size: 0x30
 */
void J2DTexMtx::load(u32 size) { GXLoadTexMtxImm(mMtx, size * 3 + 30, (GXTexMtxType)mInfo.getTexMtxType()); }

/**
 * @note Address: 0x8005924C
 * @note Size: 0x68
 */
void J2DTexMtx::calc()
{
	if (mInfo.mTexMtxDCC == 0) {
		getTextureMtx(mInfo.mTextureSRTInfo, mInfo.mCenter, mMtx);
	} else if (mInfo.mTexMtxDCC == 1) {
		getTextureMtxMaya(mInfo.mTextureSRTInfo, mMtx);
	}
}

/**
 * @note Address: 0x800592B4
 * @note Size: 0x190
 */
void J2DTexMtx::getTextureMtx(const J2DTextureSRTInfo& info, Vec p2, Mtx mtx)
{
	f32 theta = (info._08 * PI) / 180.0f;
	mtx[0][0] = info._00 * cosf_kludge(theta);
	mtx[0][1] = -info._00 * sinf_kludge(theta);
	mtx[0][2] = 0.0f;
	mtx[0][3] = info._0C + p2.x + p2.x * (-info._00 * cosf_kludge(theta)) + (info._00 * sinf_kludge(theta)) * p2.y;
	mtx[1][0] = info._04 * sinf_kludge(theta);
	mtx[1][1] = info._04 * cosf_kludge(theta);
	mtx[1][2] = 0.0f;
	mtx[1][3] = info._10 + p2.y + p2.x * (-info._04 * sinf_kludge(theta)) - p2.y * (info._04 * cosf_kludge(theta));
	mtx[2][0] = 0.0f;
	mtx[2][1] = 0.0f;
	mtx[2][2] = 1.0f;
	mtx[2][3] = 0.0f;

	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	stw      r0, 0x44(r1)
	stfd     f31, 0x30(r1)
	psq_st   f31, 56(r1), 0, qr0
	stfd     f30, 0x20(r1)
	psq_st   f30, 40(r1), 0, qr0
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r4
	lfs      f2, lbl_805168F8@sda21(r2)
	lfs      f1, 8(r4)
	mr       r30, r5
	lfs      f0, lbl_805168FC@sda21(r2)
	mr       r31, r6
	fmuls    f1, f2, f1
	fdivs    f31, f1, f0
	fmr      f1, f31
	bl       cos
	frsp     f2, f1
	lfs      f0, 0(r29)
	fmr      f1, f31
	fmuls    f0, f0, f2
	stfs     f0, 0(r31)
	bl       sin
	lfs      f2, 0(r29)
	frsp     f3, f1
	lfs      f0, lbl_80516900@sda21(r2)
	fmr      f1, f31
	fneg     f2, f2
	fmuls    f2, f2, f3
	stfs     f2, 4(r31)
	stfs     f0, 8(r31)
	bl       sin
	frsp     f30, f1
	fmr      f1, f31
	bl       cos
	lfs      f0, 0(r29)
	frsp     f5, f1
	lfs      f2, 4(r30)
	fmr      f1, f31
	fneg     f3, f0
	lfs      f6, 0(r30)
	fmuls    f0, f0, f30
	lfs      f4, 0xc(r29)
	fmuls    f3, f3, f5
	fmuls    f0, f2, f0
	fmadds   f0, f6, f3, f0
	fadds    f0, f6, f0
	fadds    f0, f4, f0
	stfs     f0, 0xc(r31)
	bl       sin
	frsp     f2, f1
	lfs      f0, 4(r29)
	fmr      f1, f31
	fmuls    f0, f0, f2
	stfs     f0, 0x10(r31)
	bl       cos
	frsp     f3, f1
	lfs      f2, 4(r29)
	lfs      f0, lbl_80516900@sda21(r2)
	fmr      f1, f31
	fmuls    f2, f2, f3
	stfs     f2, 0x14(r31)
	stfs     f0, 0x18(r31)
	bl       cos
	frsp     f30, f1
	fmr      f1, f31
	bl       sin
	lfs      f0, 4(r29)
	frsp     f3, f1
	lfs      f6, 4(r30)
	fneg     f2, f0
	lfs      f4, 0(r30)
	fmuls    f0, f0, f30
	lfs      f5, 0x10(r29)
	lfs      f1, lbl_80516900@sda21(r2)
	fmuls    f3, f2, f3
	fmuls    f2, f6, f0
	lfs      f0, lbl_80516904@sda21(r2)
	fmsubs   f2, f4, f3, f2
	fadds    f2, f6, f2
	fadds    f2, f5, f2
	stfs     f2, 0x1c(r31)
	stfs     f1, 0x20(r31)
	stfs     f1, 0x24(r31)
	stfs     f0, 0x28(r31)
	stfs     f1, 0x2c(r31)
	psq_l    f31, 56(r1), 0, qr0
	lfd      f31, 0x30(r1)
	psq_l    f30, 40(r1), 0, qr0
	lfd      f30, 0x20(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r0, 0x44(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

/**
 * @note Address: 0x80059444
 * @note Size: 0x180
 */
void J2DTexMtx::getTextureMtxMaya(const J2DTextureSRTInfo& info, Mtx mtx)
{
	f32 theta = (info._08 * PI) / 180.0f;
	mtx[0][0] = info._00 * cosf_kludge(theta);
	mtx[0][1] = info._04 * sinf_kludge(theta);
	mtx[0][2] = 0.0f;
	mtx[0][3] = info._0C + (-info._00 * cosf_kludge(theta)) + (info._00 * sinf_kludge(theta));
	mtx[1][0] = -info._00 * sinf_kludge(theta);
	mtx[1][1] = info._04 * cosf_kludge(theta);
	mtx[1][2] = 0.0f;
	mtx[1][3] = info._10 + (-info._04 * sinf_kludge(theta)) - (info._04 * cosf_kludge(theta));
	mtx[2][0] = 0.0f;
	mtx[2][1] = 0.0f;
	mtx[2][2] = 1.0f;
	mtx[2][3] = 0.0f;
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stfd     f31, 0x20(r1)
	psq_st   f31, 40(r1), 0, qr0
	stfd     f30, 0x10(r1)
	psq_st   f30, 24(r1), 0, qr0
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r4
	lfs      f2, lbl_805168F8@sda21(r2)
	lfs      f1, 8(r4)
	mr       r31, r5
	lfs      f0, lbl_805168FC@sda21(r2)
	fmuls    f1, f2, f1
	fdivs    f31, f1, f0
	fmr      f1, f31
	bl       cos
	frsp     f2, f1
	lfs      f0, 0(r30)
	fmr      f1, f31
	fmuls    f0, f0, f2
	stfs     f0, 0(r31)
	bl       sin
	frsp     f3, f1
	lfs      f2, 4(r30)
	lfs      f0, lbl_80516900@sda21(r2)
	fmr      f1, f31
	fmuls    f2, f2, f3
	stfs     f2, 4(r31)
	stfs     f0, 8(r31)
	bl       sin
	frsp     f30, f1
	fmr      f1, f31
	bl       cos
	lfs      f4, lbl_80516908@sda21(r2)
	frsp     f5, f1
	lfs      f0, 0x10(r30)
	fmr      f1, f31
	lfs      f3, 0xc(r30)
	fsubs    f2, f0, f4
	lfs      f0, 4(r30)
	fsubs    f3, f3, f4
	fadds    f0, f2, f0
	fmuls    f0, f0, f30
	fmsubs   f0, f3, f5, f0
	fadds    f0, f4, f0
	stfs     f0, 0xc(r31)
	bl       sin
	lfs      f0, 0(r30)
	frsp     f2, f1
	fmr      f1, f31
	fneg     f0, f0
	fmuls    f0, f0, f2
	stfs     f0, 0x10(r31)
	bl       cos
	frsp     f3, f1
	lfs      f2, 4(r30)
	lfs      f0, lbl_80516900@sda21(r2)
	fmr      f1, f31
	fmuls    f2, f2, f3
	stfs     f2, 0x14(r31)
	stfs     f0, 0x18(r31)
	bl       cos
	frsp     f30, f1
	fmr      f1, f31
	bl       sin
	lfs      f5, lbl_80516908@sda21(r2)
	frsp     f6, f1
	lfs      f0, 0x10(r30)
	lfs      f1, 0xc(r30)
	fsubs    f3, f0, f5
	lfs      f2, 4(r30)
	fsubs    f4, f1, f5
	lfs      f1, lbl_80516900@sda21(r2)
	lfs      f0, lbl_80516904@sda21(r2)
	fadds    f2, f3, f2
	fneg     f3, f4
	fmuls    f2, f2, f30
	fmsubs   f2, f3, f6, f2
	fadds    f2, f5, f2
	stfs     f2, 0x1c(r31)
	stfs     f1, 0x20(r31)
	stfs     f1, 0x24(r31)
	stfs     f0, 0x28(r31)
	stfs     f1, 0x2c(r31)
	psq_l    f31, 40(r1), 0, qr0
	lfd      f31, 0x20(r1)
	psq_l    f30, 24(r1), 0, qr0
	lfd      f30, 0x10(r1)
	lwz      r31, 0xc(r1)
	lwz      r0, 0x34(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x800595C4
 * @note Size: 0x54
 */
void J2DIndTevStage::load(u8 tevStage)
{
	GXSetTevIndirect((GXTevStageID)tevStage, getIndStage(), getIndFormat(), getBiasSel(), getMtxSel(), getWrapS(), getWrapT(), getPrev(),
	                 getLod(), getAlphaSel());
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r10, 0(r3)
	clrlwi   r3, r4, 0x18
	rlwinm   r0, r10, 0xb, 0x1f, 0x1f
	clrlwi   r4, r10, 0x1e
	stw      r0, 8(r1)
	rlwinm   r0, r10, 0xa, 0x1e, 0x1f
	rlwinm   r5, r10, 0x1e, 0x1e, 0x1f
	rlwinm   r6, r10, 0x1c, 0x1d, 0x1f
	stw      r0, 0xc(r1)
	rlwinm   r7, r10, 0x10, 0x1c, 0x1f
	rlwinm   r8, r10, 0x18, 0x1d, 0x1f
	rlwinm   r9, r10, 0x15, 0x1d, 0x1f
	rlwinm   r10, r10, 0xc, 0x1f, 0x1f
	bl       GXSetTevIndirect
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x80059618
 * @note Size: 0x30
 */
void J2DIndTexMtx::load(u8 mtxID) { GXSetIndTexMtx((GXIndTexMtxID)(mtxID + 1), mMtxInfo.mMtx, mMtxInfo.mScale); }

/**
 * @note Address: 0x80059648
 * @note Size: 0x30
 */
void J2DIndTexCoordScale::load(u8 stage) { GXSetIndTexCoordScale((GXIndTexStageID)stage, mScaleInfo.getScaleS(), mScaleInfo.getScaleT()); }

/**
 * @note Address: 0x80059678
 * @note Size: 0x30
 */
void J2DIndTexOrder::load(u8 stage) { GXSetIndTexOrder((GXIndTexStageID)stage, (GXTexCoordID)mOrder.mCoord, (GXTexMapID)mOrder.mMap); }
