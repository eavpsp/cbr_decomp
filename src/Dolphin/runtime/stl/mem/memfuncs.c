#include <stddef.h>
#include <types.h>
//.global __fill_mem
//__fill_mem:
//* 800050E4 000020E4  28 05 00 20 */	cmplwi r5, 0x20
//* 800050E8 000020E8  54 84 06 3E */	clrlwi r4, r4, 24
//* 800050EC 000020EC  38 C3 FF FF */	addi r6, r3, -0x1
//* 800050F0 000020F0  7C 87 23 78 */	mr r7, r4
//* 800050F4 000020F4  41 80 00 90 */	blt lbl_80005184
//* 800050F8 000020F8  7C C0 30 F8 */	nor r0, r6, r6
//* 800050FC 000020FC  54 03 07 BF */	clrlwi. r3, r0, 30
//* 80005100 00002100  41 82 00 14 */	beq lbl_80005114
//* 80005104 00002104  7C A3 28 50 */	subf r5, r3, r5
//lbl_80005108:
//* 80005108 00002108  34 63 FF FF */	addic. r3, r3, -0x1
//* 8000510C 0000210C  9C E6 00 01 */	stbu r7, 0x1(r6)
//* 80005110 00002110  40 82 FF F8 */	bne lbl_80005108
//lbl_80005114:
//* 80005114 00002114  28 07 00 00 */	cmplwi r7, 0x0
//* 80005118 00002118  41 82 00 1C */	beq lbl_80005134
//* 8000511C 0000211C  54 E3 C0 0E */	slwi r3, r7, 24
//* 80005120 00002120  54 E0 80 1E */	slwi r0, r7, 16
//* 80005124 00002124  54 E4 40 2E */	slwi r4, r7, 8
//* 80005128 00002128  7C 60 03 78 */	or r0, r3, r0
//* 8000512C 0000212C  7C 80 03 78 */	or r0, r4, r0
//* 80005130 00002130  7C E7 03 78 */	or r7, r7, r0
//lbl_80005134:
//* 80005134 00002134  54 A3 D9 7F */	srwi. r3, r5, 5
//* 80005138 00002138  38 86 FF FD */	addi r4, r6, -0x3
//* 8000513C 0000213C  41 82 00 2C */	beq lbl_80005168
//lbl_80005140:
//* 80005140 00002140  90 E4 00 04 */	stw r7, 0x4(r4)
//* 80005144 00002144  34 63 FF FF */	addic. r3, r3, -0x1
//* 80005148 00002148  90 E4 00 08 */	stw r7, 0x8(r4)
//* 8000514C 0000214C  90 E4 00 0C */	stw r7, 0xc(r4)
//* 80005150 00002150  90 E4 00 10 */	stw r7, 0x10(r4)
//* 80005154 00002154  90 E4 00 14 */	stw r7, 0x14(r4)
//* 80005158 00002158  90 E4 00 18 */	stw r7, 0x18(r4)
//* 8000515C 0000215C  90 E4 00 1C */	stw r7, 0x1c(r4)
//* 80005160 00002160  94 E4 00 20 */	stwu r7, 0x20(r4)
//* 80005164 00002164  40 82 FF DC */	bne lbl_80005140
//lbl_80005168:
//* 80005168 00002168  54 A3 F7 7F */	rlwinm. r3, r5, 30, 29, 31
//* 8000516C 0000216C  41 82 00 10 */	beq lbl_8000517C
//lbl_80005170:
//* 80005170 00002170  34 63 FF FF */	addic. r3, r3, -0x1
//* 80005174 00002174  94 E4 00 04 */	stwu r7, 0x4(r4)
//* 80005178 00002178  40 82 FF F8 */	bne lbl_80005170
//lbl_8000517C:
//* 8000517C 0000217C  38 C4 00 03 */	addi r6, r4, 0x3
//* 80005180 00002180  54 A5 07 BE */	clrlwi r5, r5, 30
//lbl_80005184:
//* 80005184 00002184  28 05 00 00 */	cmplwi r5, 0x0
//* 80005188 00002188  4D 82 00 20 */	beqlr
//lbl_8000518C:
//* 8000518C 0000218C  34 A5 FF FF */	addic. r5, r5, -0x1
//* 80005190 00002190  9C E6 00 01 */	stbu r7, 0x1(r6)
//* 80005194 00002194  40 82 FF F8 */	bne lbl_8000518C
//* 80005198 00002198  4E 80 00 20 */	blr

DECL_SECT(".init")  void __fill_mem(void* dst, int val, u32 n)//Done with Optimizations (-2 lines)
{
	u32 v = (u8)val;
	u32 i;

	(u8*)dst--;

	if (n >= 32) {
		i = (~(u32)dst) & 3;

		if (i) {
			n -= i;

			do
				*((((u8*)dst)) + 1) = v;
			while (--i);
		}

		if (v)
			v |= v << 24 | v << 16 | v << 8;

		*(u32*)dst = ((u32*)dst++) - 1;

		i = n >> 5;

		if (i)
			do {
				*((((u32*)dst)) + 1) = v;
				*((((u32*)dst)) + 1) = v;
				*((((u32*)dst)) + 1) = v;
				*((((u32*)dst)) + 1) = v;
				*((((u32*)dst)) + 1) = v;
				*((((u32*)dst)) + 1) = v;
				*((((u32*)dst)) + 1) = v;
				*((((u32*)dst)) + 1) = v;
			} while (--i);

			i = (n & 31) >> 2;

			if (i)
				do
					*(((u32*)dst)) = v;
			while (--i);

			*(u32*)dst = ((u32*)dst++) - 1;


			n &= 3;
	}

	if (n)
		do
			*((((u8*)dst)) + 1) = v;
	while (--n);

	return;
}


DECL_SECT(".init") void* memcpy(void* dest, const void* src, size_t n);
void* memcpy(void* dst, const void* src, size_t n) //Done
{
	const char* p;
	char* q;
	int rev = ((u32)src < (u32)dst);

	if (!rev) {

		for (p = (const char*)src - 1, q = (char*)dst - 1, n++; --n;)
			*++q = *++p;

	} else {
		for (p = (const char*)src + n, q = (char*)dst + n, n++; --n;)
			*--q = *--p;
	}
	return (dst);
}
//.global memcpy
//memcpy:
//* 8000519C 0000219C  7C 04 18 40 */	cmplw r4, r3
//* 800051A0 000021A0  41 80 00 28 */	blt lbl_800051C8
//* 800051A4 000021A4  38 84 FF FF */	addi r4, r4, -0x1
//* 800051A8 000021A8  38 C3 FF FF */	addi r6, r3, -0x1
//* 800051AC 000021AC  38 A5 00 01 */	addi r5, r5, 0x1
//* 800051B0 000021B0  48 00 00 0C */	b func_800051BC
//lbl_800051B4:
//* 800051B4 000021B4  8C 04 00 01 */	lbzu r0, 0x1(r4)
//* 800051B8 000021B8  9C 06 00 01 */	stbu r0, 0x1(r6)
//.global func_800051BC
//func_800051BC:
//* 800051BC 000021BC  34 A5 FF FF */	addic. r5, r5, -0x1
//* 800051C0 000021C0  40 82 FF F4 */	bne lbl_800051B4
//* 800051C4 000021C4  4E 80 00 20 */	blr
//lbl_800051C8:
//* 800051C8 000021C8  7C 84 2A 14 */	add r4, r4, r5
//* 800051CC 000021CC  7C C3 2A 14 */	add r6, r3, r5
//* 800051D0 000021D0  38 A5 00 01 */	addi r5, r5, 0x1
//* 800051D4 000021D4  48 00 00 0C */	b func_800051E0
//lbl_800051D8:
//* 800051D8 000021D8  8C 04 FF FF */	lbzu r0, -0x1(r4)
//* 800051DC 000021DC  9C 06 FF FF */	stbu r0, -0x1(r6)

//.global func_800051E0
//func_800051E0:
//* 800051E0 000021E0  34 A5 FF FF */	addic. r5, r5, -0x1
//* 800051E4 000021E4  40 82 FF F4 */	bne lbl_800051D8
//* 800051E8 000021E8  4E 80 00 20 */	blr