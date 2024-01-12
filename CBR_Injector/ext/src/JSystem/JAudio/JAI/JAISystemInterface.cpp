#include "Dolphin/dvd.h"
#include "JSystem/JAudio/JAI/JAIGlobalParameter.h"
#include "JSystem/JAudio/JAI/JAISequence.h"
#include "JSystem/JAudio/JAI/JAInter.h"
#include "JSystem/JAudio/JAS/JASPortCmd.h"
#include "JSystem/JAudio/JAS/JASTrack.h"
#include "types.h"

JASPortCmd JAInter::SystemInterface::systemPortCmd;

/**
 * @note Address: 0x800B8EE4
 * @note Size: 0x30
 */
BOOL JAInter::SystemInterface::checkFileExsistence(char* path)
{
	int entryNum = DVDConvertPathToEntrynum(path);
	return (entryNum != -1);
}

/**
 * @note Address: 0x800B8F14
 * @note Size: 0xEC
 */
u8 JAInter::SystemInterface::checkSeqActiveFlag(JASTrack* track)
{
	if (track != nullptr && track->_35B != 0) {
		// this looks like it should be a loop, but loops don't seem to unroll quite right (2 sets of 8 instead of 1 set of 16)
		if (track->_2FC[0] != nullptr || track->_2FC[1] != nullptr || track->_2FC[2] != nullptr || track->_2FC[3] != nullptr
		    || track->_2FC[4] != nullptr || track->_2FC[5] != nullptr || track->_2FC[6] != nullptr || track->_2FC[7] != nullptr
		    || track->_2FC[8] != nullptr || track->_2FC[9] != nullptr || track->_2FC[10] != nullptr || track->_2FC[11] != nullptr
		    || track->_2FC[12] != nullptr || track->_2FC[13] != nullptr || track->_2FC[14] != nullptr || track->_2FC[15] != nullptr) {
			return track->_35B;
		}
		return 0;
	}
	return 0;
}

/**
 * @note Address: 0x800B9000
 * @note Size: 0x4C
 */
JASTrack* JAInter::SystemInterface::trackToSeqp(JAISequence* seq, u8 p2)
{
	JASTrack* result = nullptr;
	if ((seq->mSoundID & 0x800) != 0) {
		if (seq->mSeqParameter.mTrack._2FC[p2 >> 4] != nullptr) {
			result = seq->mSeqParameter.mTrack._2FC[p2 >> 4]->_2FC[p2 & 0xF];
		}
	} else {
		result = seq->mSeqParameter.mTrack._2FC[p2 & 0xF];
	}
	return result;
}

/**
 * @note Address: N/A
 * @note Size: 0x48
 * trackToSeqp__Q27JAInter15SystemInterfaceFP8JASTrackUcUl
 */
JASTrack* JAInter::SystemInterface::trackToSeqp(JASTrack* track, u8 p2, u32 p3)
{
	// UNUSED FUNCTION
	JASTrack* result = nullptr;
	if ((p3 & 0x800) != 0) {
		if (track->_2FC[p2 >> 4] != nullptr) {
			result = track->_2FC[p2 >> 4]->_2FC[p2 & 0xF];
		}
	} else {
		result = track->_2FC[p2 & 0xF];
	}
	return result;
}

/**
 * @note Address: 0x800B904C
 * @note Size: 0x1C
 */
void JAInter::SystemInterface::setSeqPortargsF32(JAInter::SeqUpdateData* updateData, u32 playerParameterIndex, u8 portArgIndex, f32 value)
{
	updateData->_4C[playerParameterIndex].mPortArgs.asArray[portArgIndex].f32 = value;
}

/**
 * @note Address: N/A
 * @note Size: 0x1C
 */
void JAInter::SystemInterface::setSeqPortargsPS16(JAInter::SeqUpdateData* updateData, u32 playerParameterIndex, u8 portArgIndex, s16* value)
{
	// UNUSED FUNCTION
	updateData->_4C[playerParameterIndex].mPortArgs.asArray[portArgIndex].ps16 = value;
}

/**
 * @note Address: 0x800B9068
 * @note Size: 0x1C
 */
void JAInter::SystemInterface::setSeqPortargsU32(JAInter::SeqUpdateData* updateData, u32 playerParameterIndex, u8 portArgIndex, u32 value)
{
	updateData->_4C[playerParameterIndex].mPortArgs.asArray[portArgIndex].u32 = value;
}

/**
 * @note Address: 0x800B9084
 * @note Size: 0x58
 */
void JAInter::SystemInterface::rootInit(JAInter::SeqUpdateData* updateData)
{
	JASTrack* track = &updateData->mSequence->mSeqParameter.mTrack;
	outerInit(updateData, track, JAIGlobalParameter::getParamSeqTrackMax(), 0xFFFF, 0);
}

/**
 * @note Address: 0x800B90DC
 * @note Size: 0x88
 */
void JAInter::SystemInterface::trackInit(JAInter::SeqUpdateData* updateData)
{
	JAISequence* seq = updateData->mSequence;
	u32 max          = 0x10;
	if ((seq->mSoundID & 0x800) != 0) {
		max = JAIGlobalParameter::getParamSeqTrackMax();
	}
	for (u32 i = 0; i < max; i++) {
		if ((updateData->_04 & 1 << i) == 0) {
			outerInit(updateData, &seq->mSeqParameter.mTrack, i, 0xFFFF, 0);
		}
	}
}

/**
 * @note Address: 0x800B9164
 * @note Size: 0x288
 */
void JAInter::SystemInterface::outerInit(JAInter::SeqUpdateData* updateData, JASTrack* p2, u32 p3, u16 p4, u8 p5)
{
	JASTrack* seqP = p2;
	if (p3 != JAIGlobalParameter::getParamSeqTrackMax()) {
		seqP = trackToSeqp(updateData->mSequence, p3);
	}
	if (seqP == nullptr) {
		return;
	}
	// PlayerParameter* playerParameter = &updateData->_4C[p3];
	JASPortArgs* portArgs   = &updateData->_4C[p3].mPortArgs.asStruct;
	updateData->_4C[p3]._00 = seqP;
	portArgs->_00           = p2;
	portArgs->_04           = p3 | updateData->mSequence->mSoundID & 0x800;
	updateData->_4C[p3]._30.setPortCmd(setSePortParameter, portArgs);
	JASOuterParam* outerParam = seqP->mExtBuffer;
	if (p3 == JAIGlobalParameter::getParamSeqTrackMax()) {
		// TODO: These might be using the setSeqPortargs functions?
		// Answer: nope.
		// setSeqPortargsF32(updateData, p3, 3, updateData->_0C);
		// setSeqPortargsF32(updateData, p3, 4, updateData->_10);
		// setSeqPortargsF32(updateData, p3, 6, updateData->_14);
		// setSeqPortargsF32(updateData, p3, 5, updateData->_18);
		// setSeqPortargsF32(updateData, p3, 7, updateData->_1C);
		// setSeqPortargsF32(updateData, p3, 10, updateData->_20);
		// setSeqPortargsU32(updateData, p3, 2, 0xFF);
		portArgs->_0C = updateData->_0C;
		portArgs->_10 = updateData->_10;
		portArgs->_18 = updateData->_14;
		portArgs->_14 = updateData->_18;
		portArgs->_1C = updateData->_1C;
		portArgs->_28 = updateData->_20;
		portArgs->_08 = 0xFF;
		outerParam->onSwitch(0x40);
	} else {
		JAISequence* seq = updateData->mSequence;
		// setSeqPortargsF32(updateData, p3, 3, seq->mSeqParameter._260[p3]._04);
		// setSeqPortargsF32(updateData, p3, 4, seq->mSeqParameter._268[p3]._04);
		// setSeqPortargsF32(updateData, p3, 6, seq->mSeqParameter._26C[p3]._04);
		// setSeqPortargsF32(updateData, p3, 5, seq->mSeqParameter._264[p3]._04);
		// setSeqPortargsF32(updateData, p3, 7, seq->mSeqParameter._270[p3]._04);
		// setSeqPortargsU32(updateData, p3, 9, 0);
		// setSeqPortargsU32(updateData, p3, 2, 0x7F);
		portArgs->_0C = seq->mSeqParameter._260[p3]._04;
		portArgs->_10 = seq->mSeqParameter._268[p3]._04;
		portArgs->_18 = seq->mSeqParameter._26C[p3]._04;
		portArgs->_14 = seq->mSeqParameter._264[p3]._04;
		portArgs->_1C = seq->mSeqParameter._270[p3]._04;
		portArgs->_24 = 0;
		portArgs->_08 = 0x7F;
		seqP->muteTrack(seq->mSeqParameter._2BC[p3]._0);
	}
	// PlayerParameter* playerParameter         = &updateData->_4C[p3];
	// playerParameter->_00                     = seqP;
	// playerParameter->mPortArgs.asStruct._00 = p2;
	// playerParameter->mPortArgs.asStruct._04 = p3 | updateData->mSequence->mSoundID & 0x800;
	// updateData->_4C[p3]._30.setPortCmd(setSePortParameter, &playerParameter->mPortArgs.asStruct);
	// JASOuterParam* outerParam = seqP->mExtBuffer;
	// if (p3 == JAIGlobalParameter::getParamSeqTrackMax()) {
	// 	// TODO: These might be using the setSeqPortargs functions?
	// 	playerParameter->mPortArgs.asStruct._0C = updateData->_0C;
	// 	playerParameter->mPortArgs.asStruct._10 = updateData->_10;
	// 	playerParameter->mPortArgs.asStruct._18 = updateData->_14;
	// 	playerParameter->mPortArgs.asStruct._14 = updateData->_18;
	// 	playerParameter->mPortArgs.asStruct._1C = updateData->_1C;
	// 	playerParameter->mPortArgs.asStruct._28 = updateData->_20;
	// 	playerParameter->mPortArgs.asStruct._08 = 0xFF;
	// 	outerParam->onSwitch(0x40);
	// } else {
	// 	JAISequence* seq                         = updateData->mSequence;
	// 	playerParameter->mPortArgs.asStruct._0C = seq->mSeqParameter._260[p3]._04;
	// 	playerParameter->mPortArgs.asStruct._10 = seq->mSeqParameter._268[p3]._04;
	// 	playerParameter->mPortArgs.asStruct._18 = seq->mSeqParameter._26C[p3]._04;
	// 	playerParameter->mPortArgs.asStruct._14 = seq->mSeqParameter._264[p3]._04;
	// 	playerParameter->mPortArgs.asStruct._1C = seq->mSeqParameter._270[p3]._04;
	// 	playerParameter->mPortArgs.asStruct._24 = 0;
	// 	playerParameter->mPortArgs.asStruct._08 = 0x7F;
	// 	seqP->muteTrack(seq->mSeqParameter._2BC[p3].value);
	// }
	outerParam->onSwitch(0x01);
	outerParam->onSwitch(0x02);
	outerParam->onSwitch(0x04);
	outerParam->onSwitch(0x08);
	outerParam->onSwitch(0x10);
	if ((p4 & 0x01) == 0) {
		outerParam->setParam(0x01, 0.0f);
	}
	if ((p4 & 0x02) == 0) {
		outerParam->setParam(0x02, 0.0f);
	}
	if ((p4 & 0x04) == 0) {
		outerParam->setParam(0x04, 0.0f);
	}
	if ((p4 & 0x08) == 0) {
		outerParam->setParam(0x08, 0.0f);
	}
	if ((p4 & 0x10) == 0) {
		outerParam->setParam(0x10, 0.0f);
	}
	updateData->_4C[p3]._30.addPortCmdOnce();
	/*
	.loc_0x0:
	  stwu      r1, -0x30(r1)
	  mflr      r0
	  stw       r0, 0x34(r1)
	  stmw      r25, 0x14(r1)
	  mr        r31, r4
	  mr        r25, r3
	  mr        r26, r5
	  mr        r27, r6
	  mr        r29, r31
	  bl        -0xB6DC
	  cmplw     r26, r3
	  beq-      .loc_0x7C
	  lwz       r3, 0x48(r25)
	  li        r5, 0
	  lwz       r0, 0x20(r3)
	  rlwinm.   r0,r0,0,20,20
	  beq-      .loc_0x6C
	  rlwinm    r0,r26,30,26,29
	  rlwinm    r4,r26,0,24,31
	  add       r3, r3, r0
	  lwz       r3, 0x608(r3)
	  cmplwi    r3, 0
	  beq-      .loc_0x78
	  rlwinm    r0,r4,2,26,29
	  add       r3, r3, r0
	  lwz       r5, 0x2FC(r3)
	  b         .loc_0x78

	.loc_0x6C:
	  rlwinm    r0,r26,2,26,29
	  add       r3, r3, r0
	  lwz       r5, 0x608(r3)

	.loc_0x78:
	  mr        r29, r5

	.loc_0x7C:
	  cmplwi    r29, 0
	  beq-      .loc_0x274
	  mulli     r30, r26, 0x48
	  lwz       r0, 0x4C(r25)
	  lis       r3, 0x800C
	  add       r5, r0, r30
	  subi      r4, r3, 0x6C14
	  stw       r29, 0x0(r5)
	  addi      r28, r5, 0x4
	  addi      r3, r30, 0x30
	  stw       r31, 0x4(r5)
	  mr        r5, r28
	  lwz       r6, 0x48(r25)
	  lwz       r0, 0x20(r6)
	  rlwinm    r0,r0,0,20,20
	  or        r0, r26, r0
	  stw       r0, 0x4(r28)
	  lwz       r0, 0x4C(r25)
	  add       r3, r0, r3
	  bl        -0x12AAC
	  lwz       r31, 0x33C(r29)
	  bl        -0xB788
	  cmplw     r26, r3
	  bne-      .loc_0x124
	  lfs       f0, 0xC(r25)
	  li        r0, 0xFF
	  mr        r3, r31
	  li        r4, 0x40
	  stfs      f0, 0xC(r28)
	  lfs       f0, 0x10(r25)
	  stfs      f0, 0x10(r28)
	  lfs       f0, 0x14(r25)
	  stfs      f0, 0x18(r28)
	  lfs       f0, 0x18(r25)
	  stfs      f0, 0x14(r28)
	  lfs       f0, 0x1C(r25)
	  stfs      f0, 0x1C(r28)
	  lfs       f0, 0x20(r25)
	  stfs      f0, 0x28(r28)
	  stw       r0, 0x8(r28)
	  bl        -0x1CD44
	  b         .loc_0x1AC

	.loc_0x124:
	  lwz       r6, 0x48(r25)
	  rlwinm    r7,r26,4,0,27
	  li        r4, 0
	  li        r0, 0x7F
	  lwz       r5, 0x2A8(r6)
	  mr        r3, r29
	  add       r5, r5, r7
	  lfs       f0, 0x4(r5)
	  stfs      f0, 0xC(r28)
	  lwz       r5, 0x2B0(r6)
	  add       r5, r5, r7
	  lfs       f0, 0x4(r5)
	  stfs      f0, 0x10(r28)
	  lwz       r5, 0x2B4(r6)
	  add       r5, r5, r7
	  lfs       f0, 0x4(r5)
	  stfs      f0, 0x18(r28)
	  lwz       r5, 0x2AC(r6)
	  add       r5, r5, r7
	  lfs       f0, 0x4(r5)
	  stfs      f0, 0x14(r28)
	  lwz       r5, 0x2B8(r6)
	  add       r5, r5, r7
	  lfs       f0, 0x4(r5)
	  stfs      f0, 0x1C(r28)
	  stw       r4, 0x24(r28)
	  stw       r0, 0x8(r28)
	  lwz       r4, 0x304(r6)
	  lbzx      r0, r4, r26
	  rlwinm    r4,r0,25,31,31
	  neg       r0, r4
	  or        r0, r0, r4
	  rlwinm    r4,r0,1,31,31
	  bl        -0x18028

	.loc_0x1AC:
	  mr        r3, r31
	  li        r4, 0x1
	  bl        -0x1CDDC
	  mr        r3, r31
	  li        r4, 0x2
	  bl        -0x1CDE8
	  mr        r3, r31
	  li        r4, 0x4
	  bl        -0x1CDF4
	  mr        r3, r31
	  li        r4, 0x8
	  bl        -0x1CE00
	  mr        r3, r31
	  li        r4, 0x10
	  bl        -0x1CE0C
	  rlwinm.   r0,r27,0,31,31
	  rlwinm    r26,r27,0,16,31
	  bne-      .loc_0x204
	  lfs       f1, -0x7310(r2)
	  mr        r3, r31
	  li        r4, 0x1
	  bl        -0x1CEC4

	.loc_0x204:
	  rlwinm.   r0,r26,0,30,30
	  bne-      .loc_0x21C
	  lfs       f1, -0x7310(r2)
	  mr        r3, r31
	  li        r4, 0x2
	  bl        -0x1CEDC

	.loc_0x21C:
	  rlwinm.   r0,r26,0,29,29
	  bne-      .loc_0x234
	  lfs       f1, -0x7310(r2)
	  mr        r3, r31
	  li        r4, 0x4
	  bl        -0x1CEF4

	.loc_0x234:
	  rlwinm.   r0,r26,0,28,28
	  bne-      .loc_0x24C
	  lfs       f1, -0x7310(r2)
	  mr        r3, r31
	  li        r4, 0x8
	  bl        -0x1CF0C

	.loc_0x24C:
	  rlwinm.   r0,r26,0,27,27
	  bne-      .loc_0x264
	  lfs       f1, -0x7310(r2)
	  mr        r3, r31
	  li        r4, 0x10
	  bl        -0x1CF24

	.loc_0x264:
	  lwz       r0, 0x4C(r25)
	  addi      r3, r30, 0x30
	  add       r3, r0, r3
	  bl        -0x12CB0

	.loc_0x274:
	  lmw       r25, 0x14(r1)
	  lwz       r0, 0x34(r1)
	  mtlr      r0
	  addi      r1, r1, 0x30
	  blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x68
 */
void JAInter::SystemInterface::setPortParameter(JASPortArgs*, JASTrack*, u32, u32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800B93EC
 * @note Size: 0x1BC
 */
void JAInter::SystemInterface::setSePortParameter(JASPortArgs* args)
{
	u32 soundID    = args->_04 & 0x800;
	u8 v1          = args->_04;
	JASTrack* seqP = args->_00;
	if (v1 != JAIGlobalParameter::getParamSeqTrackMax()) {
		seqP = trackToSeqp(seqP, v1, soundID);
	}
	if (seqP == nullptr) {
		return;
	}
	if ((args->_08 & 0x01) != 0) {
		seqP->mExtBuffer->setParam(0x01, args->_0C);
		args->_08 = args->_08 ^ 0x01;
	}
	if ((args->_08 & 0x02) != 0) {
		seqP->mExtBuffer->setParam(0x02, args->_10);
		args->_08 = args->_08 ^ 0x02;
	}
	if ((args->_08 & 0x04) != 0) {
		seqP->mExtBuffer->setParam(0x08, args->_14);
		args->_08 = args->_08 ^ 0x04;
	}
	if ((args->_08 & 0x08) != 0) {
		seqP->mExtBuffer->setParam(0x04, args->_18);
		args->_08 = args->_08 ^ 0x08;
	}
	if ((args->_08 & 0x80) != 0) {
		seqP->mExtBuffer->setParam(0x40, args->_28);
		args->_08 = args->_08 ^ 0x80;
	}
	if ((args->_08 & 0x10) != 0) {
		seqP->mExtBuffer->setParam(0x10, args->_1C);
		args->_08 = args->_08 ^ 0x10;
	}
	if ((args->_08 & 0x40) != 0 && args->_24 != 0) {
		seqP->setInterrupt(5);
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	mr       r30, r3
	stw      r29, 0x14(r1)
	stw      r28, 0x10(r1)
	lwz      r29, 4(r3)
	lwz      r31, 0(r3)
	rlwinm   r28, r29, 0, 0x14, 0x14
	bl       getParamSeqTrackMax__18JAIGlobalParameterFv
	clrlwi   r4, r29, 0x18
	cmplw    r4, r3
	beq      lbl_800B946C
	cmplwi   r28, 0
	li       r5, 0
	beq      lbl_800B945C
	srawi    r0, r4, 4
	slwi     r0, r0, 2
	add      r3, r31, r0
	lwz      r3, 0x2fc(r3)
	cmplwi   r3, 0
	beq      lbl_800B9468
	rlwinm   r0, r4, 2, 0x1a, 0x1d
	add      r3, r3, r0
	lwz      r5, 0x2fc(r3)
	b        lbl_800B9468

lbl_800B945C:
	rlwinm   r0, r4, 2, 0x1a, 0x1d
	add      r3, r31, r0
	lwz      r5, 0x2fc(r3)

lbl_800B9468:
	mr       r31, r5

lbl_800B946C:
	cmplwi   r31, 0
	beq      lbl_800B9588
	lwz      r0, 8(r30)
	clrlwi.  r0, r0, 0x1f
	beq      lbl_800B949C
	lwz      r3, 0x33c(r31)
	li       r4, 1
	lfs      f1, 0xc(r30)
	bl       setParam__13JASOuterParamFUcf
	lwz      r0, 8(r30)
	xori     r0, r0, 1
	stw      r0, 8(r30)

lbl_800B949C:
	lwz      r0, 8(r30)
	rlwinm.  r0, r0, 0, 0x1e, 0x1e
	beq      lbl_800B94C4
	lwz      r3, 0x33c(r31)
	li       r4, 2
	lfs      f1, 0x10(r30)
	bl       setParam__13JASOuterParamFUcf
	lwz      r0, 8(r30)
	xori     r0, r0, 2
	stw      r0, 8(r30)

lbl_800B94C4:
	lwz      r0, 8(r30)
	rlwinm.  r0, r0, 0, 0x1d, 0x1d
	beq      lbl_800B94EC
	lwz      r3, 0x33c(r31)
	li       r4, 8
	lfs      f1, 0x14(r30)
	bl       setParam__13JASOuterParamFUcf
	lwz      r0, 8(r30)
	xori     r0, r0, 4
	stw      r0, 8(r30)

lbl_800B94EC:
	lwz      r0, 8(r30)
	rlwinm.  r0, r0, 0, 0x1c, 0x1c
	beq      lbl_800B9514
	lwz      r3, 0x33c(r31)
	li       r4, 4
	lfs      f1, 0x18(r30)
	bl       setParam__13JASOuterParamFUcf
	lwz      r0, 8(r30)
	xori     r0, r0, 8
	stw      r0, 8(r30)

lbl_800B9514:
	lwz      r0, 8(r30)
	rlwinm.  r0, r0, 0, 0x18, 0x18
	beq      lbl_800B953C
	lwz      r3, 0x33c(r31)
	li       r4, 0x40
	lfs      f1, 0x28(r30)
	bl       setParam__13JASOuterParamFUcf
	lwz      r0, 8(r30)
	xori     r0, r0, 0x80
	stw      r0, 8(r30)

lbl_800B953C:
	lwz      r0, 8(r30)
	rlwinm.  r0, r0, 0, 0x1b, 0x1b
	beq      lbl_800B9564
	lwz      r3, 0x33c(r31)
	li       r4, 0x10
	lfs      f1, 0x1c(r30)
	bl       setParam__13JASOuterParamFUcf
	lwz      r0, 8(r30)
	xori     r0, r0, 0x10
	stw      r0, 8(r30)

lbl_800B9564:
	lwz      r0, 8(r30)
	rlwinm.  r0, r0, 0, 0x19, 0x19
	beq      lbl_800B9588
	lwz      r0, 0x24(r30)
	cmplwi   r0, 0
	beq      lbl_800B9588
	mr       r3, r31
	li       r4, 5
	bl       setInterrupt__8JASTrackFUs

lbl_800B9588:
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
 * @note Size: 0x18
 */
void JAInter::SystemInterface::JAIouterP(void*)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x40
 */
void JAInter::SystemInterface::JAIouterSW(void*)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x94
 */
void JAInter::SystemInterface::setAudioFrameParameter(JASPortArgs*)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x8
 */
void* JAInterface::getAudioThreadPointer()
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x20
 */
void* JAInterface::getDvdThreadPointer()
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x20
 */
void JAInterface::setAudioThreadPauseFlag(bool)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800B95A8
 * @note Size: 0x54
 */
// void __sinit_JAISystemInterface_cpp()
// {
// 	/*
// 	stwu     r1, -0x10(r1)
// 	mflr     r0
// 	lis      r3, systemPortCmd__Q27JAInter15SystemInterface@ha
// 	addi     r3, r3, systemPortCmd__Q27JAInter15SystemInterface@l
// 	stw      r0, 0x14(r1)
// 	mr       r4, r3
// 	bl       __ct__10JSUPtrLinkFPv
// 	lis      r3, systemPortCmd__Q27JAInter15SystemInterface@ha
// 	lis      r4, __dt__10JASPortCmdFv@ha
// 	addi     r3, r3, systemPortCmd__Q27JAInter15SystemInterface@l
// 	li       r0, 0
// 	lis      r5, lbl_804F2870@ha
// 	stw      r0, 0x10(r3)
// 	addi     r4, r4, __dt__10JASPortCmdFv@l
// 	stw      r0, 0x14(r3)
// 	addi     r5, r5, lbl_804F2870@l
// 	bl       __register_global_object
// 	lwz      r0, 0x14(r1)
// 	mtlr     r0
// 	addi     r1, r1, 0x10
// 	blr
// 	*/
// }
