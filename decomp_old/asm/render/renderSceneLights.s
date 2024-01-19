.include "macros.s"

.section .text, "ax"  # 0x80007880 - 0x801FD660 ; 0x001F5DE0

.global RenderAndLightScene
RenderAndLightScene:
/* 8000DA7C 000087FC  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8000DA80 00008800  7C 08 02 A6 */	mflr r0
/* 8000DA84 00008804  38 A0 00 00 */	li r5, 0x0
/* 8000DA88 00008808  38 80 00 01 */	li r4, 0x1
/* 8000DA8C 0000880C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8000DA90 00008810  3C C0 80 20 */	lis r6, lbl_801FD6E0@ha
/* 8000DA94 00008814  BF 41 01 98 */	stmw r26, 0x198(r1)
/* 8000DA98 00008818  7C 7E 1B 78 */	mr r30, r3
/* 8000DA9C 0000881C  3B E6 D6 E0 */	addi r31, r6, lbl_801FD6E0@l
/* 8000DAA0 00008820  80 E3 1B 10 */	lwz r7, 0x1b10(r3)
/* 8000DAA4 00008824  81 03 1B 14 */	lwz r8, 0x1b14(r3)
/* 8000DAA8 00008828  7C E0 28 38 */	and r0, r7, r5
/* 8000DAAC 0000882C  7D 04 20 38 */	and r4, r8, r4
/* 8000DAB0 00008830  7C 84 2A 78 */	xor r4, r4, r5
/* 8000DAB4 00008834  7C 00 2A 78 */	xor r0, r0, r5
/* 8000DAB8 00008838  7C 80 03 79 */	or. r0, r4, r0
/* 8000DABC 0000883C  41 82 04 A8 */	beq lbl_8000DF64
/* 8000DAC0 00008840  38 00 00 20 */	li r0, 0x20
/* 8000DAC4 00008844  7D 04 28 38 */	and r4, r8, r5
/* 8000DAC8 00008848  7C E0 00 38 */	and r0, r7, r0
/* 8000DACC 0000884C  7C 84 2A 78 */	xor r4, r4, r5
/* 8000DAD0 00008850  7C 00 2A 78 */	xor r0, r0, r5
/* 8000DAD4 00008854  7C 80 03 79 */	or. r0, r4, r0
/* 8000DAD8 00008858  41 82 04 8C */	beq lbl_8000DF64
/* 8000DADC 0000885C  81 83 33 34 */	lwz r12, 0x3334(r3)
/* 8000DAE0 00008860  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8000DAE4 00008864  7D 89 03 A6 */	mtctr r12
/* 8000DAE8 00008868  4E 80 04 21 */	bctrl
/* 8000DAEC 0000886C  90 7E 00 44 */	stw r3, 0x44(r30)
/* 8000DAF0 00008870  7F C3 F3 78 */	mr r3, r30
/* 8000DAF4 00008874  48 18 BE 89 */	bl zz_8019997c_
/* 8000DAF8 00008878  28 03 00 00 */	cmplwi r3, 0x0
/* 8000DAFC 0000887C  41 82 03 24 */	beq lbl_8000DE20
/* 8000DB00 00008880  3C 7E 00 0E */	addis r3, r30, 0xe
/* 8000DB04 00008884  83 43 7E 20 */	lwz r26, 0x7e20(r3)
/* 8000DB08 00008888  48 00 00 2C */	b func_8000DB34
lbl_8000DB0C:
/* 8000DB0C 0000888C  7F 43 D3 78 */	mr r3, r26
/* 8000DB10 00008890  C0 1A 00 DC */	lfs f0, 0xdc(r26)
/* 8000DB14 00008894  81 9A 03 54 */	lwz r12, 0x354(r26)
/* 8000DB18 00008898  FC 40 00 50 */	fneg f2, f0
/* 8000DB1C 0000889C  C0 3A 00 D8 */	lfs f1, 0xd8(r26)
/* 8000DB20 000088A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8000DB24 000088A4  C0 7A 00 E0 */	lfs f3, 0xe0(r26)
/* 8000DB28 000088A8  7D 89 03 A6 */	mtctr r12
/* 8000DB2C 000088AC  4E 80 04 21 */	bctrl
/* 8000DB30 000088B0  83 5A 00 0C */	lwz r26, 0xc(r26)

.global func_8000DB34
func_8000DB34:
/* 8000DB34 000088B4  28 1A 00 00 */	cmplwi r26, 0x0
/* 8000DB38 000088B8  40 82 FF D4 */	bne lbl_8000DB0C
/* 8000DB3C 000088BC  7F C3 F3 78 */	mr r3, r30
/* 8000DB40 000088C0  81 9E 33 34 */	lwz r12, 0x3334(r30)
/* 8000DB44 000088C4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8000DB48 000088C8  7D 89 03 A6 */	mtctr r12
/* 8000DB4C 000088CC  4E 80 04 21 */	bctrl
/* 8000DB50 000088D0  3C BE 00 0E */	addis r5, r30, 0xe
/* 8000DB54 000088D4  7C 64 1B 78 */	mr r4, r3
/* 8000DB58 000088D8  80 65 7E 20 */	lwz r3, 0x7e20(r5)
/* 8000DB5C 000088DC  48 18 5A D9 */	bl zz_80193634_
/* 8000DB60 000088E0  80 1F 03 10 */	lwz r0, 0x310(r31)
/* 8000DB64 000088E4  38 61 01 38 */	addi r3, r1, 0x138
/* 8000DB68 000088E8  81 1F 03 14 */	lwz r8, 0x314(r31)
/* 8000DB6C 000088EC  38 80 00 58 */	li r4, 0x58
/* 8000DB70 000088F0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8000DB74 000088F4  80 FF 03 18 */	lwz r7, 0x318(r31)
/* 8000DB78 000088F8  C0 22 80 6C */	lfs f1, FLOAT_8065bdac@sda21(r2)
/* 8000DB7C 000088FC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8000DB80 00008900  80 DF 03 1C */	lwz r6, 0x31c(r31)
/* 8000DB84 00008904  80 BF 03 20 */	lwz r5, 0x320(r31)
/* 8000DB88 00008908  EC 21 00 32 */	fmuls f1, f1, f0
/* 8000DB8C 0000890C  80 1F 03 24 */	lwz r0, 0x324(r31)
/* 8000DB90 00008910  91 01 00 40 */	stw r8, 0x40(r1)
/* 8000DB94 00008914  90 E1 00 44 */	stw r7, 0x44(r1)
/* 8000DB98 00008918  90 C1 00 30 */	stw r6, 0x30(r1)
/* 8000DB9C 0000891C  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8000DBA0 00008920  90 01 00 38 */	stw r0, 0x38(r1)
/* 8000DBA4 00008924  48 15 DF F9 */	bl calculateAndStoreData
/* 8000DBA8 00008928  C0 22 80 6C */	lfs f1, FLOAT_8065bdac@sda21(r2)
/* 8000DBAC 0000892C  38 61 01 08 */	addi r3, r1, 0x108
/* 8000DBB0 00008930  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8000DBB4 00008934  38 80 00 59 */	li r4, 0x59
/* 8000DBB8 00008938  EC 21 00 32 */	fmuls f1, f1, f0
/* 8000DBBC 0000893C  48 15 DF E1 */	bl calculateAndStoreData
/* 8000DBC0 00008940  38 61 01 08 */	addi r3, r1, 0x108
/* 8000DBC4 00008944  38 81 01 38 */	addi r4, r1, 0x138
/* 8000DBC8 00008948  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 8000DBCC 0000894C  48 15 DC F5 */	bl PSMTXConcat
/* 8000DBD0 00008950  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8000DBD4 00008954  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8000DBD8 00008958  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8000DBDC 0000895C  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 8000DBE0 00008960  48 15 E1 FD */	bl PSMTXTrans
/* 8000DBE4 00008964  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8000DBE8 00008968  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8000DBEC 0000896C  38 A1 01 68 */	addi r5, r1, 0x168
/* 8000DBF0 00008970  48 15 DC D1 */	bl PSMTXConcat
/* 8000DBF4 00008974  81 5F 03 28 */	lwz r10, 0x328(r31)
/* 8000DBF8 00008978  38 81 00 24 */	addi r4, r1, 0x24
/* 8000DBFC 0000897C  81 3F 03 2C */	lwz r9, 0x32c(r31)
/* 8000DC00 00008980  7C 85 23 78 */	mr r5, r4
/* 8000DC04 00008984  81 1F 03 30 */	lwz r8, 0x330(r31)
/* 8000DC08 00008988  38 61 01 68 */	addi r3, r1, 0x168
/* 8000DC0C 0000898C  80 FF 03 34 */	lwz r7, 0x334(r31)
/* 8000DC10 00008990  80 DF 03 38 */	lwz r6, 0x338(r31)
/* 8000DC14 00008994  80 1F 03 3C */	lwz r0, 0x33c(r31)
/* 8000DC18 00008998  91 41 00 24 */	stw r10, 0x24(r1)
/* 8000DC1C 0000899C  91 21 00 28 */	stw r9, 0x28(r1)
/* 8000DC20 000089A0  91 01 00 2C */	stw r8, 0x2c(r1)
/* 8000DC24 000089A4  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8000DC28 000089A8  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8000DC2C 000089AC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8000DC30 000089B0  48 15 E6 91 */	bl PSMTXMultVec
/* 8000DC34 000089B4  38 61 01 68 */	addi r3, r1, 0x168
/* 8000DC38 000089B8  7C 64 1B 78 */	mr r4, r3
/* 8000DC3C 000089BC  48 15 DD A1 */	bl PSMTXInverse
/* 8000DC40 000089C0  38 61 01 68 */	addi r3, r1, 0x168
/* 8000DC44 000089C4  7C 64 1B 78 */	mr r4, r3
/* 8000DC48 000089C8  48 15 DD 45 */	bl copy_quad_float_to_mem
/* 8000DC4C 000089CC  38 81 00 18 */	addi r4, r1, 0x18
/* 8000DC50 000089D0  38 61 01 68 */	addi r3, r1, 0x168
/* 8000DC54 000089D4  7C 85 23 78 */	mr r5, r4
/* 8000DC58 000089D8  48 15 E6 69 */	bl PSMTXMultVec
/* 8000DC5C 000089DC  38 61 00 18 */	addi r3, r1, 0x18
/* 8000DC60 000089E0  7C 64 1B 78 */	mr r4, r3
/* 8000DC64 000089E4  48 15 E9 F9 */	bl normalize_vector3d
/* 8000DC68 000089E8  38 61 00 78 */	addi r3, r1, 0x78
/* 8000DC6C 000089EC  38 81 00 24 */	addi r4, r1, 0x24
/* 8000DC70 000089F0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8000DC74 000089F4  48 15 E2 69 */	bl zz_8016bedc_
/* 8000DC78 000089F8  7F C3 F3 78 */	mr r3, r30
/* 8000DC7C 000089FC  81 9E 33 34 */	lwz r12, 0x3334(r30)
/* 8000DC80 00008A00  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8000DC84 00008A04  7D 89 03 A6 */	mtctr r12
/* 8000DC88 00008A08  4E 80 04 21 */	bctrl
/* 8000DC8C 00008A0C  38 63 00 E8 */	addi r3, r3, 0xe8
/* 8000DC90 00008A10  38 81 00 78 */	addi r4, r1, 0x78
/* 8000DC94 00008A14  38 A1 00 48 */	addi r5, r1, 0x48
/* 8000DC98 00008A18  48 15 DC 29 */	bl PSMTXConcat
/* 8000DC9C 00008A1C  7F DA F3 78 */	mr r26, r30
/* 8000DCA0 00008A20  3F 9E 00 01 */	addis r28, r30, 0x1
/* 8000DCA4 00008A24  3B E0 00 00 */	li r31, 0x0
/* 8000DCA8 00008A28  3F A0 00 20 */	lis r29, 0x20
/* 8000DCAC 00008A2C  48 00 00 80 */	b func_8000DD2C
lbl_8000DCB0:
/* 8000DCB0 00008A30  3C 7A 00 01 */	addis r3, r26, 0x1
/* 8000DCB4 00008A34  38 A0 00 00 */	li r5, 0x0
/* 8000DCB8 00008A38  83 63 C0 74 */	lwz r27, -0x3f8c(r3)
/* 8000DCBC 00008A3C  80 1B 02 28 */	lwz r0, 0x228(r27)
/* 8000DCC0 00008A40  80 DB 02 2C */	lwz r6, 0x22c(r27)
/* 8000DCC4 00008A44  7C 04 28 38 */	and r4, r0, r5
/* 8000DCC8 00008A48  7C C0 E8 38 */	and r0, r6, r29
/* 8000DCCC 00008A4C  7C 03 2A 78 */	xor r3, r0, r5
/* 8000DCD0 00008A50  7C 80 2A 78 */	xor r0, r4, r5
/* 8000DCD4 00008A54  7C 60 03 79 */	or. r0, r3, r0
/* 8000DCD8 00008A58  40 82 00 4C */	bne lbl_8000DD24
/* 8000DCDC 00008A5C  3C 60 20 00 */	lis r3, 0x2000
/* 8000DCE0 00008A60  7C 80 2A 78 */	xor r0, r4, r5
/* 8000DCE4 00008A64  7C C3 18 38 */	and r3, r6, r3
/* 8000DCE8 00008A68  7C 63 2A 78 */	xor r3, r3, r5
/* 8000DCEC 00008A6C  7C 60 03 79 */	or. r0, r3, r0
/* 8000DCF0 00008A70  41 82 00 34 */	beq lbl_8000DD24
/* 8000DCF4 00008A74  7F 63 DB 78 */	mr r3, r27
/* 8000DCF8 00008A78  38 80 00 01 */	li r4, 0x1
/* 8000DCFC 00008A7C  81 9B 00 34 */	lwz r12, 0x34(r27)
/* 8000DD00 00008A80  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8000DD04 00008A84  7D 89 03 A6 */	mtctr r12
/* 8000DD08 00008A88  4E 80 04 21 */	bctrl
/* 8000DD0C 00008A8C  7F 63 DB 78 */	mr r3, r27
/* 8000DD10 00008A90  38 81 00 48 */	addi r4, r1, 0x48
/* 8000DD14 00008A94  81 9B 00 34 */	lwz r12, 0x34(r27)
/* 8000DD18 00008A98  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8000DD1C 00008A9C  7D 89 03 A6 */	mtctr r12
/* 8000DD20 00008AA0  4E 80 04 21 */	bctrl
lbl_8000DD24:
/* 8000DD24 00008AA4  3B 5A 00 04 */	addi r26, r26, 0x4
/* 8000DD28 00008AA8  3B FF 00 01 */	addi r31, r31, 0x1

.global func_8000DD2C
func_8000DD2C:
/* 8000DD2C 00008AAC  80 1C D8 74 */	lwz r0, -0x278c(r28)
/* 8000DD30 00008AB0  7C 1F 00 00 */	cmpw r31, r0
/* 8000DD34 00008AB4  41 80 FF 7C */	blt lbl_8000DCB0
/* 8000DD38 00008AB8  3C 7E 00 0E */	addis r3, r30, 0xe
/* 8000DD3C 00008ABC  83 43 7E 20 */	lwz r26, 0x7e20(r3)
/* 8000DD40 00008AC0  48 00 00 2C */	b func_8000DD6C
lbl_8000DD44:
/* 8000DD44 00008AC4  7F 43 D3 78 */	mr r3, r26
/* 8000DD48 00008AC8  C0 1A 00 DC */	lfs f0, 0xdc(r26)
/* 8000DD4C 00008ACC  81 9A 03 54 */	lwz r12, 0x354(r26)
/* 8000DD50 00008AD0  FC 40 00 50 */	fneg f2, f0
/* 8000DD54 00008AD4  C0 3A 00 D8 */	lfs f1, 0xd8(r26)
/* 8000DD58 00008AD8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8000DD5C 00008ADC  C0 7A 00 E0 */	lfs f3, 0xe0(r26)
/* 8000DD60 00008AE0  7D 89 03 A6 */	mtctr r12
/* 8000DD64 00008AE4  4E 80 04 21 */	bctrl
/* 8000DD68 00008AE8  83 5A 00 0C */	lwz r26, 0xc(r26)

.global func_8000DD6C
func_8000DD6C:
/* 8000DD6C 00008AEC  28 1A 00 00 */	cmplwi r26, 0x0
/* 8000DD70 00008AF0  40 82 FF D4 */	bne lbl_8000DD44
/* 8000DD74 00008AF4  7F C3 F3 78 */	mr r3, r30
/* 8000DD78 00008AF8  81 9E 33 34 */	lwz r12, 0x3334(r30)
/* 8000DD7C 00008AFC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8000DD80 00008B00  7D 89 03 A6 */	mtctr r12
/* 8000DD84 00008B04  4E 80 04 21 */	bctrl
/* 8000DD88 00008B08  3C BE 00 0E */	addis r5, r30, 0xe
/* 8000DD8C 00008B0C  7C 64 1B 78 */	mr r4, r3
/* 8000DD90 00008B10  80 65 7E 20 */	lwz r3, 0x7e20(r5)
/* 8000DD94 00008B14  48 18 58 A1 */	bl zz_80193634_
/* 8000DD98 00008B18  7F C3 F3 78 */	mr r3, r30
/* 8000DD9C 00008B1C  48 18 BB A9 */	bl post_physics_update
/* 8000DDA0 00008B20  7F DA F3 78 */	mr r26, r30
/* 8000DDA4 00008B24  3F BE 00 01 */	addis r29, r30, 0x1
/* 8000DDA8 00008B28  3B E0 00 00 */	li r31, 0x0
/* 8000DDAC 00008B2C  3F 80 00 20 */	lis r28, 0x20
/* 8000DDB0 00008B30  48 00 00 64 */	b func_8000DE14
lbl_8000DDB4:
/* 8000DDB4 00008B34  3C 7A 00 01 */	addis r3, r26, 0x1
/* 8000DDB8 00008B38  38 C0 00 00 */	li r6, 0x0
/* 8000DDBC 00008B3C  80 63 C0 74 */	lwz r3, -0x3f8c(r3)
/* 8000DDC0 00008B40  80 03 02 28 */	lwz r0, 0x228(r3)
/* 8000DDC4 00008B44  80 E3 02 2C */	lwz r7, 0x22c(r3)
/* 8000DDC8 00008B48  7C 05 30 38 */	and r5, r0, r6
/* 8000DDCC 00008B4C  7C E0 E0 38 */	and r0, r7, r28
/* 8000DDD0 00008B50  7C 04 32 78 */	xor r4, r0, r6
/* 8000DDD4 00008B54  7C A0 32 78 */	xor r0, r5, r6
/* 8000DDD8 00008B58  7C 80 03 79 */	or. r0, r4, r0
/* 8000DDDC 00008B5C  40 82 00 30 */	bne lbl_8000DE0C
/* 8000DDE0 00008B60  3C 80 20 00 */	lis r4, 0x2000
/* 8000DDE4 00008B64  7C A0 32 78 */	xor r0, r5, r6
/* 8000DDE8 00008B68  7C E4 20 38 */	and r4, r7, r4
/* 8000DDEC 00008B6C  7C 84 32 78 */	xor r4, r4, r6
/* 8000DDF0 00008B70  7C 80 03 79 */	or. r0, r4, r0
/* 8000DDF4 00008B74  41 82 00 18 */	beq lbl_8000DE0C
/* 8000DDF8 00008B78  81 83 00 34 */	lwz r12, 0x34(r3)
/* 8000DDFC 00008B7C  38 80 00 02 */	li r4, 0x2
/* 8000DE00 00008B80  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8000DE04 00008B84  7D 89 03 A6 */	mtctr r12
/* 8000DE08 00008B88  4E 80 04 21 */	bctrl
lbl_8000DE0C:
/* 8000DE0C 00008B8C  3B 5A 00 04 */	addi r26, r26, 0x4
/* 8000DE10 00008B90  3B FF 00 01 */	addi r31, r31, 0x1

.global func_8000DE14
func_8000DE14:
/* 8000DE14 00008B94  80 1D D8 74 */	lwz r0, -0x278c(r29)
/* 8000DE18 00008B98  7C 1F 00 00 */	cmpw r31, r0
/* 8000DE1C 00008B9C  41 80 FF 98 */	blt lbl_8000DDB4
lbl_8000DE20:
/* 8000DE20 00008BA0  80 9E 1B 10 */	lwz r4, 0x1b10(r30)
/* 8000DE24 00008BA4  3C 00 00 20 */	lis r0, 0x20
/* 8000DE28 00008BA8  80 BE 1B 14 */	lwz r5, 0x1b14(r30)
/* 8000DE2C 00008BAC  3C 60 02 00 */	lis r3, 0x200
/* 8000DE30 00008BB0  7C 84 00 38 */	and r4, r4, r0
/* 8000DE34 00008BB4  38 00 00 00 */	li r0, 0x0
/* 8000DE38 00008BB8  7C A3 18 38 */	and r3, r5, r3
/* 8000DE3C 00008BBC  7C 63 02 78 */	xor r3, r3, r0
/* 8000DE40 00008BC0  7C 80 02 78 */	xor r0, r4, r0
/* 8000DE44 00008BC4  7C 60 03 79 */	or. r0, r3, r0
/* 8000DE48 00008BC8  41 82 01 1C */	beq lbl_8000DF64
/* 8000DE4C 00008BCC  7F C3 F3 78 */	mr r3, r30
/* 8000DE50 00008BD0  81 9E 33 34 */	lwz r12, 0x3334(r30)
/* 8000DE54 00008BD4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8000DE58 00008BD8  7D 89 03 A6 */	mtctr r12
/* 8000DE5C 00008BDC  4E 80 04 21 */	bctrl
/* 8000DE60 00008BE0  90 7E 00 44 */	stw r3, 0x44(r30)
/* 8000DE64 00008BE4  7F C3 F3 78 */	mr r3, r30
/* 8000DE68 00008BE8  48 18 BB 15 */	bl zz_8019997c_
/* 8000DE6C 00008BEC  28 03 00 00 */	cmplwi r3, 0x0
/* 8000DE70 00008BF0  41 82 00 F4 */	beq lbl_8000DF64
/* 8000DE74 00008BF4  3C 60 80 26 */	lis r3, lbl_8025C400@ha
/* 8000DE78 00008BF8  3B E3 C4 00 */	addi r31, r3, lbl_8025C400@l
/* 8000DE7C 00008BFC  80 7F 02 90 */	lwz r3, 0x290(r31)
/* 8000DE80 00008C00  28 03 00 00 */	cmplwi r3, 0x0
/* 8000DE84 00008C04  41 82 00 0C */	beq lbl_8000DE90
/* 8000DE88 00008C08  38 80 00 01 */	li r4, 0x1
/* 8000DE8C 00008C0C  48 18 D3 ED */	bl handleGraphicsSettingsUpdates
lbl_8000DE90:
/* 8000DE90 00008C10  80 7F 02 94 */	lwz r3, 0x294(r31)
/* 8000DE94 00008C14  28 03 00 00 */	cmplwi r3, 0x0
/* 8000DE98 00008C18  41 82 00 0C */	beq lbl_8000DEA4
/* 8000DE9C 00008C1C  38 80 00 01 */	li r4, 0x1
/* 8000DEA0 00008C20  48 18 D0 31 */	bl updateTevStagesAndTexCoords
lbl_8000DEA4:
/* 8000DEA4 00008C24  80 7F 02 98 */	lwz r3, 0x298(r31)
/* 8000DEA8 00008C28  28 03 00 00 */	cmplwi r3, 0x0
/* 8000DEAC 00008C2C  41 82 00 0C */	beq lbl_8000DEB8
/* 8000DEB0 00008C30  38 80 00 01 */	li r4, 0x1
/* 8000DEB4 00008C34  48 18 CF E1 */	bl process_and_update_params_on_condition
lbl_8000DEB8:
/* 8000DEB8 00008C38  80 7F 02 90 */	lwz r3, 0x290(r31)
/* 8000DEBC 00008C3C  38 80 00 01 */	li r4, 0x1
/* 8000DEC0 00008C40  38 A0 00 07 */	li r5, 0x7
/* 8000DEC4 00008C44  38 C0 00 01 */	li r6, 0x1
/* 8000DEC8 00008C48  48 18 D5 9D */	bl set_parameters
/* 8000DECC 00008C4C  80 7F 02 90 */	lwz r3, 0x290(r31)
/* 8000DED0 00008C50  38 80 00 00 */	li r4, 0x0
/* 8000DED4 00008C54  48 18 D7 75 */	bl updateByteValueBasedOnChar
/* 8000DED8 00008C58  3C 80 80 21 */	lis r4, lbl_8020FBE0@ha
/* 8000DEDC 00008C5C  3C 60 80 26 */	lis r3, lbl_8025C400@ha
/* 8000DEE0 00008C60  39 04 FB E0 */	addi r8, r4, lbl_8020FBE0@l
/* 8000DEE4 00008C64  38 A0 00 00 */	li r5, 0x0
/* 8000DEE8 00008C68  C0 08 00 20 */	lfs f0, 0x20(r8)
/* 8000DEEC 00008C6C  38 80 00 00 */	li r4, 0x0
/* 8000DEF0 00008C70  38 63 C4 00 */	addi r3, r3, lbl_8025C400@l
/* 8000DEF4 00008C74  38 C0 00 00 */	li r6, 0x0
/* 8000DEF8 00008C78  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8000DEFC 00008C7C  38 E0 00 00 */	li r7, 0x0
/* 8000DF00 00008C80  C0 08 00 24 */	lfs f0, 0x24(r8)
/* 8000DF04 00008C84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8000DF08 00008C88  C0 08 00 28 */	lfs f0, 0x28(r8)
/* 8000DF0C 00008C8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8000DF10 00008C90  C0 08 00 2C */	lfs f0, 0x2c(r8)
/* 8000DF14 00008C94  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8000DF18 00008C98  C0 28 00 00 */	lfs f1, 0x0(r8)
/* 8000DF1C 00008C9C  C0 48 00 04 */	lfs f2, 0x4(r8)
/* 8000DF20 00008CA0  C0 68 00 08 */	lfs f3, 0x8(r8)
/* 8000DF24 00008CA4  C0 88 00 0C */	lfs f4, 0xc(r8)
/* 8000DF28 00008CA8  C0 A8 00 10 */	lfs f5, 0x10(r8)
/* 8000DF2C 00008CAC  C0 C8 00 14 */	lfs f6, 0x14(r8)
/* 8000DF30 00008CB0  C0 E8 00 18 */	lfs f7, 0x18(r8)
/* 8000DF34 00008CB4  C1 08 00 1C */	lfs f8, 0x1c(r8)
/* 8000DF38 00008CB8  48 18 A6 DD */	bl UpdateRenderingSettings
/* 8000DF3C 00008CBC  80 7F 02 90 */	lwz r3, 0x290(r31)
/* 8000DF40 00008CC0  38 80 00 01 */	li r4, 0x1
/* 8000DF44 00008CC4  38 A0 00 03 */	li r5, 0x3
/* 8000DF48 00008CC8  38 C0 00 00 */	li r6, 0x0
/* 8000DF4C 00008CCC  48 18 D5 19 */	bl set_parameters
/* 8000DF50 00008CD0  80 7F 02 90 */	lwz r3, 0x290(r31)
/* 8000DF54 00008CD4  38 80 00 01 */	li r4, 0x1
/* 8000DF58 00008CD8  48 18 D6 F1 */	bl updateByteValueBasedOnChar
/* 8000DF5C 00008CDC  7F C3 F3 78 */	mr r3, r30
/* 8000DF60 00008CE0  48 18 B9 E5 */	bl post_physics_update
lbl_8000DF64:
/* 8000DF64 00008CE4  BB 41 01 98 */	lmw r26, 0x198(r1)
/* 8000DF68 00008CE8  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8000DF6C 00008CEC  7C 08 03 A6 */	mtlr r0
/* 8000DF70 00008CF0  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8000DF74 00008CF4  4E 80 00 20 */	blr

.global setPositionOfObject
setPositionOfObject:
/* 8000DF78 00008CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000DF7C 00008CFC  7C 08 02 A6 */	mflr r0
/* 8000DF80 00008D00  38 83 00 D8 */	addi r4, r3, 0xd8
/* 8000DF84 00008D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000DF88 00008D08  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 8000DF8C 00008D0C  D0 43 00 DC */	stfs f2, 0xdc(r3)
/* 8000DF90 00008D10  D0 63 00 E0 */	stfs f3, 0xe0(r3)
/* 8000DF94 00008D14  48 1B 0A 35 */	bl zz_801be9c8_
/* 8000DF98 00008D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000DF9C 00008D1C  7C 08 03 A6 */	mtlr r0
/* 8000DFA0 00008D20  38 21 00 10 */	addi r1, r1, 0x10
/* 8000DFA4 00008D24  4E 80 00 20 */	blr