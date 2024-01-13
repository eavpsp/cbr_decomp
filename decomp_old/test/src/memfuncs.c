#include <stddef.h>
#include <types.h>
DECL_SECT(".init") void* memcpy(void* dest, const void* src, size_t n);
void* memcpy(void* dst, const void* src, size_t n)
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

