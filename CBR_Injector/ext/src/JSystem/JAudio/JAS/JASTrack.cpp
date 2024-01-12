#include "Dolphin/OS/OSCache.h"
#include "math.h"
#include "JSystem/JAudio/JAS/JASBank.h"
#include "JSystem/JAudio/JAS/JASCalc.h"
#include "JSystem/JAudio/JAS/JASChannel.h"
#include "JSystem/JAudio/JAS/JASDriver.h"
#include "JSystem/JAudio/JAS/JASPlayer.h"
#include "JSystem/JAudio/JAS/JASSeqParser.h"
#include "JSystem/JAudio/JAS/JASTrack.h"
#include "JSystem/JSupport/JSUList.h"
#include "JSystem/JMath.h"
#include "types.h"

static f32 c32 = 1.0f;

/**
 * @note Address: 0x8009EF94
 * @note Size: 0x12C
 */
JASTrack::JASTrack()
    : JSUList<JASChannel>()
    , mVibrate()
    , mChannelUpdater()
    , _144(nullptr)
    , mTimedParam()
    , mRegisterParam()
    , _2F8(nullptr)
    , _340(0.0f)
    , _344(0.0f)
    , _348(0)
    , _34C(0)
    , _350(0)
    , _352(0x78)
    , _354(0x78)
    , _356(0)
    , _357(0)
    , _358(0)
    , mVolumeMode(0)
    , _35A(0)
    , _35B(0)
    , _362(false)
    , _363(0)
    , _364(0)
    , _365(0)
    , _366(0)
{
	mChannelUpdater.init();
	for (int i = 0; i < 12; i++) {
		_2E0[i] = JASPlayer::sAdsTable[i];
	}
	JASCalc::bzero(&mTimedParam, sizeof(TimedParam_));
}

/**
 * @note Address: 0x8009F0C0
 * @note Size: 0x4C
 */
// JASTrack::TimedParam_::TimedParam_()
// {
// }

/**
 * @note Address: 0x8009F10C
 * @note Size: 0x18
 */
// JASTrack::MoveParam_::MoveParam_()
//     : _00(0.0f)
//     , _04(0.0f)
//     , _08(0.0f)
//     , _0C(0.0f)
// {
// }

/**
 * @note Address: 0x8009F124
 * @note Size: 0x130
 */
// JASTrack::AInnerParam_::AInnerParam_()
// {
// }

/**
 * @note Address: N/A
 * @note Size: 0x54
 */
// void JSUList<JASChannel>::~JSUList()
// {
// 	// UNUSED FUNCTION
// }

/**
 * @note Address: N/A
 * @note Size: 0xC8
 */
JASTrack::~JASTrack()
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x8009F254
 * @note Size: 0x1E8
 * TODO: needs JASPlayer
 */
void JASTrack::init()
{
	mSeqCtrl.init();
	mTrackPort.init();
	mIntrMgr.init();
	_E0 = 0;
	_E4 = 0;
	_E5 = 0;
	_E6 = 0;
	for (int i = 0; i < 8; i++) {
		_C0[i] = nullptr;
	}
	mChannelUpdater.init();
	_144 = nullptr;
	initTimed();
	mRegisterParam.init();

	for (int i = 0; i < 2; i++) {
		_2D8[i] = 15;
		_2A8[i] = JASPlayer::sEnvelopeDef;
	}

	_2F8    = nullptr;
	_2FC[0] = nullptr;

	for (int i = 1; i < 16; i++) {
		_2FC[i] = 0;
	}
	if (mExtBuffer) {
		mExtBuffer->initExtBuffer();
	}
	_340 = 0.0f;
	_344 = 1.0f;
	_348 = 0;
	mVibrate.init();
	_34C = 0;
	_350 = 0;
	_352 = 0x78;
	_354 = 0x30;
	updateTempo();
	_356        = 0;
	_357        = 0;
	_358        = 10;
	mVolumeMode = 0;
	_35A        = 0;
	_35B        = 0;

	_35C                = 0;
	_35F                = 0;
	mChannelUpdater._4A = 0xD;

	_35D                = 0;
	_360                = 0;
	mChannelUpdater._4B = 0xD;

	_35E                = 0;
	_361                = 0;
	mChannelUpdater._4C = 0xD;

	_362 = false;
	_363 = 0;
	_364 = 1;
	_365 = 0;
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	addi     r3, r31, 0xc
	bl       init__10JASSeqCtrlFv
	addi     r3, r31, 0x54
	bl       init__12JASTrackPortFv
	addi     r3, r31, 0x94
	bl       init__10JASIntrMgrFv
	li       r0, 0
	addi     r3, r31, 0xf4
	stw      r0, 0xe0(r31)
	stb      r0, 0xe4(r31)
	stb      r0, 0xe5(r31)
	stb      r0, 0xe6(r31)
	stw      r0, 0xc0(r31)
	stw      r0, 0xc4(r31)
	stw      r0, 0xc8(r31)
	stw      r0, 0xcc(r31)
	stw      r0, 0xd0(r31)
	stw      r0, 0xd4(r31)
	stw      r0, 0xd8(r31)
	stw      r0, 0xdc(r31)
	bl       init__17JASChannelUpdaterFv
	li       r0, 0
	mr       r3, r31
	stw      r0, 0x144(r31)
	bl       initTimed__8JASTrackFv
	addi     r3, r31, 0x268
	bl       init__16JASRegisterParamFv
	lis      r3, sEnvelopeDef__9JASPlayer@ha
	li       r7, 0xf
	addi     r6, r3, sEnvelopeDef__9JASPlayer@l
	stw      r7, 0x2d8(r31)
	lwz      r5, 0(r6)
	li       r0, 0
	lfs      f2, 4(r6)
	stw      r5, 0x2a8(r31)
	lwz      r4, 8(r6)
	stfs     f2, 0x2ac(r31)
	lwz      r3, 0xc(r6)
	stw      r4, 0x2b0(r31)
	lfs      f1, 0x10(r6)
	stw      r3, 0x2b4(r31)
	lfs      f0, 0x14(r6)
	stfs     f1, 0x2b8(r31)
	stfs     f0, 0x2bc(r31)
	stw      r7, 0x2dc(r31)
	stw      r5, 0x2c0(r31)
	stfs     f2, 0x2c4(r31)
	stw      r4, 0x2c8(r31)
	stw      r3, 0x2cc(r31)
	stfs     f1, 0x2d0(r31)
	stfs     f0, 0x2d4(r31)
	stw      r0, 0x2f8(r31)
	stw      r0, 0x2fc(r31)
	stw      r0, 0x300(r31)
	stw      r0, 0x304(r31)
	stw      r0, 0x308(r31)
	stw      r0, 0x30c(r31)
	stw      r0, 0x310(r31)
	stw      r0, 0x314(r31)
	stw      r0, 0x318(r31)
	stw      r0, 0x31c(r31)
	stw      r0, 0x320(r31)
	stw      r0, 0x324(r31)
	stw      r0, 0x328(r31)
	stw      r0, 0x32c(r31)
	stw      r0, 0x330(r31)
	stw      r0, 0x334(r31)
	stw      r0, 0x338(r31)
	lwz      r3, 0x33c(r31)
	cmplwi   r3, 0
	beq      lbl_8009F388
	bl       initExtBuffer__13JASOuterParamFv

lbl_8009F388:
	lfs      f1, lbl_80516D78@sda21(r2)
	li       r0, 0
	lfs      f0, lbl_80516D7C@sda21(r2)
	addi     r3, r31, 0xe8
	stfs     f1, 0x340(r31)
	stfs     f0, 0x344(r31)
	stw      r0, 0x348(r31)
	bl       init__10JASVibrateFv
	li       r5, 0
	li       r4, 0x78
	stw      r5, 0x34c(r31)
	li       r0, 0x30
	mr       r3, r31
	sth      r5, 0x350(r31)
	sth      r4, 0x352(r31)
	sth      r0, 0x354(r31)
	bl       updateTempo__8JASTrackFv
	li       r5, 0
	li       r4, 0xa
	stb      r5, 0x356(r31)
	li       r3, 0xd
	li       r0, 1
	stb      r5, 0x357(r31)
	stb      r4, 0x358(r31)
	stb      r5, 0x359(r31)
	stb      r5, 0x35a(r31)
	stb      r5, 0x35b(r31)
	stb      r5, 0x35c(r31)
	stb      r5, 0x35f(r31)
	stb      r3, 0x13e(r31)
	stb      r5, 0x35d(r31)
	stb      r5, 0x360(r31)
	stb      r3, 0x13f(r31)
	stb      r5, 0x35e(r31)
	stb      r5, 0x361(r31)
	stb      r3, 0x140(r31)
	stb      r5, 0x362(r31)
	stb      r5, 0x363(r31)
	stb      r0, 0x364(r31)
	stb      r5, 0x365(r31)
	lwz      r31, 0xc(r1)
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x120
 */
int JASTrack::inherit()
{
	// UNUSED FUNCTION
	// if (_362 != false && (_358 & 2) != 0) {
	// 	return;
	// }
	// if (mSeqCtrl._08 == -1 && checkNoteStop(0) == 0 && (mSeqCtrl._08 = 0)) {
	// 	return;
	// }
	// if (0 < mSeqCtrl._40) {
	// 	mSeqCtrl._40--;
	// }
	// if (0 < mSeqCtrl._08) { }
	if (_362 != false && (_358 & 2) != 0) {
		return -1;
	}
	if (mSeqCtrl._08 == -1) {
		if (checkNoteStop(0) == 0) {
			return 0;
		}
		mSeqCtrl._08 = 0;
	}
	if (0 < mSeqCtrl._40) {
		mSeqCtrl._40--;
	}
	if (0 < mSeqCtrl._08) {
		if (!mSeqCtrl.waitCountDown()) {
			return 0;
		}
		if (_E0 != -1 && _E4 == 0) {
			_C0[0] = nullptr;
		}
	}
	return 1;
}

/**
 * @note Address: 0x8009F43C
 * @note Size: 0x20C
 */
s8 JASTrack::mainProc()
{
	int v1 = 0;
	if (_365 != 0 && _2F8 != nullptr) {
		f32 v2 = (f32)_352 / (f32)_2F8->_352;
		if (1.0f < v2) {
			v2 = 1.0f;
		}
		_340 += v2;
		if (_340 < 1.0f) {
			return 0;
		}
		_340 -= 1.0f;
	}
	mIntrMgr.request(7);
	mIntrMgr.timerProcess();
	tryInterrupt();
	// switch (inherit()) {
	// case 1:
	// 	v1 = sParser->parseSeq(this);
	// case 0:
	// 	updateTimedParam();
	// }
	// updateSeq(0, false);
	int v4 = inherit();
	if (v4 == 1) {
		v1 = sParser->parseSeq(this);
	}
	if (v4 >= 0) {
		updateTimedParam();
	}
	updateSeq(0, false);
	if (v1 < 0) {
		return -1;
	}
	for (v1 = 0; v1 < 16; v1++) {
		JASTrack* v3 = _2FC[v1];
		// if (v3 != nullptr && v3->_35B != 0 && v3->mainProc() == -1) {
		if (v3 != nullptr && v3->_35B != 0) {
			v3->close();
			_2FC[v1] = nullptr;
		}
	}
	return 0;
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stw      r31, 0x2c(r1)
	mr       r31, r3
	stw      r30, 0x28(r1)
	li       r30, 0
	stw      r29, 0x24(r1)
	stw      r28, 0x20(r1)
	lbz      r0, 0x365(r3)
	cmplwi   r0, 0
	beq      lbl_8009F4E8
	lwz      r5, 0x2f8(r31)
	cmplwi   r5, 0
	beq      lbl_8009F4E8
	lhz      r4, 0x352(r31)
	lis      r3, 0x4330
	lhz      r0, 0x352(r5)
	stw      r4, 0xc(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r3, 8(r1)
	lfs      f0, lbl_80516D7C@sda21(r2)
	lfd      f1, 8(r1)
	stw      r0, 0x14(r1)
	fsubs    f3, f1, f2
	stw      r3, 0x10(r1)
	lfd      f1, 0x10(r1)
	fsubs    f1, f1, f2
	fdivs    f3, f3, f1
	fcmpo    cr0, f3, f0
	ble      lbl_8009F4BC
	fmr      f3, f0

lbl_8009F4BC:
	lfs      f1, 0x340(r31)
	lfs      f0, lbl_80516D7C@sda21(r2)
	fadds    f1, f1, f3
	stfs     f1, 0x340(r31)
	lfs      f1, 0x340(r31)
	fcmpo    cr0, f1, f0
	bge      lbl_8009F4E0
	li       r3, 0
	b        lbl_8009F628

lbl_8009F4E0:
	fsubs    f0, f1, f0
	stfs     f0, 0x340(r31)

lbl_8009F4E8:
	addi     r3, r31, 0x94
	li       r4, 7
	bl       request__10JASIntrMgrFUl
	addi     r3, r31, 0x94
	bl       timerProcess__10JASIntrMgrFv
	mr       r3, r31
	bl       tryInterrupt__8JASTrackFv
	lbz      r0, 0x362(r31)
	cmplwi   r0, 0
	beq      lbl_8009F51C
	lbz      r0, 0x358(r31)
	rlwinm.  r0, r0, 0, 0x1e, 0x1e
	bne      lbl_8009F5B0

lbl_8009F51C:
	lwz      r0, 0x14(r31)
	cmpwi    r0, -1
	bne      lbl_8009F544
	mr       r3, r31
	li       r4, 0
	bl       checkNoteStop__8JASTrackFl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009F5A8
	li       r0, 0
	stw      r0, 0x14(r31)

lbl_8009F544:
	lwz      r3, 0x4c(r31)
	cmpwi    r3, 0
	ble      lbl_8009F558
	addi     r0, r3, -1
	stw      r0, 0x4c(r31)

lbl_8009F558:
	lwz      r0, 0x14(r31)
	cmpwi    r0, 0
	ble      lbl_8009F598
	addi     r3, r31, 0xc
	bl       waitCountDown__10JASSeqCtrlFv
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009F5A8
	lwz      r3, 0xe0(r31)
	addis    r0, r3, 1
	cmplwi   r0, 0xffff
	beq      lbl_8009F598
	lbz      r0, 0xe4(r31)
	cmplwi   r0, 0
	bne      lbl_8009F598
	li       r0, 0
	stw      r0, 0xc0(r31)

lbl_8009F598:
	mr       r4, r31
	addi     r3, r13, sParser__8JASTrack@sda21
	bl       parseSeq__12JASSeqParserFP8JASTrack
	mr       r30, r3

lbl_8009F5A8:
	mr       r3, r31
	bl       updateTimedParam__8JASTrackFv

lbl_8009F5B0:
	mr       r3, r31
	li       r4, 0
	li       r5, 0
	bl       updateSeq__8JASTrackFUlb
	cmpwi    r30, 0
	bge      lbl_8009F5D0
	li       r3, -1
	b        lbl_8009F628

lbl_8009F5D0:
	mr       r30, r31
	li       r29, 0
	li       r31, 0

lbl_8009F5DC:
	lwz      r28, 0x2fc(r30)
	cmplwi   r28, 0
	beq      lbl_8009F614
	lbz      r0, 0x35b(r28)
	cmplwi   r0, 0
	beq      lbl_8009F614
	mr       r3, r28
	bl       mainProc__8JASTrackFv
	extsb    r0, r3
	cmpwi    r0, -1
	bne      lbl_8009F614
	mr       r3, r28
	bl       close__8JASTrackFv
	stw      r31, 0x2fc(r30)

lbl_8009F614:
	addi     r29, r29, 1
	addi     r30, r30, 4
	cmpwi    r29, 0x10
	blt      lbl_8009F5DC
	li       r3, 0

lbl_8009F628:
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
 * @note Address: 0x8009F648
 * @note Size: 0x28
 */
void JASTrack::setInterrupt(u16 interrupt) { mIntrMgr.request(interrupt); }

/**
 * @note Address: 0x8009F670
 * @note Size: 0x60
 */
bool JASTrack::tryInterrupt()
{
	if (mSeqCtrl._44 != 0) {
		return false;
	}
	void* intr = mIntrMgr.checkIntr();
	if (intr == nullptr) {
		return false;
	} else {
		return mSeqCtrl.callIntr(intr);
	}
}

/**
 * @note Address: N/A
 * @note Size: 0x28
 */
void JASTrack::setBankNumber(u8)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x8009F6D0
 * @note Size: 0x8
 */
void JASTrack::assignExtBuffer(JASOuterParam* a1)
{
	// Generated from stw r4, 0x33C(r3)
	mExtBuffer = a1;
}

/**
 * @note Address: N/A
 * @note Size: 0xC
 */
void JASTrack::setPanSwitchExt(u8, int)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0xC
 */
void JASTrack::setPanSwitchParent(u8, int)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0xC
 */
void JASTrack::setPanSwitchJcs(u8, int)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x24
 */
void JASTrack::getBank() const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x24
 */
void JASTrack::getProgramNumber() const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x8
 */
void JASTrack::getVolume() const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x8
 */
void JASTrack::getPitch() const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x8
 */
void JASTrack::getPan() const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x8
 */
void JASTrack::getFxmix() const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x8
 */
void JASTrack::getDolby() const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x8009F6D8
 * @note Size: 0xCC
 */
void JASTrack::initTimed()
{
	for (u8 i = 0; i < 18; i++) {
		mTimedParam.mMoveParams[i]._08 = 0.0f;
		mTimedParam.mMoveParams[i]._00 = 1.0f;
		mTimedParam.mMoveParams[i]._04 = 1.0f;
	}
	mTimedParam.mMoveParams[1]._00  = 0.0f;
	mTimedParam.mMoveParams[1]._04  = 0.0f;
	mTimedParam.mMoveParams[3]._00  = 0.5f;
	mTimedParam.mMoveParams[3]._04  = 0.5f;
	mTimedParam.mMoveParams[16]._00 = 0.5f;
	mTimedParam.mMoveParams[16]._04 = 0.5f;
	mTimedParam.mMoveParams[17]._00 = 0.0f;
	mTimedParam.mMoveParams[17]._04 = 0.0f;
	mTimedParam.mMoveParams[2]._00  = 0.0f;
	mTimedParam.mMoveParams[2]._04  = 0.0f;
	mTimedParam.mMoveParams[4]._00  = 0.0f;
	mTimedParam.mMoveParams[4]._04  = 0.0f;
	mTimedParam.mMoveParams[13]._00 = 0.0f;
	mTimedParam.mMoveParams[13]._04 = 0.0f;
	mTimedParam.mMoveParams[14]._00 = 0.0f;
	mTimedParam.mMoveParams[14]._04 = 0.0f;
	mTimedParam.mMoveParams[15]._00 = 0.0f;
	mTimedParam.mMoveParams[15]._04 = 0.0f;
	mTimedParam.mMoveParams[5]._00  = 0.0f;
	mTimedParam.mMoveParams[5]._04  = 0.0f;
}

/**
 * @note Address: 0x8009F7A4
 * @note Size: 0x10
 */
void JASTrack::connectBus(int p1, int p2) { mChannelUpdater._36[p1] = p2; }

/**
 * @note Address: 0x8009F7B4
 * @note Size: 0x1A4
 */
int JASTrack::noteOn(u8 channelIndex, s32 p2, s32 p3, s32 p4, u32 p5)
{
	if (_363 && (_358 & 0x40)) {
		return -1;
	}
	if ((_35A & 1 << channelIndex)) {
		return -1;
	}
	noteOff(channelIndex, 0);
	u8 physicalNumber   = JASBankMgr::getPhysicalNumber(mRegisterParam.getBankNumber());
	u8 programNumber    = mRegisterParam.getProgramNumber();
	JASChannel* channel = !_144 ? JASBankMgr::noteOn(physicalNumber, programNumber, p2, p3, mRegisterParam._1A, channelUpdateCallback, this)
	                            : _144(this, physicalNumber, programNumber, p2, p3, mRegisterParam._1A);
	if (channel == nullptr) {
		return -1;
	}
	channel->_2C = p4;
	append(channel);
	_C0[channelIndex] = channel;
	channel->_C8      = p5;
	channel->setPanPower(mRegisterParam._10, mRegisterParam._12, mRegisterParam._14);
	overwriteOsc(channel);
	if (_350) {
		channel->directReleaseOsc(_350);
	}
	return 0;
}

/**
 * @note Address: 0x8009F958
 * @note Size: 0xA4
 */
void JASTrack::overwriteOsc(JASChannel* channel)
{
	for (int i = 0; i < 2; i++) {
		const u32 v1 = _2D8[i];
		if (v1 != 15) {
			const u32 v2 = v1 & 3;
			if ((v1 & 8) != 0) {
				channel->copyOsc(v2, _2A8 + i);
			} else {
				if ((v1 & 4) != 0) {
					const s16* v3 = _2A8[i]._0C;
					channel->copyOsc(v2, _2A8 + i);
					_2A8[i]._0C = v3;
				}
			}
			channel->overwriteOsc(v2, _2A8 + i);
		}
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r26, 8(r1)
	mr       r26, r4
	mr       r30, r3
	li       r28, 0
	mr       r29, r3

lbl_8009F978:
	lwz      r3, 0x2d8(r30)
	cmplwi   r3, 0xf
	beq      lbl_8009F9D4
	rlwinm.  r0, r3, 0, 0x1c, 0x1c
	clrlwi   r31, r3, 0x1e
	beq      lbl_8009F9A4
	mr       r3, r26
	mr       r4, r31
	addi     r5, r29, 0x2a8
	bl       copyOsc__10JASChannelFiPQ213JASOscillator4Data
	b        lbl_8009F9C4

lbl_8009F9A4:
	rlwinm.  r0, r3, 0, 0x1d, 0x1d
	beq      lbl_8009F9C4
	lwz      r27, 0x2b4(r29)
	mr       r3, r26
	mr       r4, r31
	addi     r5, r29, 0x2a8
	bl       copyOsc__10JASChannelFiPQ213JASOscillator4Data
	stw      r27, 0x2b4(r29)

lbl_8009F9C4:
	mr       r3, r26
	mr       r4, r31
	addi     r5, r29, 0x2a8
	bl       overwriteOsc__10JASChannelFiPQ213JASOscillator4Data

lbl_8009F9D4:
	addi     r28, r28, 1
	addi     r29, r29, 0x18
	cmpwi    r28, 2
	addi     r30, r30, 4
	blt      lbl_8009F978
	lmw      r26, 8(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x8009F9FC
 * @note Size: 0x68
 */
bool JASTrack::noteOff(u8 channelIndex, u16 p2)
{
	if (_C0[channelIndex] == nullptr) {
		return false;
	}
	if (p2 == 0) {
		_C0[channelIndex]->release(0);
	} else {
		_C0[channelIndex]->release(p2);
	}
	_C0[channelIndex] = nullptr;
	return true;
}

/**
 * @note Address: 0x8009FA64
 * @note Size: 0x64
 */
int JASTrack::gateOn(u8 p1, s32 p2, s32 p3, s32 p4)
{
	JASChannel* channel = _C0[p1];
	if (channel == nullptr) {
		return -1;
	}
	JASBankMgr::gateOn(channel, p2, p3);
	channel->_2C = p4;
	return 0;
}

/**
 * @note Address: 0x8009FAC8
 * @note Size: 0x2C
 */
BOOL JASTrack::checkNoteStop(s32 p1)
{
	if (_C0[p1] == nullptr) {
		return true;
	}
	return _C0[p1]->_18 == 0;
}

/**
 * @note Address: 0x8009FAF4
 * @note Size: 0xE0
 */
void JASTrack::oscSetupFull(u8, u32, u32)
{
	/*
	rlwinm.  r0, r4, 0x19, 0x1f, 0x1f
	rlwinm   r8, r4, 0x1c, 0x1f, 0x1f
	clrlwi   r12, r4, 0x1c
	rlwinm   r9, r4, 0x1a, 0x1f, 0x1f
	rlwinm   r10, r4, 0x1b, 0x1f, 0x1f
	beq      lbl_8009FB64
	mulli    r11, r8, 0x18
	lis      r4, sEnvelopeDef__9JASPlayer@ha
	cmpwi    r12, 1
	addi     r7, r4, sEnvelopeDef__9JASPlayer@l
	lwz      r0, 0(r7)
	add      r11, r3, r11
	lfs      f0, 4(r7)
	stw      r0, 0x2a8(r11)
	lwz      r4, 8(r7)
	stfs     f0, 0x2ac(r11)
	lwz      r0, 0xc(r7)
	stw      r4, 0x2b0(r11)
	lfs      f1, 0x10(r7)
	stw      r0, 0x2b4(r11)
	lfs      f0, 0x14(r7)
	stfs     f1, 0x2b8(r11)
	stfs     f0, 0x2bc(r11)
	stw      r12, 0x2a8(r11)
	beq      lbl_8009FB5C
	b        lbl_8009FB64

lbl_8009FB5C:
	lfs      f0, lbl_80516D7C@sda21(r2)
	stfs     f0, 0x2bc(r11)

lbl_8009FB64:
	cmplwi   r9, 0
	beq      lbl_8009FB98
	cmplwi   r5, 0
	bne      lbl_8009FB84
	mulli    r0, r8, 0x18
	li       r7, 0
	add      r4, r3, r0
	stw      r7, 0x2b0(r4)

lbl_8009FB84:
	mulli    r0, r8, 0x18
	lwz      r4, 0xc(r3)
	add      r5, r4, r5
	add      r4, r3, r0
	stw      r5, 0x2b0(r4)

lbl_8009FB98:
	cmplwi   r10, 0
	beqlr
	cmplwi   r6, 0
	bne      lbl_8009FBBC
	mulli    r0, r8, 0x18
	lis      r4, sRelTable__9JASPlayer@ha
	addi     r5, r4, sRelTable__9JASPlayer@l
	add      r4, r3, r0
	stw      r5, 0x2b4(r4)

lbl_8009FBBC:
	mulli    r0, r8, 0x18
	lwz      r4, 0xc(r3)
	add      r4, r4, r6
	add      r3, r3, r0
	stw      r4, 0x2b4(r3)
	blr
	*/
}

/**
 * @note Address: 0x8009FBD4
 * @note Size: 0x70
 */
void JASTrack::oscSetupSimpleEnv(u8 p1, u32 p2)
{
	switch (p1) {
	case 0:
		_2A8[0]     = JASPlayer::sEnvelopeDef;
		_2A8[0]._08 = reinterpret_cast<s16*>(mSeqCtrl._00 + p2);
		break;
	case 1:
		_2A8->_0C = reinterpret_cast<s16*>(mSeqCtrl._00 + p2);
		break;
	default:
		break;
	}
}

/**
 * @note Address: N/A
 * @note Size: 0x64
 */
void JASTrack::updateOscParam(int, f32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x8009FC44
 * @note Size: 0xDC
 */
void JASTrack::oscSetupSimple(u8 p1)
{
	switch (p1) {
	case 0:
		_2A8[1] = JASPlayer::sVibratoDef;
		break;
	case 1:
		_2A8[0] = JASPlayer::sTremoroDef;
		break;
	case 2:
		_2A8[1] = JASPlayer::sTremoroDef;
		break;
	default:
		break;
	}
}

/**
 * @note Address: 0x8009FD20
 * @note Size: 0xE8
 */
void JASTrack::updateTimedParam()
{
	for (int i = 0; i < 18; i++) {
		if (mTimedParam.mMoveParams[i]._08 > 0.0f) {
			mTimedParam.mMoveParams[i]._00 += mTimedParam.mMoveParams[i]._0C;
			mTimedParam.mMoveParams[i]._08 -= 1.0f;
			if (i <= 5 || 11 <= i) {
				_34C |= (1 << i);
				continue;
			}
			f32 v1 = mTimedParam.mMoveParams[i]._00;
			switch (i) {
			case 6:
				_2A8[0]._10 = v1;
				break;
			case 7:
				_2A8[0]._04 = v1;
				break;
			case 8:
				_2A8[0]._14 = v1;
				break;
			case 9:
				_2A8[1]._10 = v1;
				break;
			case 10:
				_2A8[1]._04 = v1;
				break;
			case 11:
				_2A8[1]._14 = v1;
				break;
			}
		}
	}
	_34C |= 2;
}

/**
 * @note Address: 0x8009FE08
 * @note Size: 0x3E8
 */
void JASTrack::updateTrackAll()
{
	/*
	stwu     r1, -0xa0(r1)
	mflr     r0
	stw      r0, 0xa4(r1)
	stfd     f31, 0x90(r1)
	psq_st   f31, 152(r1), 0, qr0
	stfd     f30, 0x80(r1)
	psq_st   f30, 136(r1), 0, qr0
	stfd     f29, 0x70(r1)
	psq_st   f29, 120(r1), 0, qr0
	stfd     f28, 0x60(r1)
	psq_st   f28, 104(r1), 0, qr0
	stfd     f27, 0x50(r1)
	psq_st   f27, 88(r1), 0, qr0
	stfd     f26, 0x40(r1)
	psq_st   f26, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	stw      r30, 0x38(r1)
	mr       r31, r3
	lis      r0, 0x4330
	lhz      r3, 0x27e(r3)
	li       r4, 0
	stw      r0, 0x10(r1)
	lfd      f3, lbl_80516D80@sda21(r2)
	stw      r3, 0x14(r1)
	lfs      f2, lbl_80516D8C@sda21(r2)
	lfd      f0, 0x10(r1)
	lfs      f1, lbl_80516D90@sda21(r2)
	fsubs    f3, f0, f3
	lfs      f0, 0x258(r31)
	fmuls    f4, f1, f0
	fdivs    f29, f3, f2
	psq_st   f4, 8(r1), 1, qr4
	lbz      r3, 8(r1)
	extsb    r3, r3
	extsb.   r0, r3
	bge      lbl_8009FEA4
	neg      r0, r3
	li       r3, 0
	extsb    r4, r0

lbl_8009FEA4:
	li       r0, 0x10
	stb      r0, 0x13c(r31)
	stb      r4, 0x136(r31)
	stb      r3, 0x137(r31)
	lbz      r0, 0x359(r31)
	lfs      f28, 0x148(r31)
	cmplwi   r0, 0
	bne      lbl_8009FEC8
	fmuls    f28, f28, f28

lbl_8009FEC8:
	lbz      r0, 0x363(r31)
	cmplwi   r0, 0
	beq      lbl_8009FED8
	lfs      f28, lbl_80516D78@sda21(r2)

lbl_8009FED8:
	lhz      r3, 0x276(r31)
	lis      r0, 0x4330
	stw      r0, 0x10(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r3, 0x14(r1)
	lfs      f1, 0x158(r31)
	lfd      f0, 0x10(r1)
	fsubs    f2, f0, f2
	bl       pitchToCent__9JASPlayerFff
	fmr      f30, f1
	addi     r3, r31, 0xe8
	bl       getValue__10JASVibrateCFv
	lwz      r3, 0x33c(r31)
	fmuls    f27, f30, f1
	lfs      f26, 0x178(r31)
	cmplwi   r3, 0
	lfs      f31, 0x168(r31)
	lfs      f30, 0x188(r31)
	beq      lbl_8009FFFC
	li       r4, 1
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009FF40
	lwz      r3, 0x33c(r31)
	lfs      f0, 4(r3)
	fmuls    f28, f28, f0

lbl_8009FF40:
	lwz      r3, 0x33c(r31)
	li       r4, 2
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009FF60
	lwz      r3, 0x33c(r31)
	lfs      f0, 8(r3)
	fmuls    f27, f27, f0

lbl_8009FF60:
	lwz      r3, 0x33c(r31)
	li       r4, 4
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009FF94
	lwz      r3, 0x33c(r31)
	fmr      f1, f31
	fmr      f3, f29
	lbz      r4, 0x35d(r31)
	lfs      f2, 0xc(r3)
	mr       r3, r31
	bl       panCalc__8JASTrackFfffUc
	fmr      f31, f1

lbl_8009FF94:
	lwz      r3, 0x33c(r31)
	li       r4, 0x10
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009FFC8
	lwz      r3, 0x33c(r31)
	fmr      f1, f30
	fmr      f3, f29
	lbz      r4, 0x35e(r31)
	lfs      f2, 0x10(r3)
	mr       r3, r31
	bl       panCalc__8JASTrackFfffUc
	fmr      f30, f1

lbl_8009FFC8:
	lwz      r3, 0x33c(r31)
	li       r4, 8
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009FFFC
	lwz      r3, 0x33c(r31)
	fmr      f1, f26
	fmr      f3, f29
	lbz      r4, 0x35c(r31)
	lfs      f2, 0x14(r3)
	mr       r3, r31
	bl       panCalc__8JASTrackFfffUc
	fmr      f26, f1

lbl_8009FFFC:
	lwz      r4, 0x2f8(r31)
	cmplwi   r4, 0
	beq      lbl_800A0014
	lbz      r0, 0x357(r31)
	clrlwi.  r0, r0, 0x1f
	beq      lbl_800A002C

lbl_800A0014:
	stfs     f28, 0xf4(r31)
	stfs     f27, 0xf8(r31)
	stfs     f26, 0xfc(r31)
	stfs     f31, 0x100(r31)
	stfs     f30, 0x104(r31)
	b        lbl_800A01A8

lbl_800A002C:
	lhz      r3, 0x280(r31)
	lis      r0, 0x4330
	lfs      f0, 0xf4(r4)
	fmr      f1, f26
	stw      r3, 0x14(r1)
	mr       r3, r31
	fmuls    f0, f0, f28
	lfd      f4, lbl_80516D80@sda21(r2)
	stw      r0, 0x10(r1)
	lfs      f2, lbl_80516D8C@sda21(r2)
	lfd      f3, 0x10(r1)
	stfs     f0, 0xf4(r31)
	fsubs    f0, f3, f4
	lwz      r4, 0x2f8(r31)
	fdivs    f29, f0, f2
	lfs      f0, 0xf8(r4)
	fmuls    f0, f0, f27
	fmr      f3, f29
	stfs     f0, 0xf8(r31)
	lwz      r5, 0x2f8(r31)
	lbz      r4, 0x35f(r31)
	lfs      f2, 0xfc(r5)
	bl       panCalc__8JASTrackFfffUc
	stfs     f1, 0xfc(r31)
	fmr      f1, f31
	fmr      f3, f29
	mr       r3, r31
	lwz      r5, 0x2f8(r31)
	lbz      r4, 0x360(r31)
	lfs      f2, 0x100(r5)
	bl       panCalc__8JASTrackFfffUc
	stfs     f1, 0x100(r31)
	fmr      f1, f30
	fmr      f3, f29
	mr       r3, r31
	lwz      r5, 0x2f8(r31)
	lbz      r4, 0x361(r31)
	lfs      f2, 0x104(r5)
	bl       panCalc__8JASTrackFfffUc
	stfs     f1, 0x104(r31)
	lwz      r3, 0x33c(r31)
	cmplwi   r3, 0
	beq      lbl_800A0120
	li       r4, 0x80
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A0120
	li       r30, 0
	b        lbl_800A010C

lbl_800A00F0:
	lwz      r3, 0x33c(r31)
	mr       r4, r30
	bl       getIntFirFilter__13JASOuterParamFUc
	rlwinm   r4, r30, 1, 0x17, 0x1e
	addi     r30, r30, 1
	addi     r0, r4, 0x108
	sthx     r3, r31, r0

lbl_800A010C:
	clrlwi   r0, r30, 0x18
	cmplwi   r0, 8
	blt      lbl_800A00F0
	li       r0, 8
	stb      r0, 0x13d(r31)

lbl_800A0120:
	lfs      f1, lbl_80516D8C@sda21(r2)
	lfs      f0, 0x208(r31)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x10(r1)
	lwz      r0, 0x14(r1)
	sth      r0, 0x118(r31)
	lfs      f0, 0x218(r31)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x18(r1)
	lwz      r0, 0x1c(r1)
	sth      r0, 0x11a(r31)
	lfs      f0, 0x228(r31)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x20(r1)
	lwz      r0, 0x24(r1)
	sth      r0, 0x11c(r31)
	lfs      f0, 0x238(r31)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x28(r1)
	lwz      r0, 0x2c(r1)
	sth      r0, 0x11e(r31)
	lbz      r0, 0x13d(r31)
	ori      r0, r0, 0x20
	stb      r0, 0x13d(r31)
	lfs      f0, 0x198(r31)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x30(r1)
	lwz      r0, 0x34(r1)
	sth      r0, 0x128(r31)

lbl_800A01A8:
	psq_l    f31, 152(r1), 0, qr0
	lfd      f31, 0x90(r1)
	psq_l    f30, 136(r1), 0, qr0
	lfd      f30, 0x80(r1)
	psq_l    f29, 120(r1), 0, qr0
	lfd      f29, 0x70(r1)
	psq_l    f28, 104(r1), 0, qr0
	lfd      f28, 0x60(r1)
	psq_l    f27, 88(r1), 0, qr0
	lfd      f27, 0x50(r1)
	psq_l    f26, 72(r1), 0, qr0
	lfd      f26, 0x40(r1)
	lwz      r31, 0x3c(r1)
	lwz      r0, 0xa4(r1)
	lwz      r30, 0x38(r1)
	mtlr     r0
	addi     r1, r1, 0xa0
	blr
	*/
}

/**
 * @note Address: 0x800A01F0
 * @note Size: 0x4E0
 */
void JASTrack::updateTrack(u32)
{
	/*
	stwu     r1, -0xb0(r1)
	mflr     r0
	stw      r0, 0xb4(r1)
	stfd     f31, 0xa0(r1)
	psq_st   f31, 168(r1), 0, qr0
	stfd     f30, 0x90(r1)
	psq_st   f30, 152(r1), 0, qr0
	stfd     f29, 0x80(r1)
	psq_st   f29, 136(r1), 0, qr0
	stfd     f28, 0x70(r1)
	psq_st   f28, 120(r1), 0, qr0
	stfd     f27, 0x60(r1)
	psq_st   f27, 104(r1), 0, qr0
	stfd     f26, 0x50(r1)
	psq_st   f26, 88(r1), 0, qr0
	stmw     r24, 0x30(r1)
	mr       r25, r3
	lis      r3, 0x4330
	lhz      r5, 0x27e(r25)
	rlwinm.  r0, r4, 0, 0xe, 0xe
	stw      r3, 0x10(r1)
	mr       r26, r4
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r5, 0x14(r1)
	lfs      f0, lbl_80516D8C@sda21(r2)
	lfd      f1, 0x10(r1)
	fsubs    f1, f1, f2
	fdivs    f26, f1, f0
	beq      lbl_800A029C
	lfs      f1, lbl_80516D90@sda21(r2)
	li       r4, 0
	lfs      f0, 0x258(r25)
	fmuls    f3, f1, f0
	psq_st   f3, 8(r1), 1, qr4
	lbz      r3, 8(r1)
	extsb    r3, r3
	extsb.   r0, r3
	bge      lbl_800A0294
	neg      r0, r3
	li       r3, 0
	extsb    r4, r0

lbl_800A0294:
	stb      r4, 0x136(r25)
	stb      r3, 0x137(r25)

lbl_800A029C:
	rlwinm.  r0, r26, 0, 0x19, 0x19
	beq      lbl_800A02B8
	lwz      r0, 0x2f8(r25)
	cmplwi   r0, 0
	bne      lbl_800A02B8
	mr       r3, r25
	bl       updateTempo__8JASTrackFv

lbl_800A02B8:
	clrlwi.  r31, r26, 0x1f
	lfs      f30, lbl_80516D7C@sda21(r2)
	beq      lbl_800A0330
	lbz      r0, 0x359(r25)
	lfs      f31, 0x148(r25)
	cmplwi   r0, 0
	bne      lbl_800A02D8
	fmuls    f31, f31, f31

lbl_800A02D8:
	lbz      r0, 0x363(r25)
	cmplwi   r0, 0
	beq      lbl_800A02E8
	lfs      f31, lbl_80516D78@sda21(r2)

lbl_800A02E8:
	lwz      r3, 0x33c(r25)
	cmplwi   r3, 0
	beq      lbl_800A0310
	li       r4, 1
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A0310
	lwz      r3, 0x33c(r25)
	lfs      f0, 4(r3)
	fmuls    f31, f31, f0

lbl_800A0310:
	lbz      r0, 0x362(r25)
	cmplwi   r0, 0
	beq      lbl_800A0330
	lbz      r0, 0x358(r25)
	clrlwi.  r0, r0, 0x1f
	beq      lbl_800A0330
	lfs      f0, 0x248(r25)
	fmuls    f31, f31, f0

lbl_800A0330:
	rlwinm.  r30, r26, 0, 0x1e, 0x1e
	beq      lbl_800A0394
	lhz      r3, 0x276(r25)
	lis      r0, 0x4330
	stw      r0, 0x10(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r3, 0x14(r1)
	lfs      f1, 0x158(r25)
	lfd      f0, 0x10(r1)
	fsubs    f2, f0, f2
	bl       pitchToCent__9JASPlayerFff
	fmr      f30, f1
	addi     r3, r25, 0xe8
	bl       getValue__10JASVibrateCFv
	lwz      r3, 0x33c(r25)
	fmuls    f30, f30, f1
	cmplwi   r3, 0
	beq      lbl_800A0394
	li       r4, 2
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A0394
	lwz      r3, 0x33c(r25)
	lfs      f0, 8(r3)
	fmuls    f30, f30, f0

lbl_800A0394:
	rlwinm.  r29, r26, 0, 0x1c, 0x1c
	beq      lbl_800A03DC
	lwz      r3, 0x33c(r25)
	lfs      f29, 0x178(r25)
	cmplwi   r3, 0
	beq      lbl_800A03DC
	li       r4, 8
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A03DC
	lwz      r3, 0x33c(r25)
	fmr      f1, f29
	fmr      f3, f26
	lbz      r4, 0x35c(r25)
	lfs      f2, 0x14(r3)
	mr       r3, r25
	bl       panCalc__8JASTrackFfffUc
	fmr      f29, f1

lbl_800A03DC:
	rlwinm.  r28, r26, 0, 0x1d, 0x1d
	beq      lbl_800A0424
	lwz      r3, 0x33c(r25)
	lfs      f28, 0x168(r25)
	cmplwi   r3, 0
	beq      lbl_800A0424
	li       r4, 4
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A0424
	lwz      r3, 0x33c(r25)
	fmr      f1, f28
	fmr      f3, f26
	lbz      r4, 0x35d(r25)
	lfs      f2, 0xc(r3)
	mr       r3, r25
	bl       panCalc__8JASTrackFfffUc
	fmr      f28, f1

lbl_800A0424:
	rlwinm.  r27, r26, 0, 0x1b, 0x1b
	beq      lbl_800A046C
	lwz      r3, 0x33c(r25)
	lfs      f27, 0x188(r25)
	cmplwi   r3, 0
	beq      lbl_800A046C
	li       r4, 0x10
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A046C
	lwz      r3, 0x33c(r25)
	fmr      f1, f27
	fmr      f3, f26
	lbz      r4, 0x35e(r25)
	lfs      f2, 0x10(r3)
	mr       r3, r25
	bl       panCalc__8JASTrackFfffUc
	fmr      f27, f1

lbl_800A046C:
	rlwinm.  r0, r26, 0, 0x10, 0x13
	beq      lbl_800A04E4
	lfs      f1, lbl_80516D8C@sda21(r2)
	lfs      f0, 0x208(r25)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x10(r1)
	lwz      r0, 0x14(r1)
	sth      r0, 0x118(r25)
	lfs      f0, 0x218(r25)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x18(r1)
	lwz      r0, 0x1c(r1)
	sth      r0, 0x11a(r25)
	lfs      f0, 0x228(r25)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x20(r1)
	lwz      r0, 0x24(r1)
	sth      r0, 0x11c(r25)
	lfs      f0, 0x238(r25)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x28(r1)
	lwz      r0, 0x2c(r1)
	sth      r0, 0x11e(r25)
	lbz      r0, 0x13d(r25)
	ori      r0, r0, 0x20
	stb      r0, 0x13d(r25)

lbl_800A04E4:
	lwz      r3, 0x33c(r25)
	cmplwi   r3, 0
	beq      lbl_800A0548
	rlwinm.  r0, r26, 0, 0x18, 0x18
	beq      lbl_800A0548
	li       r4, 0x80
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A0548
	li       r24, 0
	b        lbl_800A052C

lbl_800A0510:
	lwz      r3, 0x33c(r25)
	mr       r4, r24
	bl       getIntFirFilter__13JASOuterParamFUc
	rlwinm   r4, r24, 1, 0x17, 0x1e
	addi     r24, r24, 1
	addi     r0, r4, 0x108
	sthx     r3, r25, r0

lbl_800A052C:
	clrlwi   r0, r24, 0x18
	cmplwi   r0, 8
	blt      lbl_800A0510
	lbz      r0, 0x13d(r25)
	rlwinm   r3, r0, 0, 0x1a, 0x1a
	addi     r0, r3, 8
	stb      r0, 0x13d(r25)

lbl_800A0548:
	rlwinm.  r0, r26, 0, 0x1a, 0x1a
	beq      lbl_800A056C
	lfs      f1, lbl_80516D8C@sda21(r2)
	lfs      f0, 0x198(r25)
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x28(r1)
	lwz      r0, 0x2c(r1)
	sth      r0, 0x128(r25)

lbl_800A056C:
	lwz      r4, 0x2f8(r25)
	cmplwi   r4, 0
	beq      lbl_800A0584
	lbz      r0, 0x357(r25)
	clrlwi.  r0, r0, 0x1f
	beq      lbl_800A05C4

lbl_800A0584:
	cmplwi   r31, 0
	beq      lbl_800A0590
	stfs     f31, 0xf4(r25)

lbl_800A0590:
	cmplwi   r30, 0
	beq      lbl_800A059C
	stfs     f30, 0xf8(r25)

lbl_800A059C:
	cmplwi   r29, 0
	beq      lbl_800A05A8
	stfs     f29, 0xfc(r25)

lbl_800A05A8:
	cmplwi   r28, 0
	beq      lbl_800A05B4
	stfs     f28, 0x100(r25)

lbl_800A05B4:
	cmplwi   r27, 0
	beq      lbl_800A068C
	stfs     f27, 0x104(r25)
	b        lbl_800A068C

lbl_800A05C4:
	lhz      r3, 0x280(r25)
	lis      r0, 0x4330
	stw      r0, 0x28(r1)
	cmplwi   r31, 0
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r3, 0x2c(r1)
	lfs      f0, lbl_80516D8C@sda21(r2)
	lfd      f1, 0x28(r1)
	fsubs    f1, f1, f2
	fdivs    f26, f1, f0
	beq      lbl_800A05FC
	lfs      f0, 0xf4(r4)
	fmuls    f0, f0, f31
	stfs     f0, 0xf4(r25)

lbl_800A05FC:
	cmplwi   r30, 0
	beq      lbl_800A0614
	lwz      r3, 0x2f8(r25)
	lfs      f0, 0xf8(r3)
	fmuls    f0, f0, f30
	stfs     f0, 0xf8(r25)

lbl_800A0614:
	cmplwi   r29, 0
	beq      lbl_800A063C
	lwz      r3, 0x2f8(r25)
	fmr      f1, f29
	fmr      f3, f26
	lbz      r4, 0x35f(r25)
	lfs      f2, 0xfc(r3)
	mr       r3, r25
	bl       panCalc__8JASTrackFfffUc
	stfs     f1, 0xfc(r25)

lbl_800A063C:
	cmplwi   r28, 0
	beq      lbl_800A0664
	lwz      r3, 0x2f8(r25)
	fmr      f1, f28
	fmr      f3, f26
	lbz      r4, 0x360(r25)
	lfs      f2, 0x100(r3)
	mr       r3, r25
	bl       panCalc__8JASTrackFfffUc
	stfs     f1, 0x100(r25)

lbl_800A0664:
	cmplwi   r27, 0
	beq      lbl_800A068C
	lwz      r3, 0x2f8(r25)
	fmr      f1, f27
	fmr      f3, f26
	lbz      r4, 0x361(r25)
	lfs      f2, 0x104(r3)
	mr       r3, r25
	bl       panCalc__8JASTrackFfffUc
	stfs     f1, 0x104(r25)

lbl_800A068C:
	psq_l    f31, 168(r1), 0, qr0
	lfd      f31, 0xa0(r1)
	psq_l    f30, 152(r1), 0, qr0
	lfd      f30, 0x90(r1)
	psq_l    f29, 136(r1), 0, qr0
	lfd      f29, 0x80(r1)
	psq_l    f28, 120(r1), 0, qr0
	lfd      f28, 0x70(r1)
	psq_l    f27, 104(r1), 0, qr0
	lfd      f27, 0x60(r1)
	psq_l    f26, 88(r1), 0, qr0
	lfd      f26, 0x50(r1)
	lmw      r24, 0x30(r1)
	lwz      r0, 0xb4(r1)
	mtlr     r0
	addi     r1, r1, 0xb0
	blr
	*/
}

/**
 * @note Address: 0x800A06D0
 * @note Size: 0x3B4
 */
void JASTrack::updateTempo()
{
	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	stw      r0, 0x44(r1)
	stmw     r24, 0x20(r1)
	mr       r24, r3
	lwz      r3, 0x2f8(r3)
	cmplwi   r3, 0
	bne      lbl_800A0784
	lhz      r3, 0x354(r24)
	lis      r0, 0x4330
	stw      r0, 8(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r3, 0xc(r1)
	lfd      f0, 8(r1)
	stw      r0, 0x10(r1)
	fsubs    f0, f0, f2
	stfs     f0, 0x344(r24)
	lhz      r0, 0x352(r24)
	lfs      f1, 0x344(r24)
	stw      r0, 0x14(r1)
	lfd      f0, 0x10(r1)
	fsubs    f0, f0, f2
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r24)
	bl       getDacRate__9JASDriverFv
	lfs      f2, 0x344(r24)
	lfs      f0, lbl_80516D94@sda21(r2)
	fdivs    f1, f2, f1
	stfs     f1, 0x344(r24)
	lfs      f1, 0x344(r24)
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r24)
	lwz      r3, 0x33c(r24)
	cmplwi   r3, 0
	beq      lbl_800A0798
	li       r4, 0x40
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A0798
	lwz      r3, 0x33c(r24)
	lfs      f1, 0x344(r24)
	lfs      f0, 0x18(r3)
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r24)
	b        lbl_800A0798

lbl_800A0784:
	lfs      f0, 0x344(r3)
	stfs     f0, 0x344(r24)
	lwz      r3, 0x2f8(r24)
	lhz      r0, 0x354(r3)
	sth      r0, 0x354(r24)

lbl_800A0798:
	li       r25, 0
	mr       r26, r24

lbl_800A07A0:
	lwz      r24, 0x2fc(r26)
	cmplwi   r24, 0
	beq      lbl_800A0A60
	lbz      r0, 0x35b(r24)
	cmplwi   r0, 0
	beq      lbl_800A0A60
	lwz      r3, 0x2f8(r24)
	cmplwi   r3, 0
	bne      lbl_800A0858
	lhz      r3, 0x354(r24)
	lis      r0, 0x4330
	stw      r0, 0x10(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r3, 0x14(r1)
	lfd      f0, 0x10(r1)
	stw      r0, 8(r1)
	fsubs    f0, f0, f2
	stfs     f0, 0x344(r24)
	lhz      r0, 0x352(r24)
	lfs      f1, 0x344(r24)
	stw      r0, 0xc(r1)
	lfd      f0, 8(r1)
	fsubs    f0, f0, f2
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r24)
	bl       getDacRate__9JASDriverFv
	lfs      f2, 0x344(r24)
	lfs      f0, lbl_80516D94@sda21(r2)
	fdivs    f1, f2, f1
	stfs     f1, 0x344(r24)
	lfs      f1, 0x344(r24)
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r24)
	lwz      r3, 0x33c(r24)
	cmplwi   r3, 0
	beq      lbl_800A086C
	li       r4, 0x40
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A086C
	lwz      r3, 0x33c(r24)
	lfs      f1, 0x344(r24)
	lfs      f0, 0x18(r3)
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r24)
	b        lbl_800A086C

lbl_800A0858:
	lfs      f0, 0x344(r3)
	stfs     f0, 0x344(r24)
	lwz      r3, 0x2f8(r24)
	lhz      r0, 0x354(r3)
	sth      r0, 0x354(r24)

lbl_800A086C:
	li       r31, 0
	mr       r27, r24

lbl_800A0874:
	lwz      r28, 0x2fc(r27)
	cmplwi   r28, 0
	beq      lbl_800A0A50
	lbz      r0, 0x35b(r28)
	cmplwi   r0, 0
	beq      lbl_800A0A50
	lwz      r3, 0x2f8(r28)
	cmplwi   r3, 0
	bne      lbl_800A092C
	lhz      r3, 0x354(r28)
	lis      r0, 0x4330
	stw      r0, 0x10(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r3, 0x14(r1)
	lfd      f0, 0x10(r1)
	stw      r0, 8(r1)
	fsubs    f0, f0, f2
	stfs     f0, 0x344(r28)
	lhz      r0, 0x352(r28)
	lfs      f1, 0x344(r28)
	stw      r0, 0xc(r1)
	lfd      f0, 8(r1)
	fsubs    f0, f0, f2
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r28)
	bl       getDacRate__9JASDriverFv
	lfs      f2, 0x344(r28)
	lfs      f0, lbl_80516D94@sda21(r2)
	fdivs    f1, f2, f1
	stfs     f1, 0x344(r28)
	lfs      f1, 0x344(r28)
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r28)
	lwz      r3, 0x33c(r28)
	cmplwi   r3, 0
	beq      lbl_800A0940
	li       r4, 0x40
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A0940
	lwz      r3, 0x33c(r28)
	lfs      f1, 0x344(r28)
	lfs      f0, 0x18(r3)
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r28)
	b        lbl_800A0940

lbl_800A092C:
	lfs      f0, 0x344(r3)
	stfs     f0, 0x344(r28)
	lwz      r3, 0x2f8(r28)
	lhz      r0, 0x354(r3)
	sth      r0, 0x354(r28)

lbl_800A0940:
	li       r30, 0

lbl_800A0944:
	lwz      r29, 0x2fc(r28)
	cmplwi   r29, 0
	beq      lbl_800A0A40
	lbz      r0, 0x35b(r29)
	cmplwi   r0, 0
	beq      lbl_800A0A40
	lwz      r3, 0x2f8(r29)
	cmplwi   r3, 0
	bne      lbl_800A09FC
	lhz      r3, 0x354(r29)
	lis      r0, 0x4330
	stw      r0, 0x10(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r3, 0x14(r1)
	lfd      f0, 0x10(r1)
	stw      r0, 8(r1)
	fsubs    f0, f0, f2
	stfs     f0, 0x344(r29)
	lhz      r0, 0x352(r29)
	lfs      f1, 0x344(r29)
	stw      r0, 0xc(r1)
	lfd      f0, 8(r1)
	fsubs    f0, f0, f2
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r29)
	bl       getDacRate__9JASDriverFv
	lfs      f2, 0x344(r29)
	lfs      f0, lbl_80516D94@sda21(r2)
	fdivs    f1, f2, f1
	stfs     f1, 0x344(r29)
	lfs      f1, 0x344(r29)
	fmuls    f0, f1, f0
	stfs     f0, 0x344(r29)
	lwz      r3, 0x33c(r29)
	cmplwi   r3, 0
	beq      lbl_800A0A10
	li       r4, 0x40
	bl       checkOuterSwitch__13JASOuterParamFUs
	clrlwi.  r0, r3, 0x18
	beq      lbl_800A0A10
	lwz      r3, 0x33c(r29)
	bl       getTempo__13JASOuterParamCFv
	lfs      f0, 0x344(r29)
	fmuls    f0, f0, f1
	stfs     f0, 0x344(r29)
	b        lbl_800A0A10

lbl_800A09FC:
	lfs      f0, 0x344(r3)
	stfs     f0, 0x344(r29)
	lwz      r3, 0x2f8(r29)
	lhz      r0, 0x354(r3)
	sth      r0, 0x354(r29)

lbl_800A0A10:
	li       r24, 0

lbl_800A0A14:
	lwz      r3, 0x2fc(r29)
	cmplwi   r3, 0
	beq      lbl_800A0A30
	lbz      r0, 0x35b(r3)
	cmplwi   r0, 0
	beq      lbl_800A0A30
	bl       updateTempo__8JASTrackFv

lbl_800A0A30:
	addi     r24, r24, 1
	addi     r29, r29, 4
	cmpwi    r24, 0x10
	blt      lbl_800A0A14

lbl_800A0A40:
	addi     r30, r30, 1
	addi     r28, r28, 4
	cmpwi    r30, 0x10
	blt      lbl_800A0944

lbl_800A0A50:
	addi     r31, r31, 1
	addi     r27, r27, 4
	cmpwi    r31, 0x10
	blt      lbl_800A0874

lbl_800A0A60:
	addi     r25, r25, 1
	addi     r26, r26, 4
	cmpwi    r25, 0x10
	blt      lbl_800A07A0
	lmw      r24, 0x20(r1)
	lwz      r0, 0x44(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

/**
 * @note Address: 0x800A0A84
 * @note Size: 0x8
 */
f32 JASOuterParam::getTempo() const { return _18; }

/**
 * @note Address: 0x800A0A8C
 * @note Size: 0x294
 */
void JASTrack::updateSeq(u32 p1, bool recursive)
{
	p1 |= _34C;
	if (mExtBuffer != nullptr) {
		p1 |= mExtBuffer->getOuterUpdate();
		mExtBuffer->setOuterUpdate(0);
	}
	mVibrate.incCounter();
	_34C = 0;
	if (p1 != 0) {
		updateTrack(p1);
	}
	for (int i = 0; i < 16; i++) {
		if (_2FC[i] != nullptr && _2FC[i]->_35B != 0) {
			if (recursive) {
				_2FC[i]->updateSeq(p1, recursive);
			} else {
				_2FC[i]->_34C |= p1;
			}
		}
	}
	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	stw      r0, 0x44(r1)
	stmw     r18, 8(r1)
	mr       r18, r3
	mr       r31, r5
	lwz      r3, 0x33c(r3)
	lwz      r0, 0x34c(r18)
	cmplwi   r3, 0
	or       r21, r4, r0
	beq      lbl_800A0AD0
	bl       getOuterUpdate__13JASOuterParamFv
	clrlwi   r0, r3, 0x10
	lwz      r3, 0x33c(r18)
	or       r21, r21, r0
	li       r4, 0
	bl       setOuterUpdate__13JASOuterParamFUs

lbl_800A0AD0:
	addi     r3, r18, 0xe8
	bl       incCounter__10JASVibrateFv
	li       r0, 0
	cmplwi   r21, 0
	stw      r0, 0x34c(r18)
	beq      lbl_800A0AF4
	mr       r3, r18
	mr       r4, r21
	bl       updateTrack__8JASTrackFUl

lbl_800A0AF4:
	li       r20, 0
	mr       r22, r18

lbl_800A0AFC:
	lwz      r18, 0x2fc(r22)
	cmplwi   r18, 0
	beq      lbl_800A0CFC
	lbz      r0, 0x35b(r18)
	cmplwi   r0, 0
	beq      lbl_800A0CFC
	clrlwi.  r0, r31, 0x18
	beq      lbl_800A0CF0
	lwz      r3, 0x33c(r18)
	lwz      r0, 0x34c(r18)
	cmplwi   r3, 0
	or       r29, r21, r0
	beq      lbl_800A0B48
	bl       getOuterUpdate__13JASOuterParamFv
	clrlwi   r0, r3, 0x10
	lwz      r3, 0x33c(r18)
	or       r29, r29, r0
	li       r4, 0
	bl       setOuterUpdate__13JASOuterParamFUs

lbl_800A0B48:
	addi     r3, r18, 0xe8
	bl       incCounter__10JASVibrateFv
	li       r0, 0
	cmplwi   r29, 0
	stw      r0, 0x34c(r18)
	beq      lbl_800A0B6C
	mr       r3, r18
	mr       r4, r29
	bl       updateTrack__8JASTrackFUl

lbl_800A0B6C:
	li       r30, 0
	mr       r23, r18

lbl_800A0B74:
	lwz      r24, 0x2fc(r23)
	cmplwi   r24, 0
	beq      lbl_800A0CDC
	lbz      r0, 0x35b(r24)
	cmplwi   r0, 0
	beq      lbl_800A0CDC
	clrlwi.  r0, r31, 0x18
	beq      lbl_800A0CD0
	lwz      r3, 0x33c(r24)
	lwz      r0, 0x34c(r24)
	cmplwi   r3, 0
	or       r27, r29, r0
	beq      lbl_800A0BC0
	bl       getOuterUpdate__13JASOuterParamFv
	clrlwi   r0, r3, 0x10
	lwz      r3, 0x33c(r24)
	or       r27, r27, r0
	li       r4, 0
	bl       setOuterUpdate__13JASOuterParamFUs

lbl_800A0BC0:
	addi     r3, r24, 0xe8
	bl       incCounter__10JASVibrateFv
	li       r0, 0
	cmplwi   r27, 0
	stw      r0, 0x34c(r24)
	beq      lbl_800A0BE4
	mr       r3, r24
	mr       r4, r27
	bl       updateTrack__8JASTrackFUl

lbl_800A0BE4:
	li       r28, 0

lbl_800A0BE8:
	lwz      r25, 0x2fc(r24)
	cmplwi   r25, 0
	beq      lbl_800A0CBC
	lbz      r0, 0x35b(r25)
	cmplwi   r0, 0
	beq      lbl_800A0CBC
	clrlwi.  r0, r31, 0x18
	beq      lbl_800A0CB0
	lwz      r3, 0x33c(r25)
	lwz      r0, 0x34c(r25)
	cmplwi   r3, 0
	or       r26, r27, r0
	beq      lbl_800A0C34
	bl       getOuterUpdate__13JASOuterParamFv
	clrlwi   r0, r3, 0x10
	lwz      r3, 0x33c(r25)
	or       r26, r26, r0
	li       r4, 0
	bl       setOuterUpdate__13JASOuterParamFUs

lbl_800A0C34:
	addi     r3, r25, 0xe8
	bl       incCounter__10JASVibrateFv
	li       r0, 0
	cmplwi   r26, 0
	stw      r0, 0x34c(r25)
	beq      lbl_800A0C58
	mr       r3, r25
	mr       r4, r26
	bl       updateTrack__8JASTrackFUl

lbl_800A0C58:
	clrlwi   r19, r31, 0x18
	li       r18, 0

lbl_800A0C60:
	lwz      r3, 0x2fc(r25)
	cmplwi   r3, 0
	beq      lbl_800A0C9C
	lbz      r0, 0x35b(r3)
	cmplwi   r0, 0
	beq      lbl_800A0C9C
	cmplwi   r19, 0
	beq      lbl_800A0C90
	mr       r4, r26
	mr       r5, r31
	bl       updateSeq__8JASTrackFUlb
	b        lbl_800A0C9C

lbl_800A0C90:
	lwz      r0, 0x34c(r3)
	or       r0, r0, r26
	stw      r0, 0x34c(r3)

lbl_800A0C9C:
	addi     r18, r18, 1
	addi     r25, r25, 4
	cmpwi    r18, 0x10
	blt      lbl_800A0C60
	b        lbl_800A0CBC

lbl_800A0CB0:
	lwz      r0, 0x34c(r25)
	or       r0, r0, r27
	stw      r0, 0x34c(r25)

lbl_800A0CBC:
	addi     r28, r28, 1
	addi     r24, r24, 4
	cmpwi    r28, 0x10
	blt      lbl_800A0BE8
	b        lbl_800A0CDC

lbl_800A0CD0:
	lwz      r0, 0x34c(r24)
	or       r0, r0, r29
	stw      r0, 0x34c(r24)

lbl_800A0CDC:
	addi     r30, r30, 1
	addi     r23, r23, 4
	cmpwi    r30, 0x10
	blt      lbl_800A0B74
	b        lbl_800A0CFC

lbl_800A0CF0:
	lwz      r0, 0x34c(r18)
	or       r0, r0, r21
	stw      r0, 0x34c(r18)

lbl_800A0CFC:
	addi     r20, r20, 1
	addi     r22, r22, 4
	cmpwi    r20, 0x10
	blt      lbl_800A0AFC
	lmw      r18, 8(r1)
	lwz      r0, 0x44(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

/**
 * @note Address: 0x800A0D20
 * @note Size: 0xD8
 */
void JASTrack::seqTimeToDspTime(s32, u8)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stfd     f31, 0x20(r1)
	psq_st   f31, 40(r1), 0, qr0
	lis      r6, 0x4330
	xoris    r0, r4, 0x8000
	clrlwi   r4, r5, 0x18
	stw      r0, 0xc(r1)
	lbz      r0, 0x364(r3)
	stw      r6, 8(r1)
	lfd      f1, lbl_80516DA8@sda21(r2)
	cmplwi   r0, 0
	lfd      f0, 8(r1)
	stw      r4, 0x14(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	fsubs    f31, f0, f1
	stw      r6, 0x10(r1)
	lfs      f0, lbl_80516D98@sda21(r2)
	lfd      f1, 0x10(r1)
	fsubs    f1, f1, f2
	fmuls    f31, f31, f1
	fdivs    f31, f31, f0
	beq      lbl_800A0D8C
	lfs      f0, 0x344(r3)
	fdivs    f31, f31, f0
	b        lbl_800A0DD4

lbl_800A0D8C:
	lhz      r0, 0x354(r3)
	stw      r6, 0x10(r1)
	lfs      f1, lbl_80516D9C@sda21(r2)
	stw      r0, 0x14(r1)
	lfd      f0, 0x10(r1)
	fsubs    f0, f0, f2
	fdivs    f0, f1, f0
	fmuls    f31, f31, f0
	bl       getSubFrames__9JASDriverFv
	lis      r0, 0x4330
	stw      r3, 0xc(r1)
	lfd      f2, lbl_80516D80@sda21(r2)
	stw      r0, 8(r1)
	lfs      f0, lbl_80516DA0@sda21(r2)
	lfd      f1, 8(r1)
	fsubs    f1, f1, f2
	fdivs    f0, f1, f0
	fmuls    f31, f31, f0

lbl_800A0DD4:
	fctiwz   f0, f31
	stfd     f0, 0x10(r1)
	lwz      r3, 0x14(r1)
	psq_l    f31, 40(r1), 0, qr0
	lwz      r0, 0x34(r1)
	lfd      f31, 0x20(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x800A0DF8
 * @note Size: 0x84
 */
void JASTrack::setParam(int paramIndex, f32 p2, int p3)
{
	MoveParam_* moveParam = mTimedParam.mMoveParams + paramIndex;
	moveParam->_04        = p2;
	if (p3 <= 1) {
		moveParam->_00 = moveParam->_04;
		moveParam->_0C = 0.0f;
		moveParam->_08 = 1.0f;
	} else {
		moveParam->_0C = (moveParam->_04 - moveParam->_00) / p3;
		moveParam->_08 = p3;
	}
	/*
	slwi     r4, r4, 4
	stwu     r1, -0x20(r1)
	addi     r4, r4, 0x148
	cmpwi    r5, 0
	add      r4, r3, r4
	stfs     f1, 4(r4)
	bgt      lbl_800A0E30
	lfs      f0, 4(r4)
	lfs      f1, lbl_80516D78@sda21(r2)
	stfs     f0, 0(r4)
	lfs      f0, lbl_80516D7C@sda21(r2)
	stfs     f1, 0xc(r4)
	stfs     f0, 8(r4)
	b        lbl_800A0E74

lbl_800A0E30:
	xoris    r3, r5, 0x8000
	lis      r0, 0x4330
	stw      r3, 0xc(r1)
	lfs      f3, 4(r4)
	stw      r0, 8(r1)
	lfs      f1, 0(r4)
	lfd      f2, lbl_80516DA8@sda21(r2)
	lfd      f0, 8(r1)
	fsubs    f1, f3, f1
	stw      r3, 0x14(r1)
	fsubs    f0, f0, f2
	stw      r0, 0x10(r1)
	fdivs    f1, f1, f0
	lfd      f0, 0x10(r1)
	fsubs    f0, f0, f2
	stfs     f1, 0xc(r4)
	stfs     f0, 8(r4)

lbl_800A0E74:
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x800A0E7C
 * @note Size: 0x64
 */
bool JASTrack::setSeqData(u8* p1, s32 p2)
{
	init();
	_357 = 3;
	mSeqCtrl.start(p1, 0);
	updateTrackAll();
	_35B = 2;
	return true;
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	stw      r30, 8(r1)
	mr       r30, r3
	bl       init__8JASTrackFv
	li       r0, 3
	mr       r4, r31
	stb      r0, 0x357(r30)
	addi     r3, r30, 0xc
	li       r5, 0
	bl       start__10JASSeqCtrlFPvUl
	mr       r3, r30
	bl       updateTrackAll__8JASTrackFv
	li       r0, 2
	li       r3, 1
	stb      r0, 0x35b(r30)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A0EE0
 * @note Size: 0x78
 */
bool JASTrack::startSeq()
{
	switch (_35B) {
	case 0:
		return false;
		break;
	case 1:
		return false;
		break;
	case 2:
		_35B = 1;
		break;
	case 3:
		return false;
		break;
	default:
		break;
	}
	return JASDriver::registerSubFrameCallback(rootCallback, this);
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lbz      r0, 0x35b(r3)
	cmpwi    r0, 2
	beq      lbl_800A0F30
	bge      lbl_800A0F0C
	cmpwi    r0, 0
	beq      lbl_800A0F18
	bge      lbl_800A0F20
	b        lbl_800A0F38

lbl_800A0F0C:
	cmpwi    r0, 4
	bge      lbl_800A0F38
	b        lbl_800A0F28

lbl_800A0F18:
	li       r3, 0
	b        lbl_800A0F48

lbl_800A0F20:
	li       r3, 0
	b        lbl_800A0F48

lbl_800A0F28:
	li       r3, 0
	b        lbl_800A0F48

lbl_800A0F30:
	li       r0, 1
	stb      r0, 0x35b(r3)

lbl_800A0F38:
	lis      r5, rootCallback__8JASTrackFPv@ha
	mr       r4, r3
	addi     r3, r5, rootCallback__8JASTrackFPv@l
	bl       registerSubFrameCallback__9JASDriverFPFPv_lPv

lbl_800A0F48:
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A0F58
 * @note Size: 0xFC
 */
bool JASTrack::stopSeq()
{
	switch (_35B) {
	case 0:
		return true;
		break;
	case 2:
		_35B = 0;
		if (_366 == 0) {
			return true;
		}
		if (getFirst() == nullptr) {
			return true;
		}
		for (JSULink<JASChannel>* link = getFirst(); link != nullptr; link = link->getNext()) {
			link->getObject()->release(0);
			link->getObject()->free();
			remove(link);
		}
		if (getFirst() != nullptr) {
			// getFirst()->getObject()->~JSUList();
		}
		mHead = nullptr;
		if (sFreeListEnd == nullptr) {
			sFreeList    = this;
			sFreeListEnd = this;
		}
		return true;
		break;
	case 1:
	default:
		_35B = 3;
		return true;
		break;
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r3
	lbz      r0, 0x35b(r3)
	cmpwi    r0, 1
	beq      lbl_800A102C
	bge      lbl_800A0F90
	cmpwi    r0, 0
	bge      lbl_800A1034
	b        lbl_800A102C

lbl_800A0F90:
	cmpwi    r0, 3
	bge      lbl_800A102C
	li       r0, 0
	stb      r0, 0x35b(r29)
	lbz      r0, 0x366(r29)
	cmplwi   r0, 0
	beq      lbl_800A1034
	cmplwi   r29, 0
	beq      lbl_800A1034
	lwz      r30, 0(r29)
	b        lbl_800A0FE8

lbl_800A0FBC:
	lwz      r3, 0(r30)
	li       r4, 0
	lwz      r31, 0xc(r3)
	bl       release__10JASChannelFUs
	lwz      r3, 0(r30)
	bl       free__10JASChannelFv
	lwz      r4, 0(r30)
	mr       r3, r29
	lwz      r4, 0(r4)
	bl       remove__10JSUPtrListFP10JSUPtrLink
	mr       r30, r31

lbl_800A0FE8:
	cmplwi   r30, 0
	bne      lbl_800A0FBC
	cmplwi   r29, 0
	beq      lbl_800A1004
	mr       r3, r29
	li       r4, 0
	bl       __dt__10JSUPtrListFv

lbl_800A1004:
	li       r0, 0
	stw      r0, 0(r29)
	lwz      r3, sFreeListEnd__8JASTrack@sda21(r13)
	cmplwi   r3, 0
	beq      lbl_800A1020
	stw      r29, 0(r3)
	b        lbl_800A1024

lbl_800A1020:
	stw      r29, sFreeList__8JASTrack@sda21(r13)

lbl_800A1024:
	stw      r29, sFreeListEnd__8JASTrack@sda21(r13)
	b        lbl_800A1034

lbl_800A102C:
	li       r0, 3
	stb      r0, 0x35b(r29)

lbl_800A1034:
	lwz      r0, 0x24(r1)
	li       r3, 1
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x800A1054
 * @note Size: 0x3C
 */
void JASTrack::stopSeqMain()
{
	updateSeq(0, true);
	close();
}

/**
 * @note Address: 0x800A1090
 * @note Size: 0x1D4
 */
void JASTrack::close()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	mr       r31, r3
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	stw      r28, 0x10(r1)
	lbz      r0, 0x35b(r3)
	cmplwi   r0, 0
	beq      lbl_800A1244
	lwz      r0, 0x2f8(r31)
	cmplwi   r0, 0
	bne      lbl_800A1108
	li       r28, 0
	li       r30, 0
	b        lbl_800A10F8

lbl_800A10D4:
	rlwinm   r3, r28, 2, 0x16, 0x1d
	addi     r29, r3, 0xc0
	lwzx     r3, r31, r29
	cmplwi   r3, 0
	beq      lbl_800A10F4
	li       r4, 0xa
	bl       release__10JASChannelFUs
	stwx     r30, r31, r29

lbl_800A10F4:
	addi     r28, r28, 1

lbl_800A10F8:
	clrlwi   r0, r28, 0x18
	cmplwi   r0, 8
	blt      lbl_800A10D4
	b        lbl_800A1144

lbl_800A1108:
	li       r28, 0
	li       r30, 0
	b        lbl_800A1138

lbl_800A1114:
	rlwinm   r3, r28, 2, 0x16, 0x1d
	addi     r29, r3, 0xc0
	lwzx     r3, r31, r29
	cmplwi   r3, 0
	beq      lbl_800A1134
	li       r4, 0
	bl       release__10JASChannelFUs
	stwx     r30, r31, r29

lbl_800A1134:
	addi     r28, r28, 1

lbl_800A1138:
	clrlwi   r0, r28, 0x18
	cmplwi   r0, 8
	blt      lbl_800A1114

lbl_800A1144:
	li       r30, 0
	mr       r29, r31
	stb      r30, 0x35b(r31)
	li       r28, 0

lbl_800A1154:
	lwz      r3, 0x2fc(r29)
	cmplwi   r3, 0
	beq      lbl_800A1168
	bl       close__8JASTrackFv
	stw      r30, 0x2fc(r29)

lbl_800A1168:
	addi     r28, r28, 1
	addi     r29, r29, 4
	cmpwi    r28, 0x10
	blt      lbl_800A1154
	li       r0, 0
	stb      r0, 0x363(r31)
	lwz      r29, 0(r31)
	b        lbl_800A11B4

lbl_800A1188:
	lwz      r3, 0(r29)
	li       r4, 0
	lwz      r30, 0xc(r3)
	bl       release__10JASChannelFUs
	lwz      r3, 0(r29)
	bl       free__10JASChannelFv
	lwz      r4, 0(r29)
	mr       r3, r31
	lwz      r4, 0(r4)
	bl       remove__10JSUPtrListFP10JSUPtrLink
	mr       r29, r30

lbl_800A11B4:
	cmplwi   r29, 0
	bne      lbl_800A1188
	lbz      r0, 0x366(r31)
	cmplwi   r0, 0
	beq      lbl_800A1244
	cmplwi   r31, 0
	beq      lbl_800A1244
	lwz      r29, 0(r31)
	b        lbl_800A1204

lbl_800A11D8:
	lwz      r3, 0(r29)
	li       r4, 0
	lwz      r30, 0xc(r3)
	bl       release__10JASChannelFUs
	lwz      r3, 0(r29)
	bl       free__10JASChannelFv
	lwz      r4, 0(r29)
	mr       r3, r31
	lwz      r4, 0(r4)
	bl       remove__10JSUPtrListFP10JSUPtrLink
	mr       r29, r30

lbl_800A1204:
	cmplwi   r29, 0
	bne      lbl_800A11D8
	cmplwi   r31, 0
	beq      lbl_800A1220
	mr       r3, r31
	li       r4, 0
	bl       __dt__10JSUPtrListFv

lbl_800A1220:
	li       r0, 0
	stw      r0, 0(r31)
	lwz      r3, sFreeListEnd__8JASTrack@sda21(r13)
	cmplwi   r3, 0
	beq      lbl_800A123C
	stw      r31, 0(r3)
	b        lbl_800A1240

lbl_800A123C:
	stw      r31, sFreeList__8JASTrack@sda21(r13)

lbl_800A1240:
	stw      r31, sFreeListEnd__8JASTrack@sda21(r13)

lbl_800A1244:
	lwz      r0, 0x24(r1)
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
 * @note Address: 0x800A1264
 * @note Size: 0x80
 */
void JASTrack::setNoteMask(u8 noteMask)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r26, 8(r1)
	mr       r26, r3
	clrlwi   r29, r4, 0x18
	li       r27, 0
	li       r30, 1
	li       r31, 0
	stb      r4, 0x35a(r3)
	b        lbl_800A12C4

lbl_800A1290:
	clrlwi   r0, r27, 0x18
	slw      r0, r30, r0
	and.     r0, r29, r0
	beq      lbl_800A12C0
	rlwinm   r3, r27, 2, 0x16, 0x1d
	addi     r28, r3, 0xc0
	lwzx     r3, r26, r28
	cmplwi   r3, 0
	beq      lbl_800A12C0
	li       r4, 0xa
	bl       release__10JASChannelFUs
	stwx     r31, r26, r28

lbl_800A12C0:
	addi     r27, r27, 1

lbl_800A12C4:
	clrlwi   r0, r27, 0x18
	cmplwi   r0, 8
	blt      lbl_800A1290
	lmw      r26, 8(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x800A12E4
 * @note Size: 0x234
 */
void JASTrack::muteTrack(bool)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stmw     r23, 0xc(r1)
	mr       r26, r4
	mr       r28, r3
	stb      r26, 0x363(r3)
	lwz      r0, 0x34c(r3)
	ori      r0, r0, 1
	stw      r0, 0x34c(r3)
	lbz      r0, 0x363(r3)
	cmplwi   r0, 0
	beq      lbl_800A1360
	lbz      r0, 0x358(r28)
	rlwinm.  r0, r0, 0, 0x1a, 0x1a
	beq      lbl_800A1360
	li       r24, 0
	li       r25, 0
	b        lbl_800A1354

lbl_800A1330:
	rlwinm   r3, r24, 2, 0x16, 0x1d
	addi     r23, r3, 0xc0
	lwzx     r3, r28, r23
	cmplwi   r3, 0
	beq      lbl_800A1350
	li       r4, 0xa
	bl       release__10JASChannelFUs
	stwx     r25, r28, r23

lbl_800A1350:
	addi     r24, r24, 1

lbl_800A1354:
	clrlwi   r0, r24, 0x18
	cmplwi   r0, 8
	blt      lbl_800A1330

lbl_800A1360:
	li       r27, 0

lbl_800A1364:
	lwz      r24, 0x2fc(r28)
	cmplwi   r24, 0
	beq      lbl_800A14F4
	stb      r26, 0x363(r24)
	lwz      r0, 0x34c(r24)
	ori      r0, r0, 1
	stw      r0, 0x34c(r24)
	lbz      r0, 0x363(r24)
	cmplwi   r0, 0
	beq      lbl_800A13D4
	lbz      r0, 0x358(r24)
	rlwinm.  r0, r0, 0, 0x1a, 0x1a
	beq      lbl_800A13D4
	li       r29, 0
	mr       r25, r29
	b        lbl_800A13C8

lbl_800A13A4:
	rlwinm   r3, r29, 2, 0x16, 0x1d
	addi     r23, r3, 0xc0
	lwzx     r3, r24, r23
	cmplwi   r3, 0
	beq      lbl_800A13C4
	li       r4, 0xa
	bl       release__10JASChannelFUs
	stwx     r25, r24, r23

lbl_800A13C4:
	addi     r29, r29, 1

lbl_800A13C8:
	clrlwi   r0, r29, 0x18
	cmplwi   r0, 8
	blt      lbl_800A13A4

lbl_800A13D4:
	li       r31, 0
	mr       r29, r24

lbl_800A13DC:
	lwz      r30, 0x2fc(r29)
	cmplwi   r30, 0
	beq      lbl_800A14E4
	stb      r26, 0x363(r30)
	lwz      r0, 0x34c(r30)
	ori      r0, r0, 1
	stw      r0, 0x34c(r30)
	lbz      r0, 0x363(r30)
	cmplwi   r0, 0
	beq      lbl_800A144C
	lbz      r0, 0x358(r30)
	rlwinm.  r0, r0, 0, 0x1a, 0x1a
	beq      lbl_800A144C
	li       r24, 0
	mr       r25, r24
	b        lbl_800A1440

lbl_800A141C:
	rlwinm   r3, r24, 2, 0x16, 0x1d
	addi     r23, r3, 0xc0
	lwzx     r3, r30, r23
	cmplwi   r3, 0
	beq      lbl_800A143C
	li       r4, 0xa
	bl       release__10JASChannelFUs
	stwx     r25, r30, r23

lbl_800A143C:
	addi     r24, r24, 1

lbl_800A1440:
	clrlwi   r0, r24, 0x18
	cmplwi   r0, 8
	blt      lbl_800A141C

lbl_800A144C:
	li       r25, 0

lbl_800A1450:
	lwz      r23, 0x2fc(r30)
	cmplwi   r23, 0
	beq      lbl_800A14D4
	stb      r26, 0x363(r23)
	lwz      r0, 0x34c(r23)
	ori      r0, r0, 1
	stw      r0, 0x34c(r23)
	lbz      r0, 0x363(r23)
	cmplwi   r0, 0
	beq      lbl_800A14AC
	lbz      r0, 0x358(r23)
	rlwinm.  r0, r0, 0, 0x1a, 0x1a
	beq      lbl_800A14AC
	li       r24, 0
	b        lbl_800A14A0

lbl_800A148C:
	mr       r3, r23
	mr       r4, r24
	li       r5, 0xa
	bl       noteOff__8JASTrackFUcUs
	addi     r24, r24, 1

lbl_800A14A0:
	clrlwi   r0, r24, 0x18
	cmplwi   r0, 8
	blt      lbl_800A148C

lbl_800A14AC:
	li       r24, 0

lbl_800A14B0:
	lwz      r3, 0x2fc(r23)
	cmplwi   r3, 0
	beq      lbl_800A14C4
	mr       r4, r26
	bl       muteTrack__8JASTrackFb

lbl_800A14C4:
	addi     r24, r24, 1
	addi     r23, r23, 4
	cmpwi    r24, 0x10
	blt      lbl_800A14B0

lbl_800A14D4:
	addi     r25, r25, 1
	addi     r30, r30, 4
	cmpwi    r25, 0x10
	blt      lbl_800A1450

lbl_800A14E4:
	addi     r31, r31, 1
	addi     r29, r29, 4
	cmpwi    r31, 0x10
	blt      lbl_800A13DC

lbl_800A14F4:
	addi     r27, r27, 1
	addi     r28, r28, 4
	cmpwi    r27, 0x10
	blt      lbl_800A1364
	lmw      r23, 0xc(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x68
 */
void JASTrack::muteChildTracks(u16)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800A1518
 * @note Size: 0x44
 */
bool JASTrack::start(void* p1, u32 p2)
{
	mSeqCtrl.start(p1, p2);
	_35B = 1;
	updateTrackAll();
	return false;
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r3
	addi     r3, r31, 0xc
	bl       start__10JASSeqCtrlFPvUl
	li       r0, 1
	mr       r3, r31
	stb      r0, 0x35b(r31)
	bl       updateTrackAll__8JASTrackFv
	lwz      r0, 0x14(r1)
	li       r3, 0
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A155C
 * @note Size: 0x1DC
 */
void JASTrack::openChild(u8, u8)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	rlwinm   r0, r4, 2, 0x16, 0x1d
	stmw     r27, 0xc(r1)
	mr       r27, r3
	add      r30, r27, r0
	mr       r28, r4
	mr       r29, r5
	lwz      r3, 0x2fc(r30)
	cmplwi   r3, 0
	beq      lbl_800A1598
	bl       close__8JASTrackFv
	li       r0, 0
	stw      r0, 0x2fc(r30)

lbl_800A1598:
	lwz      r31, sFreeList__8JASTrack@sda21(r13)
	cmplwi   r31, 0
	bne      lbl_800A15AC
	li       r31, 0
	b        lbl_800A15C4

lbl_800A15AC:
	lwz      r0, 0(r31)
	cmplwi   r0, 0
	stw      r0, sFreeList__8JASTrack@sda21(r13)
	bne      lbl_800A15C4
	li       r0, 0
	stw      r0, sFreeListEnd__8JASTrack@sda21(r13)

lbl_800A15C4:
	cmplwi   r31, 0
	beq      lbl_800A15D8
	mr       r3, r31
	bl       __ct__8JASTrackFv
	mr       r31, r3

lbl_800A15D8:
	cmplwi   r31, 0
	bne      lbl_800A15E8
	li       r3, 0
	b        lbl_800A1724

lbl_800A15E8:
	mr       r3, r31
	bl       init__8JASTrackFv
	li       r3, 1
	clrlwi   r0, r28, 0x18
	stb      r3, 0x366(r31)
	stw      r27, 0x2f8(r31)
	stb      r29, 0x357(r31)
	lwz      r4, 0x348(r27)
	slwi     r3, r4, 4
	rlwinm   r4, r4, 0, 0, 3
	or       r0, r3, r0
	addis    r3, r4, 0x1000
	clrlwi   r0, r0, 4
	or       r0, r3, r0
	stw      r0, 0x348(r31)
	stw      r31, 0x2fc(r30)
	lwz      r3, 0x2f8(r31)
	cmplwi   r3, 0
	beq      lbl_800A1720
	lhz      r3, 0x352(r3)
	li       r0, 0
	sth      r3, 0x352(r31)
	stb      r0, 0x365(r31)
	lwz      r3, 0x2f8(r31)
	lfs      f0, 0x344(r3)
	stfs     f0, 0x344(r31)
	lwz      r3, 0x2f8(r31)
	lhz      r0, 0x354(r3)
	sth      r0, 0x354(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x364(r3)
	stb      r0, 0x364(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x362(r3)
	stb      r0, 0x362(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x358(r3)
	stb      r0, 0x358(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x359(r3)
	stb      r0, 0x359(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x363(r3)
	stb      r0, 0x363(r31)
	lbz      r0, 0x357(r31)
	rlwinm.  r0, r0, 0, 0x1e, 0x1e
	bne      lbl_800A1720
	lwz      r4, 0x2f8(r31)
	addi     r3, r31, 0x268
	addi     r4, r4, 0x268
	bl       inherit__16JASRegisterParamFRC16JASRegisterParam
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x35c(r3)
	stb      r0, 0x35c(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x35f(r3)
	stb      r0, 0x35f(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x13e(r3)
	stb      r0, 0x13e(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x35d(r3)
	stb      r0, 0x35d(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x360(r3)
	stb      r0, 0x360(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x13f(r3)
	stb      r0, 0x13f(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x35e(r3)
	stb      r0, 0x35e(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x361(r3)
	stb      r0, 0x361(r31)
	lwz      r3, 0x2f8(r31)
	lbz      r0, 0x140(r3)
	stb      r0, 0x140(r31)

lbl_800A1720:
	mr       r3, r31

lbl_800A1724:
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0xB8
 */
void JASTrack::loadTbl(u32, u32, u32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800A1738
 * @note Size: 0x40
 */
void JASTrack::exchangeRegisterValue(u8)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	clrlwi   r0, r4, 0x18
	cmplwi   r0, 0x40
	bge      lbl_800A1758
	bl       readReg32__8JASTrackFUc
	b        lbl_800A1768

lbl_800A1758:
	addi     r0, r4, -64
	rlwinm   r0, r0, 1, 0x17, 0x1e
	add      r3, r3, r0
	lhz      r3, 0x74(r3)

lbl_800A1768:
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A1778
 * @note Size: 0x94
 */
void JASTrack::readReg32(u8)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	clrlwi   r0, r4, 0x18
	cmpwi    r0, 0x28
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r3
	bge      lbl_800A17A8
	cmpwi    r0, 0x23
	beq      lbl_800A17C0
	b        lbl_800A17E4

lbl_800A17A8:
	cmpwi    r0, 0x2c
	bge      lbl_800A17E4
	slwi     r0, r0, 2
	add      r3, r30, r0
	lwz      r31, 0x1e8(r3)
	b        lbl_800A17F0

lbl_800A17C0:
	li       r4, 4
	bl       readReg16__8JASTrackFUc
	slwi     r31, r3, 0x10
	li       r4, 5
	mr       r3, r30
	bl       readReg16__8JASTrackFUc
	clrlwi   r0, r3, 0x10
	or       r31, r31, r0
	b        lbl_800A17F0

lbl_800A17E4:
	mr       r3, r30
	bl       readReg16__8JASTrackFUc
	clrlwi   r31, r3, 0x10

lbl_800A17F0:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A180C
 * @note Size: 0x218
 */
u32 JASTrack::readReg16(u8)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	clrlwi   r5, r4, 0x18
	stw      r0, 0x14(r1)
	addi     r0, r5, -32
	cmplwi   r0, 0x10
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r3
	bgt      lbl_800A19FC
	lis      r5, lbl_804A4350@ha
	slwi     r0, r0, 2
	addi     r5, r5, lbl_804A4350@l
	lwzx     r0, r5, r0
	mtctr    r0
	bctr
	.global  lbl_800A184C

lbl_800A184C:
	addi     r3, r30, 0x268
	bl       getBankNumber__16JASRegisterParamCFv
	clrlwi   r31, r3, 0x18
	b        lbl_800A1A08
	.global  lbl_800A185C

lbl_800A185C:
	addi     r3, r30, 0x268
	bl       getProgramNumber__16JASRegisterParamCFv
	clrlwi   r31, r3, 0x18
	b        lbl_800A1A08
	.global  lbl_800A186C

lbl_800A186C:
	li       r4, 0
	bl       readReg16__8JASTrackFUc
	rlwinm   r31, r3, 8, 0x10, 0x17
	mr       r3, r30
	li       r4, 1
	bl       readReg16__8JASTrackFUc
	or       r31, r31, r3
	b        lbl_800A1A08
	.global  lbl_800A188C

lbl_800A188C:
	li       r0, 4
	addi     r3, r30, 0x3c
	li       r31, 0
	li       r5, 0xf
	mtctr    r0

lbl_800A18A0:
	lwz      r4, 0x2fc(r3)
	rlwinm   r31, r31, 1, 0x10, 0x1e
	cmplwi   r4, 0
	beq      lbl_800A18C4
	lbz      r0, 0x35b(r4)
	cmplwi   r0, 0
	beq      lbl_800A18C4
	ori      r0, r31, 1
	clrlwi   r31, r0, 0x10

lbl_800A18C4:
	lwz      r4, 0x2f8(r3)
	rlwinm   r31, r31, 1, 0x10, 0x1e
	cmplwi   r4, 0
	beq      lbl_800A18E8
	lbz      r0, 0x35b(r4)
	cmplwi   r0, 0
	beq      lbl_800A18E8
	ori      r0, r31, 1
	clrlwi   r31, r0, 0x10

lbl_800A18E8:
	lwz      r4, 0x2f4(r3)
	rlwinm   r31, r31, 1, 0x10, 0x1e
	cmplwi   r4, 0
	beq      lbl_800A190C
	lbz      r0, 0x35b(r4)
	cmplwi   r0, 0
	beq      lbl_800A190C
	ori      r0, r31, 1
	clrlwi   r31, r0, 0x10

lbl_800A190C:
	lwz      r4, 0x2f0(r3)
	rlwinm   r31, r31, 1, 0x10, 0x1e
	cmplwi   r4, 0
	beq      lbl_800A1930
	lbz      r0, 0x35b(r4)
	cmplwi   r0, 0
	beq      lbl_800A1930
	ori      r0, r31, 1
	clrlwi   r31, r0, 0x10

lbl_800A1930:
	addi     r3, r3, -16
	addi     r5, r5, -3
	bdnz     lbl_800A18A0
	b        lbl_800A1A08
	.global  lbl_800A1940

lbl_800A1940:
	li       r0, 4
	addi     r4, r30, 0x1c
	li       r31, 0
	li       r5, 7
	mtctr    r0

lbl_800A1954:
	lwz      r3, 0xc0(r4)
	rlwinm   r31, r31, 1, 0x10, 0x1e
	cmplwi   r3, 0
	bne      lbl_800A196C
	li       r0, 1
	b        lbl_800A1984

lbl_800A196C:
	lwz      r0, 0x18(r3)
	cmpwi    r0, 0
	bne      lbl_800A1980
	li       r0, 1
	b        lbl_800A1984

lbl_800A1980:
	li       r0, 0

lbl_800A1984:
	lwz      r3, 0xbc(r4)
	clrlwi   r0, r0, 0x18
	or       r31, r31, r0
	cmplwi   r3, 0
	rlwinm   r31, r31, 1, 0x10, 0x1e
	bne      lbl_800A19A4
	li       r0, 1
	b        lbl_800A19BC

lbl_800A19A4:
	lwz      r0, 0x18(r3)
	cmpwi    r0, 0
	bne      lbl_800A19B8
	li       r0, 1
	b        lbl_800A19BC

lbl_800A19B8:
	li       r0, 0

lbl_800A19BC:
	clrlwi   r0, r0, 0x18
	addi     r5, r5, -1
	or       r31, r31, r0
	addi     r4, r4, -8
	bdnz     lbl_800A1954
	b        lbl_800A1A08
	.global  lbl_800A19D4

lbl_800A19D4:
	lwz      r0, 0x18(r30)
	cmplwi   r0, 0
	bne      lbl_800A19E8
	li       r0, 0
	b        lbl_800A19F4

lbl_800A19E8:
	slwi     r0, r0, 1
	add      r3, r30, r0
	lhz      r0, 0x3a(r3)

lbl_800A19F4:
	mr       r31, r0
	b        lbl_800A1A08
	.global  lbl_800A19FC

lbl_800A19FC:
	rlwinm   r0, r4, 1, 0x17, 0x1e
	add      r3, r30, r0
	lhz      r31, 0x268(r3)

lbl_800A1A08:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A1A24
 * @note Size: 0xD0
 */
void JASTrack::writeRegDirect(u8, u16)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	clrlwi   r0, r4, 0x18
	cmpwi    r0, 0x20
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	mr       r30, r4
	stw      r29, 0x14(r1)
	mr       r29, r5
	stw      r28, 0x10(r1)
	mr       r28, r3
	bge      lbl_800A1A6C
	cmpwi    r0, 3
	bge      lbl_800A1AC0
	cmpwi    r0, 0
	bge      lbl_800A1A7C
	b        lbl_800A1AC0

lbl_800A1A6C:
	cmpwi    r0, 0x22
	beq      lbl_800A1A94
	bge      lbl_800A1AC0
	b        lbl_800A1AD4

lbl_800A1A7C:
	clrlwi   r3, r29, 0x18
	mr       r29, r3
	bl       extend8to16__9JASPlayerFUc
	clrlwi   r4, r3, 0x10
	b        lbl_800A1AC4
	b        lbl_800A1AD4

lbl_800A1A94:
	rlwinm   r31, r29, 0x18, 0x18, 0x1f
	clrlwi   r30, r29, 0x10
	mr       r3, r31
	bl       extend8to16__9JASPlayerFUc
	sth      r31, 0x268(r28)
	clrlwi   r0, r30, 0x18
	mr       r4, r29
	li       r30, 1
	sth      r3, 0x26e(r28)
	mr       r29, r0
	b        lbl_800A1AC4

lbl_800A1AC0:
	mr       r4, r29

lbl_800A1AC4:
	rlwinm   r0, r30, 1, 0x17, 0x1e
	add      r3, r28, r0
	sth      r29, 0x268(r3)
	sth      r4, 0x26e(r28)

lbl_800A1AD4:
	lwz      r0, 0x24(r1)
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
 * @note Address: N/A
 * @note Size: 0x8
 */
void JASRegisterParam::setFlag(u16)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x8
 */
void JSULoByte(u16)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800A1AF4
 * @note Size: 0x5B0
 */
void JASTrack::writeRegParam(u8)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	clrlwi   r0, r4, 0x1c
	cmpwi    r0, 0xa
	stmw     r22, 8(r1)
	mr       r31, r3
	clrlwi   r3, r4, 0x18
	beq      lbl_800A1B3C
	bge      lbl_800A1B28
	cmpwi    r0, 9
	bge      lbl_800A1B60
	b        lbl_800A1B88

lbl_800A1B28:
	cmpwi    r0, 0xc
	bge      lbl_800A1B88
	li       r27, 0
	li       r26, 0xb
	b        lbl_800A1B90

lbl_800A1B3C:
	lwz      r3, 0x10(r31)
	li       r26, 0xa
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r0, 0(r3)
	rlwinm   r3, r0, 0x1c, 0x1c, 0x1f
	rlwinm   r27, r0, 0, 0x1c, 0x1d
	addi     r25, r3, 4
	b        lbl_800A1B90

lbl_800A1B60:
	lwz      r3, 0x10(r31)
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r0, 0(r3)
	rlwinm   r27, r0, 0, 0x1c, 0x1d
	rlwinm   r26, r0, 0, 0x18, 0x1b
	cmplwi   r27, 8
	bne      lbl_800A1B90
	li       r27, 0x10
	b        lbl_800A1B90

lbl_800A1B88:
	rlwinm   r27, r3, 0, 0x1c, 0x1d
	clrlwi   r26, r3, 0x1e

lbl_800A1B90:
	lwz      r3, 0x10(r31)
	cmplwi   r26, 0xa
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r30, 0(r3)
	bne      lbl_800A1C1C
	lwz      r3, 0x10(r31)
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r4, 0(r3)
	cmpwi    r4, 0x28
	bge      lbl_800A1BCC
	cmpwi    r4, 0x23
	beq      lbl_800A1BE4
	b        lbl_800A1C0C

lbl_800A1BCC:
	cmpwi    r4, 0x2c
	bge      lbl_800A1C0C
	slwi     r0, r4, 2
	add      r3, r31, r0
	lwz      r22, 0x1e8(r3)
	b        lbl_800A1C18

lbl_800A1BE4:
	mr       r3, r31
	li       r4, 4
	bl       readReg16__8JASTrackFUc
	slwi     r22, r3, 0x10
	li       r4, 5
	mr       r3, r31
	bl       readReg16__8JASTrackFUc
	clrlwi   r0, r3, 0x10
	or       r22, r22, r0
	b        lbl_800A1C18

lbl_800A1C0C:
	mr       r3, r31
	bl       readReg16__8JASTrackFUc
	clrlwi   r22, r3, 0x10

lbl_800A1C18:
	mr       r24, r22

lbl_800A1C1C:
	cmplwi   r27, 0x10
	bgt      lbl_800A1CBC
	lis      r3, lbl_804A4394@ha
	slwi     r0, r27, 2
	addi     r3, r3, lbl_804A4394@l
	lwzx     r0, r3, r0
	mtctr    r0
	bctr
	.global  lbl_800A1C3C

lbl_800A1C3C:
	lwz      r4, 0x10(r31)
	mr       r3, r31
	addi     r0, r4, 1
	stw      r0, 0x10(r31)
	lbz      r4, 0(r4)
	bl       readReg16__8JASTrackFUc
	extsh    r23, r3
	b        lbl_800A1CBC
	.global  lbl_800A1C5C

lbl_800A1C5C:
	lwz      r3, 0x10(r31)
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r23, 0(r3)
	b        lbl_800A1CBC
	.global  lbl_800A1C70

lbl_800A1C70:
	addi     r3, r31, 0xc
	bl       read16__10JASSeqCtrlFv
	extsh    r23, r3
	b        lbl_800A1CBC
	.global  lbl_800A1C80

lbl_800A1C80:
	lwz      r3, 0x10(r31)
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r4, 0(r3)
	rlwinm.  r0, r4, 0, 0x18, 0x18
	beq      lbl_800A1CA4
	slwi     r0, r4, 8
	extsh    r23, r0
	b        lbl_800A1CBC

lbl_800A1CA4:
	slwi     r3, r4, 8
	slwi     r0, r4, 1
	or       r0, r3, r0
	extsh    r23, r0
	b        lbl_800A1CBC
	.global  lbl_800A1CB8

lbl_800A1CB8:
	li       r23, -1
	.global  lbl_800A1CBC

lbl_800A1CBC:
	mr       r3, r31
	mr       r4, r30
	bl       readReg16__8JASTrackFUc
	cmpwi    r26, 0x20
	extsh    r22, r3
	beq      lbl_800A1E08
	bge      lbl_800A1D24
	cmpwi    r26, 0xa
	beq      lbl_800A1E8C
	bge      lbl_800A1D0C
	cmpwi    r26, 2
	beq      lbl_800A1D7C
	bge      lbl_800A1D00
	cmpwi    r26, 0
	beq      lbl_800A1F30
	bge      lbl_800A1D60
	b        lbl_800A1F30

lbl_800A1D00:
	cmpwi    r26, 4
	bge      lbl_800A1F30
	b        lbl_800A1DA8

lbl_800A1D0C:
	cmpwi    r26, 0x10
	beq      lbl_800A1DC0
	bge      lbl_800A1F30
	cmpwi    r26, 0xc
	bge      lbl_800A1F30
	b        lbl_800A1DB4

lbl_800A1D24:
	cmpwi    r26, 0x50
	beq      lbl_800A1E58
	bge      lbl_800A1D48
	cmpwi    r26, 0x40
	beq      lbl_800A1E50
	bge      lbl_800A1F30
	cmpwi    r26, 0x30
	beq      lbl_800A1E48
	b        lbl_800A1F30

lbl_800A1D48:
	cmpwi    r26, 0x90
	beq      lbl_800A1E6C
	bge      lbl_800A1F30
	cmpwi    r26, 0x60
	beq      lbl_800A1E60
	b        lbl_800A1F30

lbl_800A1D60:
	cmplwi   r27, 4
	bne      lbl_800A1D74
	clrlwi   r3, r23, 0x18
	bl       extend8to16__9JASPlayerFUc
	mr       r23, r3

lbl_800A1D74:
	add      r23, r23, r22
	b        lbl_800A1F30

lbl_800A1D7C:
	extsh    r0, r23
	mr       r3, r31
	mullw    r22, r22, r0
	li       r4, 4
	srwi     r5, r22, 0x10
	bl       writeRegDirect__8JASTrackFUcUs
	clrlwi   r5, r22, 0x10
	mr       r3, r31
	li       r4, 5
	bl       writeRegDirect__8JASTrackFUcUs
	b        lbl_800A2090

lbl_800A1DA8:
	subf     r0, r23, r22
	sth      r0, 0x26e(r31)
	b        lbl_800A2090

lbl_800A1DB4:
	subf     r0, r23, r22
	extsh    r23, r0
	b        lbl_800A1F30

lbl_800A1DC0:
	cmplwi   r27, 4
	bne      lbl_800A1DD4
	clrlwi   r3, r23, 0x18
	bl       extend8to16__9JASPlayerFUc
	mr       r23, r3

lbl_800A1DD4:
	extsh.   r0, r23
	bge      lbl_800A1DF4
	extsh    r0, r23
	clrlwi   r3, r22, 0x10
	neg      r0, r0
	sraw     r0, r3, r0
	extsh    r23, r0
	b        lbl_800A1F30

lbl_800A1DF4:
	clrlwi   r3, r22, 0x10
	extsh    r0, r23
	slw      r0, r3, r0
	extsh    r23, r0
	b        lbl_800A1F30

lbl_800A1E08:
	cmplwi   r27, 4
	bne      lbl_800A1E1C
	clrlwi   r3, r23, 0x18
	bl       extend8to16__9JASPlayerFUc
	mr       r23, r3

lbl_800A1E1C:
	extsh.   r0, r23
	bge      lbl_800A1E38
	extsh    r0, r23
	neg      r0, r0
	sraw     r0, r22, r0
	extsh    r23, r0
	b        lbl_800A1F30

lbl_800A1E38:
	extsh    r0, r23
	slw      r0, r22, r0
	extsh    r23, r0
	b        lbl_800A1F30

lbl_800A1E48:
	and      r23, r23, r22
	b        lbl_800A1F30

lbl_800A1E50:
	or       r23, r23, r22
	b        lbl_800A1F30

lbl_800A1E58:
	xor      r23, r23, r22
	b        lbl_800A1F30

lbl_800A1E60:
	neg      r0, r22
	extsh    r23, r0
	b        lbl_800A1F30

lbl_800A1E6C:
	bl       getRandomS32__9JASPlayerFv
	clrlwi   r4, r23, 0x10
	mr       r28, r3
	divwu    r0, r28, r4
	mullw    r0, r0, r4
	subf     r0, r0, r28
	extsh    r23, r0
	b        lbl_800A1F30

lbl_800A1E8C:
	cmpwi    r25, 6
	extsh    r4, r23
	beq      lbl_800A1EE4
	bge      lbl_800A1EAC
	cmpwi    r25, 4
	beq      lbl_800A1EBC
	bge      lbl_800A1ECC
	b        lbl_800A1F28

lbl_800A1EAC:
	cmpwi    r25, 8
	beq      lbl_800A1F18
	bge      lbl_800A1F28
	b        lbl_800A1F00

lbl_800A1EBC:
	lwz      r3, 0xc(r31)
	add      r0, r24, r4
	lbzx     r28, r3, r0
	b        lbl_800A1F28

lbl_800A1ECC:
	slwi     r0, r4, 1
	addi     r3, r31, 0xc
	add      r4, r24, r0
	bl       get16__10JASSeqCtrlCFUl
	clrlwi   r28, r3, 0x10
	b        lbl_800A1F28

lbl_800A1EE4:
	slwi     r0, r4, 1
	addi     r3, r31, 0xc
	add      r4, r4, r0
	add      r4, r24, r4
	bl       get24__10JASSeqCtrlCFUl
	mr       r28, r3
	b        lbl_800A1F28

lbl_800A1F00:
	slwi     r0, r4, 2
	addi     r3, r31, 0xc
	add      r4, r24, r0
	bl       get32__10JASSeqCtrlCFUl
	mr       r28, r3
	b        lbl_800A1F28

lbl_800A1F18:
	addi     r3, r31, 0xc
	add      r4, r24, r4
	bl       get32__10JASSeqCtrlCFUl
	mr       r28, r3

lbl_800A1F28:
	clrlwi   r0, r28, 0x10
	extsh    r23, r0

lbl_800A1F30:
	cmpwi    r30, 0x22
	beq      lbl_800A2008
	bge      lbl_800A1F5C
	cmpwi    r30, 0x20
	beq      lbl_800A1FB8
	bge      lbl_800A1F9C
	cmpwi    r30, 3
	bge      lbl_800A2044
	cmpwi    r30, 0
	bge      lbl_800A1F88
	b        lbl_800A2044

lbl_800A1F5C:
	cmpwi    r30, 0x2e
	beq      lbl_800A1FD8
	bge      lbl_800A1F7C
	cmpwi    r30, 0x2c
	bge      lbl_800A2044
	cmpwi    r30, 0x28
	bge      lbl_800A2034
	b        lbl_800A2044

lbl_800A1F7C:
	cmpwi    r30, 0x30
	bge      lbl_800A2044
	b        lbl_800A1FF0

lbl_800A1F88:
	clrlwi   r3, r23, 0x18
	mr       r23, r3
	bl       extend8to16__9JASPlayerFUc
	clrlwi   r29, r3, 0x10
	b        lbl_800A2048

lbl_800A1F9C:
	addi     r3, r31, 0x268
	bl       getBankNumber__16JASRegisterParamCFv
	clrlwi   r0, r23, 0x18
	li       r30, 6
	rlwimi   r0, r3, 8, 0x10, 0x17
	extsh    r23, r0
	b        lbl_800A2048

lbl_800A1FB8:
	addi     r3, r31, 0x268
	bl       getProgramNumber__16JASRegisterParamCFv
	extsh    r0, r23
	li       r30, 6
	slwi     r0, r0, 8
	rlwimi   r0, r3, 0, 0x18, 0x1f
	extsh    r23, r0
	b        lbl_800A2048

lbl_800A1FD8:
	lhz      r3, 0x282(r31)
	clrlwi   r0, r23, 0x18
	li       r30, 0xd
	rlwimi   r0, r3, 0, 0x10, 0x17
	extsh    r23, r0
	b        lbl_800A2048

lbl_800A1FF0:
	lhz      r0, 0x282(r31)
	extsh    r3, r23
	rlwimi   r0, r3, 8, 0, 0x17
	li       r30, 0xd
	extsh    r23, r0
	b        lbl_800A2048

lbl_800A2008:
	extsh    r22, r23
	mr       r3, r31
	srawi    r0, r22, 8
	li       r4, 0
	clrlwi   r5, r0, 0x10
	bl       writeRegDirect__8JASTrackFUcUs
	clrlwi   r0, r22, 0x18
	li       r30, 1
	mr       r23, r0
	mr       r29, r0
	b        lbl_800A2048

lbl_800A2034:
	slwi     r0, r30, 2
	add      r3, r31, r0
	stw      r28, 0x1e8(r3)
	b        lbl_800A2090

lbl_800A2044:
	clrlwi   r29, r23, 0x10

lbl_800A2048:
	rlwinm   r0, r30, 1, 0x17, 0x1e
	clrlwi   r4, r30, 0x18
	add      r3, r31, r0
	sth      r23, 0x268(r3)
	cmpwi    r4, 7
	sth      r29, 0x26e(r31)
	beq      lbl_800A2084
	bge      lbl_800A2090
	cmpwi    r4, 6
	bge      lbl_800A2074
	b        lbl_800A2090

lbl_800A2074:
	li       r0, 0xf
	stw      r0, 0x2d8(r31)
	stw      r0, 0x2dc(r31)
	b        lbl_800A2090

lbl_800A2084:
	lwz      r0, 0x34c(r31)
	ori      r0, r0, 2
	stw      r0, 0x34c(r31)

lbl_800A2090:
	lmw      r22, 8(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x800A20A4
 * @note Size: 0x24
 */
u16 JASTrack::readSelfPort(int portNumber) { return mTrackPort.readImport(portNumber); }

/**
 * @note Address: 0x800A20C8
 * @note Size: 0x24
 */
void JASTrack::writeSelfPort(int portNumber, u16 value) { mTrackPort.writeExport(portNumber, value); }

/**
 * @note Address: 0x800A20EC
 * @note Size: 0x68
 */
bool JASTrack::writePortAppDirect(u32 p1, u16 value)
{
	mTrackPort.writeImport(p1, value);
	if (p1 == 0 || p1 == 1) {
		JASIntrMgr* intrMgr = &mIntrMgr;
		u32 v1              = 4;
		if (p1 == 0) {
			v1 = 3;
		}
		intrMgr->request(v1);
	}
	return true;
}

/**
 * @note Address: 0x800A2154
 * @note Size: 0x38
 */
bool JASTrack::readPortAppDirect(u32 p1, u16* value)
{
	*value = mTrackPort.readExport(p1);
	return true;
}

/**
 * @note Address: N/A
 * @note Size: 0x38
 */
void JASTrack::routeTrack(u32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x38
 */
void JASTrack::routeTrack(u32) const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800A218C
 * @note Size: 0xB4
 */
void JASTrack::writePortApp(u32, u16)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r7, r4
	stw      r0, 0x14(r1)
	srwi     r0, r4, 0x1c
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mtctr    r0
	cmplwi   r0, 0
	ble      lbl_800A21D8

lbl_800A21B4:
	rlwinm   r6, r7, 2, 0x1a, 0x1d
	addi     r0, r6, 0x2fc
	lwzx     r3, r3, r0
	cmplwi   r3, 0
	bne      lbl_800A21D0
	li       r31, 0
	b        lbl_800A21DC

lbl_800A21D0:
	srwi     r7, r7, 4
	bdnz     lbl_800A21B4

lbl_800A21D8:
	mr       r31, r3

lbl_800A21DC:
	cmplwi   r31, 0
	bne      lbl_800A21EC
	li       r3, 0
	b        lbl_800A2228

lbl_800A21EC:
	rlwinm   r30, r4, 0x10, 0x18, 0x1f
	addi     r3, r31, 0x54
	mr       r4, r30
	bl       writeImport__12JASTrackPortFiUs
	cmplwi   r30, 0
	beq      lbl_800A220C
	cmplwi   r30, 1
	bne      lbl_800A2224

lbl_800A220C:
	cmplwi   r30, 0
	addi     r3, r31, 0x94
	li       r4, 4
	bne      lbl_800A2220
	li       r4, 3

lbl_800A2220:
	bl       request__10JASIntrMgrFUl

lbl_800A2224:
	li       r3, 1

lbl_800A2228:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A2240
 * @note Size: 0x84
 */
void JASTrack::readPortApp(u32, u16*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r6, r4
	stw      r0, 0x14(r1)
	srwi     r0, r4, 0x1c
	stw      r31, 0xc(r1)
	mr       r31, r5
	mtctr    r0
	cmplwi   r0, 0
	ble      lbl_800A228C

lbl_800A2268:
	rlwinm   r5, r6, 2, 0x1a, 0x1d
	addi     r0, r5, 0x2fc
	lwzx     r3, r3, r0
	cmplwi   r3, 0
	bne      lbl_800A2284
	li       r3, 0
	b        lbl_800A228C

lbl_800A2284:
	srwi     r6, r6, 4
	bdnz     lbl_800A2268

lbl_800A228C:
	cmplwi   r3, 0
	bne      lbl_800A229C
	li       r3, 0
	b        lbl_800A22B0

lbl_800A229C:
	addi     r3, r3, 0x54
	rlwinm   r4, r4, 0x10, 0x18, 0x1f
	bl       readExport__12JASTrackPortFi
	sth      r3, 0(r31)
	li       r3, 1

lbl_800A22B0:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x58
 */
void JASTrack::checkExportApp(u32) const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x58
 */
void JASTrack::checkImportApp(u32) const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800A22C4
 * @note Size: 0x168
 */
void JASTrack::pause(bool, bool)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	clrlwi.  r0, r4, 0x18
	stmw     r26, 8(r1)
	mr       r30, r4
	mr       r29, r3
	mr       r31, r5
	stb      r30, 0x362(r3)
	beq      lbl_800A2388
	lbz      r0, 0x358(r29)
	clrlwi.  r0, r0, 0x1f
	beq      lbl_800A2304
	lwz      r0, 0x34c(r29)
	ori      r0, r0, 1
	stw      r0, 0x34c(r29)

lbl_800A2304:
	lbz      r0, 0x358(r29)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	beq      lbl_800A234C
	li       r26, 0
	li       r28, 0
	b        lbl_800A2340

lbl_800A231C:
	rlwinm   r3, r26, 2, 0x16, 0x1d
	addi     r27, r3, 0xc0
	lwzx     r3, r29, r27
	cmplwi   r3, 0
	beq      lbl_800A233C
	li       r4, 0xa
	bl       release__10JASChannelFUs
	stwx     r28, r29, r27

lbl_800A233C:
	addi     r26, r26, 1

lbl_800A2340:
	clrlwi   r0, r26, 0x18
	cmplwi   r0, 8
	blt      lbl_800A231C

lbl_800A234C:
	lbz      r0, 0x358(r29)
	rlwinm.  r0, r0, 0, 0x1c, 0x1c
	beq      lbl_800A23C0
	li       r26, 0
	mr       r28, r29

lbl_800A2360:
	lwz      r3, 0xc0(r28)
	cmplwi   r3, 0
	beq      lbl_800A2374
	li       r4, 1
	bl       setPauseFlag__10JASChannelFb

lbl_800A2374:
	addi     r26, r26, 1
	addi     r28, r28, 4
	cmpwi    r26, 8
	blt      lbl_800A2360
	b        lbl_800A23C0

lbl_800A2388:
	lwz      r0, 0x34c(r29)
	mr       r28, r29
	li       r26, 0
	ori      r0, r0, 1
	stw      r0, 0x34c(r29)

lbl_800A239C:
	lwz      r3, 0xc0(r28)
	cmplwi   r3, 0
	beq      lbl_800A23B0
	li       r4, 0
	bl       setPauseFlag__10JASChannelFb

lbl_800A23B0:
	addi     r26, r26, 1
	addi     r28, r28, 4
	cmpwi    r26, 8
	blt      lbl_800A239C

lbl_800A23C0:
	clrlwi   r0, r30, 0x18
	addi     r3, r29, 0x94
	cntlzw   r0, r0
	srwi     r4, r0, 5
	bl       request__10JASIntrMgrFUl
	clrlwi.  r0, r31, 0x18
	beq      lbl_800A2418
	li       r26, 0
	mr       r28, r29

lbl_800A23E4:
	lwz      r3, 0x2fc(r28)
	cmplwi   r3, 0
	beq      lbl_800A2408
	lbz      r0, 0x35b(r3)
	cmplwi   r0, 0
	beq      lbl_800A2408
	mr       r4, r30
	li       r5, 1
	bl       pause__8JASTrackFbb

lbl_800A2408:
	addi     r26, r26, 1
	addi     r28, r28, 4
	cmpwi    r26, 0x10
	blt      lbl_800A23E4

lbl_800A2418:
	lmw      r26, 8(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x800A242C
 * @note Size: 0x170
 */
int JASTrack::getTranspose() const
{
	if (_2F8) {
		return _356 + _2F8->getTranspose();
	}
	return _356;
}

/**
 * @note Address: 0x800A259C
 * @note Size: 0x3C
 */
void JASTrack::setTempo(u16 tempo)
{
	_352 = tempo;
	if (_2F8 == nullptr) {
		updateTempo();
	} else {
		_365 = 1;
	}
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	sth      r4, 0x352(r3)
	lwz      r0, 0x2f8(r3)
	cmplwi   r0, 0
	bne      lbl_800A25C0
	bl       updateTempo__8JASTrackFv
	b        lbl_800A25C8

lbl_800A25C0:
	li       r0, 1
	stb      r0, 0x365(r3)

lbl_800A25C8:
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A25D8
 * @note Size: 0x30
 */
void JASTrack::setTimebase(u16 timebase)
{
	_354 = timebase;
	if (_2F8 == nullptr) {
		updateTempo();
	}
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	sth      r4, 0x354(r3)
	lwz      r0, 0x2f8(r3)
	cmplwi   r0, 0
	bne      lbl_800A25F8
	bl       updateTempo__8JASTrackFv

lbl_800A25F8:
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x800A2608
 * @note Size: 0x50
 */
f32 JASTrack::panCalc(f32 p1, f32 p2, f32 p3, u8 p4)
{
	switch (p4) {
	case 0:
		return p1;
		break;
	case 1:
		return p2;
		break;
	case 2:
		return (p1 * (1.0f - p3) + (p2 * p3));
		break;
	}
	return 0.0f;
}

/**
 * @note Address: 0x800A2658
 * @note Size: 0xF4
 */
s32 JASTrack::rootCallback(void* obj)
{
	JASTrack* track = static_cast<JASTrack*>(obj);
	if (track == nullptr) {
		return -1;
	}
	if (track->_35B == 0) {
		return -1;
	}
	if (track->_35B == 3) {
		track->stopSeqMain();
		return -1;
	}
	track->_340 += track->_344;
	DCInvalidateRange(&c32, sizeof(c32));
	if (track->_340 < c32) {
		track->updateSeq(0, true);
	} else {
		while (track->_340 >= c32) {
			DCInvalidateRange(&c32, sizeof(c32));
			track->_340 -= c32;
			if (track->mainProc() == -1) {
				track->stopSeqMain();
				return -1;
			}
		}
	}
	return 0;
}

/**
 * @note Address: 0x800A274C
 * @note Size: 0x8
 */
void JASTrack::registerSeqCallback(u16 (*cb)(JASTrack*, u16))
{
	sCallBackFunc = cb;
	/*
	.loc_0x0:
	  stw       r3, -0x7590(r13)
	  blr
	*/
}

/**
 * @note Address: 0x800A2754
 * @note Size: 0xD4
 */
void JASTrack::newMemPool(int)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	li       r5, 0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r3
	li       r3, 0x368
	lwz      r4, JASDram@sda21(r13)
	bl       __nwa__FUlP7JKRHeapi
	lwz      r4, JASDram@sda21(r13)
	mr       r31, r3
	li       r3, 0x2c
	li       r5, 0
	bl       __nw__FUlP7JKRHeapi
	or.      r0, r3, r3
	beq      lbl_800A27A4
	bl       __ct__13JASOuterParamFv
	mr       r0, r3

lbl_800A27A4:
	stw      r0, 0x33c(r31)
	li       r30, 1
	stw      r31, sFreeList__8JASTrack@sda21(r13)
	b        lbl_800A27FC

lbl_800A27B4:
	lwz      r4, JASDram@sda21(r13)
	li       r3, 0x368
	li       r5, 0
	bl       __nwa__FUlP7JKRHeapi
	stw      r3, 0(r31)
	li       r3, 0x2c
	li       r5, 0
	lwz      r4, JASDram@sda21(r13)
	bl       __nw__FUlP7JKRHeapi
	or.      r0, r3, r3
	beq      lbl_800A27E8
	bl       __ct__13JASOuterParamFv
	mr       r0, r3

lbl_800A27E8:
	lwz      r3, 0(r31)
	addi     r30, r30, 1
	stw      r0, 0x33c(r3)
	lwz      r31, 0(r31)
	stw      r31, sFreeListEnd__8JASTrack@sda21(r13)

lbl_800A27FC:
	cmpw     r30, r29
	blt      lbl_800A27B4
	li       r0, 0
	stw      r0, 0(r31)
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x4C
 */
int JASTrack::getFreeMemCount()
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800A2828
 * @note Size: 0x30
 */
JASVibrate::JASVibrate() { init(); }

/**
 * @note Address: 0x800A2858
 * @note Size: 0x18
 */
void JASVibrate::init()
{
	// TODO: Might be wrong value
	_08 = 0.055f;
	_04 = 0.0f;
	_00 = 0.0f;
	/*
	lfs      f1, lbl_80516DB0@sda21(r2)
	lfs      f0, lbl_80516D78@sda21(r2)
	stfs     f1, 8(r3)
	stfs     f0, 4(r3)
	stfs     f0, 0(r3)
	blr
	*/
}

/**
 * @note Address: 0x800A2870
 * @note Size: 0x34
 */
void JASVibrate::incCounter()
{
	_00 += _08;
	if (_00 >= 4.0) { // intentional double
		_00 -= 4.0f;
	}
}

/**
 * @note Address: 0x800A28A4
 * @note Size: 0xA4
 */
f32 JASVibrate::getValue() const
{
	f32 result;
	if (_04 == 0.0f) {
		result = 1.0f;
	} else {
		result = _00 * HALF_PI;
		result = JMath::getSinCosTable()->cos(result);
		result = JASPlayer::pitchToCent(result * _04, 12.0f);
	}
	return result;

	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lfs      f2, lbl_80516D78@sda21(r2)
	lfs      f3, 4(r3)
	stw      r0, 0x24(r1)
	fcmpu    cr0, f2, f3
	bne      lbl_800A28C8
	lfs      f1, lbl_80516D7C@sda21(r2)
	b        lbl_800A2938

lbl_800A28C8:
	lfs      f1, lbl_80516DC4@sda21(r2)
	lfs      f0, 0(r3)
	fmuls    f1, f1, f0
	fcmpo    cr0, f1, f2
	bge      lbl_800A2908
	lfs      f0, lbl_80516DC8@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 8(r1)
	lwz      r0, 0xc(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f0, r3, r0
	fneg     f1, f0
	b        lbl_800A292C

lbl_800A2908:
	lfs      f0, lbl_80516DCC@sda21(r2)
	lis      r3, sincosTable___5JMath@ha
	addi     r3, r3, sincosTable___5JMath@l
	fmuls    f0, f1, f0
	fctiwz   f0, f0
	stfd     f0, 0x10(r1)
	lwz      r0, 0x14(r1)
	rlwinm   r0, r0, 3, 0x12, 0x1c
	lfsx     f1, r3, r0

lbl_800A292C:
	fmuls    f1, f1, f3
	lfs      f2, lbl_80516DD0@sda21(r2)
	bl       pitchToCent__9JASPlayerFff

lbl_800A2938:
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x800A2948
 * @note Size: 0xB0
 */
void JASTrack::channelUpdateCallback(u32 p1, JASChannel* p2, JASDsp::TChannel* p3, void* p4)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x10(r1)
	  mflr      r0
	  cmpwi     r3, 0x2
	  stw       r0, 0x14(r1)
	  beq-      .loc_0x5C
	  bge-      .loc_0x28
	  cmpwi     r3, 0
	  beq-      .loc_0x34
	  bge-      .loc_0x40
	  b         .loc_0xA0

	.loc_0x28:
	  cmpwi     r3, 0x4
	  bge-      .loc_0xA0
	  b         .loc_0x4C

	.loc_0x34:
	  addi      r3, r6, 0xF4
	  bl        0x5DD8
	  b         .loc_0xA0

	.loc_0x40:
	  addi      r3, r6, 0xF4
	  bl        0x5C68
	  b         .loc_0xA0

	.loc_0x4C:
	  mr        r3, r4
	  li        r4, 0
	  bl        0xE2C
	  b         .loc_0xA0

	.loc_0x5C:
	  li        r0, 0x8
	  mr        r3, r6
	  li        r5, 0
	  mtctr     r0

	.loc_0x6C:
	  lwz       r0, 0xC0(r3)
	  cmplw     r4, r0
	  bne-      .loc_0x8C
	  rlwinm    r0,r5,2,0,29
	  li        r5, 0
	  add       r3, r6, r0
	  stw       r5, 0xC0(r3)
	  b         .loc_0x98

	.loc_0x8C:
	  addi      r3, r3, 0x4
	  addi      r5, r5, 0x1
	  bdnz+     .loc_0x6C

	.loc_0x98:
	  mr        r3, r6
	  bl        -0x7BDC0

	.loc_0xA0:
	  lwz       r0, 0x14(r1)
	  mtlr      r0
	  addi      r1, r1, 0x10
	  blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x8
 */
int JASTrack::getChannelCount() const
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x30
 */
int JASTrack::getReleaseChannelCount() const
{
	// UNUSED FUNCTION
}
