.include "macros.s"

.section .text, "ax"  # 0x80007880 - 0x801FD660 ; 0x001F5DE0





.global InitializeGameData
InitializeGameData:
/* 8000B394 00006114  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8000B398 00006118  7C 08 02 A6 */	mflr r0
/* 8000B39C 0000611C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8000B3A0 00006120  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8000B3A4 00006124  F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 8000B3A8 00006128  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8000B3AC 0000612C  F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 8000B3B0 00006130  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8000B3B4 00006134  F3 A1 00 68 */	psq_st f29, 0x68(r1), 0, qr0
/* 8000B3B8 00006138  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8000B3BC 0000613C  F3 81 00 58 */	psq_st f28, 0x58(r1), 0, qr0
/* 8000B3C0 00006140  BF 01 00 30 */	stmw r24, 0x30(r1)
/* 8000B3C4 00006144  38 00 00 FF */	li r0, 0xff
/* 8000B3C8 00006148  7C 78 1B 78 */	mr r24, r3
/* 8000B3CC 0000614C  90 01 00 08 */	stw r0, 0x8(r1)
/* 8000B3D0 00006150  7C 9A 23 78 */	mr r26, r4
/* 8000B3D4 00006154  7C B9 2B 78 */	mr r25, r5
/* 8000B3D8 00006158  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B3DC 0000615C  38 78 3E 70 */	addi r3, r24, 0x3e70
/* 8000B3E0 00006160  38 80 00 00 */	li r4, 0x0
/* 8000B3E4 00006164  38 A0 00 00 */	li r5, 0x0
/* 8000B3E8 00006168  38 C0 00 00 */	li r6, 0x0
/* 8000B3EC 0000616C  38 E0 00 FF */	li r7, 0xff
/* 8000B3F0 00006170  39 00 00 00 */	li r8, 0x0
/* 8000B3F4 00006174  39 20 00 00 */	li r9, 0x0
/* 8000B3F8 00006178  39 40 00 00 */	li r10, 0x0
/* 8000B3FC 0000617C  48 01 8A E5 */	bl zz_80023ee0_
/* 8000B400 00006180  2C 1A 27 10 */	cmpwi r26, 0x2710
/* 8000B404 00006184  40 82 00 60 */	bne lbl_8000B464
/* 8000B408 00006188  3C 60 80 21 */	lis r3, lbl_8020FBC0@ha
/* 8000B40C 0000618C  80 C3 FB C0 */	lwz r6, lbl_8020FBC0@l(r3)
/* 8000B410 00006190  2C 06 00 00 */	cmpwi r6, 0x0
/* 8000B414 00006194  41 80 00 2C */	blt lbl_8000B440
/* 8000B418 00006198  80 78 1B 10 */	lwz r3, 0x1b10(r24)
/* 8000B41C 0000619C  3C 00 00 08 */	lis r0, 0x8
/* 8000B420 000061A0  80 B8 1B 14 */	lwz r5, 0x1b14(r24)
/* 8000B424 000061A4  38 80 00 00 */	li r4, 0x0
/* 8000B428 000061A8  7C 60 00 38 */	and r0, r3, r0
/* 8000B42C 000061AC  7C A3 20 38 */	and r3, r5, r4
/* 8000B430 000061B0  7C 63 22 78 */	xor r3, r3, r4
/* 8000B434 000061B4  7C 00 22 78 */	xor r0, r0, r4
/* 8000B438 000061B8  7C 60 03 79 */	or. r0, r3, r0
/* 8000B43C 000061BC  41 82 00 18 */	beq lbl_8000B454
lbl_8000B440:
/* 8000B440 000061C0  48 06 33 7D */	bl check_8025df10_flag_status
/* 8000B444 000061C4  80 18 34 44 */	lwz r0, 0x3444(r24)
/* 8000B448 000061C8  90 18 34 48 */	stw r0, 0x3448(r24)
/* 8000B44C 000061CC  90 78 34 44 */	stw r3, 0x3444(r24)
/* 8000B450 000061D0  48 00 00 84 */	b func_8000B4D4
lbl_8000B454:
/* 8000B454 000061D4  80 18 34 44 */	lwz r0, 0x3444(r24)
/* 8000B458 000061D8  90 18 34 48 */	stw r0, 0x3448(r24)
/* 8000B45C 000061DC  90 D8 34 44 */	stw r6, 0x3444(r24)
/* 8000B460 000061E0  48 00 00 74 */	b func_8000B4D4
lbl_8000B464:
/* 8000B464 000061E4  2C 1A 4E 20 */	cmpwi r26, 0x4e20
/* 8000B468 000061E8  40 82 00 2C */	bne lbl_8000B494
/* 8000B46C 000061EC  3C 78 00 0F */	addis r3, r24, 0xf
/* 8000B470 000061F0  38 63 84 00 */	addi r3, r3, -0x7c00
/* 8000B474 000061F4  48 07 C5 CD */	bl GetValueAtAddress_80087a40
/* 8000B478 000061F8  80 B8 34 44 */	lwz r5, 0x3444(r24)
/* 8000B47C 000061FC  3C 98 00 10 */	addis r4, r24, 0x10
/* 8000B480 00006200  38 00 00 01 */	li r0, 0x1
/* 8000B484 00006204  90 B8 34 48 */	stw r5, 0x3448(r24)
/* 8000B488 00006208  90 78 34 44 */	stw r3, 0x3444(r24)
/* 8000B48C 0000620C  90 04 F0 00 */	stw r0, -0x1000(r4)
/* 8000B490 00006210  48 00 00 44 */	b func_8000B4D4
lbl_8000B494:
/* 8000B494 00006214  2C 1A 00 00 */	cmpwi r26, 0x0
/* 8000B498 00006218  41 80 00 14 */	blt lbl_8000B4AC
/* 8000B49C 0000621C  80 18 34 44 */	lwz r0, 0x3444(r24)
/* 8000B4A0 00006220  90 18 34 48 */	stw r0, 0x3448(r24)
/* 8000B4A4 00006224  93 58 34 44 */	stw r26, 0x3444(r24)
/* 8000B4A8 00006228  48 00 00 2C */	b func_8000B4D4
lbl_8000B4AC:
/* 8000B4AC 0000622C  80 18 34 44 */	lwz r0, 0x3444(r24)
/* 8000B4B0 00006230  90 18 34 48 */	stw r0, 0x3448(r24)
/* 8000B4B4 00006234  80 78 34 44 */	lwz r3, 0x3444(r24)
/* 8000B4B8 00006238  38 63 00 01 */	addi r3, r3, 0x1
/* 8000B4BC 0000623C  90 78 34 44 */	stw r3, 0x3444(r24)
/* 8000B4C0 00006240  80 18 34 4C */	lwz r0, 0x344c(r24)
/* 8000B4C4 00006244  7C 03 00 00 */	cmpw r3, r0
/* 8000B4C8 00006248  41 80 00 0C */	blt func_8000B4D4
/* 8000B4CC 0000624C  38 00 00 00 */	li r0, 0x0
/* 8000B4D0 00006250  90 18 34 44 */	stw r0, 0x3444(r24)

.global func_8000B4D4
func_8000B4D4:
/* 8000B4D4 00006254  3C 78 00 10 */	addis r3, r24, 0x10
/* 8000B4D8 00006258  80 03 F3 A4 */	lwz r0, -0xc5c(r3)
/* 8000B4DC 0000625C  28 00 00 00 */	cmplwi r0, 0x0
/* 8000B4E0 00006260  41 82 00 0C */	beq lbl_8000B4EC
/* 8000B4E4 00006264  38 63 F3 A4 */	addi r3, r3, -0xc5c
/* 8000B4E8 00006268  48 19 E9 95 */	bl stopAudioAndinitDVDDataAndCloseDvdIfNeeded
lbl_8000B4EC:
/* 8000B4EC 0000626C  3C 78 00 01 */	addis r3, r24, 0x1
/* 8000B4F0 00006270  80 63 85 84 */	lwz r3, -0x7a7c(r3)
/* 8000B4F4 00006274  48 05 5E 71 */	bl ResetMemoryRegion
/* 8000B4F8 00006278  3C 78 00 06 */	addis r3, r24, 0x6
/* 8000B4FC 0000627C  38 80 00 01 */	li r4, 0x1
/* 8000B500 00006280  38 A0 00 01 */	li r5, 0x1
/* 8000B504 00006284  38 63 D0 7C */	addi r3, r3, -0x2f84
/* 8000B508 00006288  48 07 3B 39 */	bl InitializeDataValues
/* 8000B50C 0000628C  3B 80 00 00 */	li r28, 0x0
/* 8000B510 00006290  7F 1B C3 78 */	mr r27, r24
lbl_8000B514:
/* 8000B514 00006294  3C 7B 00 06 */	addis r3, r27, 0x6
/* 8000B518 00006298  38 63 D0 E8 */	addi r3, r3, -0x2f18
/* 8000B51C 0000629C  48 07 6C C1 */	bl zz_800821dc_
/* 8000B520 000062A0  3C 7B 00 06 */	addis r3, r27, 0x6
/* 8000B524 000062A4  38 63 D0 E8 */	addi r3, r3, -0x2f18
/* 8000B528 000062A8  48 07 6C 55 */	bl zz_8008217c_
/* 8000B52C 000062AC  80 0D 80 00 */	lwz r0, lbl_80659EC0@sda21(r13)
/* 8000B530 000062B0  3C 9B 00 06 */	addis r4, r27, 0x6
/* 8000B534 000062B4  3B 9C 00 01 */	addi r28, r28, 0x1
/* 8000B538 000062B8  3F 7B 00 04 */	addis r27, r27, 0x4
/* 8000B53C 000062BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8000B540 000062C0  2C 1C 00 02 */	cmpwi r28, 0x2
/* 8000B544 000062C4  3B 7B 46 20 */	addi r27, r27, 0x4620
/* 8000B548 000062C8  88 61 00 10 */	lbz r3, 0x10(r1)
/* 8000B54C 000062CC  88 01 00 11 */	lbz r0, 0x11(r1)
/* 8000B550 000062D0  98 64 DA A0 */	stb r3, -0x2560(r4)
/* 8000B554 000062D4  88 61 00 12 */	lbz r3, 0x12(r1)
/* 8000B558 000062D8  98 04 DA A1 */	stb r0, -0x255f(r4)
/* 8000B55C 000062DC  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8000B560 000062E0  98 64 DA A2 */	stb r3, -0x255e(r4)
/* 8000B564 000062E4  98 04 DA A3 */	stb r0, -0x255d(r4)
/* 8000B568 000062E8  41 80 FF AC */	blt lbl_8000B514
/* 8000B56C 000062EC  3C 60 80 36 */	lis r3, lbl_8035FA24@ha
/* 8000B570 000062F0  3B 80 00 00 */	li r28, 0x0
/* 8000B574 000062F4  3B 63 FA 24 */	addi r27, r3, lbl_8035FA24@l
lbl_8000B578:
/* 8000B578 000062F8  80 7B 01 24 */	lwz r3, 0x124(r27)
/* 8000B57C 000062FC  7C 03 00 D0 */	neg r0, r3
/* 8000B580 00006300  7C 00 1B 78 */	or r0, r0, r3
/* 8000B584 00006304  54 00 0F FF */	srwi. r0, r0, 31
/* 8000B588 00006308  41 82 00 48 */	beq lbl_8000B5D0
/* 8000B58C 0000630C  28 03 00 00 */	cmplwi r3, 0x0
/* 8000B590 00006310  41 82 00 38 */	beq lbl_8000B5C8
/* 8000B594 00006314  38 00 00 00 */	li r0, 0x0
/* 8000B598 00006318  90 1B 01 24 */	stw r0, 0x124(r27)
/* 8000B59C 0000631C  90 1B 02 BC */	stw r0, 0x2bc(r27)
/* 8000B5A0 00006320  80 1B 01 1C */	lwz r0, 0x11c(r27)
/* 8000B5A4 00006324  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000B5A8 00006328  41 82 00 20 */	beq lbl_8000B5C8
/* 8000B5AC 0000632C  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8000B5B0 00006330  28 03 00 00 */	cmplwi r3, 0x0
/* 8000B5B4 00006334  41 82 00 14 */	beq lbl_8000B5C8
/* 8000B5B8 00006338  38 80 00 01 */	li r4, 0x1
/* 8000B5BC 0000633C  48 18 67 45 */	bl FreeMemoryChunk
/* 8000B5C0 00006340  38 00 00 00 */	li r0, 0x0
/* 8000B5C4 00006344  90 1B 00 00 */	stw r0, 0x0(r27)
lbl_8000B5C8:
/* 8000B5C8 00006348  38 00 00 00 */	li r0, 0x0
/* 8000B5CC 0000634C  90 1B 02 F0 */	stw r0, 0x2f0(r27)
lbl_8000B5D0:
/* 8000B5D0 00006350  3B 9C 00 01 */	addi r28, r28, 0x1
/* 8000B5D4 00006354  3B 7B 02 F4 */	addi r27, r27, 0x2f4
/* 8000B5D8 00006358  2C 1C 00 05 */	cmpwi r28, 0x5
/* 8000B5DC 0000635C  41 80 FF 9C */	blt lbl_8000B578
/* 8000B5E0 00006360  48 06 3F 65 */	bl closeAndCleanupDataStructuresGlobal
/* 8000B5E4 00006364  38 18 1E 48 */	addi r0, r24, 0x1e48
/* 8000B5E8 00006368  3C 98 00 0E */	addis r4, r24, 0xe
/* 8000B5EC 0000636C  3C 78 00 01 */	addis r3, r24, 0x1
/* 8000B5F0 00006370  90 04 7E 20 */	stw r0, 0x7e20(r4)
/* 8000B5F4 00006374  38 63 96 94 */	addi r3, r3, -0x696c
/* 8000B5F8 00006378  48 12 72 D1 */	bl zz_801328c8_
/* 8000B5FC 0000637C  38 00 FF FF */	li r0, -0x1
/* 8000B600 00006380  3C 78 00 01 */	addis r3, r24, 0x1
/* 8000B604 00006384  90 0D 80 0C */	stw r0, lbl_80659ECC@sda21(r13)
/* 8000B608 00006388  38 63 91 14 */	addi r3, r3, -0x6eec
/* 8000B60C 0000638C  48 19 D3 19 */	bl zz_801a8924_
/* 8000B610 00006390  48 1D 2A 31 */	bl zz_801de040_
/* 8000B614 00006394  80 B8 1B 10 */	lwz r5, 0x1b10(r24)
/* 8000B618 00006398  38 80 00 00 */	li r4, 0x0
/* 8000B61C 0000639C  80 D8 1B 14 */	lwz r6, 0x1b14(r24)
/* 8000B620 000063A0  38 00 00 04 */	li r0, 0x4
/* 8000B624 000063A4  7C A7 20 38 */	and r7, r5, r4
/* 8000B628 000063A8  7C C0 00 38 */	and r0, r6, r0
/* 8000B62C 000063AC  7C 03 22 78 */	xor r3, r0, r4
/* 8000B630 000063B0  7C E0 22 78 */	xor r0, r7, r4
/* 8000B634 000063B4  7C 60 03 79 */	or. r0, r3, r0
/* 8000B638 000063B8  41 82 00 44 */	beq lbl_8000B67C
/* 8000B63C 000063BC  7C E0 22 78 */	xor r0, r7, r4
/* 8000B640 000063C0  7C 60 03 79 */	or. r0, r3, r0
/* 8000B644 000063C4  41 82 00 38 */	beq lbl_8000B67C
/* 8000B648 000063C8  38 00 FF FB */	li r0, -0x5
/* 8000B64C 000063CC  38 80 FF FF */	li r4, -0x1
/* 8000B650 000063D0  7C C0 00 38 */	and r0, r6, r0
/* 8000B654 000063D4  3C 60 80 26 */	lis r3, lbl_8025C400@ha
/* 8000B658 000063D8  90 18 1B 14 */	stw r0, 0x1b14(r24)
/* 8000B65C 000063DC  7C A0 20 38 */	and r0, r5, r4
/* 8000B660 000063E0  38 63 C4 00 */	addi r3, r3, lbl_8025C400@l
/* 8000B664 000063E4  38 80 00 00 */	li r4, 0x0
/* 8000B668 000063E8  3C 63 00 0E */	addis r3, r3, 0xe
/* 8000B66C 000063EC  90 18 1B 10 */	stw r0, 0x1b10(r24)
/* 8000B670 000063F0  38 63 7E 24 */	addi r3, r3, 0x7e24
/* 8000B674 000063F4  48 01 2A A9 */	bl zz_8001e11c_
/* 8000B678 000063F8  48 1C 25 BD */	bl zz_801cdc34_
lbl_8000B67C:
/* 8000B67C 000063FC  3C 60 80 26 */	lis r3, lbl_8025C400@ha
/* 8000B680 00006400  38 80 FF FF */	li r4, -0x1
/* 8000B684 00006404  38 63 C4 00 */	addi r3, r3, lbl_8025C400@l
/* 8000B688 00006408  3C 63 00 0E */	addis r3, r3, 0xe
/* 8000B68C 0000640C  38 63 7E 24 */	addi r3, r3, 0x7e24
/* 8000B690 00006410  48 01 2F A1 */	bl zz_8001e630_
/* 8000B694 00006414  3C 78 00 0E */	addis r3, r24, 0xe
/* 8000B698 00006418  38 63 7E 24 */	addi r3, r3, 0x7e24
/* 8000B69C 0000641C  48 01 42 3D */	bl zz_8001f8d8_
/* 8000B6A0 00006420  80 98 1B 14 */	lwz r4, 0x1b14(r24)
/* 8000B6A4 00006424  38 00 FF D0 */	li r0, -0x30
/* 8000B6A8 00006428  80 78 1B 10 */	lwz r3, 0x1b10(r24)
/* 8000B6AC 0000642C  39 00 DF FF */	li r8, -0x2001
/* 8000B6B0 00006430  7C 80 00 38 */	and r0, r4, r0
/* 8000B6B4 00006434  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B6B8 00006438  90 18 1B 14 */	stw r0, 0x1b14(r24)
/* 8000B6BC 0000643C  7C 60 40 38 */	and r0, r3, r8
/* 8000B6C0 00006440  38 80 F3 FF */	li r4, -0xc01
/* 8000B6C4 00006444  39 60 FF FF */	li r11, -0x1
/* 8000B6C8 00006448  90 18 1B 10 */	stw r0, 0x1b10(r24)
/* 8000B6CC 0000644C  38 00 FC FF */	li r0, -0x301
/* 8000B6D0 00006450  FC 40 08 90 */	fmr f2, f1
/* 8000B6D4 00006454  38 78 41 98 */	addi r3, r24, 0x4198
/* 8000B6D8 00006458  80 D8 1B 14 */	lwz r6, 0x1b14(r24)
/* 8000B6DC 0000645C  FC 60 08 90 */	fmr f3, f1
/* 8000B6E0 00006460  80 B8 1B 10 */	lwz r5, 0x1b10(r24)
/* 8000B6E4 00006464  FC 80 08 90 */	fmr f4, f1
/* 8000B6E8 00006468  7C C4 20 38 */	and r4, r6, r4
/* 8000B6EC 0000646C  7C A5 58 38 */	and r5, r5, r11
/* 8000B6F0 00006470  90 98 1B 14 */	stw r4, 0x1b14(r24)
/* 8000B6F4 00006474  FC A0 08 90 */	fmr f5, f1
/* 8000B6F8 00006478  FC C0 08 90 */	fmr f6, f1
/* 8000B6FC 0000647C  38 80 00 00 */	li r4, 0x0
/* 8000B700 00006480  90 B8 1B 10 */	stw r5, 0x1b10(r24)
/* 8000B704 00006484  FC E0 08 90 */	fmr f7, f1
/* 8000B708 00006488  38 A0 00 00 */	li r5, 0x0
/* 8000B70C 0000648C  80 F8 1B 14 */	lwz r7, 0x1b14(r24)
/* 8000B710 00006490  81 38 1B 10 */	lwz r9, 0x1b10(r24)
/* 8000B714 00006494  38 C0 00 00 */	li r6, 0x0
/* 8000B718 00006498  7C E8 40 38 */	and r8, r7, r8
/* 8000B71C 0000649C  38 E0 00 00 */	li r7, 0x0
/* 8000B720 000064A0  91 18 1B 14 */	stw r8, 0x1b14(r24)
/* 8000B724 000064A4  7D 29 58 38 */	and r9, r9, r11
/* 8000B728 000064A8  39 00 00 01 */	li r8, 0x1
/* 8000B72C 000064AC  91 38 1B 10 */	stw r9, 0x1b10(r24)
/* 8000B730 000064B0  81 58 1B 14 */	lwz r10, 0x1b14(r24)
/* 8000B734 000064B4  81 38 1B 10 */	lwz r9, 0x1b10(r24)
/* 8000B738 000064B8  7D 40 00 38 */	and r0, r10, r0
/* 8000B73C 000064BC  90 18 1B 14 */	stw r0, 0x1b14(r24)
/* 8000B740 000064C0  7D 20 58 38 */	and r0, r9, r11
/* 8000B744 000064C4  90 18 1B 10 */	stw r0, 0x1b10(r24)
/* 8000B748 000064C8  48 01 7F A5 */	bl zz_800236ec_
/* 8000B74C 000064CC  80 B8 1B 10 */	lwz r5, 0x1b10(r24)
/* 8000B750 000064D0  3C 00 00 40 */	lis r0, 0x40
/* 8000B754 000064D4  3C 78 00 01 */	addis r3, r24, 0x1
/* 8000B758 000064D8  3C 80 00 01 */	lis r4, 0x1
/* 8000B75C 000064DC  7C A5 03 78 */	or r5, r5, r0
/* 8000B760 000064E0  90 B8 1B 10 */	stw r5, 0x1b10(r24)
/* 8000B764 000064E4  38 04 80 00 */	addi r0, r4, -0x8000
/* 8000B768 000064E8  38 80 00 00 */	li r4, 0x0
/* 8000B76C 000064EC  38 A0 00 00 */	li r5, 0x0
/* 8000B770 000064F0  80 D8 1B 10 */	lwz r6, 0x1b10(r24)
/* 8000B774 000064F4  38 63 8F 38 */	addi r3, r3, -0x70c8
/* 8000B778 000064F8  7C C0 03 78 */	or r0, r6, r0
/* 8000B77C 000064FC  90 18 1B 10 */	stw r0, 0x1b10(r24)
/* 8000B780 00006500  48 05 AA 11 */	bl zz_80066190_
/* 8000B784 00006504  2C 1A 27 10 */	cmpwi r26, 0x2710
/* 8000B788 00006508  40 82 02 18 */	bne lbl_8000B9A0
/* 8000B78C 0000650C  80 78 1B 14 */	lwz r3, 0x1b14(r24)
/* 8000B790 00006510  3C 00 20 00 */	lis r0, 0x2000
/* 8000B794 00006514  3C A0 00 01 */	lis r5, 0x1
/* 8000B798 00006518  38 80 FF FF */	li r4, -0x1
/* 8000B79C 0000651C  7C 63 03 78 */	or r3, r3, r0
/* 8000B7A0 00006520  38 00 FF 7F */	li r0, -0x81
/* 8000B7A4 00006524  90 78 1B 14 */	stw r3, 0x1b14(r24)
/* 8000B7A8 00006528  38 78 49 30 */	addi r3, r24, 0x4930
/* 8000B7AC 0000652C  80 D8 1B 10 */	lwz r6, 0x1b10(r24)
/* 8000B7B0 00006530  7C C5 2B 78 */	or r5, r6, r5
/* 8000B7B4 00006534  90 B8 1B 10 */	stw r5, 0x1b10(r24)
/* 8000B7B8 00006538  80 D8 1B 14 */	lwz r6, 0x1b14(r24)
/* 8000B7BC 0000653C  80 B8 1B 10 */	lwz r5, 0x1b10(r24)
/* 8000B7C0 00006540  7C C0 00 38 */	and r0, r6, r0
/* 8000B7C4 00006544  90 18 1B 14 */	stw r0, 0x1b14(r24)
/* 8000B7C8 00006548  7C A0 20 38 */	and r0, r5, r4
/* 8000B7CC 0000654C  90 18 1B 10 */	stw r0, 0x1b10(r24)
/* 8000B7D0 00006550  48 02 55 19 */	bl zz_80030ce8_
/* 8000B7D4 00006554  3C 78 00 01 */	addis r3, r24, 0x1
/* 8000B7D8 00006558  38 63 85 80 */	addi r3, r3, -0x7a80
/* 8000B7DC 0000655C  48 02 5D 35 */	bl zz_80031510_
/* 8000B7E0 00006560  3C 78 00 01 */	addis r3, r24, 0x1
/* 8000B7E4 00006564  38 63 8F 38 */	addi r3, r3, -0x70c8
/* 8000B7E8 00006568  48 06 1D BD */	bl zz_8006d5a4_
/* 8000B7EC 0000656C  38 78 42 AC */	addi r3, r24, 0x42ac
/* 8000B7F0 00006570  81 98 43 CC */	lwz r12, 0x43cc(r24)
/* 8000B7F4 00006574  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8000B7F8 00006578  7D 89 03 A6 */	mtctr r12
/* 8000B7FC 0000657C  4E 80 04 21 */	bctrl
/* 8000B800 00006580  38 00 00 00 */	li r0, 0x0
/* 8000B804 00006584  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B808 00006588  90 01 00 08 */	stw r0, 0x8(r1)
/* 8000B80C 0000658C  38 78 3E 70 */	addi r3, r24, 0x3e70
/* 8000B810 00006590  38 80 00 00 */	li r4, 0x0
/* 8000B814 00006594  38 A0 00 00 */	li r5, 0x0
/* 8000B818 00006598  38 C0 00 00 */	li r6, 0x0
/* 8000B81C 0000659C  38 E0 00 00 */	li r7, 0x0
/* 8000B820 000065A0  39 00 00 00 */	li r8, 0x0
/* 8000B824 000065A4  39 20 00 00 */	li r9, 0x0
/* 8000B828 000065A8  39 40 00 00 */	li r10, 0x0
/* 8000B82C 000065AC  48 01 86 B5 */	bl zz_80023ee0_
/* 8000B830 000065B0  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B834 000065B4  38 78 3E A4 */	addi r3, r24, 0x3ea4
/* 8000B838 000065B8  38 80 00 00 */	li r4, 0x0
/* 8000B83C 000065BC  38 A0 00 00 */	li r5, 0x0
/* 8000B840 000065C0  FC 40 08 90 */	fmr f2, f1
/* 8000B844 000065C4  38 C0 00 00 */	li r6, 0x0
/* 8000B848 000065C8  FC 60 08 90 */	fmr f3, f1
/* 8000B84C 000065CC  38 E0 00 00 */	li r7, 0x0
/* 8000B850 000065D0  FC 80 08 90 */	fmr f4, f1
/* 8000B854 000065D4  39 00 00 01 */	li r8, 0x1
/* 8000B858 000065D8  FC A0 08 90 */	fmr f5, f1
/* 8000B85C 000065DC  FC C0 08 90 */	fmr f6, f1
/* 8000B860 000065E0  FC E0 08 90 */	fmr f7, f1
/* 8000B864 000065E4  48 01 7E 89 */	bl zz_800236ec_
/* 8000B868 000065E8  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B86C 000065EC  38 78 3F 08 */	addi r3, r24, 0x3f08
/* 8000B870 000065F0  38 80 00 00 */	li r4, 0x0
/* 8000B874 000065F4  38 A0 00 00 */	li r5, 0x0
/* 8000B878 000065F8  FC 40 08 90 */	fmr f2, f1
/* 8000B87C 000065FC  38 C0 00 00 */	li r6, 0x0
/* 8000B880 00006600  FC 60 08 90 */	fmr f3, f1
/* 8000B884 00006604  38 E0 00 00 */	li r7, 0x0
/* 8000B888 00006608  FC 80 08 90 */	fmr f4, f1
/* 8000B88C 0000660C  39 00 00 01 */	li r8, 0x1
/* 8000B890 00006610  FC A0 08 90 */	fmr f5, f1
/* 8000B894 00006614  FC C0 08 90 */	fmr f6, f1
/* 8000B898 00006618  FC E0 08 90 */	fmr f7, f1
/* 8000B89C 0000661C  48 01 7E 51 */	bl zz_800236ec_
/* 8000B8A0 00006620  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B8A4 00006624  38 78 40 6C */	addi r3, r24, 0x406c
/* 8000B8A8 00006628  38 80 00 00 */	li r4, 0x0
/* 8000B8AC 0000662C  38 A0 00 00 */	li r5, 0x0
/* 8000B8B0 00006630  FC 40 08 90 */	fmr f2, f1
/* 8000B8B4 00006634  38 C0 00 00 */	li r6, 0x0
/* 8000B8B8 00006638  FC 60 08 90 */	fmr f3, f1
/* 8000B8BC 0000663C  38 E0 00 00 */	li r7, 0x0
/* 8000B8C0 00006640  FC 80 08 90 */	fmr f4, f1
/* 8000B8C4 00006644  39 00 00 01 */	li r8, 0x1
/* 8000B8C8 00006648  FC A0 08 90 */	fmr f5, f1
/* 8000B8CC 0000664C  FC C0 08 90 */	fmr f6, f1
/* 8000B8D0 00006650  FC E0 08 90 */	fmr f7, f1
/* 8000B8D4 00006654  48 01 7E 19 */	bl zz_800236ec_
/* 8000B8D8 00006658  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B8DC 0000665C  38 78 40 D0 */	addi r3, r24, 0x40d0
/* 8000B8E0 00006660  38 80 00 00 */	li r4, 0x0
/* 8000B8E4 00006664  38 A0 00 00 */	li r5, 0x0
/* 8000B8E8 00006668  FC 40 08 90 */	fmr f2, f1
/* 8000B8EC 0000666C  38 C0 00 00 */	li r6, 0x0
/* 8000B8F0 00006670  FC 60 08 90 */	fmr f3, f1
/* 8000B8F4 00006674  38 E0 00 00 */	li r7, 0x0
/* 8000B8F8 00006678  FC 80 08 90 */	fmr f4, f1
/* 8000B8FC 0000667C  39 00 00 01 */	li r8, 0x1
/* 8000B900 00006680  FC A0 08 90 */	fmr f5, f1
/* 8000B904 00006684  FC C0 08 90 */	fmr f6, f1
/* 8000B908 00006688  FC E0 08 90 */	fmr f7, f1
/* 8000B90C 0000668C  48 01 7D E1 */	bl zz_800236ec_
/* 8000B910 00006690  C0 62 80 A0 */	lfs f3, FLOAT_8065bde0@sda21(r2)
/* 8000B914 00006694  38 60 00 00 */	li r3, 0x0
/* 8000B918 00006698  C0 82 80 A4 */	lfs f4, FLOAT_8065bde4@sda21(r2)
/* 8000B91C 0000669C  38 00 00 01 */	li r0, 0x1
/* 8000B920 000066A0  90 61 00 08 */	stw r3, 0x8(r1)
/* 8000B924 000066A4  FC A0 18 90 */	fmr f5, f3
/* 8000B928 000066A8  FC C0 20 90 */	fmr f6, f4
/* 8000B92C 000066AC  C0 22 80 50 */	lfs f1, FLOAT_8065bd90@sda21(r2)
/* 8000B930 000066B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8000B934 000066B4  38 78 41 34 */	addi r3, r24, 0x4134
/* 8000B938 000066B8  C0 42 80 9C */	lfs f2, FLOAT_8065bddc@sda21(r2)
/* 8000B93C 000066BC  C0 E2 80 30 */	lfs f7, FLOAT_8065bd70@sda21(r2)
/* 8000B940 000066C0  38 80 00 00 */	li r4, 0x0
/* 8000B944 000066C4  38 A0 00 00 */	li r5, 0x0
/* 8000B948 000066C8  38 C0 00 00 */	li r6, 0x0
/* 8000B94C 000066CC  38 E0 00 00 */	li r7, 0x0
/* 8000B950 000066D0  39 00 00 00 */	li r8, 0x0
/* 8000B954 000066D4  39 20 00 00 */	li r9, 0x0
/* 8000B958 000066D8  39 40 00 00 */	li r10, 0x0
/* 8000B95C 000066DC  48 01 7A DD */	bl zz_80023438_
/* 8000B960 000066E0  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B964 000066E4  3C 78 00 01 */	addis r3, r24, 0x1
/* 8000B968 000066E8  38 63 96 5C */	addi r3, r3, -0x69a4
/* 8000B96C 000066EC  FC 40 08 90 */	fmr f2, f1
/* 8000B970 000066F0  FC 60 08 90 */	fmr f3, f1
/* 8000B974 000066F4  FC 80 08 90 */	fmr f4, f1
/* 8000B978 000066F8  FC A0 08 90 */	fmr f5, f1
/* 8000B97C 000066FC  FC C0 08 90 */	fmr f6, f1
/* 8000B980 00006700  FC E0 08 90 */	fmr f7, f1
/* 8000B984 00006704  48 01 89 25 */	bl zz_800242a8_
/* 8000B988 00006708  C0 02 80 30 */	lfs f0, FLOAT_8065bd70@sda21(r2)
/* 8000B98C 0000670C  38 00 00 13 */	li r0, 0x13
/* 8000B990 00006710  D0 18 42 90 */	stfs f0, 0x4290(r24)
/* 8000B994 00006714  D0 18 42 94 */	stfs f0, 0x4294(r24)
/* 8000B998 00006718  90 18 33 38 */	stw r0, 0x3338(r24)
/* 8000B99C 0000671C  48 00 01 C8 */	b func_8000BB64
lbl_8000B9A0:
/* 8000B9A0 00006720  2C 1A 4E 20 */	cmpwi r26, 0x4e20
/* 8000B9A4 00006724  40 82 01 B8 */	bne lbl_8000BB5C
/* 8000B9A8 00006728  38 78 42 AC */	addi r3, r24, 0x42ac
/* 8000B9AC 0000672C  81 98 43 CC */	lwz r12, 0x43cc(r24)
/* 8000B9B0 00006730  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8000B9B4 00006734  7D 89 03 A6 */	mtctr r12
/* 8000B9B8 00006738  4E 80 04 21 */	bctrl
/* 8000B9BC 0000673C  38 00 00 00 */	li r0, 0x0
/* 8000B9C0 00006740  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B9C4 00006744  90 01 00 08 */	stw r0, 0x8(r1)
/* 8000B9C8 00006748  38 78 3E 70 */	addi r3, r24, 0x3e70
/* 8000B9CC 0000674C  38 80 00 00 */	li r4, 0x0
/* 8000B9D0 00006750  38 A0 00 00 */	li r5, 0x0
/* 8000B9D4 00006754  38 C0 00 00 */	li r6, 0x0
/* 8000B9D8 00006758  38 E0 00 00 */	li r7, 0x0
/* 8000B9DC 0000675C  39 00 00 00 */	li r8, 0x0
/* 8000B9E0 00006760  39 20 00 00 */	li r9, 0x0
/* 8000B9E4 00006764  39 40 00 00 */	li r10, 0x0
/* 8000B9E8 00006768  48 01 84 F9 */	bl zz_80023ee0_
/* 8000B9EC 0000676C  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000B9F0 00006770  38 78 3E A4 */	addi r3, r24, 0x3ea4
/* 8000B9F4 00006774  38 80 00 00 */	li r4, 0x0
/* 8000B9F8 00006778  38 A0 00 00 */	li r5, 0x0
/* 8000B9FC 0000677C  FC 40 08 90 */	fmr f2, f1
/* 8000BA00 00006780  38 C0 00 00 */	li r6, 0x0
/* 8000BA04 00006784  FC 60 08 90 */	fmr f3, f1
/* 8000BA08 00006788  38 E0 00 00 */	li r7, 0x0
/* 8000BA0C 0000678C  FC 80 08 90 */	fmr f4, f1
/* 8000BA10 00006790  39 00 00 01 */	li r8, 0x1
/* 8000BA14 00006794  FC A0 08 90 */	fmr f5, f1
/* 8000BA18 00006798  FC C0 08 90 */	fmr f6, f1
/* 8000BA1C 0000679C  FC E0 08 90 */	fmr f7, f1
/* 8000BA20 000067A0  48 01 7C CD */	bl zz_800236ec_
/* 8000BA24 000067A4  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000BA28 000067A8  38 78 3F 08 */	addi r3, r24, 0x3f08
/* 8000BA2C 000067AC  38 80 00 00 */	li r4, 0x0
/* 8000BA30 000067B0  38 A0 00 00 */	li r5, 0x0
/* 8000BA34 000067B4  FC 40 08 90 */	fmr f2, f1
/* 8000BA38 000067B8  38 C0 00 00 */	li r6, 0x0
/* 8000BA3C 000067BC  FC 60 08 90 */	fmr f3, f1
/* 8000BA40 000067C0  38 E0 00 00 */	li r7, 0x0
/* 8000BA44 000067C4  FC 80 08 90 */	fmr f4, f1
/* 8000BA48 000067C8  39 00 00 01 */	li r8, 0x1
/* 8000BA4C 000067CC  FC A0 08 90 */	fmr f5, f1
/* 8000BA50 000067D0  FC C0 08 90 */	fmr f6, f1
/* 8000BA54 000067D4  FC E0 08 90 */	fmr f7, f1
/* 8000BA58 000067D8  48 01 7C 95 */	bl zz_800236ec_
/* 8000BA5C 000067DC  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000BA60 000067E0  38 78 40 6C */	addi r3, r24, 0x406c
/* 8000BA64 000067E4  38 80 00 00 */	li r4, 0x0
/* 8000BA68 000067E8  38 A0 00 00 */	li r5, 0x0
/* 8000BA6C 000067EC  FC 40 08 90 */	fmr f2, f1
/* 8000BA70 000067F0  38 C0 00 00 */	li r6, 0x0
/* 8000BA74 000067F4  FC 60 08 90 */	fmr f3, f1
/* 8000BA78 000067F8  38 E0 00 00 */	li r7, 0x0
/* 8000BA7C 000067FC  FC 80 08 90 */	fmr f4, f1
/* 8000BA80 00006800  39 00 00 01 */	li r8, 0x1
/* 8000BA84 00006804  FC A0 08 90 */	fmr f5, f1
/* 8000BA88 00006808  FC C0 08 90 */	fmr f6, f1
/* 8000BA8C 0000680C  FC E0 08 90 */	fmr f7, f1
/* 8000BA90 00006810  48 01 7C 5D */	bl zz_800236ec_
/* 8000BA94 00006814  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000BA98 00006818  38 78 40 D0 */	addi r3, r24, 0x40d0
/* 8000BA9C 0000681C  38 80 00 00 */	li r4, 0x0
/* 8000BAA0 00006820  38 A0 00 00 */	li r5, 0x0
/* 8000BAA4 00006824  FC 40 08 90 */	fmr f2, f1
/* 8000BAA8 00006828  38 C0 00 00 */	li r6, 0x0
/* 8000BAAC 0000682C  FC 60 08 90 */	fmr f3, f1
/* 8000BAB0 00006830  38 E0 00 00 */	li r7, 0x0
/* 8000BAB4 00006834  FC 80 08 90 */	fmr f4, f1
/* 8000BAB8 00006838  39 00 00 01 */	li r8, 0x1
/* 8000BABC 0000683C  FC A0 08 90 */	fmr f5, f1
/* 8000BAC0 00006840  FC C0 08 90 */	fmr f6, f1
/* 8000BAC4 00006844  FC E0 08 90 */	fmr f7, f1
/* 8000BAC8 00006848  48 01 7C 25 */	bl zz_800236ec_
/* 8000BACC 0000684C  C0 62 80 A0 */	lfs f3, FLOAT_8065bde0@sda21(r2)
/* 8000BAD0 00006850  38 60 00 00 */	li r3, 0x0
/* 8000BAD4 00006854  C0 82 80 A4 */	lfs f4, FLOAT_8065bde4@sda21(r2)
/* 8000BAD8 00006858  38 00 00 01 */	li r0, 0x1
/* 8000BADC 0000685C  90 61 00 08 */	stw r3, 0x8(r1)
/* 8000BAE0 00006860  FC A0 18 90 */	fmr f5, f3
/* 8000BAE4 00006864  FC C0 20 90 */	fmr f6, f4
/* 8000BAE8 00006868  C0 22 80 50 */	lfs f1, FLOAT_8065bd90@sda21(r2)
/* 8000BAEC 0000686C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8000BAF0 00006870  38 78 41 34 */	addi r3, r24, 0x4134
/* 8000BAF4 00006874  C0 42 80 9C */	lfs f2, FLOAT_8065bddc@sda21(r2)
/* 8000BAF8 00006878  C0 E2 80 30 */	lfs f7, FLOAT_8065bd70@sda21(r2)
/* 8000BAFC 0000687C  38 80 00 00 */	li r4, 0x0
/* 8000BB00 00006880  38 A0 00 00 */	li r5, 0x0
/* 8000BB04 00006884  38 C0 00 00 */	li r6, 0x0
/* 8000BB08 00006888  38 E0 00 00 */	li r7, 0x0
/* 8000BB0C 0000688C  39 00 00 00 */	li r8, 0x0
/* 8000BB10 00006890  39 20 00 00 */	li r9, 0x0
/* 8000BB14 00006894  39 40 00 00 */	li r10, 0x0
/* 8000BB18 00006898  48 01 79 21 */	bl zz_80023438_
/* 8000BB1C 0000689C  C0 22 80 30 */	lfs f1, FLOAT_8065bd70@sda21(r2)
/* 8000BB20 000068A0  3C 78 00 01 */	addis r3, r24, 0x1
/* 8000BB24 000068A4  38 63 96 5C */	addi r3, r3, -0x69a4
/* 8000BB28 000068A8  FC 40 08 90 */	fmr f2, f1
/* 8000BB2C 000068AC  FC 60 08 90 */	fmr f3, f1
/* 8000BB30 000068B0  FC 80 08 90 */	fmr f4, f1
/* 8000BB34 000068B4  FC A0 08 90 */	fmr f5, f1
/* 8000BB38 000068B8  FC C0 08 90 */	fmr f6, f1
/* 8000BB3C 000068BC  FC E0 08 90 */	fmr f7, f1
/* 8000BB40 000068C0  48 01 87 69 */	bl zz_800242a8_
/* 8000BB44 000068C4  C0 02 80 30 */	lfs f0, FLOAT_8065bd70@sda21(r2)
/* 8000BB48 000068C8  38 00 00 14 */	li r0, 0x14
/* 8000BB4C 000068CC  D0 18 42 90 */	stfs f0, 0x4290(r24)
/* 8000BB50 000068D0  D0 18 42 94 */	stfs f0, 0x4294(r24)
/* 8000BB54 000068D4  90 18 33 38 */	stw r0, 0x3338(r24)
/* 8000BB58 000068D8  48 00 00 0C */	b func_8000BB64
lbl_8000BB5C:
/* 8000BB5C 000068DC  38 00 00 15 */	li r0, 0x15
/* 8000BB60 000068E0  90 18 33 38 */	stw r0, 0x3338(r24)

.global func_8000BB64
func_8000BB64:
/* 8000BB64 000068E4  2C 19 00 00 */	cmpwi r25, 0x0
/* 8000BB68 000068E8  41 82 02 9C */	beq lbl_8000BE04
/* 8000BB6C 000068EC  3C 78 00 10 */	addis r3, r24, 0x10
/* 8000BB70 000068F0  38 00 00 01 */	li r0, 0x1
/* 8000BB74 000068F4  90 03 F2 08 */	stw r0, -0xdf8(r3)
/* 8000BB78 000068F8  38 00 00 00 */	li r0, 0x0
/* 8000BB7C 000068FC  90 03 F2 0C */	stw r0, -0xdf4(r3)
/* 8000BB80 00006900  83 38 34 44 */	lwz r25, 0x3444(r24)
/* 8000BB84 00006904  48 06 3D A1 */	bl getStageCount
/* 8000BB88 00006908  7C 19 18 00 */	cmpw r25, r3
/* 8000BB8C 0000690C  40 80 02 78 */	bge lbl_8000BE04
/* 8000BB90 00006910  80 78 34 44 */	lwz r3, 0x3444(r24)
/* 8000BB94 00006914  48 06 24 31 */	bl zz_8006dfc4_
/* 8000BB98 00006918  7C 7A 1B 79 */	mr. r26, r3
/* 8000BB9C 0000691C  41 82 02 68 */	beq lbl_8000BE04
/* 8000BBA0 00006920  3C 60 81 00 */	lis r3, 0x80FFFF00@ha
/* 8000BBA4 00006924  3C 80 80 26 */	lis r4, lbl_8025C400@ha
/* 8000BBA8 00006928  38 03 FF 00 */	addi r0, r3, 0x80FFFF00@l
/* 8000BBAC 0000692C  3F 98 00 10 */	addis r28, r24, 0x10
/* 8000BBB0 00006930  3C 60 B6 0B */	lis r3, 0xB60B60B7@ha
/* 8000BBB4 00006934  90 1C F2 10 */	stw r0, -0xdf0(r28)
/* 8000BBB8 00006938  C3 82 80 98 */	lfs f28, FLOAT_8065bdd8@sda21(r2)
/* 8000BBBC 0000693C  7F 19 C3 78 */	mr r25, r24
/* 8000BBC0 00006940  CB A2 80 20 */	lfd f29, DOUBLE_8065bd60@sda21(r2)
/* 8000BBC4 00006944  3B A4 C4 00 */	addi r29, r4, lbl_8025C400@l
/* 8000BBC8 00006948  C3 C2 80 A8 */	lfs f30, FLOAT_8065bde8@sda21(r2)
/* 8000BBCC 0000694C  3B E3 60 B7 */	addi r31, r3, 0xB60B60B7@l
/* 8000BBD0 00006950  C3 E2 80 6C */	lfs f31, FLOAT_8065bdac@sda21(r2)
/* 8000BBD4 00006954  3B 60 00 00 */	li r27, 0x0
/* 8000BBD8 00006958  3F C0 43 30 */	lis r30, 0x4330
/* 8000BBDC 0000695C  48 00 01 1C */	b func_8000BCF8
lbl_8000BBE0:
/* 8000BBE0 00006960  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8000BBE4 00006964  3C 79 00 10 */	addis r3, r25, 0x10
/* 8000BBE8 00006968  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8000BBEC 0000696C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8000BBF0 00006970  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8000BBF4 00006974  93 43 F2 14 */	stw r26, -0xdec(r3)
/* 8000BBF8 00006978  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8000BBFC 0000697C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8000BC00 00006980  D0 03 F2 18 */	stfs f0, -0xde8(r3)
/* 8000BC04 00006984  D3 C3 F2 1C */	stfs f30, -0xde4(r3)
/* 8000BC08 00006988  48 14 CE 0D */	bl generateRandomNumber
/* 8000BC0C 0000698C  7C 1F 18 96 */	mulhw r0, r31, r3
/* 8000BC10 00006990  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8000BC14 00006994  3C 99 00 10 */	addis r4, r25, 0x10
/* 8000BC18 00006998  7C 00 1A 14 */	add r0, r0, r3
/* 8000BC1C 0000699C  7C 00 46 70 */	srawi r0, r0, 8
/* 8000BC20 000069A0  54 05 0F FE */	srwi r5, r0, 31
/* 8000BC24 000069A4  7C 00 2A 14 */	add r0, r0, r5
/* 8000BC28 000069A8  1C 00 01 68 */	mulli r0, r0, 0x168
/* 8000BC2C 000069AC  7C 00 18 50 */	subf r0, r0, r3
/* 8000BC30 000069B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8000BC34 000069B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000BC38 000069B8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8000BC3C 000069BC  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8000BC40 000069C0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8000BC44 000069C4  D0 04 F2 20 */	stfs f0, -0xde0(r4)
/* 8000BC48 000069C8  48 14 CD CD */	bl generateRandomNumber
/* 8000BC4C 000069CC  7C 1F 18 96 */	mulhw r0, r31, r3
/* 8000BC50 000069D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8000BC54 000069D4  3C 99 00 10 */	addis r4, r25, 0x10
/* 8000BC58 000069D8  7C 00 1A 14 */	add r0, r0, r3
/* 8000BC5C 000069DC  7C 00 46 70 */	srawi r0, r0, 8
/* 8000BC60 000069E0  54 05 0F FE */	srwi r5, r0, 31
/* 8000BC64 000069E4  7C 00 2A 14 */	add r0, r0, r5
/* 8000BC68 000069E8  1C 00 01 68 */	mulli r0, r0, 0x168
/* 8000BC6C 000069EC  7C 00 18 50 */	subf r0, r0, r3
/* 8000BC70 000069F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8000BC74 000069F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8000BC78 000069F8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8000BC7C 000069FC  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8000BC80 00006A00  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8000BC84 00006A04  D0 04 F2 24 */	stfs f0, -0xddc(r4)
/* 8000BC88 00006A08  80 7C F2 0C */	lwz r3, -0xdf4(r28)
/* 8000BC8C 00006A0C  38 03 00 01 */	addi r0, r3, 0x1
/* 8000BC90 00006A10  90 1C F2 0C */	stw r0, -0xdf4(r28)
/* 8000BC94 00006A14  88 1D 33 18 */	lbz r0, 0x3318(r29)
/* 8000BC98 00006A18  28 00 00 06 */	cmplwi r0, 0x6
/* 8000BC9C 00006A1C  40 82 00 50 */	bne lbl_8000BCEC
/* 8000BCA0 00006A20  88 7A 00 00 */	lbz r3, 0x0(r26)
/* 8000BCA4 00006A24  38 80 00 00 */	li r4, 0x0
/* 8000BCA8 00006A28  28 03 00 81 */	cmplwi r3, 0x81
/* 8000BCAC 00006A2C  41 80 00 10 */	blt lbl_8000BCBC
/* 8000BCB0 00006A30  54 60 06 3E */	clrlwi r0, r3, 24
/* 8000BCB4 00006A34  28 00 00 9F */	cmplwi r0, 0x9f
/* 8000BCB8 00006A38  40 81 00 18 */	ble lbl_8000BCD0
lbl_8000BCBC:
/* 8000BCBC 00006A3C  54 60 06 3E */	clrlwi r0, r3, 24
/* 8000BCC0 00006A40  28 00 00 E0 */	cmplwi r0, 0xe0
/* 8000BCC4 00006A44  41 80 00 10 */	blt lbl_8000BCD4
/* 8000BCC8 00006A48  28 00 00 FC */	cmplwi r0, 0xfc
/* 8000BCCC 00006A4C  41 81 00 08 */	bgt lbl_8000BCD4
lbl_8000BCD0:
/* 8000BCD0 00006A50  38 80 00 01 */	li r4, 0x1
lbl_8000BCD4:
/* 8000BCD4 00006A54  54 83 06 3E */	clrlwi r3, r4, 24
/* 8000BCD8 00006A58  7C 03 00 D0 */	neg r0, r3
/* 8000BCDC 00006A5C  7C 00 1B 78 */	or r0, r0, r3
/* 8000BCE0 00006A60  54 00 0F FF */	srwi. r0, r0, 31
/* 8000BCE4 00006A64  41 82 00 08 */	beq lbl_8000BCEC
/* 8000BCE8 00006A68  3B 5A 00 01 */	addi r26, r26, 0x1
lbl_8000BCEC:
/* 8000BCEC 00006A6C  3B 39 00 14 */	addi r25, r25, 0x14
/* 8000BCF0 00006A70  3B 7B 00 01 */	addi r27, r27, 0x1
/* 8000BCF4 00006A74  3B 5A 00 01 */	addi r26, r26, 0x1

.global func_8000BCF8
func_8000BCF8:
/* 8000BCF8 00006A78  2C 1B 00 14 */	cmpwi r27, 0x14
/* 8000BCFC 00006A7C  40 80 00 10 */	bge lbl_8000BD0C
/* 8000BD00 00006A80  88 1A 00 00 */	lbz r0, 0x0(r26)
/* 8000BD04 00006A84  7C 00 07 75 */	extsb. r0, r0
/* 8000BD08 00006A88  40 82 FE D8 */	bne lbl_8000BBE0
lbl_8000BD0C:
/* 8000BD0C 00006A8C  3C 78 00 10 */	addis r3, r24, 0x10
/* 8000BD10 00006A90  C0 02 80 30 */	lfs f0, FLOAT_8065bd70@sda21(r2)
/* 8000BD14 00006A94  80 63 F2 0C */	lwz r3, -0xdf4(r3)
/* 8000BD18 00006A98  38 A0 00 00 */	li r5, 0x0
/* 8000BD1C 00006A9C  1C 03 00 14 */	mulli r0, r3, 0x14
/* 8000BD20 00006AA0  2C 03 00 14 */	cmpwi r3, 0x14
/* 8000BD24 00006AA4  20 63 00 14 */	subfic r3, r3, 0x14
/* 8000BD28 00006AA8  7C D8 02 14 */	add r6, r24, r0
/* 8000BD2C 00006AAC  40 80 00 D8 */	bge lbl_8000BE04
/* 8000BD30 00006AB0  54 60 E8 FF */	srwi. r0, r3, 3
/* 8000BD34 00006AB4  7C 09 03 A6 */	mtctr r0
/* 8000BD38 00006AB8  41 82 00 B0 */	beq lbl_8000BDE8
lbl_8000BD3C:
/* 8000BD3C 00006ABC  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BD40 00006AC0  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BD44 00006AC4  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BD48 00006AC8  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BD4C 00006ACC  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BD50 00006AD0  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BD54 00006AD4  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BD58 00006AD8  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BD5C 00006ADC  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BD60 00006AE0  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BD64 00006AE4  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BD68 00006AE8  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BD6C 00006AEC  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BD70 00006AF0  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BD74 00006AF4  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BD78 00006AF8  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BD7C 00006AFC  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BD80 00006B00  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BD84 00006B04  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BD88 00006B08  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BD8C 00006B0C  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BD90 00006B10  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BD94 00006B14  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BD98 00006B18  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BD9C 00006B1C  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BDA0 00006B20  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BDA4 00006B24  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BDA8 00006B28  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BDAC 00006B2C  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BDB0 00006B30  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BDB4 00006B34  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BDB8 00006B38  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BDBC 00006B3C  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BDC0 00006B40  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BDC4 00006B44  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BDC8 00006B48  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BDCC 00006B4C  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BDD0 00006B50  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BDD4 00006B54  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BDD8 00006B58  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BDDC 00006B5C  42 00 FF 60 */	bdnz lbl_8000BD3C
/* 8000BDE0 00006B60  70 63 00 07 */	andi. r3, r3, 0x7
/* 8000BDE4 00006B64  41 82 00 20 */	beq lbl_8000BE04
lbl_8000BDE8:
/* 8000BDE8 00006B68  7C 69 03 A6 */	mtctr r3
lbl_8000BDEC:
/* 8000BDEC 00006B6C  3C 86 00 10 */	addis r4, r6, 0x10
/* 8000BDF0 00006B70  38 C6 00 14 */	addi r6, r6, 0x14
/* 8000BDF4 00006B74  90 A4 F2 14 */	stw r5, -0xdec(r4)
/* 8000BDF8 00006B78  D0 04 F2 18 */	stfs f0, -0xde8(r4)
/* 8000BDFC 00006B7C  D0 04 F2 1C */	stfs f0, -0xde4(r4)
/* 8000BE00 00006B80  42 00 FF EC */	bdnz lbl_8000BDEC
lbl_8000BE04:
/* 8000BE04 00006B84  E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 8000BE08 00006B88  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8000BE0C 00006B8C  E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 8000BE10 00006B90  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8000BE14 00006B94  E3 A1 00 68 */	psq_l f29, 0x68(r1), 0, qr0
/* 8000BE18 00006B98  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8000BE1C 00006B9C  E3 81 00 58 */	psq_l f28, 0x58(r1), 0, qr0
/* 8000BE20 00006BA0  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8000BE24 00006BA4  BB 01 00 30 */	lmw r24, 0x30(r1)
/* 8000BE28 00006BA8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8000BE2C 00006BAC  7C 08 03 A6 */	mtlr r0
/* 8000BE30 00006BB0  38 21 00 90 */	addi r1, r1, 0x90
/* 8000BE34 00006BB4  4E 80 00 20 */	blr