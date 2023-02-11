.include "macros.s"

.section .text, "ax"  # 0x80007880 - 0x801FD660 ; 0x001F5DE0




.global DrawRectangleWithVertexData
DrawRectangleWithVertexData:
/* 8000BE38 00006BB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8000BE3C 00006BBC  7C 08 02 A6 */	mflr r0
/* 8000BE40 00006BC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8000BE44 00006BC4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8000BE48 00006BC8  F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 8000BE4C 00006BCC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8000BE50 00006BD0  F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 8000BE54 00006BD4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8000BE58 00006BD8  F3 A1 00 48 */	psq_st f29, 0x48(r1), 0, qr0
/* 8000BE5C 00006BDC  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 8000BE60 00006BE0  F3 81 00 38 */	psq_st f28, 0x38(r1), 0, qr0
/* 8000BE64 00006BE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8000BE68 00006BE8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8000BE6C 00006BEC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8000BE70 00006BF0  7C 7F 1B 78 */	mr r31, r3
/* 8000BE74 00006BF4  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000BE78 00006BF8  80 03 F3 A4 */	lwz r0, -0xc5c(r3)
/* 8000BE7C 00006BFC  28 00 00 00 */	cmplwi r0, 0x0
/* 8000BE80 00006C00  41 82 04 DC */	beq lbl_8000C35C
/* 8000BE84 00006C04  C0 03 F4 68 */	lfs f0, -0xb98(r3)
/* 8000BE88 00006C08  3C 00 7F 80 */	lis r0, 0x7f80
/* 8000BE8C 00006C0C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8000BE90 00006C10  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8000BE94 00006C14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8000BE98 00006C18  7C 03 00 00 */	cmpw r3, r0
/* 8000BE9C 00006C1C  41 82 00 14 */	beq lbl_8000BEB0
/* 8000BEA0 00006C20  40 80 00 40 */	bge func_8000BEE0
/* 8000BEA4 00006C24  2C 03 00 00 */	cmpwi r3, 0x0
/* 8000BEA8 00006C28  41 82 00 20 */	beq lbl_8000BEC8
/* 8000BEAC 00006C2C  48 00 00 34 */	b func_8000BEE0
lbl_8000BEB0:
/* 8000BEB0 00006C30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000BEB4 00006C34  41 82 00 0C */	beq lbl_8000BEC0
/* 8000BEB8 00006C38  38 00 00 01 */	li r0, 0x1
/* 8000BEBC 00006C3C  48 00 00 28 */	b func_8000BEE4
lbl_8000BEC0:
/* 8000BEC0 00006C40  38 00 00 02 */	li r0, 0x2
/* 8000BEC4 00006C44  48 00 00 20 */	b func_8000BEE4
lbl_8000BEC8:
/* 8000BEC8 00006C48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000BECC 00006C4C  41 82 00 0C */	beq lbl_8000BED8
/* 8000BED0 00006C50  38 00 00 05 */	li r0, 0x5
/* 8000BED4 00006C54  48 00 00 10 */	b func_8000BEE4
lbl_8000BED8:
/* 8000BED8 00006C58  38 00 00 03 */	li r0, 0x3
/* 8000BEDC 00006C5C  48 00 00 08 */	b func_8000BEE4

.global func_8000BEE0
func_8000BEE0:
/* 8000BEE0 00006C60  38 00 00 04 */	li r0, 0x4

.global func_8000BEE4
func_8000BEE4:
/* 8000BEE4 00006C64  2C 00 00 01 */	cmpwi r0, 0x1
/* 8000BEE8 00006C68  40 82 00 28 */	bne lbl_8000BF10
/* 8000BEEC 00006C6C  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000BEF0 00006C70  3C 00 43 30 */	lis r0, 0x4330
/* 8000BEF4 00006C74  80 63 F4 30 */	lwz r3, -0xbd0(r3)
/* 8000BEF8 00006C78  90 01 00 18 */	stw r0, 0x18(r1)
/* 8000BEFC 00006C7C  C8 22 80 90 */	lfd f1, DOUBLE_8065bdd0@sda21(r2)
/* 8000BF00 00006C80  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8000BF04 00006C84  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8000BF08 00006C88  EF E0 08 28 */	fsubs f31, f0, f1
/* 8000BF0C 00006C8C  48 00 00 0C */	b func_8000BF18
lbl_8000BF10:
/* 8000BF10 00006C90  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000BF14 00006C94  C3 E3 F4 68 */	lfs f31, -0xb98(r3)

.global func_8000BF18
func_8000BF18:
/* 8000BF18 00006C98  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000BF1C 00006C9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8000BF20 00006CA0  C0 03 F4 6C */	lfs f0, -0xb94(r3)
/* 8000BF24 00006CA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8000BF28 00006CA8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8000BF2C 00006CAC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8000BF30 00006CB0  7C 03 00 00 */	cmpw r3, r0
/* 8000BF34 00006CB4  41 82 00 14 */	beq lbl_8000BF48
/* 8000BF38 00006CB8  40 80 00 40 */	bge func_8000BF78
/* 8000BF3C 00006CBC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8000BF40 00006CC0  41 82 00 20 */	beq lbl_8000BF60
/* 8000BF44 00006CC4  48 00 00 34 */	b func_8000BF78
lbl_8000BF48:
/* 8000BF48 00006CC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000BF4C 00006CCC  41 82 00 0C */	beq lbl_8000BF58
/* 8000BF50 00006CD0  38 00 00 01 */	li r0, 0x1
/* 8000BF54 00006CD4  48 00 00 28 */	b func_8000BF7C
lbl_8000BF58:
/* 8000BF58 00006CD8  38 00 00 02 */	li r0, 0x2
/* 8000BF5C 00006CDC  48 00 00 20 */	b func_8000BF7C
lbl_8000BF60:
/* 8000BF60 00006CE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000BF64 00006CE4  41 82 00 0C */	beq lbl_8000BF70
/* 8000BF68 00006CE8  38 00 00 05 */	li r0, 0x5
/* 8000BF6C 00006CEC  48 00 00 10 */	b func_8000BF7C
lbl_8000BF70:
/* 8000BF70 00006CF0  38 00 00 03 */	li r0, 0x3
/* 8000BF74 00006CF4  48 00 00 08 */	b func_8000BF7C

.global func_8000BF78
func_8000BF78:
/* 8000BF78 00006CF8  38 00 00 04 */	li r0, 0x4

.global func_8000BF7C
func_8000BF7C:
/* 8000BF7C 00006CFC  2C 00 00 01 */	cmpwi r0, 0x1
/* 8000BF80 00006D00  40 82 00 28 */	bne lbl_8000BFA8
/* 8000BF84 00006D04  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000BF88 00006D08  3C 00 43 30 */	lis r0, 0x4330
/* 8000BF8C 00006D0C  80 63 F4 34 */	lwz r3, -0xbcc(r3)
/* 8000BF90 00006D10  90 01 00 18 */	stw r0, 0x18(r1)
/* 8000BF94 00006D14  C8 22 80 90 */	lfd f1, DOUBLE_8065bdd0@sda21(r2)
/* 8000BF98 00006D18  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8000BF9C 00006D1C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8000BFA0 00006D20  EF C0 08 28 */	fsubs f30, f0, f1
/* 8000BFA4 00006D24  48 00 00 0C */	b func_8000BFB0
lbl_8000BFA8:
/* 8000BFA8 00006D28  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000BFAC 00006D2C  C3 C3 F4 6C */	lfs f30, -0xb94(r3)

.global func_8000BFB0
func_8000BFB0:
/* 8000BFB0 00006D30  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000BFB4 00006D34  3C 00 7F 80 */	lis r0, 0x7f80
/* 8000BFB8 00006D38  C0 03 F4 60 */	lfs f0, -0xba0(r3)
/* 8000BFBC 00006D3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8000BFC0 00006D40  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8000BFC4 00006D44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8000BFC8 00006D48  7C 03 00 00 */	cmpw r3, r0
/* 8000BFCC 00006D4C  41 82 00 14 */	beq lbl_8000BFE0
/* 8000BFD0 00006D50  40 80 00 40 */	bge func_8000C010
/* 8000BFD4 00006D54  2C 03 00 00 */	cmpwi r3, 0x0
/* 8000BFD8 00006D58  41 82 00 20 */	beq lbl_8000BFF8
/* 8000BFDC 00006D5C  48 00 00 34 */	b func_8000C010
lbl_8000BFE0:
/* 8000BFE0 00006D60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000BFE4 00006D64  41 82 00 0C */	beq lbl_8000BFF0
/* 8000BFE8 00006D68  38 00 00 01 */	li r0, 0x1
/* 8000BFEC 00006D6C  48 00 00 28 */	b func_8000C014
lbl_8000BFF0:
/* 8000BFF0 00006D70  38 00 00 02 */	li r0, 0x2
/* 8000BFF4 00006D74  48 00 00 20 */	b func_8000C014
lbl_8000BFF8:
/* 8000BFF8 00006D78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000BFFC 00006D7C  41 82 00 0C */	beq lbl_8000C008
/* 8000C000 00006D80  38 00 00 05 */	li r0, 0x5
/* 8000C004 00006D84  48 00 00 10 */	b func_8000C014
lbl_8000C008:
/* 8000C008 00006D88  38 00 00 03 */	li r0, 0x3
/* 8000C00C 00006D8C  48 00 00 08 */	b func_8000C014

.global func_8000C010
func_8000C010:
/* 8000C010 00006D90  38 00 00 04 */	li r0, 0x4

.global func_8000C014
func_8000C014:
/* 8000C014 00006D94  2C 00 00 01 */	cmpwi r0, 0x1
/* 8000C018 00006D98  40 82 00 18 */	bne lbl_8000C030
/* 8000C01C 00006D9C  C0 22 80 A0 */	lfs f1, FLOAT_8065bde0@sda21(r2)
/* 8000C020 00006DA0  C0 02 80 58 */	lfs f0, FLOAT_8065bd98@sda21(r2)
/* 8000C024 00006DA4  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8000C028 00006DA8  EF A1 00 32 */	fmuls f29, f1, f0
/* 8000C02C 00006DAC  48 00 00 0C */	b func_8000C038
lbl_8000C030:
/* 8000C030 00006DB0  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000C034 00006DB4  C3 A3 F4 60 */	lfs f29, -0xba0(r3)

.global func_8000C038
func_8000C038:
/* 8000C038 00006DB8  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000C03C 00006DBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8000C040 00006DC0  C0 03 F4 64 */	lfs f0, -0xb9c(r3)
/* 8000C044 00006DC4  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8000C048 00006DC8  80 81 00 08 */	lwz r4, 0x8(r1)
/* 8000C04C 00006DCC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8000C050 00006DD0  7C 03 00 00 */	cmpw r3, r0
/* 8000C054 00006DD4  41 82 00 14 */	beq lbl_8000C068
/* 8000C058 00006DD8  40 80 00 40 */	bge func_8000C098
/* 8000C05C 00006DDC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8000C060 00006DE0  41 82 00 20 */	beq lbl_8000C080
/* 8000C064 00006DE4  48 00 00 34 */	b func_8000C098
lbl_8000C068:
/* 8000C068 00006DE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000C06C 00006DEC  41 82 00 0C */	beq lbl_8000C078
/* 8000C070 00006DF0  38 00 00 01 */	li r0, 0x1
/* 8000C074 00006DF4  48 00 00 28 */	b func_8000C09C
lbl_8000C078:
/* 8000C078 00006DF8  38 00 00 02 */	li r0, 0x2
/* 8000C07C 00006DFC  48 00 00 20 */	b func_8000C09C
lbl_8000C080:
/* 8000C080 00006E00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000C084 00006E04  41 82 00 0C */	beq lbl_8000C090
/* 8000C088 00006E08  38 00 00 05 */	li r0, 0x5
/* 8000C08C 00006E0C  48 00 00 10 */	b func_8000C09C
lbl_8000C090:
/* 8000C090 00006E10  38 00 00 03 */	li r0, 0x3
/* 8000C094 00006E14  48 00 00 08 */	b func_8000C09C

.global func_8000C098
func_8000C098:
/* 8000C098 00006E18  38 00 00 04 */	li r0, 0x4

.global func_8000C09C
func_8000C09C:
/* 8000C09C 00006E1C  2C 00 00 01 */	cmpwi r0, 0x1
/* 8000C0A0 00006E20  40 82 00 18 */	bne lbl_8000C0B8
/* 8000C0A4 00006E24  C0 22 80 A4 */	lfs f1, FLOAT_8065bde4@sda21(r2)
/* 8000C0A8 00006E28  C0 02 80 58 */	lfs f0, FLOAT_8065bd98@sda21(r2)
/* 8000C0AC 00006E2C  EC 21 F0 28 */	fsubs f1, f1, f30
/* 8000C0B0 00006E30  EF 81 00 32 */	fmuls f28, f1, f0
/* 8000C0B4 00006E34  48 00 00 0C */	b func_8000C0C0
lbl_8000C0B8:
/* 8000C0B8 00006E38  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000C0BC 00006E3C  C3 83 F4 64 */	lfs f28, -0xb9c(r3)

.global func_8000C0C0
func_8000C0C0:
/* 8000C0C0 00006E40  3C 60 80 26 */	lis r3, lbl_8025C400@ha
/* 8000C0C4 00006E44  38 80 00 01 */	li r4, 0x1
/* 8000C0C8 00006E48  3B A3 C4 00 */	addi r29, r3, lbl_8025C400@l
/* 8000C0CC 00006E4C  80 7D 02 90 */	lwz r3, 0x290(r29)
/* 8000C0D0 00006E50  48 18 F5 79 */	bl updateByteValueBasedOnChar
/* 8000C0D4 00006E54  80 7D 02 90 */	lwz r3, 0x290(r29)
/* 8000C0D8 00006E58  38 80 00 00 */	li r4, 0x0
/* 8000C0DC 00006E5C  48 18 F4 F5 */	bl update_byte_flag
/* 8000C0E0 00006E60  80 7D 02 90 */	lwz r3, 0x290(r29)
/* 8000C0E4 00006E64  38 80 00 01 */	li r4, 0x1
/* 8000C0E8 00006E68  38 A0 00 07 */	li r5, 0x7
/* 8000C0EC 00006E6C  38 C0 00 00 */	li r6, 0x0
/* 8000C0F0 00006E70  48 18 F3 75 */	bl set_parameters
/* 8000C0F4 00006E74  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000C0F8 00006E78  80 03 F4 2C */	lwz r0, -0xbd4(r3)
/* 8000C0FC 00006E7C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C100 00006E80  41 82 00 D0 */	beq lbl_8000C1D0
/* 8000C104 00006E84  80 7D 02 90 */	lwz r3, 0x290(r29)
/* 8000C108 00006E88  38 80 00 01 */	li r4, 0x1
/* 8000C10C 00006E8C  38 A0 00 04 */	li r5, 0x4
/* 8000C110 00006E90  38 C0 00 05 */	li r6, 0x5
/* 8000C114 00006E94  38 E0 00 0F */	li r7, 0xf
/* 8000C118 00006E98  48 18 F4 55 */	bl updateByteValues
/* 8000C11C 00006E9C  80 7D 02 90 */	lwz r3, 0x290(r29)
/* 8000C120 00006EA0  38 80 00 04 */	li r4, 0x4
/* 8000C124 00006EA4  38 A0 00 20 */	li r5, 0x20
/* 8000C128 00006EA8  38 C0 00 00 */	li r6, 0x0
/* 8000C12C 00006EAC  38 E0 00 03 */	li r7, 0x3
/* 8000C130 00006EB0  39 00 00 FF */	li r8, 0xff
/* 8000C134 00006EB4  48 18 F3 D1 */	bl InitializeMemoryBlock
/* 8000C138 00006EB8  80 1D 02 90 */	lwz r0, 0x290(r29)
/* 8000C13C 00006EBC  3C 60 80 26 */	lis r3, lbl_8025C400@ha
/* 8000C140 00006EC0  3B C3 C4 00 */	addi r30, r3, lbl_8025C400@l
/* 8000C144 00006EC4  28 00 00 00 */	cmplwi r0, 0x0
/* 8000C148 00006EC8  41 82 00 10 */	beq lbl_8000C158
/* 8000C14C 00006ECC  80 7E 02 90 */	lwz r3, 0x290(r30)
/* 8000C150 00006ED0  38 80 00 00 */	li r4, 0x0
/* 8000C154 00006ED4  48 18 F1 25 */	bl handleGraphicsSettingsUpdates
lbl_8000C158:
/* 8000C158 00006ED8  80 7E 02 94 */	lwz r3, 0x294(r30)
/* 8000C15C 00006EDC  28 03 00 00 */	cmplwi r3, 0x0
/* 8000C160 00006EE0  41 82 00 0C */	beq lbl_8000C16C
/* 8000C164 00006EE4  38 80 00 00 */	li r4, 0x0
/* 8000C168 00006EE8  48 18 ED 69 */	bl updateTevStagesAndTexCoords
lbl_8000C16C:
/* 8000C16C 00006EEC  80 7E 02 98 */	lwz r3, 0x298(r30)
/* 8000C170 00006EF0  28 03 00 00 */	cmplwi r3, 0x0
/* 8000C174 00006EF4  41 82 00 0C */	beq lbl_8000C180
/* 8000C178 00006EF8  38 80 00 00 */	li r4, 0x0
/* 8000C17C 00006EFC  48 18 ED 19 */	bl process_and_update_params_on_condition
lbl_8000C180:
/* 8000C180 00006F00  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000C184 00006F04  38 63 F3 A4 */	addi r3, r3, -0xc5c
/* 8000C188 00006F08  48 19 D9 6D */	bl zz_801a9af4_
/* 8000C18C 00006F0C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8000C190 00006F10  41 80 00 D8 */	blt func_8000C268
/* 8000C194 00006F14  3B C0 00 00 */	li r30, 0x0
lbl_8000C198:
/* 8000C198 00006F18  FC 20 E8 90 */	fmr f1, f29
/* 8000C19C 00006F1C  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000C1A0 00006F20  FC 40 E0 90 */	fmr f2, f28
/* 8000C1A4 00006F24  38 63 F3 A4 */	addi r3, r3, -0xc5c
/* 8000C1A8 00006F28  FC 60 F8 90 */	fmr f3, f31
/* 8000C1AC 00006F2C  FC 80 F0 90 */	fmr f4, f30
/* 8000C1B0 00006F30  48 19 D9 91 */	bl zz_801a9b40_
/* 8000C1B4 00006F34  3B DE 00 01 */	addi r30, r30, 0x1
/* 8000C1B8 00006F38  2C 1E 00 03 */	cmpwi r30, 0x3
/* 8000C1BC 00006F3C  41 80 FF DC */	blt lbl_8000C198
/* 8000C1C0 00006F40  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000C1C4 00006F44  38 63 F3 A4 */	addi r3, r3, -0xc5c
/* 8000C1C8 00006F48  48 19 D9 0D */	bl cPlayer__PostPhysicsUpdate_void__N41
/* 8000C1CC 00006F4C  48 00 00 9C */	b func_8000C268
lbl_8000C1D0:
/* 8000C1D0 00006F50  80 7D 02 90 */	lwz r3, 0x290(r29)
/* 8000C1D4 00006F54  38 80 00 00 */	li r4, 0x0
/* 8000C1D8 00006F58  38 A0 00 04 */	li r5, 0x4
/* 8000C1DC 00006F5C  38 C0 00 05 */	li r6, 0x5
/* 8000C1E0 00006F60  38 E0 00 0F */	li r7, 0xf
/* 8000C1E4 00006F64  48 18 F3 89 */	bl updateByteValues
/* 8000C1E8 00006F68  80 7D 02 90 */	lwz r3, 0x290(r29)
/* 8000C1EC 00006F6C  38 80 00 07 */	li r4, 0x7
/* 8000C1F0 00006F70  38 A0 00 00 */	li r5, 0x0
/* 8000C1F4 00006F74  38 C0 00 00 */	li r6, 0x0
/* 8000C1F8 00006F78  38 E0 00 07 */	li r7, 0x7
/* 8000C1FC 00006F7C  39 00 00 FF */	li r8, 0xff
/* 8000C200 00006F80  48 18 F3 05 */	bl InitializeMemoryBlock
/* 8000C204 00006F84  80 1D 02 90 */	lwz r0, 0x290(r29)
/* 8000C208 00006F88  3C 60 80 26 */	lis r3, lbl_8025C400@ha
/* 8000C20C 00006F8C  3B C3 C4 00 */	addi r30, r3, lbl_8025C400@l
/* 8000C210 00006F90  28 00 00 00 */	cmplwi r0, 0x0
/* 8000C214 00006F94  41 82 00 10 */	beq lbl_8000C224
/* 8000C218 00006F98  80 7E 02 90 */	lwz r3, 0x290(r30)
/* 8000C21C 00006F9C  38 80 00 00 */	li r4, 0x0
/* 8000C220 00006FA0  48 18 F0 59 */	bl handleGraphicsSettingsUpdates
lbl_8000C224:
/* 8000C224 00006FA4  80 7E 02 94 */	lwz r3, 0x294(r30)
/* 8000C228 00006FA8  28 03 00 00 */	cmplwi r3, 0x0
/* 8000C22C 00006FAC  41 82 00 0C */	beq lbl_8000C238
/* 8000C230 00006FB0  38 80 00 00 */	li r4, 0x0
/* 8000C234 00006FB4  48 18 EC 9D */	bl updateTevStagesAndTexCoords
lbl_8000C238:
/* 8000C238 00006FB8  80 7E 02 98 */	lwz r3, 0x298(r30)
/* 8000C23C 00006FBC  28 03 00 00 */	cmplwi r3, 0x0
/* 8000C240 00006FC0  41 82 00 0C */	beq lbl_8000C24C
/* 8000C244 00006FC4  38 80 00 00 */	li r4, 0x0
/* 8000C248 00006FC8  48 18 EC 4D */	bl process_and_update_params_on_condition
lbl_8000C24C:
/* 8000C24C 00006FCC  FC 20 E8 90 */	fmr f1, f29
/* 8000C250 00006FD0  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8000C254 00006FD4  FC 40 E0 90 */	fmr f2, f28
/* 8000C258 00006FD8  38 63 F3 A4 */	addi r3, r3, -0xc5c
/* 8000C25C 00006FDC  FC 60 F8 90 */	fmr f3, f31
/* 8000C260 00006FE0  FC 80 F0 90 */	fmr f4, f30
/* 8000C264 00006FE4  48 19 D9 39 */	bl InitializeAndDrawRectangleWrapper

.global func_8000C268
func_8000C268:
/* 8000C268 00006FE8  80 7D 02 90 */	lwz r3, 0x290(r29)
/* 8000C26C 00006FEC  38 80 00 04 */	li r4, 0x4
/* 8000C270 00006FF0  38 A0 00 00 */	li r5, 0x0
/* 8000C274 00006FF4  38 C0 00 00 */	li r6, 0x0
/* 8000C278 00006FF8  38 E0 00 03 */	li r7, 0x3
/* 8000C27C 00006FFC  39 00 00 FF */	li r8, 0xff
/* 8000C280 00007000  48 18 F2 85 */	bl InitializeMemoryBlock
/* 8000C284 00007004  3C 80 80 26 */	lis r4, lbl_8025C400@ha
/* 8000C288 00007008  38 60 FF FF */	li r3, -0x1
/* 8000C28C 0000700C  3B E4 C4 00 */	addi r31, r4, lbl_8025C400@l
/* 8000C290 00007010  48 19 DC ED */	bl execute_registered_callbacks
/* 8000C294 00007014  80 1D 02 90 */	lwz r0, 0x290(r29)
/* 8000C298 00007018  28 00 00 00 */	cmplwi r0, 0x0
/* 8000C29C 0000701C  41 82 00 58 */	beq lbl_8000C2F4
/* 8000C2A0 00007020  80 7F 02 90 */	lwz r3, 0x290(r31)
/* 8000C2A4 00007024  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8000C2A8 00007028  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C2AC 0000702C  40 82 00 0C */	bne lbl_8000C2B8
/* 8000C2B0 00007030  38 00 00 01 */	li r0, 0x1
/* 8000C2B4 00007034  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8000C2B8:
/* 8000C2B8 00007038  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8000C2BC 0000703C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C2C0 00007040  40 82 00 0C */	bne lbl_8000C2CC
/* 8000C2C4 00007044  38 00 00 01 */	li r0, 0x1
/* 8000C2C8 00007048  90 03 00 10 */	stw r0, 0x10(r3)
lbl_8000C2CC:
/* 8000C2CC 0000704C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8000C2D0 00007050  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C2D4 00007054  40 82 00 0C */	bne lbl_8000C2E0
/* 8000C2D8 00007058  38 00 00 01 */	li r0, 0x1
/* 8000C2DC 0000705C  90 03 00 14 */	stw r0, 0x14(r3)
lbl_8000C2E0:
/* 8000C2E0 00007060  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8000C2E4 00007064  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C2E8 00007068  40 82 00 0C */	bne lbl_8000C2F4
/* 8000C2EC 0000706C  38 00 00 01 */	li r0, 0x1
/* 8000C2F0 00007070  90 03 00 18 */	stw r0, 0x18(r3)
lbl_8000C2F4:
/* 8000C2F4 00007074  80 7F 02 94 */	lwz r3, 0x294(r31)
/* 8000C2F8 00007078  28 03 00 00 */	cmplwi r3, 0x0
/* 8000C2FC 0000707C  41 82 00 40 */	beq lbl_8000C33C
/* 8000C300 00007080  80 03 00 74 */	lwz r0, 0x74(r3)
/* 8000C304 00007084  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C308 00007088  40 82 00 0C */	bne lbl_8000C314
/* 8000C30C 0000708C  38 00 00 01 */	li r0, 0x1
/* 8000C310 00007090  90 03 00 74 */	stw r0, 0x74(r3)
lbl_8000C314:
/* 8000C314 00007094  80 03 00 78 */	lwz r0, 0x78(r3)
/* 8000C318 00007098  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C31C 0000709C  40 82 00 0C */	bne lbl_8000C328
/* 8000C320 000070A0  38 00 00 01 */	li r0, 0x1
/* 8000C324 000070A4  90 03 00 78 */	stw r0, 0x78(r3)
lbl_8000C328:
/* 8000C328 000070A8  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 8000C32C 000070AC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C330 000070B0  40 82 00 0C */	bne lbl_8000C33C
/* 8000C334 000070B4  38 00 00 01 */	li r0, 0x1
/* 8000C338 000070B8  90 03 00 7C */	stw r0, 0x7c(r3)
lbl_8000C33C:
/* 8000C33C 000070BC  80 7F 02 98 */	lwz r3, 0x298(r31)
/* 8000C340 000070C0  28 03 00 00 */	cmplwi r3, 0x0
/* 8000C344 000070C4  41 82 00 18 */	beq lbl_8000C35C
/* 8000C348 000070C8  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8000C34C 000070CC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000C350 000070D0  40 82 00 0C */	bne lbl_8000C35C
/* 8000C354 000070D4  38 00 00 01 */	li r0, 0x1
/* 8000C358 000070D8  90 03 00 30 */	stw r0, 0x30(r3)
lbl_8000C35C:
/* 8000C35C 000070DC  E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 8000C360 000070E0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8000C364 000070E4  E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 8000C368 000070E8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8000C36C 000070EC  E3 A1 00 48 */	psq_l f29, 0x48(r1), 0, qr0
/* 8000C370 000070F0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8000C374 000070F4  E3 81 00 38 */	psq_l f28, 0x38(r1), 0, qr0
/* 8000C378 000070F8  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8000C37C 000070FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8000C380 00007100  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8000C384 00007104  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8000C388 00007108  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8000C38C 0000710C  7C 08 03 A6 */	mtlr r0
/* 8000C390 00007110  38 21 00 70 */	addi r1, r1, 0x70
/* 8000C394 00007114  4E 80 00 20 */	blr
