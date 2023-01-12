.include "macros.s"

.section .dtors, "wa"  # 0x801FD6C0 - 0x801FD6E0 ; 0x00000020


.global lbl_801FD6C0
lbl_801FD6C0:

	# ROM: 0x1FA6C0
	.4byte func_80150E18
	.4byte lbl_80151BAC
	.4byte func_80150E18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
