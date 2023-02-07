.include "macros.s"

.section extab_, "wa"  # 0x80005600 - 0x80006680 ; 0x00001080


.global lbl_80005600
lbl_80005600:

	# ROM: 0x1F83E0
	.4byte 0x10180000
	.4byte 0x00000040
	.4byte 0x00000018
	.4byte 0x0000004C
	.4byte 0x00000024
	.4byte 0
	.4byte 0x8F000000
	.4byte 0x00000044
	.4byte 0x00000008
	.4byte 0x8D000008

.global lbl_80005628
lbl_80005628:

	# ROM: 0x1F8408
	.4byte 0x08180000
	.4byte 0x00000020
	.4byte 0x00000018
	.4byte 0x0000002C
	.4byte 0x00000024
	.4byte 0
	.4byte 0x8F000000
	.4byte 0x00000024
	.4byte 0x00000008
	.4byte 0x8D000008

.global lbl_80005650
lbl_80005650:

	# ROM: 0x1F8430
	.4byte 0x20080000
	.4byte 0

.global lbl_80005658
lbl_80005658:

	# ROM: 0x1F8438
	.4byte 0x20080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0
	.4byte 0x82000008
	.4byte __partial_array_destructor____dt_void_

.global lbl_80005670
lbl_80005670:

	# ROM: 0x1F8450
	.4byte 0x18080000
	.4byte 0

.global lbl_80005678
lbl_80005678:

	# ROM: 0x1F8458
	.4byte 0x00080000
	.4byte 0

.global lbl_80005680
lbl_80005680:

	# ROM: 0x1F8460
	.4byte 0x00080000
	.4byte 0

.global lbl_80005688
lbl_80005688:

	# ROM: 0x1F8468
	.4byte 0x00080000
	.4byte 0

.global lbl_80005690
lbl_80005690:

	# ROM: 0x1F8470
	.4byte 0x00080000
	.4byte 0

.global lbl_80005698
lbl_80005698:

	# ROM: 0x1F8478
	.4byte 0x00080000
	.4byte 0

.global lbl_800056A0
lbl_800056A0:

	# ROM: 0x1F8480
	.4byte 0x30080000
	.4byte 0x00000270
	.4byte 0x00100010
	.4byte 0
	.4byte 0x8E003030

.global lbl_800056B4
lbl_800056B4:

	# ROM: 0x1F8494
	.4byte 0x30180000
	.4byte 0x00000028
	.4byte 0x00000018
	.4byte 0x0000004C
	.4byte 0x004C0028
	.4byte 0
	.4byte 0x90000255
	.4byte 0
	.4byte 0x0000002C
	.4byte 0x0000001C
	.4byte 0x8D00001C

.global lbl_800056E0
lbl_800056E0:

	# ROM: 0x1F84C0
	.4byte 0x08080000
	.4byte 0

.global lbl_800056E8
lbl_800056E8:

	# ROM: 0x1F84C8
	.4byte 0x40080000
	.4byte 0x00000034
	.4byte 0x012C0010
	.4byte 0
	.4byte 0x8E003030

.global lbl_800056FC
lbl_800056FC:

	# ROM: 0x1F84DC
	.4byte 0x10080000
	.4byte 0

.global lbl_80005704
lbl_80005704:

	# ROM: 0x1F84E4
	.4byte 0x00080000
	.4byte 0

.global lbl_8000570C
lbl_8000570C:

	# ROM: 0x1F84EC
	.4byte 0x40CA0000
	.4byte 0x000000C4
	.4byte 0x000001B8
	.4byte 0x000000CC
	.4byte 0x000001B0
	.4byte 0x00000104
	.4byte 0x000001B8
	.4byte 0x00000110
	.4byte 0x000001C8
	.4byte 0x00000190
	.4byte 0x001301DC
	.4byte 0x00000204
	.4byte 0x000001D4
	.4byte 0x00000240
	.4byte 0x00000208
	.4byte 0x00000268
	.4byte 0x00000200
	.4byte 0x00000324
	.4byte 0x002A0224
	.4byte 0x000003F8
	.4byte 0x0004021C
	.4byte 0x00000430
	.4byte 0x00000214
	.4byte 0x00000478
	.4byte 0x0062021C
	.4byte 0x00000610
	.4byte 0x00000248
	.4byte 0x00000620
	.4byte 0x00000240
	.4byte 0x00000674
	.4byte 0x00150224
	.4byte 0x000006D4
	.4byte 0x00000254
	.4byte 0x00000708
	.4byte 0x00000224
	.4byte 0x00000730
	.4byte 0x00000270
	.4byte 0x00000758
	.4byte 0x00000268
	.4byte 0x00000780
	.4byte 0x00000260
	.4byte 0x000007F4
	.4byte 0x0000027C
	.4byte 0x0000086C
	.4byte 0x00150224
	.4byte 0x000008CC
	.4byte 0x00000298
	.4byte 0x00000900
	.4byte 0x00000224
	.4byte 0x00000928
	.4byte 0x000002B4
	.4byte 0x00000950
	.4byte 0x000002AC
	.4byte 0x00000978
	.4byte 0x000002A4
	.4byte 0x000009EC
	.4byte 0x000002C0
	.4byte 0x00000A68
	.4byte 0x00140224
	.4byte 0x00000AC4
	.4byte 0x000002DC
	.4byte 0x00000AF8
	.4byte 0x00000224
	.4byte 0x00000B08
	.4byte 0x000002F0
	.4byte 0x00000B30
	.4byte 0x000002E8
	.4byte 0x00000B70
	.4byte 0x00090224
	.4byte 0x00000BA4
	.4byte 0x000002FC
	.4byte 0x00000BF0
	.4byte 0x00040224
	.4byte 0x00000C28
	.4byte 0x00000308
	.4byte 0x00000C7C
	.4byte 0x0000032C
	.4byte 0x00000CC4
	.4byte 0x0021031C
	.4byte 0x00000D54
	.4byte 0x00040314
	.4byte 0x00000DD0
	.4byte 0x00140224
	.4byte 0x00000E2C
	.4byte 0x00000338
	.4byte 0x00000E60
	.4byte 0x00000224
	.4byte 0x00000E70
	.4byte 0x0000034C
	.4byte 0x00000E98
	.4byte 0x00000344
	.4byte 0x00000ED8
	.4byte 0x00090224
	.4byte 0x00000F0C
	.4byte 0x00000358
	.4byte 0x00000F58
	.4byte 0x00040224
	.4byte 0x00000F90
	.4byte 0x00000364
	.4byte 0x00000FE4
	.4byte 0x00000388
	.4byte 0x0000102C
	.4byte 0x00210378
	.4byte 0x000010BC
	.4byte 0x00040370
	.4byte 0x00001150
	.4byte 0x00160234
	.4byte 0
	.4byte 0x02000590
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200069C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x820006AC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x02000574
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x010001B8
	.4byte 0x02000558
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200065C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200066C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200067C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200068C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x010001B8
	.4byte 0x0200052C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200064C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x010001DC
	.4byte 0x02000500
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200060C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200061C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200062C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0200063C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000208
	.4byte 0x020004D0
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020004E0
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x0100021C
	.4byte 0x020004A4
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x02000450
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x02000478
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x02000488
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x0380001E
	.4byte 0x0414A206
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x03800019
	.4byte 0x0424A206
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x020003F8
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x020003A4
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020003CC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020003DC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x03800018
	.4byte 0x0368A206
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x03800019
	.4byte 0x0378A206
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x0200034C
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x02000320
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x02000330
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x02000300
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x020002D4
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x02000270
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020005DC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020005EC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020005FC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x02000244
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x02000218
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x02000228
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x020001F8
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x020001CC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224
	.4byte 0x02000168
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020005AC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020005BC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x020005CC
	.4byte cHeadTrack____dt_void__N8
	.4byte 0x01000224

.global lbl_80005AA0
lbl_80005AA0:

	# ROM: 0x1F8880
	.4byte 0x014A0000
	.4byte 0

.global lbl_80005AA8
lbl_80005AA8:

	# ROM: 0x1F8888
	.4byte 0x18080000
	.4byte 0

.global lbl_80005AB0
lbl_80005AB0:

	# ROM: 0x1F8890
	.4byte 0x284A0000
	.4byte 0

.global lbl_80005AB8
lbl_80005AB8:

	# ROM: 0x1F8898
	.4byte 0x280A0000
	.4byte 0

.global lbl_80005AC0
lbl_80005AC0:

	# ROM: 0x1F88A0
	.4byte 0x200A0000
	.4byte 0

.global lbl_80005AC8
lbl_80005AC8:

	# ROM: 0x1F88A8
	.4byte 0x18080000
	.4byte 0

.global lbl_80005AD0
lbl_80005AD0:

	# ROM: 0x1F88B0
	.4byte 0x78480000
	.4byte 0

.global lbl_80005AD8
lbl_80005AD8:

	# ROM: 0x1F88B8
	.4byte 0x194A0000
	.4byte 0

.global lbl_80005AE0
lbl_80005AE0:

	# ROM: 0x1F88C0
	.4byte 0x10080000
	.4byte 0

.global lbl_80005AE8
lbl_80005AE8:

	# ROM: 0x1F88C8
	.4byte 0x100A0000
	.4byte 0

.global lbl_80005AF0
lbl_80005AF0:

	# ROM: 0x1F88D0
	.4byte 0x300A0000
	.4byte 0

.global lbl_80005AF8
lbl_80005AF8:

	# ROM: 0x1F88D8
	.4byte 0x08080000
	.4byte 0

.global lbl_80005B00
lbl_80005B00:

	# ROM: 0x1F88E0
	.4byte 0x080A0000
	.4byte 0

.global lbl_80005B08
lbl_80005B08:

	# ROM: 0x1F88E8
	.4byte 0x200A0000
	.4byte 0

.global lbl_80005B10
lbl_80005B10:

	# ROM: 0x1F88F0
	.4byte 0x100A0000
	.4byte 0

.global lbl_80005B18
lbl_80005B18:

	# ROM: 0x1F88F8
	.4byte 0x100A0000
	.4byte 0

.global lbl_80005B20
lbl_80005B20:

	# ROM: 0x1F8900
	.4byte 0x080A0000
	.4byte 0

.global lbl_80005B28
lbl_80005B28:

	# ROM: 0x1F8908
	.4byte 0x38080000
	.4byte 0

.global lbl_80005B30
lbl_80005B30:

	# ROM: 0x1F8910
	.4byte 0x30080000
	.4byte 0

.global lbl_80005B38
lbl_80005B38:

	# ROM: 0x1F8918
	.4byte 0x48080000
	.4byte 0

.global lbl_80005B40
lbl_80005B40:

	# ROM: 0x1F8920
	.4byte 0x08080000
	.4byte 0

.global lbl_80005B48
lbl_80005B48:

	# ROM: 0x1F8928
	.4byte 0x104A0000
	.4byte 0

.global lbl_80005B50
lbl_80005B50:

	# ROM: 0x1F8930
	.4byte 0x10CA0000
	.4byte 0

.global lbl_80005B58
lbl_80005B58:

	# ROM: 0x1F8938
	.4byte 0x18080000
	.4byte 0

.global lbl_80005B60
lbl_80005B60:

	# ROM: 0x1F8940
	.4byte 0x10080000
	.4byte 0

.global lbl_80005B68
lbl_80005B68:

	# ROM: 0x1F8948
	.4byte 0x288A0000
	.4byte 0

.global lbl_80005B70
lbl_80005B70:

	# ROM: 0x1F8950
	.4byte 0x18080000
	.4byte 0

.global lbl_80005B78
lbl_80005B78:

	# ROM: 0x1F8958
	.4byte 0x10080000
	.4byte 0

.global lbl_80005B80
lbl_80005B80:

	# ROM: 0x1F8960
	.4byte 0x18080000
	.4byte 0

.global lbl_80005B88
lbl_80005B88:

	# ROM: 0x1F8968
	.4byte 0x18080000
	.4byte 0

.global lbl_80005B90
lbl_80005B90:

	# ROM: 0x1F8970
	.4byte 0x58080000
	.4byte 0

.global lbl_80005B98
lbl_80005B98:

	# ROM: 0x1F8978
	.4byte 0x00080000
	.4byte 0

.global lbl_80005BA0
lbl_80005BA0:

	# ROM: 0x1F8980
	.4byte 0x10080000
	.4byte 0

.global lbl_80005BA8
lbl_80005BA8:

	# ROM: 0x1F8988
	.4byte 0x00080000
	.4byte 0

.global lbl_80005BB0
lbl_80005BB0:

	# ROM: 0x1F8990
	.4byte 0x00080000
	.4byte 0

.global lbl_80005BB8
lbl_80005BB8:

	# ROM: 0x1F8998
	.4byte 0x00080000
	.4byte 0

.global lbl_80005BC0
lbl_80005BC0:

	# ROM: 0x1F89A0
	.4byte 0x000A0000
	.4byte 0

.global lbl_80005BC8
lbl_80005BC8:

	# ROM: 0x1F89A8
	.4byte 0x08080000
	.4byte 0

.global lbl_80005BD0
lbl_80005BD0:

	# ROM: 0x1F89B0
	.4byte 0x00080000
	.4byte 0

.global lbl_80005BD8
lbl_80005BD8:

	# ROM: 0x1F89B8
	.4byte 0x10080000
	.4byte 0

.global lbl_80005BE0
lbl_80005BE0:

	# ROM: 0x1F89C0
	.4byte 0x08080000
	.4byte 0

.global lbl_80005BE8
lbl_80005BE8:

	# ROM: 0x1F89C8
	.4byte 0x084A0000
	.4byte 0

.global lbl_80005BF0
lbl_80005BF0:

	# ROM: 0x1F89D0
	.4byte 0x084A0000
	.4byte 0

.global lbl_80005BF8
lbl_80005BF8:

	# ROM: 0x1F89D8
	.4byte 0x08CA0000
	.4byte 0

.global lbl_80005C00
lbl_80005C00:

	# ROM: 0x1F89E0
	.4byte 0x08CA0000
	.4byte 0

.global lbl_80005C08
lbl_80005C08:

	# ROM: 0x1F89E8
	.4byte 0x00080000
	.4byte 0

.global lbl_80005C10
lbl_80005C10:

	# ROM: 0x1F89F0
	.4byte 0x108A0000
	.4byte 0

.global lbl_80005C18
lbl_80005C18:

	# ROM: 0x1F89F8
	.4byte 0x08080000
	.4byte 0

.global lbl_80005C20
lbl_80005C20:

	# ROM: 0x1F8A00
	.4byte 0x104A0000
	.4byte 0

.global lbl_80005C28
lbl_80005C28:

	# ROM: 0x1F8A08
	.4byte 0x100A0000
	.4byte 0

.global lbl_80005C30
lbl_80005C30:

	# ROM: 0x1F8A10
	.4byte 0x080A0000
	.4byte 0

.global lbl_80005C38
lbl_80005C38:

	# ROM: 0x1F8A18
	.4byte 0x480A0000
	.4byte 0

.global lbl_80005C40
lbl_80005C40:

	# ROM: 0x1F8A20
	.4byte 0x280A0000
	.4byte 0

.global lbl_80005C48
lbl_80005C48:

	# ROM: 0x1F8A28
	.4byte 0x300A0000
	.4byte 0

.global lbl_80005C50
lbl_80005C50:

	# ROM: 0x1F8A30
	.4byte 0x000A0000
	.4byte 0

.global lbl_80005C58
lbl_80005C58:

	# ROM: 0x1F8A38
	.4byte 0x000A0000
	.4byte 0

.global lbl_80005C60
lbl_80005C60:

	# ROM: 0x1F8A40
	.4byte 0x08080000
	.4byte 0

.global lbl_80005C68
lbl_80005C68:

	# ROM: 0x1F8A48
	.4byte 0x08080000
	.4byte 0

.global lbl_80005C70
lbl_80005C70:

	# ROM: 0x1F8A50
	.4byte 0x104A0000
	.4byte 0

.global lbl_80005C78
lbl_80005C78:

	# ROM: 0x1F8A58
	.4byte 0x100A0000
	.4byte 0

.global lbl_80005C80
lbl_80005C80:

	# ROM: 0x1F8A60
	.4byte 0x100A0000
	.4byte 0

.global lbl_80005C88
lbl_80005C88:

	# ROM: 0x1F8A68
	.4byte 0x180A0000
	.4byte 0

.global lbl_80005C90
lbl_80005C90:

	# ROM: 0x1F8A70
	.4byte 0x00080000
	.4byte 0

.global lbl_80005C98
lbl_80005C98:

	# ROM: 0x1F8A78
	.4byte 0x180A0000
	.4byte 0

.global lbl_80005CA0
lbl_80005CA0:

	# ROM: 0x1F8A80
	.4byte 0x00080000
	.4byte 0

.global lbl_80005CA8
lbl_80005CA8:

	# ROM: 0x1F8A88
	.4byte 0x10080000
	.4byte 0

.global lbl_80005CB0
lbl_80005CB0:

	# ROM: 0x1F8A90
	.4byte 0x08080000
	.4byte 0

.global lbl_80005CB8
lbl_80005CB8:

	# ROM: 0x1F8A98
	.4byte 0x200A0000
	.4byte 0

.global lbl_80005CC0
lbl_80005CC0:

	# ROM: 0x1F8AA0
	.4byte 0x5B4A0000
	.4byte 0

.global lbl_80005CC8
lbl_80005CC8:

	# ROM: 0x1F8AA8
	.4byte 0x19480000
	.4byte 0

.global lbl_80005CD0
lbl_80005CD0:

	# ROM: 0x1F8AB0
	.4byte 0x3C8A0000
	.4byte 0x000001B0
	.4byte 0x00700010
	.4byte 0
	.4byte 0x82000034
	.4byte zz_8000b334_

.global lbl_80005CE8
lbl_80005CE8:

	# ROM: 0x1F8AC8
	.4byte 0x00080000
	.4byte 0

.global lbl_80005CF0
lbl_80005CF0:

	# ROM: 0x1F8AD0
	.4byte 0x08080000
	.4byte 0

.global lbl_80005CF8
lbl_80005CF8:

	# ROM: 0x1F8AD8
	.4byte 0x19480000
	.4byte 0

.global lbl_80005D00
lbl_80005D00:

	# ROM: 0x1F8AE0
	.4byte 0x19480000
	.4byte 0

.global lbl_80005D08
lbl_80005D08:

	# ROM: 0x1F8AE8
	.4byte 0x108A0000
	.4byte 0

.global lbl_80005D10
lbl_80005D10:

	# ROM: 0x1F8AF0
	.4byte 0x188A0000
	.4byte 0x000000A8
	.4byte 0x00700010
	.4byte 0
	.4byte 0x82000020
	.4byte zz_8000b334_

.global lbl_80005D28
lbl_80005D28:

	# ROM: 0x1F8B08
	.4byte 0x20080000
	.4byte 0

.global lbl_80005D30
lbl_80005D30:

	# ROM: 0x1F8B10
	.4byte 0x1A4A0000
	.4byte 0

.global lbl_80005D38
lbl_80005D38:

	# ROM: 0x1F8B18
	.4byte 0x28080000
	.4byte 0

.global lbl_80005D40
lbl_80005D40:

	# ROM: 0x1F8B20
	.4byte 0x224A0000
	.4byte 0

.global lbl_80005D48
lbl_80005D48:

	# ROM: 0x1F8B28
	.4byte 0x124A0000
	.4byte 0

.global lbl_80005D50
lbl_80005D50:

	# ROM: 0x1F8B30
	.4byte 0x3A0A0000
	.4byte 0

.global lbl_80005D58
lbl_80005D58:

	# ROM: 0x1F8B38
	.4byte 0x320A0000
	.4byte 0

.global lbl_80005D60
lbl_80005D60:

	# ROM: 0x1F8B40
	.4byte 0x2A0A0000
	.4byte 0

.global lbl_80005D68
lbl_80005D68:

	# ROM: 0x1F8B48
	.4byte 0x600A0000
	.4byte 0

.global lbl_80005D70
lbl_80005D70:

	# ROM: 0x1F8B50
	.4byte 0x300A0000
	.4byte 0

.global lbl_80005D78
lbl_80005D78:

	# ROM: 0x1F8B58
	.4byte 0x380A0000
	.4byte 0

.global lbl_80005D80
lbl_80005D80:

	# ROM: 0x1F8B60
	.4byte 0x380A0000
	.4byte 0

.global lbl_80005D88
lbl_80005D88:

	# ROM: 0x1F8B68
	.4byte 0x280A0000
	.4byte 0

.global lbl_80005D90
lbl_80005D90:

	# ROM: 0x1F8B70
	.4byte 0x280A0000
	.4byte 0

.global lbl_80005D98
lbl_80005D98:

	# ROM: 0x1F8B78
	.4byte 0x298A0000
	.4byte 0

.global lbl_80005DA0
lbl_80005DA0:

	# ROM: 0x1F8B80
	.4byte 0x28080000
	.4byte 0

.global lbl_80005DA8
lbl_80005DA8:

	# ROM: 0x1F8B88
	.4byte 0x08080000
	.4byte 0

.global lbl_80005DB0
lbl_80005DB0:

	# ROM: 0x1F8B90
	.4byte 0x280A0000
	.4byte 0

.global lbl_80005DB8
lbl_80005DB8:

	# ROM: 0x1F8B98
	.4byte 0x18080000
	.4byte 0

.global lbl_80005DC0
lbl_80005DC0:

	# ROM: 0x1F8BA0
	.4byte 0x88080000
	.4byte 0

.global lbl_80005DC8
lbl_80005DC8:

	# ROM: 0x1F8BA8
	.4byte lbl_80080000
	.4byte 0

.global lbl_80005DD0
lbl_80005DD0:

	# ROM: 0x1F8BB0
	.4byte 0x900A0000
	.4byte 0

.global lbl_80005DD8
lbl_80005DD8:

	# ROM: 0x1F8BB8
	.4byte 0x10080000
	.4byte 0

.global lbl_80005DE0
lbl_80005DE0:

	# ROM: 0x1F8BC0
	.4byte 0x00080000
	.4byte 0

.global lbl_80005DE8
lbl_80005DE8:

	# ROM: 0x1F8BC8
	.4byte 0x10080000
	.4byte 0

.global lbl_80005DF0
lbl_80005DF0:

	# ROM: 0x1F8BD0
	.4byte 0x18080000
	.4byte 0

.global lbl_80005DF8
lbl_80005DF8:

	# ROM: 0x1F8BD8
	.4byte 0x10080000
	.4byte 0

.global lbl_80005E00
lbl_80005E00:

	# ROM: 0x1F8BE0
	.4byte 0x08080000
	.4byte 0

.global lbl_80005E08
lbl_80005E08:

	# ROM: 0x1F8BE8
	.4byte 0x08080000
	.4byte 0

.global lbl_80005E10
lbl_80005E10:

	# ROM: 0x1F8BF0
	.4byte 0x08080000
	.4byte 0

.global lbl_80005E18
lbl_80005E18:

	# ROM: 0x1F8BF8
	.4byte 0x10080000
	.4byte 0

.global lbl_80005E20
lbl_80005E20:

	# ROM: 0x1F8C00
	.4byte 0x00080000
	.4byte 0

.global lbl_80005E28
lbl_80005E28:

	# ROM: 0x1F8C08
	.4byte 0x40080000
	.4byte 0

.global lbl_80005E30
lbl_80005E30:

	# ROM: 0x1F8C10
	.4byte 0x40080000
	.4byte 0

.global lbl_80005E38
lbl_80005E38:

	# ROM: 0x1F8C18
	.4byte 0x098A0000
	.4byte 0

.global lbl_80005E40
lbl_80005E40:

	# ROM: 0x1F8C20
	.4byte 0x900A0000
	.4byte 0

.global lbl_80005E48
lbl_80005E48:

	# ROM: 0x1F8C28
	.4byte 0x680A0000
	.4byte 0

.global lbl_80005E50
lbl_80005E50:

	# ROM: 0x1F8C30
	.4byte 0x098A0000
	.4byte 0

.global lbl_80005E58
lbl_80005E58:

	# ROM: 0x1F8C38
	.4byte 0x894A0000
	.4byte 0

.global lbl_80005E60
lbl_80005E60:

	# ROM: 0x1F8C40
	.4byte 0x614A0000
	.4byte 0

.global lbl_80005E68
lbl_80005E68:

	# ROM: 0x1F8C48
	.4byte 0x098A0000
	.4byte 0

.global lbl_80005E70
lbl_80005E70:

	# ROM: 0x1F8C50
	.4byte 0x880A0000
	.4byte 0

.global lbl_80005E78
lbl_80005E78:

	# ROM: 0x1F8C58
	.4byte 0x580A0000
	.4byte 0

.global lbl_80005E80
lbl_80005E80:

	# ROM: 0x1F8C60
	.4byte 0x880A0000
	.4byte 0

.global lbl_80005E88
lbl_80005E88:

	# ROM: 0x1F8C68
	.4byte 0x600A0000
	.4byte 0

.global lbl_80005E90
lbl_80005E90:

	# ROM: 0x1F8C70
	.4byte 0x880A0000
	.4byte 0

.global lbl_80005E98
lbl_80005E98:

	# ROM: 0x1F8C78
	.4byte 0x600A0000
	.4byte 0

.global lbl_80005EA0
lbl_80005EA0:

	# ROM: 0x1F8C80
	.4byte 0x500A0000
	.4byte 0

.global lbl_80005EA8
lbl_80005EA8:

	# ROM: 0x1F8C88
	.4byte 0x580A0000
	.4byte 0

.global lbl_80005EB0
lbl_80005EB0:

	# ROM: 0x1F8C90
	.4byte 0x580A0000
	.4byte 0

.global lbl_80005EB8
lbl_80005EB8:

	# ROM: 0x1F8C98
	.4byte 0x300A0000
	.4byte 0

.global lbl_80005EC0
lbl_80005EC0:

	# ROM: 0x1F8CA0
	.4byte 0x098A0000
	.4byte 0

.global lbl_80005EC8
lbl_80005EC8:

	# ROM: 0x1F8CA8
	.4byte 0x098A0000
	.4byte 0

.global lbl_80005ED0
lbl_80005ED0:

	# ROM: 0x1F8CB0
	.4byte 0x00080000
	.4byte 0

.global lbl_80005ED8
lbl_80005ED8:

	# ROM: 0x1F8CB8
	.4byte 0x18080000
	.4byte 0

.global lbl_80005EE0
lbl_80005EE0:

	# ROM: 0x1F8CC0
	.4byte 0x100A0000
	.4byte 0

.global lbl_80005EE8
lbl_80005EE8:

	# ROM: 0x1F8CC8
	.4byte 0x08080000
	.4byte 0

.global lbl_80005EF0
lbl_80005EF0:

	# ROM: 0x1F8CD0
	.4byte 0x000A0000
	.4byte 0

.global lbl_80005EF8
lbl_80005EF8:

	# ROM: 0x1F8CD8
	.4byte 0x00080000
	.4byte 0

.global lbl_80005F00
lbl_80005F00:

	# ROM: 0x1F8CE0
	.4byte 0x280A0000
	.4byte 0

.global lbl_80005F08
lbl_80005F08:

	# ROM: 0x1F8CE8
	.4byte 0x400A0000
	.4byte 0

.global lbl_80005F10
lbl_80005F10:

	# ROM: 0x1F8CF0
	.4byte 0x20080000
	.4byte 0

.global lbl_80005F18
lbl_80005F18:

	# ROM: 0x1F8CF8
	.4byte 0x10080000
	.4byte 0

.global lbl_80005F20
lbl_80005F20:

	# ROM: 0x1F8D00
	.4byte 0x28080000
	.4byte 0

.global lbl_80005F28
lbl_80005F28:

	# ROM: 0x1F8D08
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F30
lbl_80005F30:

	# ROM: 0x1F8D10
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F38
lbl_80005F38:

	# ROM: 0x1F8D18
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F40
lbl_80005F40:

	# ROM: 0x1F8D20
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F48
lbl_80005F48:

	# ROM: 0x1F8D28
	.4byte 0x28080000
	.4byte 0

.global lbl_80005F50
lbl_80005F50:

	# ROM: 0x1F8D30
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F58
lbl_80005F58:

	# ROM: 0x1F8D38
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F60
lbl_80005F60:

	# ROM: 0x1F8D40
	.4byte 0x00080000
	.4byte 0

.global lbl_80005F68
lbl_80005F68:

	# ROM: 0x1F8D48
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F70
lbl_80005F70:

	# ROM: 0x1F8D50
	.4byte 0x00080000
	.4byte 0

.global lbl_80005F78
lbl_80005F78:

	# ROM: 0x1F8D58
	.4byte 0x00080000
	.4byte 0

.global lbl_80005F80
lbl_80005F80:

	# ROM: 0x1F8D60
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F88
lbl_80005F88:

	# ROM: 0x1F8D68
	.4byte 0x08080000
	.4byte 0

.global lbl_80005F90
lbl_80005F90:

	# ROM: 0x1F8D70
	.4byte 0x400A0000
	.4byte 0

.global lbl_80005F98
lbl_80005F98:

	# ROM: 0x1F8D78
	.4byte 0x900A0000
	.4byte 0

.global lbl_80005FA0
lbl_80005FA0:

	# ROM: 0x1F8D80
	.4byte 0x08080000
	.4byte 0x00000040
	.4byte 0x00000010
	.4byte 0
	.4byte 0x8200000C
	.4byte zz_8000b334_

.global lbl_80005FB8
lbl_80005FB8:

	# ROM: 0x1F8D98
	.4byte 0x00080000
	.4byte 0

.global lbl_80005FC0
lbl_80005FC0:

	# ROM: 0x1F8DA0
	.4byte 0x080A0000
	.4byte 0

.global lbl_80005FC8
lbl_80005FC8:

	# ROM: 0x1F8DA8
	.4byte 0x180A0000
	.4byte 0

.global lbl_80005FD0
lbl_80005FD0:

	# ROM: 0x1F8DB0
	.4byte 0x18080000
	.4byte 0

.global lbl_80005FD8
lbl_80005FD8:

	# ROM: 0x1F8DB8
	.4byte 0x00080000
	.4byte 0

.global lbl_80005FE0
lbl_80005FE0:

	# ROM: 0x1F8DC0
	.4byte 0x00080000
	.4byte 0

.global lbl_80005FE8
lbl_80005FE8:

	# ROM: 0x1F8DC8
	.4byte 0x180A0000
	.4byte 0

.global lbl_80005FF0
lbl_80005FF0:

	# ROM: 0x1F8DD0
	.4byte 0x080A0000
	.4byte 0

.global lbl_80005FF8
lbl_80005FF8:

	# ROM: 0x1F8DD8
	.4byte 0x100A0000
	.4byte 0

.global lbl_80006000
lbl_80006000:

	# ROM: 0x1F8DE0
	.4byte 0x100A0000
	.4byte 0

.global lbl_80006008
lbl_80006008:

	# ROM: 0x1F8DE8
	.4byte 0x310A0000
	.4byte 0

.global lbl_80006010
lbl_80006010:

	# ROM: 0x1F8DF0
	.4byte 0x10080000
	.4byte 0

.global lbl_80006018
lbl_80006018:

	# ROM: 0x1F8DF8
	.4byte 0x10080000
	.4byte 0

.global lbl_80006020
lbl_80006020:

	# ROM: 0x1F8E00
	.4byte 0x10080000
	.4byte 0

.global lbl_80006028
lbl_80006028:

	# ROM: 0x1F8E08
	.4byte 0x08080000
	.4byte 0

.global lbl_80006030
lbl_80006030:

	# ROM: 0x1F8E10
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006038
lbl_80006038:

	# ROM: 0x1F8E18
	.4byte 0x08080000
	.4byte 0

.global lbl_80006040
lbl_80006040:

	# ROM: 0x1F8E20
	.4byte 0x204A0000
	.4byte 0

.global lbl_80006048
lbl_80006048:

	# ROM: 0x1F8E28
	.4byte 0x00080000
	.4byte 0

.global lbl_80006050
lbl_80006050:

	# ROM: 0x1F8E30
	.4byte 0x208A0000
	.4byte 0

.global lbl_80006058
lbl_80006058:

	# ROM: 0x1F8E38
	.4byte 0x084A0000
	.4byte 0x00000090
	.4byte 0x001B0010
	.4byte 0
	.4byte 0x82000034
	.4byte cHeadTrack____dt_void__N8

.global lbl_80006070
lbl_80006070:

	# ROM: 0x1F8E50
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006078
lbl_80006078:

	# ROM: 0x1F8E58
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006080
lbl_80006080:

	# ROM: 0x1F8E60
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006088
lbl_80006088:

	# ROM: 0x1F8E68
	.4byte 0x08080000
	.4byte 0

.global lbl_80006090
lbl_80006090:

	# ROM: 0x1F8E70
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006098
lbl_80006098:

	# ROM: 0x1F8E78
	.4byte 0x180A0000
	.4byte 0

.global lbl_800060A0
lbl_800060A0:

	# ROM: 0x1F8E80
	.4byte 0x18080000
	.4byte 0

.global lbl_800060A8
lbl_800060A8:

	# ROM: 0x1F8E88
	.4byte 0x100A0000
	.4byte 0

.global lbl_800060B0
lbl_800060B0:

	# ROM: 0x1F8E90
	.4byte 0x100A0000
	.4byte 0

.global lbl_800060B8
lbl_800060B8:

	# ROM: 0x1F8E98
	.4byte 0x28080000
	.4byte 0

.global lbl_800060C0
lbl_800060C0:

	# ROM: 0x1F8EA0
	.4byte 0x00080000
	.4byte 0

.global lbl_800060C8
lbl_800060C8:

	# ROM: 0x1F8EA8
	.4byte 0x000A0000
	.4byte 0

.global lbl_800060D0
lbl_800060D0:

	# ROM: 0x1F8EB0
	.4byte 0x10080000
	.4byte 0

.global lbl_800060D8
lbl_800060D8:

	# ROM: 0x1F8EB8
	.4byte 0x10080000
	.4byte 0

.global lbl_800060E0
lbl_800060E0:

	# ROM: 0x1F8EC0
	.4byte 0x10080000
	.4byte 0

.global lbl_800060E8
lbl_800060E8:

	# ROM: 0x1F8EC8
	.4byte 0x10080000
	.4byte 0

.global lbl_800060F0
lbl_800060F0:

	# ROM: 0x1F8ED0
	.4byte 0x30080000
	.4byte 0

.global lbl_800060F8
lbl_800060F8:

	# ROM: 0x1F8ED8
	.4byte 0x08080000
	.4byte 0

.global lbl_80006100
lbl_80006100:

	# ROM: 0x1F8EE0
	.4byte 0x20080000
	.4byte 0

.global lbl_80006108
lbl_80006108:

	# ROM: 0x1F8EE8
	.4byte 0x18080000
	.4byte 0

.global lbl_80006110
lbl_80006110:

	# ROM: 0x1F8EF0
	.4byte 0x18080000
	.4byte 0

.global lbl_80006118
lbl_80006118:

	# ROM: 0x1F8EF8
	.4byte 0x600A0000
	.4byte 0x000001A4
	.4byte 0x00000010
	.4byte 0
	.4byte 0x82000008
	.4byte cHeadTrack____dt_void__N8

.global lbl_80006130
lbl_80006130:

	# ROM: 0x1F8F10
	.4byte 0x000A0000
	.4byte 0

.global lbl_80006138
lbl_80006138:

	# ROM: 0x1F8F18
	.4byte 0x000A0000
	.4byte 0

.global lbl_80006140
lbl_80006140:

	# ROM: 0x1F8F20
	.4byte 0x000A0000
	.4byte 0

.global lbl_80006148
lbl_80006148:

	# ROM: 0x1F8F28
	.4byte 0x000A0000
	.4byte 0

.global lbl_80006150
lbl_80006150:

	# ROM: 0x1F8F30
	.4byte 0x000A0000
	.4byte 0

.global lbl_80006158
lbl_80006158:

	# ROM: 0x1F8F38
	.4byte 0x08080000
	.4byte 0

.global lbl_80006160
lbl_80006160:

	# ROM: 0x1F8F40
	.4byte zz_800a0000_
	.4byte 0x0000029C
	.4byte 0x00F60010
	.4byte 0
	.4byte 0x8200000C
	.4byte cHeadTrack____dt_void__N47

.global lbl_80006178
lbl_80006178:

	# ROM: 0x1F8F58
	.4byte 0x180A0000
	.4byte 0x0000009C
	.4byte 0x00740010
	.4byte 0
	.4byte 0x82000010
	.4byte cHeadTrack____dt_void__N8

.global lbl_80006190
lbl_80006190:

	# ROM: 0x1F8F70
	.4byte 0x08080000
	.4byte 0

.global lbl_80006198
lbl_80006198:

	# ROM: 0x1F8F78
	.4byte 0x484A0000
	.4byte 0

.global lbl_800061A0
lbl_800061A0:

	# ROM: 0x1F8F80
	.4byte 0x08080000
	.4byte 0

.global lbl_800061A8
lbl_800061A8:

	# ROM: 0x1F8F88
	.4byte 0x200A0000
	.4byte 0

.global lbl_800061B0
lbl_800061B0:

	# ROM: 0x1F8F90
	.4byte 0x28080000
	.4byte 0

.global lbl_800061B8
lbl_800061B8:

	# ROM: 0x1F8F98
	.4byte 0x000A0000
	.4byte 0

.global lbl_800061C0
lbl_800061C0:

	# ROM: 0x1F8FA0
	.4byte 0x218A0000
	.4byte 0

.global lbl_800061C8
lbl_800061C8:

	# ROM: 0x1F8FA8
	.4byte 0x100A0000
	.4byte 0

.global lbl_800061D0
lbl_800061D0:

	# ROM: 0x1F8FB0
	.4byte 0x080A0000
	.4byte 0

.global lbl_800061D8
lbl_800061D8:

	# ROM: 0x1F8FB8
	.4byte 0x088A0000
	.4byte 0

.global lbl_800061E0
lbl_800061E0:

	# ROM: 0x1F8FC0
	.4byte 0x08080000
	.4byte 0

.global lbl_800061E8
lbl_800061E8:

	# ROM: 0x1F8FC8
	.4byte 0x108A0000
	.4byte 0

.global lbl_800061F0
lbl_800061F0:

	# ROM: 0x1F8FD0
	.4byte 0x000A0000
	.4byte 0

.global lbl_800061F8
lbl_800061F8:

	# ROM: 0x1F8FD8
	.4byte 0x080A0000
	.4byte 0

.global lbl_80006200
lbl_80006200:

	# ROM: 0x1F8FE0
	.4byte 0x20080000
	.4byte 0

.global lbl_80006208
lbl_80006208:

	# ROM: 0x1F8FE8
	.4byte 0x28080000
	.4byte 0

.global lbl_80006210
lbl_80006210:

	# ROM: 0x1F8FF0
	.4byte 0x28080000
	.4byte 0

.global lbl_80006218
lbl_80006218:

	# ROM: 0x1F8FF8
	.4byte 0x20080000
	.4byte 0

.global lbl_80006220
lbl_80006220:

	# ROM: 0x1F9000
	.4byte 0x400A0000
	.4byte 0

.global lbl_80006228
lbl_80006228:

	# ROM: 0x1F9008
	.4byte 0x10080000
	.4byte 0

.global lbl_80006230
lbl_80006230:

	# ROM: 0x1F9010
	.4byte 0x10080000
	.4byte 0

.global lbl_80006238
lbl_80006238:

	# ROM: 0x1F9018
	.4byte 0x10080000
	.4byte 0

.global lbl_80006240
lbl_80006240:

	# ROM: 0x1F9020
	.4byte 0x08080000
	.4byte 0

.global lbl_80006248
lbl_80006248:

	# ROM: 0x1F9028
	.4byte 0x10080000
	.4byte 0

.global lbl_80006250
lbl_80006250:

	# ROM: 0x1F9030
	.4byte 0x08080000
	.4byte 0

.global lbl_80006258
lbl_80006258:

	# ROM: 0x1F9038
	.4byte 0x18080000
	.4byte 0

.global lbl_80006260
lbl_80006260:

	# ROM: 0x1F9040
	.4byte 0x10080000
	.4byte 0

.global lbl_80006268
lbl_80006268:

	# ROM: 0x1F9048
	.4byte 0x10080000
	.4byte 0

.global lbl_80006270
lbl_80006270:

	# ROM: 0x1F9050
	.4byte 0x18080000
	.4byte 0

.global lbl_80006278
lbl_80006278:

	# ROM: 0x1F9058
	.4byte 0x20080000
	.4byte 0

.global lbl_80006280
lbl_80006280:

	# ROM: 0x1F9060
	.4byte 0x20080000
	.4byte 0

.global lbl_80006288
lbl_80006288:

	# ROM: 0x1F9068
	.4byte 0x10080000
	.4byte 0

.global lbl_80006290
lbl_80006290:

	# ROM: 0x1F9070
	.4byte 0x08080000
	.4byte 0

.global lbl_80006298
lbl_80006298:

	# ROM: 0x1F9078
	.4byte 0x08080000
	.4byte 0

.global lbl_800062A0
lbl_800062A0:

	# ROM: 0x1F9080
	.4byte 0x10080000
	.4byte 0

.global lbl_800062A8
lbl_800062A8:

	# ROM: 0x1F9088
	.4byte 0x18080000
	.4byte 0

.global lbl_800062B0
lbl_800062B0:

	# ROM: 0x1F9090
	.4byte 0x08080000
	.4byte 0

.global lbl_800062B8
lbl_800062B8:

	# ROM: 0x1F9098
	.4byte 0x08080000
	.4byte 0

.global lbl_800062C0
lbl_800062C0:

	# ROM: 0x1F90A0
	.4byte 0x08080000
	.4byte 0

.global lbl_800062C8
lbl_800062C8:

	# ROM: 0x1F90A8
	.4byte 0x08080000
	.4byte 0

.global lbl_800062D0
lbl_800062D0:

	# ROM: 0x1F90B0
	.4byte 0x10080000
	.4byte 0

.global lbl_800062D8
lbl_800062D8:

	# ROM: 0x1F90B8
	.4byte 0x08080000
	.4byte 0

.global lbl_800062E0
lbl_800062E0:

	# ROM: 0x1F90C0
	.4byte 0x20080000
	.4byte 0

.global lbl_800062E8
lbl_800062E8:

	# ROM: 0x1F90C8
	.4byte 0x08080000
	.4byte 0

.global lbl_800062F0
lbl_800062F0:

	# ROM: 0x1F90D0
	.4byte 0x00080000
	.4byte 0

.global lbl_800062F8
lbl_800062F8:

	# ROM: 0x1F90D8
	.4byte 0x08080000
	.4byte 0

.global lbl_80006300
lbl_80006300:

	# ROM: 0x1F90E0
	.4byte 0x00080000
	.4byte 0

.global lbl_80006308
lbl_80006308:

	# ROM: 0x1F90E8
	.4byte 0x08080000
	.4byte 0

.global lbl_80006310
lbl_80006310:

	# ROM: 0x1F90F0
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006318
lbl_80006318:

	# ROM: 0x1F90F8
	.4byte 0x08080000
	.4byte 0

.global lbl_80006320
lbl_80006320:

	# ROM: 0x1F9100
	.4byte 0x10080000
	.4byte 0

.global lbl_80006328
lbl_80006328:

	# ROM: 0x1F9108
	.4byte 0x08080000
	.4byte 0

.global lbl_80006330
lbl_80006330:

	# ROM: 0x1F9110
	.4byte 0x10080000
	.4byte 0

.global lbl_80006338
lbl_80006338:

	# ROM: 0x1F9118
	.4byte 0x00080000
	.4byte 0

.global lbl_80006340
lbl_80006340:

	# ROM: 0x1F9120
	.4byte 0x08080000
	.4byte 0

.global lbl_80006348
lbl_80006348:

	# ROM: 0x1F9128
	.4byte 0x08080000
	.4byte 0

.global lbl_80006350
lbl_80006350:

	# ROM: 0x1F9130
	.4byte 0x10080000
	.4byte 0

.global lbl_80006358
lbl_80006358:

	# ROM: 0x1F9138
	.4byte 0x18080000
	.4byte 0

.global lbl_80006360
lbl_80006360:

	# ROM: 0x1F9140
	.4byte 0x08080000
	.4byte 0

.global lbl_80006368
lbl_80006368:

	# ROM: 0x1F9148
	.4byte 0x10080000
	.4byte 0

.global lbl_80006370
lbl_80006370:

	# ROM: 0x1F9150
	.4byte 0x000A0000
	.4byte 0

.global lbl_80006378
lbl_80006378:

	# ROM: 0x1F9158
	.4byte 0x10080000
	.4byte 0

.global lbl_80006380
lbl_80006380:

	# ROM: 0x1F9160
	.4byte 0x30080000
	.4byte 0

.global lbl_80006388
lbl_80006388:

	# ROM: 0x1F9168
	.4byte 0x480A0000
	.4byte 0

.global lbl_80006390
lbl_80006390:

	# ROM: 0x1F9170
	.4byte 0x118A0000
	.4byte 0

.global lbl_80006398
lbl_80006398:

	# ROM: 0x1F9178
	.4byte 0x080A0000
	.4byte 0

.global lbl_800063A0
lbl_800063A0:

	# ROM: 0x1F9180
	.4byte 0x280A0000
	.4byte 0

.global lbl_800063A8
lbl_800063A8:

	# ROM: 0x1F9188
	.4byte 0x094A0000
	.4byte 0

.global lbl_800063B0
lbl_800063B0:

	# ROM: 0x1F9190
	.4byte 0x08080000
	.4byte 0

.global lbl_800063B8
lbl_800063B8:

	# ROM: 0x1F9198
	.4byte 0x10080000
	.4byte 0

.global lbl_800063C0
lbl_800063C0:

	# ROM: 0x1F91A0
	.4byte 0x300A0000
	.4byte 0

.global lbl_800063C8
lbl_800063C8:

	# ROM: 0x1F91A8
	.4byte 0x380A0000
	.4byte 0

.global lbl_800063D0
lbl_800063D0:

	# ROM: 0x1F91B0
	.4byte 0x300A0000
	.4byte 0

.global lbl_800063D8
lbl_800063D8:

	# ROM: 0x1F91B8
	.4byte 0x300A0000
	.4byte 0

.global lbl_800063E0
lbl_800063E0:

	# ROM: 0x1F91C0
	.4byte 0x08080000
	.4byte 0

.global lbl_800063E8
lbl_800063E8:

	# ROM: 0x1F91C8
	.4byte 0x10080000
	.4byte 0

.global lbl_800063F0
lbl_800063F0:

	# ROM: 0x1F91D0
	.4byte 0x100A0000
	.4byte 0

.global lbl_800063F8
lbl_800063F8:

	# ROM: 0x1F91D8
	.4byte 0x00080000
	.4byte 0

.global lbl_80006400
lbl_80006400:

	# ROM: 0x1F91E0
	.4byte 0x00080000
	.4byte 0

.global lbl_80006408
lbl_80006408:

	# ROM: 0x1F91E8
	.4byte 0x08080000
	.4byte 0

.global lbl_80006410
lbl_80006410:

	# ROM: 0x1F91F0
	.4byte 0x20080000
	.4byte 0

.global lbl_80006418
lbl_80006418:

	# ROM: 0x1F91F8
	.4byte 0x20080000
	.4byte 0

.global lbl_80006420
lbl_80006420:

	# ROM: 0x1F9200
	.4byte 0x20080000
	.4byte 0

.global lbl_80006428
lbl_80006428:

	# ROM: 0x1F9208
	.4byte 0x684A0000
	.4byte 0

.global lbl_80006430
lbl_80006430:

	# ROM: 0x1F9210
	.4byte 0x30080000
	.4byte 0

.global lbl_80006438
lbl_80006438:

	# ROM: 0x1F9218
	.4byte 0x408A0000
	.4byte 0

.global lbl_80006440
lbl_80006440:

	# ROM: 0x1F9220
	.4byte 0x500A0000
	.4byte 0

.global lbl_80006448
lbl_80006448:

	# ROM: 0x1F9228
	.4byte 0x280A0000
	.4byte 0

.global lbl_80006450
lbl_80006450:

	# ROM: 0x1F9230
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006458
lbl_80006458:

	# ROM: 0x1F9238
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006460
lbl_80006460:

	# ROM: 0x1F9240
	.4byte 0x00080000
	.4byte 0

.global lbl_80006468
lbl_80006468:

	# ROM: 0x1F9248
	.4byte 0x10080000
	.4byte 0

.global lbl_80006470
lbl_80006470:

	# ROM: 0x1F9250
	.4byte 0x38080000
	.4byte 0

.global lbl_80006478
lbl_80006478:

	# ROM: 0x1F9258
	.4byte 0x10080000
	.4byte 0

.global lbl_80006480
lbl_80006480:

	# ROM: 0x1F9260
	.4byte 0x10080000
	.4byte 0

.global lbl_80006488
lbl_80006488:

	# ROM: 0x1F9268
	.4byte 0x380A0000
	.4byte 0

.global lbl_80006490
lbl_80006490:

	# ROM: 0x1F9270
	.4byte 0x08080000
	.4byte 0

.global lbl_80006498
lbl_80006498:

	# ROM: 0x1F9278
	.4byte 0x10480000
	.4byte 0

.global lbl_800064A0
lbl_800064A0:

	# ROM: 0x1F9280
	.4byte 0x10080000
	.4byte 0

.global lbl_800064A8
lbl_800064A8:

	# ROM: 0x1F9288
	.4byte 0x18080000
	.4byte 0

.global lbl_800064B0
lbl_800064B0:

	# ROM: 0x1F9290
	.4byte 0x00080000
	.4byte 0

.global lbl_800064B8
lbl_800064B8:

	# ROM: 0x1F9298
	.4byte 0x00080000
	.4byte 0

.global lbl_800064C0
lbl_800064C0:

	# ROM: 0x1F92A0
	.4byte 0x10080000
	.4byte 0

.global lbl_800064C8
lbl_800064C8:

	# ROM: 0x1F92A8
	.4byte 0x08080000
	.4byte 0

.global lbl_800064D0
lbl_800064D0:

	# ROM: 0x1F92B0
	.4byte 0x00080000
	.4byte 0

.global lbl_800064D8
lbl_800064D8:

	# ROM: 0x1F92B8
	.4byte 0x08080000
	.4byte 0

.global lbl_800064E0
lbl_800064E0:

	# ROM: 0x1F92C0
	.4byte 0x00080000
	.4byte 0

.global lbl_800064E8
lbl_800064E8:

	# ROM: 0x1F92C8
	.4byte 0x08080000
	.4byte 0

.global lbl_800064F0
lbl_800064F0:

	# ROM: 0x1F92D0
	.4byte 0x10080000
	.4byte 0

.global lbl_800064F8
lbl_800064F8:

	# ROM: 0x1F92D8
	.4byte 0x00080000
	.4byte 0

.global lbl_80006500
lbl_80006500:

	# ROM: 0x1F92E0
	.4byte 0x480A0000
	.4byte 0

.global lbl_80006508
lbl_80006508:

	# ROM: 0x1F92E8
	.4byte 0x38080000
	.4byte 0

.global lbl_80006510
lbl_80006510:

	# ROM: 0x1F92F0
	.4byte 0x38080000
	.4byte 0

.global lbl_80006518
lbl_80006518:

	# ROM: 0x1F92F8
	.4byte 0x90080000
	.4byte 0

.global lbl_80006520
lbl_80006520:

	# ROM: 0x1F9300
	.4byte 0x10080000
	.4byte 0

.global lbl_80006528
lbl_80006528:

	# ROM: 0x1F9308
	.4byte 0x10080000
	.4byte 0

.global lbl_80006530
lbl_80006530:

	# ROM: 0x1F9310
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006538
lbl_80006538:

	# ROM: 0x1F9318
	.4byte 0x08CA0000
	.4byte 0

.global lbl_80006540
lbl_80006540:

	# ROM: 0x1F9320
	.4byte 0x10080000
	.4byte 0

.global lbl_80006548
lbl_80006548:

	# ROM: 0x1F9328
	.4byte 0x200A0000
	.4byte 0

.global lbl_80006550
lbl_80006550:

	# ROM: 0x1F9330
	.4byte 0x08080000
	.4byte 0

.global lbl_80006558
lbl_80006558:

	# ROM: 0x1F9338
	.4byte 0x100A0000
	.4byte 0

.global lbl_80006560
lbl_80006560:

	# ROM: 0x1F9340
	.4byte 0x10480000
	.4byte 0

.global lbl_80006568
lbl_80006568:

	# ROM: 0x1F9348
	.4byte 0x38080000
	.4byte 0

.global lbl_80006570
lbl_80006570:

	# ROM: 0x1F9350
	.4byte 0x10080000
	.4byte 0

.global lbl_80006578
lbl_80006578:

	# ROM: 0x1F9358
	.4byte 0x908A0000
	.4byte 0

.global lbl_80006580
lbl_80006580:

	# ROM: 0x1F9360
	.4byte 0x240A0000
	.4byte 0

.global lbl_80006588
lbl_80006588:

	# ROM: 0x1F9368
	.4byte 0x4C0A0000
	.4byte 0

.global lbl_80006590
lbl_80006590:

	# ROM: 0x1F9370
	.4byte 0x248A0000
	.4byte 0

.global lbl_80006598
lbl_80006598:

	# ROM: 0x1F9378
	.4byte 0x11CA0000
	.4byte 0

.global lbl_800065A0
lbl_800065A0:

	# ROM: 0x1F9380
	.4byte 0x128A0000
	.4byte 0

.global lbl_800065A8
lbl_800065A8:

	# ROM: 0x1F9388
	.4byte 0x08080000
	.4byte 0

.global lbl_800065B0
lbl_800065B0:

	# ROM: 0x1F9390
	.4byte 0x00080000
	.4byte 0

.global lbl_800065B8
lbl_800065B8:

	# ROM: 0x1F9398
	.4byte 0x08080000
	.4byte 0

.global lbl_800065C0
lbl_800065C0:

	# ROM: 0x1F93A0
	.4byte 0x00080000
	.4byte 0

.global lbl_800065C8
lbl_800065C8:

	# ROM: 0x1F93A8
	.4byte 0x00080000
	.4byte 0

.global lbl_800065D0
lbl_800065D0:

	# ROM: 0x1F93B0
	.4byte 0x400A0000
	.4byte 0

.global lbl_800065D8
lbl_800065D8:

	# ROM: 0x1F93B8
	.4byte 0x00080000
	.4byte 0

.global lbl_800065E0
lbl_800065E0:

	# ROM: 0x1F93C0
	.4byte 0x28080000
	.4byte 0

.global lbl_800065E8
lbl_800065E8:

	# ROM: 0x1F93C8
	.4byte 0x00080000
	.4byte 0

.global lbl_800065F0
lbl_800065F0:

	# ROM: 0x1F93D0
	.4byte 0x08080000
	.4byte 0

.global lbl_800065F8
lbl_800065F8:

	# ROM: 0x1F93D8
	.4byte 0x48080000
	.4byte 0

.global lbl_80006600
lbl_80006600:

	# ROM: 0x1F93E0
	.4byte 0x080A0000
	.4byte 0

.global lbl_80006608
lbl_80006608:

	# ROM: 0x1F93E8
	.4byte 0x00080000
	.4byte 0

.global lbl_80006610
lbl_80006610:

	# ROM: 0x1F93F0
	.4byte 0x08080000
	.4byte 0

.global lbl_80006618
lbl_80006618:

	# ROM: 0x1F93F8
	.4byte 0x18080000
	.4byte 0

.global lbl_80006620
lbl_80006620:

	# ROM: 0x1F9400
	.4byte 0x00080000
	.4byte 0

.global lbl_80006628
lbl_80006628:

	# ROM: 0x1F9408
	.4byte 0x380A0000
	.4byte 0

.global lbl_80006630
lbl_80006630:

	# ROM: 0x1F9410
	.4byte 0x08080000
	.4byte 0

.global lbl_80006638
lbl_80006638:

	# ROM: 0x1F9418
	.4byte 0x08080000
	.4byte 0

.global lbl_80006640
lbl_80006640:

	# ROM: 0x1F9420
	.4byte 0x20080000
	.4byte 0

.global lbl_80006648
lbl_80006648:

	# ROM: 0x1F9428
	.4byte 0x00080000
	.4byte 0

.global lbl_80006650
lbl_80006650:

	# ROM: 0x1F9430
	.4byte 0x200A0000
	.4byte 0

.global lbl_80006658
lbl_80006658:

	# ROM: 0x1F9438
	.4byte 0x08080000
	.4byte 0

.global lbl_80006660
lbl_80006660:

	# ROM: 0x1F9440
	.4byte 0x00080000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
