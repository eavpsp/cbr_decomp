#include "JSystem/JAudio/JAS/JASSeqParser.h"

/*
    Generated from dpostproc

    .section .ctors, "wa"  # 0x80472F00 - 0x804732C0
    .4byte __sinit_JASSeqParser_cpp

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global Arglist
    Arglist:
        .4byte 0x00000000
        .4byte 0x00020008
        .4byte 0x00020008
        .4byte 0x00010002
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00010000
        .4byte 0x00010002
        .4byte 0x00000000
        .4byte 0x00010001
        .4byte 0x00000000
        .4byte 0x00020000
        .4byte 0x0002000C
        .4byte 0x00010000
        .4byte 0x00010000
        .4byte 0x00010003
        .4byte 0x00000000
        .4byte 0x0002000C
        .4byte 0x0002000C
        .4byte 0x00000000
        .4byte 0x00010000
        .4byte 0x00010000
        .4byte 0x00010000
        .4byte 0x00020008
        .4byte 0x00050155
        .4byte 0x00010000
        .4byte 0x00010000
        .4byte 0x00010000
        .4byte 0x00010001
        .4byte 0x00020004
        .4byte 0x00010000
        .4byte 0x00020008
        .4byte 0x00010000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00020004
        .4byte 0x00010000
        .4byte 0x00010001
        .4byte 0x00010001
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00010002
        .4byte 0x00050000
        .4byte 0x00040055
        .4byte 0x00010002
        .4byte 0x00010002
        .4byte 0x00030000
        .4byte 0x00010000
        .4byte 0x00010000
        .4byte 0x00030028
        .4byte 0x00010000
        .4byte 0x00010000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00010001
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00010001
        .4byte 0x00010001
        .4byte 0x00000000

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global lbl_804A3D68
    lbl_804A3D68:
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdOpenTrack__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdOpenTrackBros__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdCall__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdRet__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdJmp__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdLoopS__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdLoopE__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdReadPort__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdWritePort__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdCheckPortImport__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdCheckPortExport__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdWait__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdParentWritePort__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdChildWritePort__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdSetLastNote__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdTimeRelate__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdSimpleOsc__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdSimpleEnv__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdSimpleADSR__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdTranspose__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdCloseTrack__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdOutSwitch__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdUpdateSync__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdBusConnect__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdPauseStatus__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdSetInterrupt__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdDisInterrupt__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdClrI__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdSetI__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdRetI__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdIntTimer__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdVibDepth__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdVibDepthMidi__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdSyncCPU__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdFlushAll__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdFlushRelease__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdWait__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdPanPowSet__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdIIRSet__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdFIRSet__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdEXTSet__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdPanSwSet__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdOscRoute__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdIIRCutOff__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdOscFull__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdVolumeMode__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdVibPitch__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdCheckWave__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdPrintf__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdNop__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdTempo__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdTimeBase__12JASSeqParserFP8JASTrackPUl
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte cmdFinish__12JASSeqParserFP8JASTrackPUl
    .global sCmdPList__12JASSeqParser
    sCmdPList__12JASSeqParser:
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
    .global lbl_804A42E4
    lbl_804A42E4:
        .4byte lbl_8009DBBC
        .4byte lbl_8009DC34
        .4byte lbl_8009DC34
        .4byte lbl_8009DC34
        .4byte lbl_8009DBDC
        .4byte lbl_8009DC34
        .4byte lbl_8009DC34
        .4byte lbl_8009DC34
        .4byte lbl_8009DBF0
        .4byte lbl_8009DC34
        .4byte lbl_8009DC34
        .4byte lbl_8009DC34
        .4byte lbl_8009DC28
    .global lbl_804A4318
    lbl_804A4318:
        .4byte lbl_8009E420
        .4byte lbl_8009E498
        .4byte lbl_8009E498
        .4byte lbl_8009E498
        .4byte lbl_8009E440
        .4byte lbl_8009E498
        .4byte lbl_8009E498
        .4byte lbl_8009E498
        .4byte lbl_8009E454
        .4byte lbl_8009E498
        .4byte lbl_8009E498
        .4byte lbl_8009E498
        .4byte lbl_8009E48C
        .4byte 0x00000000

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_80516D30
    lbl_80516D30:
        .4byte 0x43A3D5C3
        .4byte 0x00000000
    .global lbl_80516D38
    lbl_80516D38:
        .4byte 0x43300000
        .4byte 0x00000000
    .global lbl_80516D40
    lbl_80516D40:
        .4byte 0x00000001
    .global lbl_80516D44
    lbl_80516D44:
        .2byte 0x0102
    .global lbl_80516D46
    lbl_80516D46:
        .2byte 0x0200
    .global lbl_80516D48
    lbl_80516D48:
        .4byte 0x00010200
    .global lbl_80516D4C
    lbl_80516D4C:
        .2byte 0x0200
    .global lbl_80516D4E
    lbl_80516D4E:
        .2byte 0x0200
    .global lbl_80516D50
    lbl_80516D50:
        .4byte 0x48BFFE80
        .4byte 0x00000000
    .global lbl_80516D58
    lbl_80516D58:
        .4byte 0x43300000
        .4byte 0x80000000
    .global lbl_80516D60
    lbl_80516D60:
        .4byte 0x488FFEE0
    .global lbl_80516D64
    lbl_80516D64:
        .4byte 0x47000000
    .global lbl_80516D68
    lbl_80516D68:
        .4byte 0x00000000
    .global lbl_80516D6C
    lbl_80516D6C:
        .float 1.0
    .global lbl_80516D70
    lbl_80516D70:
        .4byte 0x46FFFE00
        .4byte 0x00000000
*/

/**
 * @note Address: 0x8009CAB8
 * @note Size: 0x58
 */
void JASSeqParser::cmdOpenTrack(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r4
	mr       r3, r30
	lwz      r0, 0(r5)
	lwz      r31, 4(r5)
	clrlwi   r4, r0, 0x1c
	rlwinm   r5, r0, 0x1a, 0x1e, 0x1f
	bl       openChild__8JASTrackFUcUc
	lwz      r4, 0xc(r30)
	mr       r5, r31
	bl       start__8JASTrackFPvUl
	lwz      r0, 0x14(r1)
	li       r3, 0
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009CB10
 * @note Size: 0x68
 */
void JASSeqParser::cmdOpenTrackBros(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r4
	lwz      r3, 0x2f8(r4)
	cmplwi   r3, 0
	bne      lbl_8009CB3C
	li       r3, 0
	b        lbl_8009CB60

lbl_8009CB3C:
	lwz      r0, 0(r5)
	lwz      r31, 4(r5)
	clrlwi   r4, r0, 0x1c
	rlwinm   r5, r0, 0x1a, 0x1e, 0x1f
	bl       openChild__8JASTrackFUcUc
	lwz      r4, 0xc(r30)
	mr       r5, r31
	bl       start__8JASTrackFPvUl
	li       r3, 0

lbl_8009CB60:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009CB78
 * @note Size: 0x108
 */
void JASSeqParser::cmdCall(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r29, r3
	mr       r30, r4
	addi     r31, r30, 0xc
	lwz      r3, 0x10(r4)
	addi     r0, r3, 1
	stw      r0, 0x10(r4)
	lbz      r28, 0(r3)
	rlwinm.  r0, r28, 0, 0x18, 0x18
	beq      lbl_8009CC1C
	lwz      r4, 4(r31)
	mr       r3, r30
	addi     r0, r4, 1
	stw      r0, 4(r31)
	lbz      r4, 0(r4)
	bl       readReg16__8JASTrackFUc
	rlwinm.  r0, r28, 0, 0x19, 0x19
	clrlwi   r27, r3, 0x10
	beq      lbl_8009CC28
	rlwinm.  r0, r28, 0, 0x1a, 0x1a
	beq      lbl_8009CBF8
	lwz      r4, 4(r31)
	mr       r3, r30
	addi     r0, r4, 1
	stw      r0, 4(r31)
	lbz      r4, 0(r4)
	bl       readReg16__8JASTrackFUc
	clrlwi   r4, r3, 0x10
	b        lbl_8009CC04

lbl_8009CBF8:
	mr       r3, r31
	bl       read24__10JASSeqCtrlFv
	mr       r4, r3

lbl_8009CC04:
	mulli    r0, r27, 3
	mr       r3, r31
	add      r4, r4, r0
	bl       get24__10JASSeqCtrlCFUl
	mr       r27, r3
	b        lbl_8009CC28

lbl_8009CC1C:
	mr       r3, r31
	bl       read24__10JASSeqCtrlFv
	mr       r27, r3

lbl_8009CC28:
	mr       r3, r29
	mr       r4, r30
	mr       r5, r28
	bl       conditionCheck__12JASSeqParserFP8JASTrackUc
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009CC68
	lwz      r4, 0xc(r31)
	lwz      r5, 4(r31)
	addi     r3, r4, 1
	slwi     r0, r4, 2
	stw      r3, 0xc(r31)
	add      r3, r31, r0
	stw      r5, 0x10(r3)
	lwz      r0, 0(r31)
	add      r0, r0, r27
	stw      r0, 4(r31)

lbl_8009CC68:
	lmw      r27, 0xc(r1)
	li       r3, 0
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x8009CC80
 * @note Size: 0x84
 */
void JASSeqParser::cmdRet(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r4
	lwz      r0, 0(r5)
	clrlwi   r5, r0, 0x18
	bl       conditionCheck__12JASSeqParserFP8JASTrackUc
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009CCEC
	addi     r4, r31, 0xc
	lwz      r3, 0x18(r31)
	cmplwi   r3, 0
	bne      lbl_8009CCC0
	li       r5, 0
	b        lbl_8009CCDC

lbl_8009CCC0:
	addi     r3, r3, -1
	li       r5, 1
	slwi     r0, r3, 2
	stw      r3, 0xc(r4)
	add      r3, r4, r0
	lwz      r0, 0x10(r3)
	stw      r0, 4(r4)

lbl_8009CCDC:
	clrlwi.  r0, r5, 0x18
	bne      lbl_8009CCEC
	li       r3, 3
	b        lbl_8009CCF0

lbl_8009CCEC:
	li       r3, 0

lbl_8009CCF0:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009CD04
 * @note Size: 0x144
 */
void JASSeqParser::cmdJmp(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stmw     r25, 0x14(r1)
	mr       r26, r3
	mr       r27, r4
	li       r29, 0
	addi     r31, r27, 0xc
	li       r28, 0
	lwz      r3, 0x10(r4)
	addi     r0, r3, 1
	stw      r0, 0x10(r4)
	lbz      r30, 0(r3)
	rlwinm.  r0, r30, 0, 0x18, 0x18
	beq      lbl_8009CDE4
	lwz      r3, 4(r31)
	rlwinm.  r0, r30, 0, 0x19, 0x19
	addi     r0, r3, 1
	stw      r0, 4(r31)
	lbz      r4, 0(r3)
	beq      lbl_8009CDB0
	mr       r3, r27
	bl       readReg16__8JASTrackFUc
	rlwinm.  r0, r30, 0, 0x1a, 0x1a
	clrlwi   r25, r3, 0x10
	beq      lbl_8009CD8C
	lwz      r4, 4(r31)
	mr       r3, r27
	addi     r0, r4, 1
	stw      r0, 4(r31)
	lbz      r4, 0(r4)
	bl       readReg16__8JASTrackFUc
	clrlwi   r4, r3, 0x10
	b        lbl_8009CD98

lbl_8009CD8C:
	mr       r3, r31
	bl       read24__10JASSeqCtrlFv
	mr       r4, r3

lbl_8009CD98:
	mulli    r0, r25, 3
	mr       r3, r31
	add      r4, r4, r0
	bl       get24__10JASSeqCtrlCFUl
	mr       r25, r3
	b        lbl_8009CDF0

lbl_8009CDB0:
	cmplwi   r4, 0x28
	blt      lbl_8009CDD4
	cmplwi   r4, 0x2b
	bgt      lbl_8009CDD4
	mr       r3, r27
	bl       readReg32__8JASTrackFUc
	li       r29, 1
	mr       r28, r3
	b        lbl_8009CDF0

lbl_8009CDD4:
	mr       r3, r27
	bl       readReg32__8JASTrackFUc
	mr       r25, r3
	b        lbl_8009CDF0

lbl_8009CDE4:
	mr       r3, r31
	bl       read24__10JASSeqCtrlFv
	mr       r25, r3

lbl_8009CDF0:
	mr       r3, r26
	mr       r4, r27
	mr       r5, r30
	bl       conditionCheck__12JASSeqParserFP8JASTrackUc
	clrlwi.  r0, r3, 0x18
	beq      lbl_8009CE30
	clrlwi.  r0, r29, 0x18
	beq      lbl_8009CE24
	mr       r3, r31
	mr       r4, r28
	li       r5, 0
	bl       start__10JASSeqCtrlFPvUl
	b        lbl_8009CE30

lbl_8009CE24:
	lwz      r0, 0(r31)
	add      r0, r0, r25
	stw      r0, 4(r31)

lbl_8009CE30:
	lmw      r25, 0x14(r1)
	li       r3, 0
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x8009CE48
 * @note Size: 0x3C
 */
void JASSeqParser::cmdLoopS(JASTrack*, u32*)
{
	/*
	lwz      r0, 0x18(r4)
	addi     r7, r4, 0xc
	lwz      r6, 0(r5)
	li       r3, 0
	lwz      r5, 0x10(r4)
	slwi     r0, r0, 2
	add      r4, r7, r0
	stw      r5, 0x10(r4)
	lwz      r5, 0xc(r7)
	addi     r4, r5, 1
	slwi     r0, r5, 1
	stw      r4, 0xc(r7)
	add      r4, r7, r0
	sth      r6, 0x30(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009CE84
 * @note Size: 0x28
 */
void JASSeqParser::cmdLoopE(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	addi     r3, r4, 0xc
	stw      r0, 0x14(r1)
	bl       loopEnd__10JASSeqCtrlFv
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009CEAC
 * @note Size: 0x58
 */
void JASSeqParser::cmdReadPort(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	mr       r31, r5
	stw      r30, 8(r1)
	mr       r30, r4
	mr       r3, r30
	lwz      r4, 0(r5)
	bl       readSelfPort__8JASTrackFi
	lwz      r0, 4(r31)
	mr       r5, r3
	mr       r3, r30
	clrlwi   r4, r0, 0x18
	bl       writeRegDirect__8JASTrackFUcUs
	lwz      r0, 0x14(r1)
	li       r3, 0
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009CF04
 * @note Size: 0x34
 */
void JASSeqParser::cmdWritePort(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r4
	stw      r0, 0x14(r1)
	lwz      r0, 4(r5)
	lwz      r4, 0(r5)
	clrlwi   r5, r0, 0x10
	bl       writeSelfPort__8JASTrackFiUs
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009CF38
 * @note Size: 0x38
 */
void JASSeqParser::cmdParentWritePort(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r6, 0(r5)
	lwz      r0, 4(r5)
	lwz      r3, 0x2f8(r4)
	clrlwi   r4, r6, 0x1c
	clrlwi   r5, r0, 0x10
	bl       writePortAppDirect__8JASTrackFUlUs
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009CF70
 * @note Size: 0x44
 */
void JASSeqParser::cmdChildWritePort(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r6, 0(r5)
	lwz      r0, 4(r5)
	rlwinm   r3, r6, 0x1e, 0x1a, 0x1d
	clrlwi   r5, r6, 0x1c
	add      r3, r4, r3
	lwz      r3, 0x2fc(r3)
	mr       r4, r5
	clrlwi   r5, r0, 0x10
	bl       writePortAppDirect__8JASTrackFUlUs
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009CFB4
 * @note Size: 0x18
 */
void JASSeqParser::cmdCheckPortImport(JASTrack*, u32*)
{
	/*
	lwz      r0, 0(r5)
	li       r3, 0
	add      r5, r4, r0
	lbz      r0, 0x54(r5)
	sth      r0, 0x26e(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009CFCC
 * @note Size: 0x18
 */
void JASSeqParser::cmdCheckPortExport(JASTrack*, u32*)
{
	/*
	lwz      r0, 0(r5)
	li       r3, 0
	add      r5, r4, r0
	lbz      r0, 0x64(r5)
	sth      r0, 0x26e(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009CFE4
 * @note Size: 0x18
 */
void JASSeqParser::cmdWait(JASTrack*, u32*)
{
	/*
	lwz      r3, 0(r5)
	neg      r0, r3
	stw      r3, 0x14(r4)
	or       r0, r0, r3
	srwi     r3, r0, 0x1f
	blr
	*/
}

/**
 * @note Address: 0x8009CFFC
 * @note Size: 0x48
 */
void JASSeqParser::cmdSetLastNote(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r4
	mr       r3, r30
	lwz      r31, 0(r5)
	bl       getTranspose__8JASTrackCFv
	add      r31, r31, r3
	li       r3, 0
	stb      r31, 0xe5(r30)
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D044
 * @note Size: 0x1C
 */
void JASSeqParser::cmdTimeRelate(JASTrack*, u32*)
{
	/*
	lwz      r5, 0(r5)
	li       r3, 0
	neg      r0, r5
	or       r0, r0, r5
	srwi     r0, r0, 0x1f
	stb      r0, 0x364(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D060
 * @note Size: 0x30
 */
void JASSeqParser::cmdSimpleOsc(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r4
	stw      r0, 0x14(r1)
	lwz      r0, 0(r5)
	clrlwi   r4, r0, 0x18
	bl       oscSetupSimple__8JASTrackFUc
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D090
 * @note Size: 0x34
 */
void JASSeqParser::cmdSimpleEnv(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r4
	stw      r0, 0x14(r1)
	lwz      r0, 0(r5)
	lwz      r5, 4(r5)
	clrlwi   r4, r0, 0x18
	bl       oscSetupSimpleEnv__8JASTrackFUcUl
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D0C4
 * @note Size: 0x70
 */
void JASSeqParser::cmdSimpleADSR(JASTrack*, u32*)
{
	/*
	lis      r3, sAdsrDef__9JASPlayer@ha
	addi     r0, r4, 0x2e0
	addi     r8, r3, sAdsrDef__9JASPlayer@l
	lwz      r6, 0(r8)
	li       r3, 0
	lfs      f0, 4(r8)
	stw      r6, 0x2a8(r4)
	lwz      r7, 8(r8)
	stfs     f0, 0x2ac(r4)
	lwz      r6, 0xc(r8)
	stw      r7, 0x2b0(r4)
	lfs      f1, 0x10(r8)
	stw      r6, 0x2b4(r4)
	lfs      f0, 0x14(r8)
	stfs     f1, 0x2b8(r4)
	stfs     f0, 0x2bc(r4)
	stw      r0, 0x2b0(r4)
	lwz      r0, 0(r5)
	sth      r0, 0x2e2(r4)
	lwz      r0, 4(r5)
	sth      r0, 0x2e8(r4)
	lwz      r0, 8(r5)
	sth      r0, 0x2ee(r4)
	lwz      r0, 0xc(r5)
	sth      r0, 0x2f0(r4)
	lwz      r0, 0x10(r5)
	sth      r0, 0x350(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D134
 * @note Size: 0x10
 */
void JASSeqParser::cmdTranspose(JASTrack*, u32*)
{
	/*
	lwz      r0, 0(r5)
	li       r3, 0
	stb      r0, 0x356(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D144
 * @note Size: 0x54
 */
void JASSeqParser::cmdCloseTrack(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	lwz      r0, 0(r5)
	rlwinm   r0, r0, 2, 0x16, 0x1d
	add      r31, r4, r0
	lwz      r3, 0x2fc(r31)
	cmplwi   r3, 0
	bne      lbl_8009D174
	li       r3, 0
	b        lbl_8009D184

lbl_8009D174:
	bl       close__8JASTrackFv
	li       r0, 0
	li       r3, 0
	stw      r0, 0x2fc(r31)

lbl_8009D184:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D198
 * @note Size: 0x54
 */
void JASSeqParser::cmdOutSwitch(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	lwz      r31, 0x33c(r4)
	cmplwi   r31, 0
	beq      lbl_8009D1D4
	lwz      r0, 0(r5)
	mr       r3, r31
	clrlwi   r4, r0, 0x10
	bl       setOuterSwitch__13JASOuterParamFUs
	lis      r4, 0x0000FFFF@ha
	mr       r3, r31
	addi     r4, r4, 0x0000FFFF@l
	bl       setOuterUpdate__13JASOuterParamFUs

lbl_8009D1D4:
	lwz      r0, 0x14(r1)
	li       r3, 0
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D1EC
 * @note Size: 0x2C
 */
void JASSeqParser::cmdUpdateSync(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r4
	stw      r0, 0x14(r1)
	lwz      r4, 0(r5)
	bl       updateTrack__8JASTrackFUl
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D218
 * @note Size: 0x30
 */
void JASSeqParser::cmdBusConnect(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r4
	stw      r0, 0x14(r1)
	lwz      r4, 0(r5)
	lwz      r5, 4(r5)
	bl       connectBus__8JASTrackFii
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D248
 * @note Size: 0x10
 */
void JASSeqParser::cmdPauseStatus(JASTrack*, u32*)
{
	/*
	lwz      r0, 0(r5)
	li       r3, 0
	stb      r0, 0x358(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D258
 * @note Size: 0x10
 */
void JASSeqParser::cmdVolumeMode(JASTrack*, u32*)
{
	/*
	lwz      r0, 0(r5)
	li       r3, 0
	stb      r0, 0x359(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D268
 * @note Size: 0x38
 */
void JASSeqParser::cmdSetInterrupt(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	addi     r3, r4, 0x94
	stw      r0, 0x14(r1)
	lwz      r6, 0xc(r4)
	lwz      r0, 4(r5)
	lwz      r4, 0(r5)
	add      r5, r6, r0
	bl       setIntr__10JASIntrMgrFUlPv
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D2A0
 * @note Size: 0x2C
 */
void JASSeqParser::cmdDisInterrupt(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	addi     r3, r4, 0x94
	stw      r0, 0x14(r1)
	lwz      r4, 0(r5)
	bl       resetInter__10JASIntrMgrFUl
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D2CC
 * @note Size: 0x18
 */
void JASSeqParser::cmdClrI(JASTrack*, u32*)
{
	/*
	li       r3, 1
	li       r0, 0
	stb      r3, 0x94(r4)
	li       r3, 0
	stw      r0, 0x50(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D2E4
 * @note Size: 0x10
 */
void JASSeqParser::cmdSetI(JASTrack*, u32*)
{
	/*
	li       r0, 0
	li       r3, 0
	stb      r0, 0x94(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D2F4
 * @note Size: 0x50
 */
void JASSeqParser::cmdRetI(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	li       r0, 1
	stw      r31, 0xc(r1)
	mr       r31, r4
	addi     r3, r31, 0xc
	stb      r0, 0x94(r4)
	bl       retIntr__10JASSeqCtrlFv
	mr       r3, r31
	bl       tryInterrupt__8JASTrackFv
	lwz      r3, 0x14(r31)
	lwz      r31, 0xc(r1)
	neg      r0, r3
	andc     r0, r0, r3
	srwi     r3, r0, 0x1f
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D344
 * @note Size: 0x1C
 */
void JASSeqParser::cmdIntTimer(JASTrack*, u32*)
{
	/*
	lwz      r0, 0(r5)
	li       r3, 0
	lwz      r5, 4(r5)
	stb      r0, 0x97(r4)
	stw      r5, 0x98(r4)
	stw      r5, 0x9c(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D360
 * @note Size: 0x58
 */
void JASSeqParser::cmdSyncCPU(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	lis      r3, 0x0000FFFF@ha
	stw      r0, 0x14(r1)
	addi     r3, r3, 0x0000FFFF@l
	stw      r31, 0xc(r1)
	mr       r31, r4
	lwz      r12, sCallBackFunc__8JASTrack@sda21(r13)
	cmplwi   r12, 0
	beq      lbl_8009D39C
	lwz      r0, 0(r5)
	mr       r3, r31
	clrlwi   r4, r0, 0x10
	mtctr    r12
	bctrl

lbl_8009D39C:
	sth      r3, 0x26e(r31)
	li       r3, 0
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D3B8
 * @note Size: 0x8
 */
u32 JASSeqParser::cmdFlushAll(JASTrack*, u32*) { return 0x0; }

/**
 * @note Address: 0x8009D3C0
 * @note Size: 0x8
 */
u32 JASSeqParser::cmdFlushRelease(JASTrack*, u32*) { return 0x0; }

/**
 * @note Address: 0x8009D3C8
 * @note Size: 0x30
 */
void JASSeqParser::cmdTimeBase(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r4
	stw      r0, 0x14(r1)
	lwz      r0, 0(r5)
	clrlwi   r4, r0, 0x10
	bl       setTimebase__8JASTrackFUs
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D3F8
 * @note Size: 0x30
 */
void JASSeqParser::cmdTempo(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r3, r4
	stw      r0, 0x14(r1)
	lwz      r0, 0(r5)
	clrlwi   r4, r0, 0x10
	bl       setTempo__8JASTrackFUs
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D428
 * @note Size: 0x8
 */
u32 JASSeqParser::cmdFinish(JASTrack*, u32*) { return 0x3; }

/**
 * @note Address: 0x8009D430
 * @note Size: 0x8
 */
u32 JASSeqParser::cmdNop(JASTrack*, u32*) { return 0x0; }

/**
 * @note Address: 0x8009D438
 * @note Size: 0x84
 */
void JASSeqParser::cmdPanPowSet(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x30(r1)
	lis      r0, 0x4330
	lfd      f1, lbl_80516D38@sda21(r2)
	li       r3, 0
	lwz      r6, 0(r5)
	stw      r0, 8(r1)
	lfs      f2, lbl_80516D30@sda21(r2)
	sth      r6, 0x278(r4)
	lwz      r6, 4(r5)
	stw      r0, 0x18(r1)
	sth      r6, 0x27a(r4)
	lwz      r0, 8(r5)
	sth      r0, 0x27c(r4)
	lwz      r0, 0xc(r5)
	stw      r0, 0xc(r1)
	lfd      f0, 8(r1)
	fsubs    f0, f0, f1
	fmuls    f0, f2, f0
	fctiwz   f0, f0
	stfd     f0, 0x10(r1)
	lwz      r0, 0x14(r1)
	sth      r0, 0x27e(r4)
	lwz      r0, 0x10(r5)
	stw      r0, 0x1c(r1)
	lfd      f0, 0x18(r1)
	fsubs    f0, f0, f1
	fmuls    f0, f2, f0
	fctiwz   f0, f0
	stfd     f0, 0x20(r1)
	lwz      r0, 0x24(r1)
	sth      r0, 0x280(r4)
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x8009D4BC
 * @note Size: 0x34
 */
void JASSeqParser::cmdFIRSet(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r6, 0xc(r4)
	lwz      r0, 0(r5)
	lwz      r3, 0x33c(r4)
	add      r4, r6, r0
	bl       setFirFilter__13JASOuterParamFPs
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D4F0
 * @note Size: 0x54
 */
void JASSeqParser::cmdEXTSet(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	mr       r30, r4
	lwz      r0, 0(r5)
	lwz      r3, 0xc(r4)
	add      r31, r3, r0
	mr       r3, r31
	bl       initExtBuffer__13JASOuterParamFv
	mr       r3, r30
	mr       r4, r31
	bl       assignExtBuffer__8JASTrackFP13JASOuterParam
	lwz      r0, 0x14(r1)
	li       r3, 0
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D544
 * @note Size: 0xF8
 */
void JASSeqParser::cmdPanSwSet(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x20(r1)
	li       r3, 0
	stw      r31, 0x1c(r1)
	addi     r7, r1, 0x10
	addi     r6, r1, 8
	lwz      r31, lbl_80516D40@sda21(r2)
	lhz      r12, lbl_80516D44@sda21(r2)
	lbz      r11, lbl_80516D46@sda21(r2)
	lwz      r0, 0(r5)
	lwz      r10, lbl_80516D48@sda21(r2)
	lhz      r9, lbl_80516D4C@sda21(r2)
	srwi     r0, r0, 5
	lbz      r8, lbl_80516D4E@sda21(r2)
	stw      r31, 0x10(r1)
	sth      r12, 0x14(r1)
	stb      r11, 0x16(r1)
	lbzx     r0, r7, r0
	stw      r10, 8(r1)
	stb      r0, 0x35c(r4)
	lwz      r0, 0(r5)
	sth      r9, 0xc(r1)
	srwi     r0, r0, 5
	stb      r8, 0xe(r1)
	lbzx     r0, r6, r0
	stb      r0, 0x35f(r4)
	lwz      r0, 0(r5)
	clrlwi   r0, r0, 0x1b
	stb      r0, 0x13e(r4)
	lwz      r0, 0x34c(r4)
	ori      r0, r0, 0x1c
	stw      r0, 0x34c(r4)
	lwz      r0, 4(r5)
	srwi     r0, r0, 5
	lbzx     r0, r7, r0
	stb      r0, 0x35d(r4)
	lwz      r0, 4(r5)
	srwi     r0, r0, 5
	lbzx     r0, r6, r0
	stb      r0, 0x360(r4)
	lwz      r0, 4(r5)
	clrlwi   r0, r0, 0x1b
	stb      r0, 0x13f(r4)
	lwz      r0, 0x34c(r4)
	ori      r0, r0, 0x1c
	stw      r0, 0x34c(r4)
	lwz      r0, 8(r5)
	srwi     r0, r0, 5
	lbzx     r0, r7, r0
	stb      r0, 0x35e(r4)
	lwz      r0, 8(r5)
	srwi     r0, r0, 5
	lbzx     r0, r6, r0
	stb      r0, 0x361(r4)
	lwz      r0, 8(r5)
	clrlwi   r0, r0, 0x1b
	stb      r0, 0x140(r4)
	lwz      r0, 0x34c(r4)
	ori      r0, r0, 0x1c
	stw      r0, 0x34c(r4)
	lwz      r31, 0x1c(r1)
	addi     r1, r1, 0x20
	blr
	*/
}

/**
 * @note Address: 0x8009D63C
 * @note Size: 0x1C
 */
void JASSeqParser::cmdOscRoute(JASTrack*, u32*)
{
	/*
	lwz      r5, 0(r5)
	li       r3, 0
	rlwinm   r0, r5, 0x1e, 0x1a, 0x1d
	clrlwi   r5, r5, 0x1c
	add      r4, r4, r0
	stw      r5, 0x2d8(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D658
 * @note Size: 0x48
 */
void JASSeqParser::cmdVibDepth(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	lis      r0, 0x4330
	lfd      f2, lbl_80516D58@sda21(r2)
	li       r3, 0
	lwz      r6, 0(r5)
	stw      r0, 8(r1)
	rlwinm   r5, r6, 8, 0x10, 0x17
	rlwinm   r0, r6, 1, 0x17, 0x1e
	or       r0, r5, r0
	lfs      f0, lbl_80516D50@sda21(r2)
	xoris    r0, r0, 0x8000
	stw      r0, 0xc(r1)
	lfd      f1, 8(r1)
	fsubs    f1, f1, f2
	fdivs    f1, f1, f0
	stfs     f1, 0xec(r4)
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D6A0
 * @note Size: 0x38
 */
void JASSeqParser::cmdVibDepthMidi(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	lis      r0, 0x4330
	lfd      f2, lbl_80516D38@sda21(r2)
	li       r3, 0
	lwz      r5, 0(r5)
	stw      r0, 8(r1)
	lfs      f0, lbl_80516D50@sda21(r2)
	stw      r5, 0xc(r1)
	lfd      f1, 8(r1)
	fsubs    f1, f1, f2
	fdivs    f1, f1, f0
	stfs     f1, 0xec(r4)
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D6D8
 * @note Size: 0x48
 */
void JASSeqParser::cmdVibPitch(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	lis      r0, 0x4330
	lfd      f2, lbl_80516D38@sda21(r2)
	li       r3, 0
	lwz      r6, 0(r5)
	stw      r0, 8(r1)
	rlwinm   r5, r6, 8, 0x10, 0x17
	rlwinm   r0, r6, 1, 0x17, 0x1e
	or       r0, r5, r0
	lfs      f0, lbl_80516D60@sda21(r2)
	clrlwi   r0, r0, 0x10
	stw      r0, 0xc(r1)
	lfd      f1, 8(r1)
	fsubs    f1, f1, f2
	fdivs    f1, f1, f0
	stfs     f1, 0xf0(r4)
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D720
 * @note Size: 0xF4
 */
void JASSeqParser::cmdIIRSet(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x30(r1)
	lis      r0, 0x4330
	lfd      f4, lbl_80516D58@sda21(r2)
	li       r3, 0
	lwz      r6, 0(r5)
	stw      r0, 8(r1)
	extsh    r6, r6
	lfs      f3, lbl_80516D64@sda21(r2)
	xoris    r6, r6, 0x8000
	lfs      f2, lbl_80516D68@sda21(r2)
	stw      r6, 0xc(r1)
	lfs      f1, lbl_80516D6C@sda21(r2)
	lfd      f0, 8(r1)
	stw      r0, 0x10(r1)
	fsubs    f0, f0, f4
	stw      r0, 0x18(r1)
	fdivs    f0, f0, f3
	stw      r0, 0x20(r1)
	stfs     f0, 0x20c(r4)
	lfs      f0, 0x20c(r4)
	stfs     f0, 0x208(r4)
	stfs     f2, 0x214(r4)
	stfs     f1, 0x210(r4)
	lwz      r0, 4(r5)
	extsh    r0, r0
	xoris    r0, r0, 0x8000
	stw      r0, 0x14(r1)
	lfd      f0, 0x10(r1)
	fsubs    f0, f0, f4
	fdivs    f0, f0, f3
	stfs     f0, 0x21c(r4)
	lfs      f0, 0x21c(r4)
	stfs     f0, 0x218(r4)
	stfs     f2, 0x224(r4)
	stfs     f1, 0x220(r4)
	lwz      r0, 8(r5)
	extsh    r0, r0
	xoris    r0, r0, 0x8000
	stw      r0, 0x1c(r1)
	lfd      f0, 0x18(r1)
	fsubs    f0, f0, f4
	fdivs    f0, f0, f3
	stfs     f0, 0x22c(r4)
	lfs      f0, 0x22c(r4)
	stfs     f0, 0x228(r4)
	stfs     f2, 0x234(r4)
	stfs     f1, 0x230(r4)
	lwz      r0, 0xc(r5)
	extsh    r0, r0
	xoris    r0, r0, 0x8000
	stw      r0, 0x24(r1)
	lfd      f0, 0x20(r1)
	fsubs    f0, f0, f4
	fdivs    f0, f0, f3
	stfs     f0, 0x23c(r4)
	lfs      f0, 0x23c(r4)
	stfs     f0, 0x238(r4)
	stfs     f2, 0x244(r4)
	stfs     f1, 0x240(r4)
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x8009D814
 * @note Size: 0xF8
 */
void JASSeqParser::cmdIIRCutOff(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x30(r1)
	lis      r0, 0x4330
	lis      r3, CUTOFF_TO_IIR_TABLE__9JASPlayer@ha
	lfd      f4, lbl_80516D58@sda21(r2)
	lwz      r5, 0(r5)
	addi     r3, r3, CUTOFF_TO_IIR_TABLE__9JASPlayer@l
	stw      r0, 8(r1)
	rlwinm   r5, r5, 3, 0x15, 0x1c
	lfs      f3, lbl_80516D70@sda21(r2)
	add      r6, r3, r5
	lfs      f2, lbl_80516D68@sda21(r2)
	lha      r5, 0(r6)
	li       r3, 0
	lfs      f1, lbl_80516D6C@sda21(r2)
	xoris    r5, r5, 0x8000
	stw      r0, 0x10(r1)
	stw      r5, 0xc(r1)
	lfd      f0, 8(r1)
	stw      r0, 0x18(r1)
	fsubs    f0, f0, f4
	stw      r0, 0x20(r1)
	fdivs    f0, f0, f3
	stfs     f0, 0x20c(r4)
	lfs      f0, 0x20c(r4)
	stfs     f0, 0x208(r4)
	stfs     f2, 0x214(r4)
	stfs     f1, 0x210(r4)
	lha      r0, 2(r6)
	xoris    r0, r0, 0x8000
	stw      r0, 0x14(r1)
	lfd      f0, 0x10(r1)
	fsubs    f0, f0, f4
	fdivs    f0, f0, f3
	stfs     f0, 0x21c(r4)
	lfs      f0, 0x21c(r4)
	stfs     f0, 0x218(r4)
	stfs     f2, 0x224(r4)
	stfs     f1, 0x220(r4)
	lha      r0, 4(r6)
	xoris    r0, r0, 0x8000
	stw      r0, 0x1c(r1)
	lfd      f0, 0x18(r1)
	fsubs    f0, f0, f4
	fdivs    f0, f0, f3
	stfs     f0, 0x22c(r4)
	lfs      f0, 0x22c(r4)
	stfs     f0, 0x228(r4)
	stfs     f2, 0x234(r4)
	stfs     f1, 0x230(r4)
	lha      r0, 6(r6)
	xoris    r0, r0, 0x8000
	stw      r0, 0x24(r1)
	lfd      f0, 0x20(r1)
	fsubs    f0, f0, f4
	fdivs    f0, f0, f3
	stfs     f0, 0x23c(r4)
	lfs      f0, 0x23c(r4)
	stfs     f0, 0x238(r4)
	stfs     f2, 0x244(r4)
	stfs     f1, 0x240(r4)
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x8009D90C
 * @note Size: 0x3C
 */
void JASSeqParser::cmdOscFull(JASTrack*, u32*)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	mr       r6, r5
	mr       r3, r4
	stw      r0, 0x14(r1)
	lwz      r0, 0(r5)
	lwz      r5, 4(r5)
	lwz      r6, 8(r6)
	clrlwi   r4, r0, 0x18
	bl       oscSetupFull__8JASTrackFUcUlUl
	lwz      r0, 0x14(r1)
	li       r3, 0
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/**
 * @note Address: 0x8009D948
 * @note Size: 0x10
 */
void JASSeqParser::cmdCheckWave(JASTrack*, u32*)
{
	/*
	li       r0, 0
	li       r3, 0
	sth      r0, 0x26e(r4)
	blr
	*/
}

/**
 * @note Address: 0x8009D958
 * @note Size: 0x214
 */
void JASSeqParser::cmdPrintf(JASTrack*, u32*)
{
	/*
	stwu     r1, -0xc0(r1)
	mflr     r0
	li       r5, 0
	stw      r0, 0xc4(r1)
	stmw     r27, 0xac(r1)
	addi     r31, r1, 8
	mr       r29, r4
	addi     r4, r1, 0x1c
	mr       r3, r31
	li       r30, 0
	b        lbl_8009DAC8

lbl_8009D984:
	lwz      r6, 0x10(r29)
	addi     r0, r6, 1
	stw      r0, 0x10(r29)
	lbz      r0, 0(r6)
	stbx     r0, r4, r5
	lbzx     r6, r4, r5
	extsb.   r0, r6
	beq      lbl_8009DAD0
	extsb    r0, r6
	cmpwi    r0, 0x5c
	bne      lbl_8009D9EC
	lwz      r6, 0x10(r29)
	addi     r0, r6, 1
	stw      r0, 0x10(r29)
	lbz      r0, 0(r6)
	stbx     r0, r4, r5
	lbzx     r6, r4, r5
	extsb.   r0, r6
	beq      lbl_8009DAD0
	extsb    r0, r6
	cmpwi    r0, 0x6e
	beq      lbl_8009D9E0
	b        lbl_8009DAC4

lbl_8009D9E0:
	li       r0, 0xd
	stbx     r0, r4, r5
	b        lbl_8009DAC4

lbl_8009D9EC:
	cmpwi    r0, 0x25
	bne      lbl_8009DAC4
	lwz      r6, 0x10(r29)
	addi     r7, r1, 0x1c
	addi     r5, r5, 1
	addi     r0, r6, 1
	stw      r0, 0x10(r29)
	lbz      r0, 0(r6)
	stbx     r0, r7, r5
	lbzx     r6, r7, r5
	extsb.   r0, r6
	beq      lbl_8009DAD0
	extsb    r0, r6
	cmpwi    r0, 0x72
	beq      lbl_8009DA84
	bge      lbl_8009DA44
	cmpwi    r0, 0x64
	beq      lbl_8009DA60
	bge      lbl_8009DABC
	cmpwi    r0, 0x52
	beq      lbl_8009DA98
	b        lbl_8009DABC

lbl_8009DA44:
	cmpwi    r0, 0x78
	beq      lbl_8009DA6C
	bge      lbl_8009DABC
	cmpwi    r0, 0x74
	beq      lbl_8009DAAC
	bge      lbl_8009DABC
	b        lbl_8009DA78

lbl_8009DA60:
	li       r0, 0
	stb      r0, 0(r3)
	b        lbl_8009DABC

lbl_8009DA6C:
	li       r0, 1
	stb      r0, 0(r3)
	b        lbl_8009DABC

lbl_8009DA78:
	li       r0, 2
	stb      r0, 0(r3)
	b        lbl_8009DABC

lbl_8009DA84:
	li       r6, 3
	li       r0, 0x64
	stb      r6, 0(r3)
	stbx     r0, r7, r5
	b        lbl_8009DABC

lbl_8009DA98:
	li       r6, 4
	li       r0, 0x78
	stb      r6, 0(r3)
	stbx     r0, r7, r5
	b        lbl_8009DABC

lbl_8009DAAC:
	li       r6, 5
	li       r0, 0x78
	stb      r6, 0(r3)
	stbx     r0, r7, r5

lbl_8009DABC:
	addi     r3, r3, 1
	addi     r30, r30, 1

lbl_8009DAC4:
	addi     r5, r5, 1

lbl_8009DAC8:
	cmplwi   r5, 0x80
	blt      lbl_8009D984

lbl_8009DAD0:
	addi     r28, r1, 0xc
	li       r27, 0
	b        lbl_8009DB4C

lbl_8009DADC:
	lwz      r3, 0x10(r29)
	lbz      r4, 0(r31)
	addi     r0, r3, 1
	stw      r0, 0x10(r29)
	cmplwi   r4, 2
	lbz      r0, 0(r3)
	stw      r0, 0(r28)
	bne      lbl_8009DB10
	lwz      r3, 0xc(r29)
	lwz      r0, 0(r28)
	add      r0, r3, r0
	stw      r0, 0(r28)
	b        lbl_8009DB40

lbl_8009DB10:
	cmplwi   r4, 5
	bne      lbl_8009DB24
	lwz      r0, 0x348(r29)
	stw      r0, 0(r28)
	b        lbl_8009DB40

lbl_8009DB24:
	cmplwi   r4, 3
	blt      lbl_8009DB40
	lwz      r0, 0(r28)
	mr       r3, r29
	clrlwi   r4, r0, 0x18
	bl       exchangeRegisterValue__8JASTrackFUc
	stw      r3, 0(r28)

lbl_8009DB40:
	addi     r28, r28, 4
	addi     r31, r31, 1
	addi     r27, r27, 1

lbl_8009DB4C:
	cmplw    r27, r30
	blt      lbl_8009DADC
	lmw      r27, 0xac(r1)
	li       r3, 0
	lwz      r0, 0xc4(r1)
	mtlr     r0
	addi     r1, r1, 0xc0
	blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x14C
 */
void JASSeqParser::Cmd_Process(JASTrack*, u8, u16)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0x1CC
 */
void JASSeqParser::RegCmd_Process(JASTrack*, int, int)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x8009DB6C
 * @note Size: 0x18C
 */
void JASSeqParser::cmdSetParam(JASTrack*, u8)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	rlwinm   r0, r5, 0, 0x1c, 0x1d
	cmplwi   r0, 0xc
	stmw     r27, 0x1c(r1)
	mr       r27, r4
	addi     r31, r27, 0xc
	clrlwi   r29, r5, 0x18
	lwz      r4, 0x10(r4)
	addi     r3, r4, 1
	stw      r3, 0x10(r27)
	lbz      r30, 0(r4)
	bgt      lbl_8009DC34
	lis      r3, lbl_804A42E4@ha
	slwi     r0, r0, 2
	addi     r3, r3, lbl_804A42E4@l
	lwzx     r0, r3, r0
	mtctr    r0
	bctr
	.global  lbl_8009DBBC

lbl_8009DBBC:
	lwz      r4, 4(r31)
	mr       r3, r27
	addi     r0, r4, 1
	stw      r0, 4(r31)
	lbz      r4, 0(r4)
	bl       readReg16__8JASTrackFUc
	extsh    r28, r3
	b        lbl_8009DC34
	.global  lbl_8009DBDC

lbl_8009DBDC:
	lwz      r3, 4(r31)
	addi     r0, r3, 1
	stw      r0, 4(r31)
	lbz      r28, 0(r3)
	b        lbl_8009DC34
	.global  lbl_8009DBF0

lbl_8009DBF0:
	lwz      r3, 4(r31)
	addi     r0, r3, 1
	stw      r0, 4(r31)
	lbz      r4, 0(r3)
	rlwinm.  r0, r4, 0, 0x18, 0x18
	beq      lbl_8009DC14
	slwi     r0, r4, 8
	extsh    r28, r0
	b        lbl_8009DC34

lbl_8009DC14:
	slwi     r3, r4, 8
	slwi     r0, r4, 1
	or       r0, r3, r0
	extsh    r28, r0
	b        lbl_8009DC34
	.global  lbl_8009DC28

lbl_8009DC28:
	mr       r3, r31
	bl       read16__10JASSeqCtrlFv
	extsh    r28, r3
	.global  lbl_8009DC34

lbl_8009DC34:
	clrlwi   r0, r29, 0x1e
	li       r5, 0
	cmpwi    r0, 2
	beq      lbl_8009DC8C
	bge      lbl_8009DC58
	cmpwi    r0, 0
	beq      lbl_8009DC64
	bge      lbl_8009DC6C
	b        lbl_8009DCAC

lbl_8009DC58:
	cmpwi    r0, 4
	bge      lbl_8009DCAC
	b        lbl_8009DCA0

lbl_8009DC64:
	li       r5, -1
	b        lbl_8009DCAC

lbl_8009DC6C:
	lwz      r4, 4(r31)
	mr       r3, r27
	addi     r0, r4, 1
	stw      r0, 4(r31)
	lbz      r4, 0(r4)
	bl       readReg16__8JASTrackFUc
	clrlwi   r5, r3, 0x10
	b        lbl_8009DCAC

lbl_8009DC8C:
	lwz      r3, 4(r31)
	addi     r0, r3, 1
	stw      r0, 4(r31)
	lbz      r5, 0(r3)
	b        lbl_8009DCAC

lbl_8009DCA0:
	mr       r3, r31
	bl       read16__10JASSeqCtrlFv
	clrlwi   r5, r3, 0x10

lbl_8009DCAC:
	extsh    r3, r28
	lis      r0, 0x4330
	xoris    r4, r3, 0x8000
	stw      r0, 8(r1)
	lfd      f2, lbl_80516D58@sda21(r2)
	mr       r3, r27
	stw      r4, 0xc(r1)
	mr       r4, r30
	lfs      f0, lbl_80516D70@sda21(r2)
	lfd      f1, 8(r1)
	fsubs    f1, f1, f2
	fdivs    f1, f1, f0
	bl       setParam__8JASTrackFifi
	lmw      r27, 0x1c(r1)
	li       r3, 0
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: N/A
 * @note Size: 0x14C
 */
void JASSeqParser::cmdWait(JASTrack*, u8)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0xB4
 */
void JASSeqParser::cmdNoteOff(JASTrack*, u8)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x8009DCF8
 * @note Size: 0x3D4
 */
void JASSeqParser::cmdNoteOn(JASTrack*, u8)
{
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stmw     r23, 0xc(r1)
	mr       r30, r4
	mr       r31, r5
	lwz      r3, 0x10(r4)
	addi     r0, r3, 1
	stw      r0, 0x10(r4)
	lbz      r29, 0(r3)
	rlwinm.  r0, r29, 0, 0x18, 0x18
	beq      lbl_8009DD38
	mr       r3, r30
	mr       r4, r31
	bl       exchangeRegisterValue__8JASTrackFUc
	clrlwi   r31, r3, 0x18

lbl_8009DD38:
	mr       r3, r30
	bl       getTranspose__8JASTrackCFv
	rlwinm.  r0, r29, 0x1b, 0x1e, 0x1e
	add      r3, r31, r3
	rlwinm   r0, r29, 0x1b, 0x1e, 0x1f
	clrlwi   r31, r3, 0x18
	mr       r28, r0
	beq      lbl_8009DD60
	mr       r27, r31
	lbz      r31, 0xe5(r30)

lbl_8009DD60:
	lwz      r3, 0x10(r30)
	addi     r0, r3, 1
	stw      r0, 0x10(r30)
	lbz      r3, 0(r3)
	rlwinm.  r0, r3, 0, 0x18, 0x18
	mr       r26, r3
	beq      lbl_8009DD8C
	clrlwi   r4, r3, 0x19
	mr       r3, r30
	bl       exchangeRegisterValue__8JASTrackFUc
	clrlwi   r26, r3, 0x18

lbl_8009DD8C:
	clrlwi.  r3, r29, 0x1d
	li       r23, 0
	mr       r24, r3
	bne      lbl_8009DF10
	lwz      r3, 0x10(r30)
	addi     r0, r3, 1
	stw      r0, 0x10(r30)
	lbz      r3, 0(r3)
	rlwinm.  r0, r3, 0, 0x18, 0x18
	mr       r25, r3
	beq      lbl_8009DDC8
	clrlwi   r4, r3, 0x19
	mr       r3, r30
	bl       exchangeRegisterValue__8JASTrackFUc
	clrlwi   r25, r3, 0x18

lbl_8009DDC8:
	rlwinm.  r3, r29, 0x1d, 0x1e, 0x1f
	li       r29, 0
	li       r4, 0
	ble      lbl_8009DEEC
	cmpwi    r3, 8
	addi     r5, r3, -8
	ble      lbl_8009DEC0
	addi     r0, r5, 7
	srwi     r0, r0, 3
	mtctr    r0
	cmpwi    r5, 0
	ble      lbl_8009DEC0

lbl_8009DDF8:
	lwz      r6, 0x10(r30)
	slwi     r29, r29, 8
	addi     r4, r4, 8
	addi     r0, r6, 1
	stw      r0, 0x10(r30)
	lwz      r5, 0x10(r30)
	lbz      r6, 0(r6)
	addi     r0, r5, 1
	stw      r0, 0x10(r30)
	or       r29, r29, r6
	slwi     r29, r29, 8
	lwz      r6, 0x10(r30)
	lbz      r5, 0(r5)
	addi     r0, r6, 1
	stw      r0, 0x10(r30)
	or       r29, r29, r5
	slwi     r29, r29, 8
	lwz      r5, 0x10(r30)
	lbz      r6, 0(r6)
	addi     r0, r5, 1
	stw      r0, 0x10(r30)
	or       r29, r29, r6
	slwi     r29, r29, 8
	lwz      r6, 0x10(r30)
	lbz      r5, 0(r5)
	addi     r0, r6, 1
	stw      r0, 0x10(r30)
	or       r29, r29, r5
	slwi     r29, r29, 8
	lwz      r5, 0x10(r30)
	lbz      r6, 0(r6)
	addi     r0, r5, 1
	stw      r0, 0x10(r30)
	or       r29, r29, r6
	slwi     r29, r29, 8
	lwz      r6, 0x10(r30)
	lbz      r5, 0(r5)
	addi     r0, r6, 1
	stw      r0, 0x10(r30)
	or       r29, r29, r5
	slwi     r29, r29, 8
	lwz      r5, 0x10(r30)
	lbz      r6, 0(r6)
	addi     r0, r5, 1
	stw      r0, 0x10(r30)
	or       r29, r29, r6
	slwi     r29, r29, 8
	lbz      r0, 0(r5)
	or       r29, r29, r0
	bdnz     lbl_8009DDF8

lbl_8009DEC0:
	subf     r0, r4, r3
	mtctr    r0
	cmpw     r4, r3
	bge      lbl_8009DEEC

lbl_8009DED0:
	lwz      r4, 0x10(r30)
	slwi     r29, r29, 8
	addi     r0, r4, 1
	stw      r0, 0x10(r30)
	lbz      r0, 0(r4)
	or       r29, r29, r0
	bdnz     lbl_8009DED0

lbl_8009DEEC:
	cmplwi   r3, 1
	bne      lbl_8009DF60
	rlwinm.  r0, r29, 0, 0x18, 0x18
	beq      lbl_8009DF60
	clrlwi   r4, r29, 0x19
	mr       r3, r30
	bl       exchangeRegisterValue__8JASTrackFUc
	mr       r29, r3
	b        lbl_8009DF60

lbl_8009DF10:
	rlwinm.  r0, r29, 0x1d, 0x1e, 0x1f
	beq      lbl_8009DF2C
	addi     r0, r3, -1
	mr       r3, r30
	clrlwi   r4, r0, 0x18
	bl       exchangeRegisterValue__8JASTrackFUc
	clrlwi   r24, r3, 0x18

lbl_8009DF2C:
	clrlwi.  r0, r28, 0x1f
	beq      lbl_8009DF58
	lwz      r4, 0x10(r30)
	mr       r3, r30
	addi     r0, r4, 1
	stw      r0, 0x10(r30)
	lbz      r4, 0(r4)
	bl       exchangeRegisterValue__8JASTrackFUc
	xori     r0, r28, 1
	mr       r23, r3
	clrlwi   r28, r0, 0x18

lbl_8009DF58:
	li       r29, -1
	li       r25, 0x64

lbl_8009DF60:
	stb      r28, 0xe4(r30)
	mr       r28, r29
	lbz      r0, 0xe6(r30)
	cmplwi   r0, 0
	beq      lbl_8009DFD4
	lbz      r0, 0xe4(r30)
	clrlwi.  r0, r0, 0x1f
	beq      lbl_8009DF84
	li       r28, -1

lbl_8009DF84:
	cmpwi    r28, -1
	beq      lbl_8009DFA0
	mr       r3, r30
	mr       r4, r28
	mr       r5, r25
	bl       seqTimeToDspTime__8JASTrackFlUc
	mr       r28, r3

lbl_8009DFA0:
	lbz      r0, 0x362(r30)
	cmplwi   r0, 0
	beq      lbl_8009DFB8
	lbz      r0, 0x358(r30)
	rlwinm.  r0, r0, 0, 0x1b, 0x1b
	bne      lbl_8009E034

lbl_8009DFB8:
	mr       r3, r30
	mr       r4, r24
	mr       r7, r28
	clrlwi   r5, r31, 0x18
	clrlwi   r6, r26, 0x18
	bl       gateOn__8JASTrackFUclll
	b        lbl_8009E034

lbl_8009DFD4:
	cmpwi    r29, -1
	beq      lbl_8009DFF0
	mr       r3, r30
	mr       r4, r29
	mr       r5, r25
	bl       seqTimeToDspTime__8JASTrackFlUc
	mr       r28, r3

lbl_8009DFF0:
	lbz      r0, 0xe4(r30)
	clrlwi.  r0, r0, 0x1f
	beq      lbl_8009E000
	li       r28, -1

lbl_8009E000:
	lbz      r0, 0x362(r30)
	cmplwi   r0, 0
	beq      lbl_8009E018
	lbz      r0, 0x358(r30)
	rlwinm.  r0, r0, 0, 0x1b, 0x1b
	bne      lbl_8009E034

lbl_8009E018:
	mr       r3, r30
	mr       r4, r24
	mr       r7, r28
	mr       r8, r23
	clrlwi   r5, r31, 0x18
	clrlwi   r6, r26, 0x18
	bl       noteOn__8JASTrackFUclllUl

lbl_8009E034:
	stw      r29, 0xe0(r30)
	lbz      r0, 0xe4(r30)
	clrlwi   r0, r0, 0x1f
	stb      r0, 0xe6(r30)
	lbz      r0, 0xe4(r30)
	rlwinm.  r0, r0, 0, 0x1e, 0x1e
	beq      lbl_8009E088
	cmpwi    r28, -1
	mr       r5, r28
	bne      lbl_8009E070
	mr       r3, r30
	mr       r4, r29
	mr       r5, r25
	bl       seqTimeToDspTime__8JASTrackFlUc
	mr       r5, r3

lbl_8009E070:
	lwz      r3, 0xc0(r30)
	cmplwi   r3, 0
	beq      lbl_8009E084
	mr       r4, r27
	bl       setKeySweepTarget__10JASChannelFUcUl

lbl_8009E084:
	mr       r31, r27

lbl_8009E088:
	addis    r0, r29, 1
	stb      r31, 0xe5(r30)
	cmplwi   r0, 0xffff
	bne      lbl_8009E0A0
	li       r3, 0
	b        lbl_8009E0B8

lbl_8009E0A0:
	cmplwi   r29, 0
	li       r0, -1
	beq      lbl_8009E0B0
	mr       r0, r29

lbl_8009E0B0:
	stw      r0, 0x14(r30)
	li       r3, 1

lbl_8009E0B8:
	lmw      r23, 0xc(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/**
 * @note Address: 0x8009E0CC
 * @note Size: 0xB4
 */
void JASSeqParser::conditionCheck(JASTrack*, u8)
{
	/*
	clrlwi   r0, r5, 0x1c
	lhz      r4, 0x26e(r4)
	cmpwi    r0, 3
	beq      lbl_8009E12C
	bge      lbl_8009E0F8
	cmpwi    r0, 1
	beq      lbl_8009E110
	bge      lbl_8009E11C
	cmpwi    r0, 0
	bge      lbl_8009E108
	b        lbl_8009E178

lbl_8009E0F8:
	cmpwi    r0, 5
	beq      lbl_8009E160
	bge      lbl_8009E178
	b        lbl_8009E13C

lbl_8009E108:
	li       r3, 1
	blr

lbl_8009E110:
	cntlzw   r0, r4
	srwi     r3, r0, 5
	blr

lbl_8009E11C:
	neg      r0, r4
	or       r0, r0, r4
	srwi     r3, r0, 0x1f
	blr

lbl_8009E12C:
	subfic   r0, r4, 1
	cntlzw   r0, r0
	srwi     r3, r0, 5
	blr

lbl_8009E13C:
	lis      r3, 0x00008000@ha
	addi     r0, r3, 0x00008000@l
	clrlwi   r3, r0, 0x10
	subf     r0, r3, r4
	orc      r3, r4, r3
	srwi     r0, r0, 1
	subf     r0, r0, r3
	srwi     r3, r0, 0x1f
	blr

lbl_8009E160:
	lis      r3, 0x00008000@ha
	addi     r0, r3, 0x00008000@l
	clrlwi   r0, r0, 0x10
	subf     r0, r0, r4
	srwi     r3, r0, 0x1f
	blr

lbl_8009E178:
	li       r3, 0
	blr
	*/
}

/**
 * @note Address: 0x8009E180
 * @note Size: 0x6D4
 */
int JASSeqParser::parseSeq(JASTrack*)
{
	/*
	stwu     r1, -0xa0(r1)
	mflr     r0
	stw      r0, 0xa4(r1)
	stmw     r23, 0x7c(r1)
	mr       r29, r3
	mr       r31, r4

lbl_8009E198:
	lwz      r3, 0x10(r31)
	li       r23, 0
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r26, 0(r3)
	rlwinm.  r0, r26, 0, 0x18, 0x18
	bne      lbl_8009E1CC
	mr       r3, r29
	mr       r4, r31
	mr       r5, r26
	bl       cmdNoteOn__12JASSeqParserFP8JASTrackUc
	mr       r23, r3
	b        lbl_8009E81C

lbl_8009E1CC:
	rlwinm   r3, r26, 0, 0x18, 0x1b
	cmpwi    r3, 0x80
	bne      lbl_8009E32C
	clrlwi.  r0, r26, 0x1d
	bne      lbl_8009E32C
	addi     r3, r26, -128
	subfic   r0, r26, 0x80
	nor      r3, r3, r0
	srawi    r3, r3, 0x1f
	li       r0, 0
	addic.   r6, r3, 2
	mr       r7, r0
	ble      lbl_8009E318
	cmpwi    r6, 8
	addi     r4, r6, -8
	ble      lbl_8009E2E8
	addi     r3, r4, 7
	srwi     r3, r3, 3
	mtctr    r3
	cmpwi    r4, 0
	ble      lbl_8009E2E8

lbl_8009E220:
	lwz      r5, 0x10(r31)
	slwi     r0, r0, 8
	addi     r7, r7, 8
	addi     r3, r5, 1
	stw      r3, 0x10(r31)
	lwz      r4, 0x10(r31)
	lbz      r5, 0(r5)
	addi     r3, r4, 1
	stw      r3, 0x10(r31)
	or       r0, r0, r5
	slwi     r0, r0, 8
	lwz      r5, 0x10(r31)
	lbz      r4, 0(r4)
	addi     r3, r5, 1
	stw      r3, 0x10(r31)
	or       r0, r0, r4
	slwi     r0, r0, 8
	lwz      r4, 0x10(r31)
	lbz      r5, 0(r5)
	addi     r3, r4, 1
	stw      r3, 0x10(r31)
	or       r0, r0, r5
	slwi     r0, r0, 8
	lwz      r5, 0x10(r31)
	lbz      r4, 0(r4)
	addi     r3, r5, 1
	stw      r3, 0x10(r31)
	or       r0, r0, r4
	slwi     r0, r0, 8
	lwz      r4, 0x10(r31)
	lbz      r5, 0(r5)
	addi     r3, r4, 1
	stw      r3, 0x10(r31)
	or       r0, r0, r5
	slwi     r0, r0, 8
	lwz      r5, 0x10(r31)
	lbz      r4, 0(r4)
	addi     r3, r5, 1
	stw      r3, 0x10(r31)
	or       r0, r0, r4
	slwi     r0, r0, 8
	lwz      r4, 0x10(r31)
	lbz      r5, 0(r5)
	addi     r3, r4, 1
	stw      r3, 0x10(r31)
	or       r0, r0, r5
	slwi     r0, r0, 8
	lbz      r3, 0(r4)
	or       r0, r0, r3
	bdnz     lbl_8009E220

lbl_8009E2E8:
	subf     r3, r7, r6
	mtctr    r3
	cmpw     r7, r6
	bge      lbl_8009E318

lbl_8009E2F8:
	lwz      r4, 0x10(r31)
	slwi     r0, r0, 8
	addi     r7, r7, 1
	addi     r3, r4, 1
	stw      r3, 0x10(r31)
	lbz      r3, 0(r4)
	or       r0, r0, r3
	bdnz     lbl_8009E2F8

lbl_8009E318:
	neg      r3, r0
	stw      r0, 0x14(r31)
	or       r0, r3, r0
	srwi     r23, r0, 0x1f
	b        lbl_8009E81C

lbl_8009E32C:
	cmpwi    r3, 0x80
	beq      lbl_8009E33C
	cmplwi   r26, 0xf9
	bne      lbl_8009E3BC

lbl_8009E33C:
	cmplwi   r26, 0xf9
	bne      lbl_8009E378
	lwz      r4, 0x10(r31)
	mr       r3, r31
	addi     r0, r4, 1
	stw      r0, 0x10(r31)
	lbz      r23, 0(r4)
	clrlwi   r4, r23, 0x1d
	bl       exchangeRegisterValue__8JASTrackFUc
	rlwinm.  r0, r23, 0, 0x18, 0x18
	clrlwi   r3, r3, 0x18
	addi     r26, r3, 0x80
	beq      lbl_8009E378
	ori      r0, r26, 8
	clrlwi   r26, r0, 0x18

lbl_8009E378:
	rlwinm.  r0, r26, 0, 0x1c, 0x1c
	li       r5, 0
	beq      lbl_8009E3A4
	lwz      r3, 0x10(r31)
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r5, 0(r3)
	cmpwi    r5, 0x64
	ble      lbl_8009E3A4
	addi     r0, r5, -98
	mulli    r5, r0, 0x14

lbl_8009E3A4:
	clrlwi   r4, r26, 0x1d
	mr       r3, r31
	clrlwi   r5, r5, 0x10
	bl       noteOff__8JASTrackFUcUs
	li       r23, 0
	b        lbl_8009E81C

lbl_8009E3BC:
	rlwinm   r0, r26, 0, 0x18, 0x1b
	cmpwi    r0, 0xa0
	beq      lbl_8009E54C
	bge      lbl_8009E3D8
	cmpwi    r0, 0x90
	beq      lbl_8009E3E4
	b        lbl_8009E700

lbl_8009E3D8:
	cmpwi    r0, 0xb0
	beq      lbl_8009E55C
	b        lbl_8009E700

lbl_8009E3E4:
	addi     r27, r31, 0xc
	rlwinm   r0, r26, 0, 0x1c, 0x1d
	lwz      r4, 0x10(r31)
	cmplwi   r0, 0xc
	clrlwi   r28, r26, 0x1c
	addi     r3, r4, 1
	stw      r3, 0x10(r31)
	lbz      r26, 0(r4)
	bgt      lbl_8009E498
	lis      r3, lbl_804A4318@ha
	slwi     r0, r0, 2
	addi     r3, r3, lbl_804A4318@l
	lwzx     r0, r3, r0
	mtctr    r0
	bctr
	.global  lbl_8009E420

lbl_8009E420:
	lwz      r4, 4(r27)
	mr       r3, r31
	addi     r0, r4, 1
	stw      r0, 4(r27)
	lbz      r4, 0(r4)
	bl       readReg16__8JASTrackFUc
	extsh    r30, r3
	b        lbl_8009E498
	.global  lbl_8009E440

lbl_8009E440:
	lwz      r3, 4(r27)
	addi     r0, r3, 1
	stw      r0, 4(r27)
	lbz      r30, 0(r3)
	b        lbl_8009E498
	.global  lbl_8009E454

lbl_8009E454:
	lwz      r3, 4(r27)
	addi     r0, r3, 1
	stw      r0, 4(r27)
	lbz      r4, 0(r3)
	rlwinm.  r0, r4, 0, 0x18, 0x18
	beq      lbl_8009E478
	slwi     r0, r4, 8
	extsh    r30, r0
	b        lbl_8009E498

lbl_8009E478:
	slwi     r3, r4, 8
	slwi     r0, r4, 1
	or       r0, r3, r0
	extsh    r30, r0
	b        lbl_8009E498
	.global  lbl_8009E48C

lbl_8009E48C:
	mr       r3, r27
	bl       read16__10JASSeqCtrlFv
	extsh    r30, r3
	.global  lbl_8009E498

lbl_8009E498:
	clrlwi   r0, r28, 0x1e
	li       r5, 0
	cmpwi    r0, 2
	beq      lbl_8009E4F0
	bge      lbl_8009E4BC
	cmpwi    r0, 0
	beq      lbl_8009E4C8
	bge      lbl_8009E4D0
	b        lbl_8009E510

lbl_8009E4BC:
	cmpwi    r0, 4
	bge      lbl_8009E510
	b        lbl_8009E504

lbl_8009E4C8:
	li       r5, -1
	b        lbl_8009E510

lbl_8009E4D0:
	lwz      r4, 4(r27)
	mr       r3, r31
	addi     r0, r4, 1
	stw      r0, 4(r27)
	lbz      r4, 0(r4)
	bl       readReg16__8JASTrackFUc
	clrlwi   r5, r3, 0x10
	b        lbl_8009E510

lbl_8009E4F0:
	lwz      r3, 4(r27)
	addi     r0, r3, 1
	stw      r0, 4(r27)
	lbz      r5, 0(r3)
	b        lbl_8009E510

lbl_8009E504:
	mr       r3, r27
	bl       read16__10JASSeqCtrlFv
	clrlwi   r5, r3, 0x10

lbl_8009E510:
	extsh    r3, r30
	lis      r0, 0x4330
	xoris    r4, r3, 0x8000
	stw      r0, 0x68(r1)
	lfd      f2, lbl_80516D58@sda21(r2)
	mr       r3, r31
	stw      r4, 0x6c(r1)
	mr       r4, r26
	lfs      f0, lbl_80516D70@sda21(r2)
	lfd      f1, 0x68(r1)
	fsubs    f1, f1, f2
	fdivs    f1, f1, f0
	bl       setParam__8JASTrackFifi
	li       r23, 0
	b        lbl_8009E81C

lbl_8009E54C:
	clrlwi   r4, r26, 0x1c
	mr       r3, r31
	bl       writeRegParam__8JASTrackFUc
	b        lbl_8009E81C

lbl_8009E55C:
	lwz      r3, 0x10(r31)
	rlwinm.  r23, r26, 0x1d, 0x1f, 0x1f
	clrlwi   r24, r26, 0x1d
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r4, 0(r3)
	beq      lbl_8009E584
	mr       r3, r31
	bl       exchangeRegisterValue__8JASTrackFUc
	clrlwi   r4, r3, 0x18

lbl_8009E584:
	cmpwi    r23, 0
	li       r6, 0
	beq      lbl_8009E598
	cmpwi    r24, 0
	beq      lbl_8009E5D8

lbl_8009E598:
	lwz      r3, 0x10(r31)
	addi     r7, r24, 1
	li       r5, 3
	addi     r0, r3, 1
	stw      r0, 0x10(r31)
	lbz      r3, 0(r3)
	mtctr    r7
	cmplwi   r7, 0
	ble      lbl_8009E5D8

lbl_8009E5BC:
	rlwinm.  r0, r3, 0, 0x18, 0x18
	beq      lbl_8009E5CC
	or       r0, r6, r5
	clrlwi   r6, r0, 0x10

lbl_8009E5CC:
	rlwinm   r3, r3, 1, 0x18, 0x1e
	rlwinm   r5, r5, 2, 0x10, 0x1d
	bdnz     lbl_8009E5BC

lbl_8009E5D8:
	lis      r3, Arglist@ha
	rlwinm   r5, r4, 2, 0x16, 0x1d
	addi     r0, r3, Arglist@l
	clrlwi   r23, r4, 0x18
	add      r3, r0, r5
	addi     r26, r31, 0xc
	lwz      r0, -0x300(r3)
	addi     r25, r1, 0x28
	li       r27, 0
	stw      r0, 8(r1)
	lhz      r28, 0xa(r1)
	lhz      r24, 8(r1)
	or       r28, r28, r6
	b        lbl_8009E698

lbl_8009E610:
	clrlwi   r0, r28, 0x1e
	li       r3, 0
	cmpwi    r0, 2
	beq      lbl_8009E664
	bge      lbl_8009E634
	cmpwi    r0, 0
	beq      lbl_8009E640
	bge      lbl_8009E654
	b        lbl_8009E688

lbl_8009E634:
	cmpwi    r0, 4
	bge      lbl_8009E688
	b        lbl_8009E670

lbl_8009E640:
	lwz      r3, 4(r26)
	addi     r0, r3, 1
	stw      r0, 4(r26)
	lbz      r3, 0(r3)
	b        lbl_8009E688

lbl_8009E654:
	mr       r3, r26
	bl       read16__10JASSeqCtrlFv
	clrlwi   r3, r3, 0x10
	b        lbl_8009E688

lbl_8009E664:
	mr       r3, r26
	bl       read24__10JASSeqCtrlFv
	b        lbl_8009E688

lbl_8009E670:
	lwz      r4, 4(r26)
	mr       r3, r31
	addi     r0, r4, 1
	stw      r0, 4(r26)
	lbz      r4, 0(r4)
	bl       exchangeRegisterValue__8JASTrackFUc

lbl_8009E688:
	stw      r3, 0(r25)
	rlwinm   r28, r28, 0x1e, 0x12, 0x1f
	addi     r25, r25, 4
	addi     r27, r27, 1

lbl_8009E698:
	cmpw     r27, r24
	blt      lbl_8009E610
	mulli    r5, r23, 0xc
	lis      r4, sCmdPList__12JASSeqParser@ha
	addi     r3, r1, 0x10
	addi     r0, r4, sCmdPList__12JASSeqParser@l
	add      r6, r0, r5
	lwz      r5, -0x900(r6)
	lwz      r4, -0x8fc(r6)
	lwz      r0, -0x8f8(r6)
	stw      r5, 0x10(r1)
	stw      r4, 0x14(r1)
	stw      r0, 0x18(r1)
	bl       __ptmf_test
	cmpwi    r3, 0
	bne      lbl_8009E6E0
	li       r3, 0
	b        lbl_8009E6F8

lbl_8009E6E0:
	mr       r3, r29
	mr       r4, r31
	addi     r5, r1, 0x28
	addi     r12, r1, 0x10
	bl       __ptmf_scall
	nop

lbl_8009E6F8:
	mr       r23, r3
	b        lbl_8009E81C

lbl_8009E700:
	lis      r3, Arglist@ha
	slwi     r4, r26, 2
	addi     r0, r3, Arglist@l
	addi     r25, r31, 0xc
	add      r3, r0, r4
	addi     r24, r1, 0x48
	lwz      r0, -0x300(r3)
	li       r28, 0
	stw      r0, 0xc(r1)
	lhz      r27, 0xe(r1)
	lhz      r23, 0xc(r1)
	b        lbl_8009E7B8

lbl_8009E730:
	clrlwi   r0, r27, 0x1e
	li       r3, 0
	cmpwi    r0, 2
	beq      lbl_8009E784
	bge      lbl_8009E754
	cmpwi    r0, 0
	beq      lbl_8009E760
	bge      lbl_8009E774
	b        lbl_8009E7A8

lbl_8009E754:
	cmpwi    r0, 4
	bge      lbl_8009E7A8
	b        lbl_8009E790

lbl_8009E760:
	lwz      r3, 4(r25)
	addi     r0, r3, 1
	stw      r0, 4(r25)
	lbz      r3, 0(r3)
	b        lbl_8009E7A8

lbl_8009E774:
	mr       r3, r25
	bl       read16__10JASSeqCtrlFv
	clrlwi   r3, r3, 0x10
	b        lbl_8009E7A8

lbl_8009E784:
	mr       r3, r25
	bl       read24__10JASSeqCtrlFv
	b        lbl_8009E7A8

lbl_8009E790:
	lwz      r4, 4(r25)
	mr       r3, r31
	addi     r0, r4, 1
	stw      r0, 4(r25)
	lbz      r4, 0(r4)
	bl       exchangeRegisterValue__8JASTrackFUc

lbl_8009E7A8:
	stw      r3, 0(r24)
	rlwinm   r27, r27, 0x1e, 0x12, 0x1f
	addi     r24, r24, 4
	addi     r28, r28, 1

lbl_8009E7B8:
	cmpw     r28, r23
	blt      lbl_8009E730
	mulli    r5, r26, 0xc
	lis      r4, sCmdPList__12JASSeqParser@ha
	addi     r3, r1, 0x1c
	addi     r0, r4, sCmdPList__12JASSeqParser@l
	add      r6, r0, r5
	lwz      r5, -0x900(r6)
	lwz      r4, -0x8fc(r6)
	lwz      r0, -0x8f8(r6)
	stw      r5, 0x1c(r1)
	stw      r4, 0x20(r1)
	stw      r0, 0x24(r1)
	bl       __ptmf_test
	cmpwi    r3, 0
	bne      lbl_8009E800
	li       r3, 0
	b        lbl_8009E818

lbl_8009E800:
	mr       r3, r29
	mr       r4, r31
	addi     r5, r1, 0x48
	addi     r12, r1, 0x1c
	bl       __ptmf_scall
	nop

lbl_8009E818:
	mr       r23, r3

lbl_8009E81C:
	cmplwi   r23, 0
	beq      lbl_8009E198
	cmplwi   r23, 1
	beq      lbl_8009E83C
	cmplwi   r23, 3
	bne      lbl_8009E198
	li       r3, -1
	b        lbl_8009E840

lbl_8009E83C:
	li       r3, 0

lbl_8009E840:
	lmw      r23, 0x7c(r1)
	lwz      r0, 0xa4(r1)
	mtlr     r0
	addi     r1, r1, 0xa0
	blr
	*/
}
