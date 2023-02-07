.include "macros.s"

.section .ctors, "wa"  # 0x801FD660 - 0x801FD6C0 ; 0x00000060


.global lbl_801FD660
lbl_801FD660:

	# ROM: 0x1FA660
	.4byte __init_cpp_exceptions
	.4byte zz_8001933c_
	.4byte zz_80031004_
	.4byte zz_80062b6c_
	.4byte zz_8006daf4_
	.4byte zz_8006f94c_
	.4byte zz_8007f664_
	.4byte zz_8008a314_
	.4byte zz_800e2520_
	.4byte zz_800e68d8_
	.4byte zz_800ea2c0_
	.4byte zz_800f48c0_
	.4byte zz_800fffa0_
	.4byte zz_8010697c_
	.4byte zz_801152a0_
	.4byte zz_80135010_
	.4byte zz_80138154_
	.4byte zz_8014232c_
	.4byte __sinit_GameTweaks_cpp
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
