.include "macros.s"

.section .text, "ax"  # 0x80007880 - 0x801FD660 ; 0x001F5DE0
.global CBGetBytesAvailableForRead
CBGetBytesAvailableForRead:
.LFB0:
	.cfi_startproc
	lwz 3,16(3)
	blr
	.cfi_endproc