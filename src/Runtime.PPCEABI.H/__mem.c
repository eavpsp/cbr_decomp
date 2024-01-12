#include <__mem.h>
#include <Dolphin/os.h>
/*Built in Test then optimized output asm*/
/*In Build*/

//.global TRK_memset
//TRK_memset :
//* 80003100 00000100  94 21 FF F0 */	stwu r1, -0x10(r1)
//* 80003104 00000104  7C 08 02 A6 */	mflr r0
//* 80003108 00000108  90 01 00 14 */	stw r0, 0x14(r1)
//* 8000310C 0000010C  93 E1 00 0C */	stw r31, 0xc(r1)
//* 80003110 00000110  7C 7F 1B 78 */	mr r31, r3
//* 80003114 00000114  48 14 A4 49 */	bl TRK_fill_mem
//* 80003118 00000118  80 01 00 14 */	lwz r0, 0x14(r1)
//* 8000311C 0000011C  7F E3 FB 78 */	mr r3, r31
//* 80003120 00000120  83 E1 00 0C */	lwz r31, 0xc(r1)
//* 80003124 00000124  7C 08 03 A6 */	mtlr r0
//* 80003128 00000128  38 21 00 10 */	addi r1, r1, 0x10
//* 8000312C 0000012C  4E 80 00 20 */	blr


void* TRK_memset(void* dst, uint val, uint n)//Done with Optimizations
{
	TRK_fill_mem(dst, val, n);
	return dst; 
}

//.global TRK_memcpy
//TRK_memcpy :
//* 80003130 00000130  38 84 FF FF */	addi r4, r4, -0x1
//* 80003134 00000134  38 C3 FF FF */	addi r6, r3, -0x1
//* 80003138 00000138  38 A5 00 01 */	addi r5, r5, 0x1
//* 8000313C 0000013C  48 00 00 0C */	b gTRKInterruptVectorTableFunc
//lbl_80003140 :
//* 80003140 00000140  8C 04 00 01 */	lbzu r0, 0x1(r4)
//* 80003144 00000144  9C 06 00 01 */	stbu r0, 0x1(r6)
//.global gTRKInterruptVectorTableFunc
//gTRKInterruptVectorTableFunc :
//* 80003148 00000148  34 A5 FF FF */	addic.r5, r5, -0x1
//* 8000314C 0000014C  40 82 FF F4 */	bne lbl_80003140
//* 80003150 00000150  4E 80 00 20 */	blr
void* TRK_memcpy(void* dst, const void* src, size_t n) //Done with Optimizations
{
	const u8* s = (const u8*)src - 1;
	u8* d = (u8*)dst - 1;
	n++;
	while (--n > 0)
		*++d = *++s;
	return dst;
}

//
//.global __TRK_reset
//__TRK_reset :
//* 80005088 00002088  94 21 FF F0 */	stwu r1, -0x10(r1)
//* 8000508C 0000208C  7C 08 02 A6 */	mflr r0
//* 80005090 00002090  38 60 00 00 */	li r3, 0x0
//* 80005094 00002094  38 80 00 00 */	li r4, 0x0
//* 80005098 00002098  90 01 00 14 */	stw r0, 0x14(r1)
//* 8000509C 0000209C  38 A0 00 00 */	li r5, 0x0
//* 800050A0 000020A0  48 16 38 3D */	bl OSReset
//* 800050A4 000020A4  80 01 00 14 */	lwz r0, 0x14(r1)
//* 800050A8 000020A8  7C 08 03 A6 */	mtlr r0
//* 800050AC 000020AC  38 21 00 10 */	addi r1, r1, 0x10
//* 800050B0 000020B0  4E 80 00 20 */	blr
//DECL_SECT(".init") void __TRK_reset() { OSReset(FALSE, 0, FALSE); }//Done
