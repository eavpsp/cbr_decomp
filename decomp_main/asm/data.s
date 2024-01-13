.include "macros.s"

.section .data, "wa"  # 0x8020FBC0 - 0x8025C200 ; 0x0004C640


.global lbl_8020FBC0
lbl_8020FBC0:

	# ROM: 0x20CBC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xC0000000
	.4byte 0x00000003
	.4byte 0x00020001
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF

.global lbl_8020FBE0
lbl_8020FBE0:

	# ROM: 0x20CBE0
	.4byte 0xC47A0000
	.4byte 0xBDCCCCCD
	.4byte 0xC47A0000
	.4byte 0x447A0000
	.4byte 0xBDCCCCCD
	.4byte 0xC47A0000
	.4byte 0x447A0000
	.4byte 0xBDCCCCCD
	.4byte 0x447A0000
	.4byte 0xC47A0000
	.4byte 0xBDCCCCCD
	.4byte 0x447A0000

.global lbl_8020FC10
lbl_8020FC10:

	# ROM: 0x20CC10
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_8020FC20
lbl_8020FC20:

	# ROM: 0x20CC20
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global s_UpdateMovie_8020fc30
s_UpdateMovie_8020fc30:

	# ROM: 0x20CC30
	.asciz "UpdateMovie"

.global lbl_8020FC3C
lbl_8020FC3C:

	# ROM: 0x20CC3C
	.4byte 0xFFFFFFFD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFD
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8020FC5C
lbl_8020FC5C:

	# ROM: 0x20CC5C
	.4byte 0x0000581D
	.4byte 0x0000581F
	.4byte 0x00005821

.global lbl_8020FC68
lbl_8020FC68:

	# ROM: 0x20CC68
	.4byte 0x00000050
	.4byte 0x000000A0
	.4byte 0x000000F0

.global lbl_8020FC74
lbl_8020FC74:

	# ROM: 0x20CC74
	.4byte lbl_80659ED0
	.4byte 0
	.4byte 0

.global lbl_8020FC80
lbl_8020FC80:

	# ROM: 0x20CC80
	.4byte lbl_80659ED8
	.4byte 0
	.4byte GetObjToRegister
	.4byte ParseStageData
	.4byte zz_80012a8c_
	.4byte zz_80011bd8_
	.4byte zz_8000facc_
	.4byte CGameMain
	.4byte UpdateWorld
	.4byte processGlobalArrayElements
	.4byte checkRangeAndReturnValue
	.4byte CBGetBytesAvailableForRead
	.4byte J3DTexGenBlock4__getNBTScale_void_
	.4byte J3DTexGenBlock4__getNBTScale_void__N2
	.4byte add_constant_e5d38
	.4byte J3DTexGenBlock4__getNBTScale_void__N3
	.4byte J3DTexGenBlock4__getNBTScale_void__N4
	.4byte add_constant_e7e20
	.4byte GameReset

.global switchdataD_8020fccc
switchdataD_8020fccc:

	# ROM: 0x20CCCC
	.4byte lbl_80011C30
	.4byte lbl_80011C38
	.4byte lbl_80011C60
	.4byte lbl_80011C6C
	.4byte lbl_80011C90
	.4byte func_80011CFC
	.4byte lbl_80011DFC
	.4byte func_80011E7C
	.4byte func_80012160
	.4byte lbl_800121A0
	.4byte lbl_800121C4
	.4byte lbl_800121E4
	.4byte lbl_80012204
	.4byte lbl_80012210
	.4byte lbl_80012230
	.4byte lbl_80012250
	.4byte lbl_80012270
	.4byte lbl_8001227C
	.4byte lbl_80012340
	.4byte lbl_80012394
	.4byte lbl_800126EC
	.4byte lbl_80012744
	.4byte lbl_80012750
	.4byte lbl_80012784
	.4byte lbl_800127F0
	.4byte lbl_80012820
	.4byte lbl_80012864
	.4byte lbl_800128D4
	.4byte lbl_800128F0

.global lbl_8020FD40
lbl_8020FD40:

	# ROM: 0x20CD40
	.4byte lbl_80659EE0
	.4byte 0
	.4byte 0

.global lbl_8020FD4C
lbl_8020FD4C:

	# ROM: 0x20CD4C
	.4byte lbl_80659EE8
	.4byte 0
	.4byte FormationOffensive____dt_void__N5
	.4byte zz_8001585c_
	.4byte zz_80015878_
	.4byte NSNMessengerScene__SceneCreated_void__N3
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void__N2

.global lbl_8020FD68
lbl_8020FD68:

	# ROM: 0x20CD68
	.4byte lbl_80659EF0
	.4byte 0
	.4byte 0

.global lbl_8020FD74
lbl_8020FD74:

	# ROM: 0x20CD74
	.4byte lbl_80659EF8
	.4byte 0
	.4byte SetCVectIntp
	.4byte zz_800158d0_
	.4byte zz_8001599c_
	.4byte NSNMessengerScene__SceneCreated_void__N4
	.4byte zz_80015a7c_

.global lbl_8020FD90
lbl_8020FD90:

	# ROM: 0x20CD90
	.4byte lbl_80659F00
	.4byte 0
	.4byte 0

.global lbl_8020FD9C
lbl_8020FD9C:

	# ROM: 0x20CD9C
	.4byte lbl_80659F08
	.4byte 0
	.4byte SetCCamActionArea
	.4byte DBClose_N10
	.4byte 0
	.4byte DBClose_N3
	.4byte DBClose_N11
	.4byte DBClose_N12
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte CBGetBytesAvailableForRead_N2
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5
	.4byte TRKNubWelcome
	.4byte GetDAT_805a055c
	.4byte THPSimpleGetCurrentFrame
	.4byte updateGlobalVariable_805a0560
	.4byte zz_80015c84_
	.4byte zz_80015cc8_
	.4byte zz_80015d74_

.global lbl_8020FE1C
lbl_8020FE1C:

	# ROM: 0x20CE1C
	.4byte lbl_80659F10
	.4byte 0
	.4byte cHeadTrack____dt_void__N10

.global lbl_8020FE28
lbl_8020FE28:

	# ROM: 0x20CE28
	.4byte lbl_80659EF0
	.4byte 0
	.4byte 0

.global lbl_8020FE34
lbl_8020FE34:

	# ROM: 0x20CE34
	.4byte lbl_80659F18
	.4byte 0
	.4byte initVecInterp
	.4byte zz_80015f08_
	.4byte zz_80016004_
	.4byte NSNMessengerScene__SceneCreated_void__N5
	.4byte zz_8001611c_

.global lbl_8020FE50
lbl_8020FE50:

	# ROM: 0x20CE50
	.4byte lbl_80659EF0
	.4byte 0
	.4byte 0

.global lbl_8020FE5C
lbl_8020FE5C:

	# ROM: 0x20CE5C
	.4byte lbl_80659F20
	.4byte 0
	.4byte SetCVectEaseInOutLerp
	.4byte zz_80016264_
	.4byte zz_8001641c_
	.4byte zz_8001633c_
	.4byte zz_800164d0_

.global lbl_8020FE78
lbl_8020FE78:

	# ROM: 0x20CE78
	.4byte lbl_80659EF0
	.4byte 0
	.4byte 0

.global lbl_8020FE84
lbl_8020FE84:

	# ROM: 0x20CE84
	.4byte lbl_80659F28
	.4byte 0
	.4byte SetCVectEaseOutLerp
	.4byte zz_80016610_
	.4byte zz_800167a8_
	.4byte zz_800166e0_
	.4byte zz_8001685c_

.global lbl_8020FEA0
lbl_8020FEA0:

	# ROM: 0x20CEA0
	.4byte lbl_80659EF0
	.4byte 0
	.4byte cHeadTrack____dt_void__N11
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8020FEBC
lbl_8020FEBC:

	# ROM: 0x20CEBC
	.4byte lbl_80659EF0
	.4byte 0
	.4byte 0

.global lbl_8020FEC8
lbl_8020FEC8:

	# ROM: 0x20CEC8
	.4byte lbl_80659F30
	.4byte 0
	.4byte SetCVectEasOutDivideLerp
	.4byte zz_800169e4_
	.4byte zz_80016ca4_
	.4byte zz_80016ae8_
	.4byte zz_80016d58_

.global lbl_8020FEE4
lbl_8020FEE4:

	# ROM: 0x20CEE4
	.4byte lbl_80659EE0
	.4byte 0
	.4byte 0

.global lbl_8020FEF0
lbl_8020FEF0:

	# ROM: 0x20CEF0
	.4byte lbl_80659F38
	.4byte 0
	.4byte FormationOffensive____dt_void_
	.4byte zz_80015fd4_
	.4byte zz_800160b8_
	.4byte NSNMessengerScene__SceneCreated_void__N6
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void__N3

.global lbl_8020FF0C
lbl_8020FF0C:

	# ROM: 0x20CF0C
	.4byte lbl_80659F00
	.4byte 0
	.4byte SetCInterfaceCamActions
	.4byte DBClose_N10
	.4byte 0
	.4byte DBClose_N3
	.4byte DBClose_N11
	.4byte DBClose_N12
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte CBGetBytesAvailableForRead_N2
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5

.global lbl_8020FF70
lbl_8020FF70:

	# ROM: 0x20CF70
	.4byte lbl_80659EE0
	.4byte 0
	.4byte cHeadTrack____dt_void__N12
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8020FF8C
lbl_8020FF8C:

	# ROM: 0x20CF8C
	.4byte lbl_80659EE0
	.4byte 0
	.4byte 0

.global lbl_8020FF98
lbl_8020FF98:

	# ROM: 0x20CF98
	.4byte lbl_80659F40
	.4byte 0
	.4byte FormationOffensive____dt_void__N4
	.4byte zz_80016abc_
	.4byte zz_80016c4c_
	.4byte zz_80016bc8_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void__N4

.global lbl_8020FFB4
lbl_8020FFB4:

	# ROM: 0x20CFB4
	.4byte lbl_80659F48
	.4byte 0
	.4byte initCameraActions

.global lbl_8020FFC0
lbl_8020FFC0:

	# ROM: 0x20CFC0
	.4byte lbl_80659F50
	.4byte 0
	.4byte GetCameraMomento

.global lbl_8020FFCC
lbl_8020FFCC:

	# ROM: 0x20CFCC
	.4byte lbl_80659F58
	.4byte 0
	.4byte initCameraControls

.global lbl_8020FFD8
lbl_8020FFD8:

	# ROM: 0x20CFD8
	.4byte lbl_80659F60
	.4byte 0
	.4byte cHeadTrack____dt_void__N13

.global lbl_8020FFE4
lbl_8020FFE4:

	# ROM: 0x20CFE4
	.4byte lbl_80659F68
	.4byte 0
	.4byte SetMsgFont

.global lbl_8020FFF0
lbl_8020FFF0:

	# ROM: 0x20CFF0
	.4byte lbl_80659F70
	.4byte 0
	.4byte SetMSGFont

.global lbl_8020FFFC
lbl_8020FFFC:

	# ROM: 0x20CFFC
	.4byte lbl_80659F78

.global lbl_80210000
lbl_80210000:

	# ROM: 0x20D000
	.4byte 0

.global lbl_80210004
lbl_80210004:

	# ROM: 0x20D004
	.4byte 0

.global lbl_80210008
lbl_80210008:

	# ROM: 0x20D008
	.4byte lbl_80659F80

.global lbl_8021000C
lbl_8021000C:

	# ROM: 0x20D00C
	.4byte 0

.global lbl_80210010
lbl_80210010:

	# ROM: 0x20D010
	.4byte initCobjArchive

.global lbl_80210014
lbl_80210014:

	# ROM: 0x20D014
	.4byte lbl_80659F88

.global lbl_80210018
lbl_80210018:

	# ROM: 0x20D018
	.4byte 0

.global lbl_8021001C
lbl_8021001C:

	# ROM: 0x20D01C
	.4byte cHeadTrack____dt_void__N7

.global lbl_80210020
lbl_80210020:

	# ROM: 0x20D020
	.4byte lbl_80659F90

.global lbl_80210024
lbl_80210024:

	# ROM: 0x20D024
	.4byte 0

.global lbl_80210028
lbl_80210028:

	# ROM: 0x20D028
	.4byte GetMenuEX

.global lbl_8021002C
lbl_8021002C:

	# ROM: 0x20D02C
	.4byte lbl_80659F98

.global lbl_80210030
lbl_80210030:

	# ROM: 0x20D030
	.4byte 0

.global lbl_80210034
lbl_80210034:

	# ROM: 0x20D034
	.4byte 0

.global lbl_80210038
lbl_80210038:

	# ROM: 0x20D038
	.4byte lbl_80659F98

.global lbl_8021003C
lbl_8021003C:

	# ROM: 0x20D03C
	.4byte 0

.global lbl_80210040
lbl_80210040:

	# ROM: 0x20D040
	.4byte lbl_80659FA0

.global lbl_80210044
lbl_80210044:

	# ROM: 0x20D044
	.4byte 0

.global lbl_80210048
lbl_80210048:

	# ROM: 0x20D048
	.4byte 0

.global lbl_8021004C
lbl_8021004C:

	# ROM: 0x20D04C
	.4byte lbl_80659FA8

.global lbl_80210050
lbl_80210050:

	# ROM: 0x20D050
	.4byte 0

.global lbl_80210054
lbl_80210054:

	# ROM: 0x20D054
	.4byte SetCObjVec

.global lbl_80210058
lbl_80210058:

	# ROM: 0x20D058
	.4byte lbl_80659FB0

.global lbl_8021005C
lbl_8021005C:

	# ROM: 0x20D05C
	.4byte 0

.global lbl_80210060
lbl_80210060:

	# ROM: 0x20D060
	.4byte SetCJObj

.global lbl_80210064
lbl_80210064:

	# ROM: 0x20D064
	.4byte zz_80017244_

.global lbl_80210068
lbl_80210068:

	# ROM: 0x20D068
	.4byte zz_80017308_
	.4byte zz_800173cc_

.global lbl_80210070
lbl_80210070:

	# ROM: 0x20D070
	.4byte zz_80017490_

.global lbl_80210074
lbl_80210074:

	# ROM: 0x20D074
	.4byte zz_80017554_

.global lbl_80210078
lbl_80210078:

	# ROM: 0x20D078
	.4byte zz_80017618_
	.4byte zz_800176dc_

.global lbl_80210080
lbl_80210080:

	# ROM: 0x20D080
	.4byte zz_80017878_

.global lbl_80210084
lbl_80210084:

	# ROM: 0x20D084
	.4byte zz_80017a14_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80017fd0_
	.4byte zz_80017e68_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte ProcessObject

.global lbl_802100A4
lbl_802100A4:

	# ROM: 0x20D0A4
	.4byte lbl_80659FB8

.global lbl_802100A8
lbl_802100A8:

	# ROM: 0x20D0A8
	.4byte 0

.global lbl_802100AC
lbl_802100AC:

	# ROM: 0x20D0AC
	.4byte cHeadTrack____dt_void__N9

.global lbl_802100B0
lbl_802100B0:

	# ROM: 0x20D0B0
	.4byte lbl_80659FC0

.global lbl_802100B4
lbl_802100B4:

	# ROM: 0x20D0B4
	.4byte 0

.global lbl_802100B8
lbl_802100B8:

	# ROM: 0x20D0B8
	.4byte cHeadTrack____dt_void__N14

.global lbl_802100BC
lbl_802100BC:

	# ROM: 0x20D0BC
	.4byte lbl_80659FC8
	.4byte 0

.global lbl_802100C4
lbl_802100C4:

	# ROM: 0x20D0C4
	.4byte cHeadTrack____dt_void__N15

.global lbl_802100C8
lbl_802100C8:

	# ROM: 0x20D0C8
	.4byte lbl_80659FD0
	.4byte 0
	.4byte GetTitle

.global lbl_802100D4
lbl_802100D4:

	# ROM: 0x20D0D4
	.4byte lbl_80659FD8
	.4byte 0
	.4byte 0

.global lbl_802100E0
lbl_802100E0:

	# ROM: 0x20D0E0
	.4byte lbl_80659FE0
	.4byte 0
	.4byte cHeadTrack____dt_void__N4

.global lbl_802100EC
lbl_802100EC:

	# ROM: 0x20D0EC
	.4byte lbl_80659FE8
	.4byte 0
	.4byte 0

.global lbl_802100F8
lbl_802100F8:

	# ROM: 0x20D0F8
	.4byte lbl_80659FF0

.global lbl_802100FC
lbl_802100FC:

	# ROM: 0x20D0FC
	.4byte 0

.global lbl_80210100
lbl_80210100:

	# ROM: 0x20D100
	.4byte cHeadTrack____dt_void__N16

.global lbl_80210104
lbl_80210104:

	# ROM: 0x20D104
	.4byte lbl_80659FF8

.global lbl_80210108
lbl_80210108:

	# ROM: 0x20D108
	.4byte 0

.global lbl_8021010C
lbl_8021010C:

	# ROM: 0x20D10C
	.4byte SetCShadows

.global lbl_80210110
lbl_80210110:

	# ROM: 0x20D110
	.4byte lbl_8065A000
	.4byte 0
	.4byte 0

.global lbl_8021011C
lbl_8021011C:

	# ROM: 0x20D11C
	.4byte lbl_8065A008
	.4byte 0
	.4byte cHeadTrack____dt_void__N2

.global lbl_80210128
lbl_80210128:

	# ROM: 0x20D128
	.4byte lbl_8065A010
	.4byte 0
	.4byte 0

.global lbl_80210134
lbl_80210134:

	# ROM: 0x20D134
	.4byte lbl_8065A018

.global lbl_80210138
lbl_80210138:

	# ROM: 0x20D138
	.4byte 0
	.4byte cHeadTrack____dt_void_

.global lbl_80210140
lbl_80210140:

	# ROM: 0x20D140
	.4byte lbl_8065A020
	.4byte 0

.global lbl_80210148
lbl_80210148:

	# ROM: 0x20D148
	.4byte 0

.global lbl_8021014C
lbl_8021014C:

	# ROM: 0x20D14C
	.4byte lbl_8065A028
	.4byte 0
	.4byte cHeadTrack____dt_void__N17

.global lbl_80210158
lbl_80210158:

	# ROM: 0x20D158
	.4byte lbl_8065A030
	.4byte 0
	.4byte 0

.global lbl_80210164
lbl_80210164:

	# ROM: 0x20D164
	.4byte lbl_8065A038
	.4byte 0
	.4byte cHeadTrack____dt_void__N18

.global lbl_80210170
lbl_80210170:

	# ROM: 0x20D170
	.4byte lbl_8065A040

.global lbl_80210174
lbl_80210174:

	# ROM: 0x20D174
	.4byte 0
	.4byte 0

.global lbl_8021017C
lbl_8021017C:

	# ROM: 0x20D17C
	.4byte lbl_8065A048
	.4byte 0
	.4byte FormationOffensive____dt_void__N6
	.4byte zz_8019e2a8_

.global lbl_8021018C
lbl_8021018C:

	# ROM: 0x20D18C
	.4byte lbl_8065A040

.global lbl_80210190
lbl_80210190:

	# ROM: 0x20D190
	.4byte 0
	.4byte 0

.global lbl_80210198
lbl_80210198:

	# ROM: 0x20D198
	.4byte lbl_8065A050
	.4byte 0
	.4byte FormationOffensive____dt_void__N7

.global lbl_802101A4
lbl_802101A4:

	# ROM: 0x20D1A4
	.4byte zz_8019e2a8_

.global lbl_802101A8
lbl_802101A8:

	# ROM: 0x20D1A8
	.4byte lbl_8065A040
	.4byte 0
	.4byte 0

.global lbl_802101B4
lbl_802101B4:

	# ROM: 0x20D1B4
	.4byte lbl_8065A058
	.4byte 0
	.4byte FormationOffensive____dt_void__N8
	.4byte zz_8019e2a8_

.global lbl_802101C4
lbl_802101C4:

	# ROM: 0x20D1C4
	.4byte lbl_8065A040
	.4byte 0
	.4byte 0

.global lbl_802101D0
lbl_802101D0:

	# ROM: 0x20D1D0
	.4byte lbl_8065A060

.global lbl_802101D4
lbl_802101D4:

	# ROM: 0x20D1D4
	.4byte 0
	.4byte FormationOffensive____dt_void__N9
	.4byte zz_8019e2a8_

.global lbl_802101E0
lbl_802101E0:

	# ROM: 0x20D1E0
	.4byte lbl_8065A040
	.4byte 0
	.4byte 0

.global lbl_802101EC
lbl_802101EC:

	# ROM: 0x20D1EC
	.4byte lbl_8065A068
	.4byte 0
	.4byte FormationOffensive____dt_void__N10
	.4byte zz_8019e2a8_

.global lbl_802101FC
lbl_802101FC:

	# ROM: 0x20D1FC
	.4byte lbl_8065A040
	.4byte 0
	.4byte 0

.global lbl_80210208
lbl_80210208:

	# ROM: 0x20D208
	.4byte lbl_8065A070
	.4byte 0
	.4byte FormationOffensive____dt_void__N11
	.4byte zz_8019e2a8_

.global lbl_80210218
lbl_80210218:

	# ROM: 0x20D218
	.4byte lbl_8065A040
	.4byte 0
	.4byte 0

.global lbl_80210224
lbl_80210224:

	# ROM: 0x20D224
	.4byte lbl_8065A078

.global lbl_80210228
lbl_80210228:

	# ROM: 0x20D228
	.4byte 0

.global lbl_8021022C
lbl_8021022C:

	# ROM: 0x20D22C
	.4byte FormationOffensive____dt_void__N12
	.4byte zz_8019e2a8_

.global lbl_80210234
lbl_80210234:

	# ROM: 0x20D234
	.4byte lbl_8065A040

.global lbl_80210238
lbl_80210238:

	# ROM: 0x20D238
	.4byte 0
	.4byte 0

.global lbl_80210240
lbl_80210240:

	# ROM: 0x20D240
	.4byte lbl_8065A080
	.4byte 0
	.4byte FormationOffensive____dt_void__N13
	.4byte zz_8019e2a8_

.global lbl_80210250
lbl_80210250:

	# ROM: 0x20D250
	.4byte lbl_8065A040

.global lbl_80210254
lbl_80210254:

	# ROM: 0x20D254
	.4byte 0

.global lbl_80210258
lbl_80210258:

	# ROM: 0x20D258
	.4byte 0

.global lbl_8021025C
lbl_8021025C:

	# ROM: 0x20D25C
	.4byte lbl_8065A088

.global lbl_80210260
lbl_80210260:

	# ROM: 0x20D260
	.byte 0x00

.global lbl_80210261
lbl_80210261:

	# ROM: 0x20D261
	.balign 4
	.4byte FormationOffensive____dt_void__N14
	.4byte zz_8019e2a8_

.global lbl_8021026C
lbl_8021026C:

	# ROM: 0x20D26C
	.4byte lbl_8065A090

.global lbl_80210270
lbl_80210270:

	# ROM: 0x20D270
	.4byte 0
	.4byte GetGXData

.global lbl_80210278
lbl_80210278:

	# ROM: 0x20D278
	.4byte lbl_8065A098
	.4byte 0

.global lbl_80210280
lbl_80210280:

	# ROM: 0x20D280
	.4byte InitCFont

.global lbl_80210284
lbl_80210284:

	# ROM: 0x20D284
	.4byte lbl_8065A0A0
	.4byte 0
	.4byte MenuList_19TLComponentInstance_____dt_void_

.global lbl_80210290
lbl_80210290:

	# ROM: 0x20D290
	.4byte lbl_8065A0A8
	.4byte 0
	.4byte cHeadTrack____dt_void__N19

.global lbl_8021029C
lbl_8021029C:

	# ROM: 0x20D29C
	.4byte lbl_8065A0B0
	.4byte 0
	.4byte 0

.global lbl_802102A8
lbl_802102A8:

	# ROM: 0x20D2A8
	.4byte lbl_8065A0B0
	.4byte 0
	.4byte lbl_8065A0B8
	.4byte 0
	.4byte 0

.global lbl_802102BC
lbl_802102BC:

	# ROM: 0x20D2BC
	.4byte lbl_8065A0C0
	.4byte 0
	.4byte InGameTextOverlay____dt_void_
	.4byte UpdateDataWith_8065c0e8
	.4byte zz_80023030_
	.4byte zz_8002289c_

.global lbl_802102D4
lbl_802102D4:

	# ROM: 0x20D2D4
	.4byte lbl_8065A0C8
	.4byte 0
	.4byte cHeadTrack____dt_void__N20

.global lbl_802102E0
lbl_802102E0:

	# ROM: 0x20D2E0
	.4byte lbl_8065A0D0
	.4byte 0
	.4byte cHeadTrack____dt_void__N21

.global CFbTexEff_struct
CFbTexEff_struct:

	# ROM: 0x20D2EC
	.4byte lbl_8065A0D8
	.4byte 0
	.4byte DBClose_N16
	.4byte DBClose_N17
	.4byte DBClose_N18
	.4byte DBClose_N19
	.4byte DBClose_N20

.global lbl_80210308
lbl_80210308:

	# ROM: 0x20D308
	.4byte lbl_8065A0E0
	.4byte 0
	.4byte cHeadTrack____dt_void__N22

.global lbl_80210314
lbl_80210314:

	# ROM: 0x20D314
	.4byte lbl_80659FA0
	.4byte 0
	.4byte cHeadTrack____dt_void__N8

.global lbl_80210320
lbl_80210320:

	# ROM: 0x20D320
	.4byte lbl_8065A0E8
	.4byte 0
	.4byte 0

.global lbl_8021032C
lbl_8021032C:

	# ROM: 0x20D32C
	.4byte lbl_8065A0F0
	.4byte 0
	.4byte cHeadTrack____dt_void__N5

.global lbl_80210338
lbl_80210338:

	# ROM: 0x20D338
	.4byte lbl_8065A0F8
	.4byte 0
	.4byte SetCTexObj

.global lbl_80210344
lbl_80210344:

	# ROM: 0x20D344
	.4byte lbl_8065A0B0
	.4byte 0
	.4byte 0

.global lbl_80210350
lbl_80210350:

	# ROM: 0x20D350
	.4byte lbl_8065A100
	.4byte 0
	.4byte FormationOffensive____dt_void__N15
	.4byte DBClose_N4

.global lbl_80210360
lbl_80210360:

	# ROM: 0x20D360
	.4byte lbl_8065A0B0
	.4byte 0
	.4byte cHeadTrack____dt_void__N23

.global lbl_8021036C
lbl_8021036C:

	# ROM: 0x20D36C
	.4byte lbl_8065A108
	.4byte 0
	.4byte SetScreenFuncs

.global lbl_80210378
lbl_80210378:

	# ROM: 0x20D378
	.4byte lbl_8065A110
	.4byte 0
	.4byte SetCParticle

.global lbl_80210384
lbl_80210384:

	# ROM: 0x20D384
	.4byte lbl_8065A118
	.4byte 0
	.4byte SetCScrnQuake

.global lbl_80210390
lbl_80210390:

	# ROM: 0x20D390
	.4byte lbl_8065A120
	.4byte 0
	.4byte cHeadTrack____dt_void__N24

.global lbl_8021039C
lbl_8021039C:

	# ROM: 0x20D39C
	.4byte lbl_8065A128
	.4byte 0
	.4byte cHeadTrack____dt_void__N25

.global lbl_802103A8
lbl_802103A8:

	# ROM: 0x20D3A8
	.4byte lbl_8065A130
	.4byte 0
	.4byte cHeadTrack____dt_void__N26

.global lbl_802103B4
lbl_802103B4:

	# ROM: 0x20D3B4
	.4byte lbl_8065A138
	.4byte 0
	.4byte SetCStack

.global lbl_802103C0
lbl_802103C0:

	# ROM: 0x20D3C0
	.4byte lbl_8065A140
	.4byte 0
	.4byte cHeadTrack____dt_void__N27

.global lbl_802103CC
lbl_802103CC:

	# ROM: 0x20D3CC
	.4byte lbl_8065A140
	.4byte 0
	.4byte 0

.global lbl_802103D8
lbl_802103D8:

	# ROM: 0x20D3D8
	.4byte lbl_8065A148
	.4byte 0
	.4byte InitXSound

.global lbl_802103E4
lbl_802103E4:

	# ROM: 0x20D3E4
	.4byte lbl_8065A150
	.4byte 0
	.4byte SetCCard

.global lbl_802103F0
lbl_802103F0:

	# ROM: 0x20D3F0
	.4byte lbl_8065A158
	.4byte 0
	.4byte SetMemCard

.global lbl_802103FC
lbl_802103FC:

	# ROM: 0x20D3FC
	.4byte lbl_8065A160
	.4byte 0
	.4byte cHeadTrack____dt_void__N28

.global lbl_80210408
lbl_80210408:

	# ROM: 0x20D408
	.4byte lbl_8065A0D8
	.4byte 0
	.4byte 0

.global lbl_80210414
lbl_80210414:

	# ROM: 0x20D414
	.4byte lbl_8065A168
	.4byte 0
	.4byte zz_80014978_
	.4byte KnotTableBlendEntry____ct_void_
	.4byte zz_800146d0_
	.4byte zz_800148c0_
	.4byte zz_800137c0_

.global lbl_80210430
lbl_80210430:

	# ROM: 0x20D430
	.4byte lbl_8065A0D8
	.4byte 0
	.4byte 0

.global FBMirror_struct
FBMirror_struct:

	# ROM: 0x20D43C
	.4byte lbl_8065A170
	.4byte 0
	.4byte zz_800151e0_
	.4byte DBClose_N5
	.4byte zz_80014ba8_
	.4byte zz_80014da4_
	.4byte zz_80014a64_

.global lbl_80210458
lbl_80210458:

	# ROM: 0x20D458
	.4byte lbl_80659ED0
	.4byte 0
	.4byte SetCBase
	.4byte DBClose_N8
	.4byte initCBase
	.4byte gdev_cc_shutdown
	.4byte zz_800153bc_
	.4byte DBClose_N9
	.4byte DBClose_N7
	.4byte DBClose_N6
	.4byte gdev_cc_shutdown_N2
	.4byte CBGetBytesAvailableForRead
	.4byte J3DTexGenBlock4__getNBTScale_void_
	.4byte J3DTexGenBlock4__getNBTScale_void__N2
	.4byte NSNMessengerScene__SceneCreated_void_
	.4byte J3DTexGenBlock4__getNBTScale_void__N3
	.4byte J3DTexGenBlock4__getNBTScale_void__N4
	.4byte NSNMessengerScene__SceneCreated_void__N7
	.4byte KillCBase

.global lbl_802104A4
lbl_802104A4:

	# ROM: 0x20D4A4
	.4byte lbl_8065A178
	.4byte 0
	.4byte cHeadTrack____dt_void__N29
	.4byte zz_80019480_

.global lbl_802104B4
lbl_802104B4:

	# ROM: 0x20D4B4
	.4byte lbl_8065A0D8
	.4byte 0
	.4byte lbl_8065A170
	.4byte 0
	.4byte 0

.global lbl_802104C8
lbl_802104C8:

	# ROM: 0x20D4C8
	.4byte lbl_8065A180
	.4byte 0
	.4byte zz_8001bc34_
	.4byte DBClose_N5
	.4byte zz_80014ba8_
	.4byte zz_80014da4_
	.4byte zz_80014a64_

.global lbl_802104E4
lbl_802104E4:

	# ROM: 0x20D4E4
	.4byte lbl_8065A188
	.4byte 0
	.4byte GetFileToRegister

.global lbl_802104F0
lbl_802104F0:

	# ROM: 0x20D4F0
	.4byte lbl_8065A190
	.4byte 0
	.4byte cHeadTrack____dt_void__N30
	.4byte 0x30303030

.global lbl_80210500
lbl_80210500:

	# ROM: 0x20D500
	.4byte s_STAGE_NO_801fe004
	.4byte 0x00000002
	.4byte 0
	.4byte 0

.global lbl_80210510
lbl_80210510:

	# ROM: 0x20D510
	.4byte s_DRAW_XZGRID_801fe010
	.4byte 0
	.4byte 0
	.4byte 0x00040000
	.4byte lbl_801FE01C
	.4byte 0
	.4byte 0
	.4byte 0x00080000
	.4byte lbl_801FE02C
	.4byte 0
	.4byte 0
	.4byte 0x00100000
	.4byte lbl_801FE03C
	.4byte 0
	.4byte 0
	.4byte 0x00200000
	.4byte lbl_801FE050
	.4byte 0
	.4byte 0
	.4byte 0x00400000
	.4byte lbl_801FE060
	.4byte 0
	.4byte 0
	.4byte 0x00800000
	.4byte lbl_801FE070
	.4byte 0x00000005
	.4byte 0x00040000
	.4byte 0
	.4byte lbl_801FE080
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte lbl_801FE094
	.4byte 0
	.4byte 0
	.4byte 0x02000000
	.4byte lbl_801FE0A4
	.4byte 0
	.4byte 0x00200000
	.4byte 0
	.4byte lbl_801FE0B8
	.4byte 0
	.4byte 0
	.4byte 0x04000000
	.4byte lbl_801FE0C8
	.4byte 0
	.4byte 0
	.4byte 0x08000000
	.4byte lbl_801FE0D8
	.4byte 0
	.4byte 0
	.4byte 0x10000000
	.4byte lbl_801FE0E8
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte lbl_801FE0F4
	.4byte 0
	.4byte 0
	.4byte 0x20000000
	.4byte lbl_801FE104
	.4byte 0
	.4byte 0
	.4byte 0x40000000
	.4byte lbl_801FE114
	.4byte 0
	.4byte 0x00004000
	.4byte 0
	.4byte lbl_801FE124
	.4byte 0
	.4byte 0x00020000
	.4byte 0
	.4byte lbl_801FE134
	.4byte 0
	.4byte 0
	.4byte 0x80000000
	.4byte lbl_801FE144
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000001
	.4byte lbl_801FE158
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000002
	.4byte lbl_801FE16C
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000003
	.4byte lbl_801FE180
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_801FE194
	.4byte 0
	.4byte 0x00000200
	.4byte 0
	.4byte lbl_801FE1A8
	.4byte 0

.global lbl_80210698
lbl_80210698:

	# ROM: 0x20D698
	.4byte 0x00000400
	.4byte 0
	.4byte lbl_801FE1B8
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte lbl_801FE1C8
	.4byte 0
	.4byte 0x00100000
	.4byte 0
	.4byte lbl_801FE1DC
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte lbl_801FE1EC
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_801FE1FC
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000005
	.4byte lbl_801FE20C
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_801FE220
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000007
	.4byte lbl_801FE230
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80210730
lbl_80210730:

	# ROM: 0x20D730
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80210748
lbl_80210748:

	# ROM: 0x20D748
	.4byte lbl_8065A198
	.4byte 0
	.4byte 0

.global lbl_80210754
lbl_80210754:

	# ROM: 0x20D754
	.4byte lbl_8065A198
	.4byte 0
	.4byte lbl_8065A1A0
	.4byte 0
	.4byte 0

.global lbl_80210768
lbl_80210768:

	# ROM: 0x20D768
	.4byte lbl_8065A1A8
	.4byte 0
	.4byte FormationOffensive____dt_void__N22
	.4byte zz_8019fd4c_
	.4byte OverlayManager__DestroyMessengerManager_void_
	.4byte ReadCFile
	.4byte zz_8019f8d8_

.global lbl_80210784
lbl_80210784:

	# ROM: 0x20D784
	.4byte OpenFileStream
	.4byte CloseDevice
	.4byte zz_8019f6ec_

.global lbl_80210790
lbl_80210790:

	# ROM: 0x20D790
	.4byte lbl_8065A1B0
	.4byte 0
	.4byte cHeadTrack____dt_void__N33
	.4byte 0x30303030

.global lbl_802107A0
lbl_802107A0:

	# ROM: 0x20D7A0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_80210808
lbl_80210808:

	# ROM: 0x20D808
	.4byte 0
	.4byte s_sfx_kitchen_ssm_801fe2f8
	.4byte s_sfx_stage02_ssm_801fe308
	.4byte s_sfx_souko_ssm_801fe318
	.4byte s_sfx_jennyroom_ssm_801fe328
	.4byte s_sfx_stage05_ssm_801fe33c
	.4byte s_sfx_papamama_ssm_801fe34c
	.4byte s_sfx_stage07_ssm_801fe360
	.4byte 0
	.4byte lbl_801FE370
	.4byte 0
	.4byte lbl_801FE380
	.4byte 0
	.4byte lbl_801FE390
	.4byte s_sfx_stage07_ssm_801fe360
	.4byte 0
	.4byte lbl_801FE3A0
	.4byte 0
	.4byte lbl_801FE3A0
	.4byte s_sfx_stage07_ssm_801fe360
	.4byte 0
	.4byte 0
	.4byte lbl_801FE3AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801FE390
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80210898
lbl_80210898:

	# ROM: 0x20D898
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802108A8
lbl_802108A8:

	# ROM: 0x20D8A8
	.4byte s_streaming_sample_hps_801fe3bc
	.4byte 0xFF000000
	.4byte s_streaming_sample_hps_801fe3bc
	.4byte 0xFF000000
	.4byte lbl_801FE3D4
	.4byte 0xFF000000
	.4byte lbl_801FE3E8
	.4byte 0x96000000
	.4byte lbl_801FE3FC
	.4byte 0x96000000
	.4byte lbl_801FE410
	.4byte 0xB4000000
	.4byte lbl_801FE424
	.4byte 0xB4000000
	.4byte lbl_801FE43C
	.4byte 0xFF000000
	.4byte lbl_801FE454
	.4byte 0xFF000000
	.4byte lbl_801FE46C
	.4byte 0xFF000000
	.4byte lbl_801FE480
	.4byte 0xFF000000
	.4byte lbl_801FE494
	.4byte 0x78000000
	.4byte lbl_801FE4AC
	.4byte 0xFF000000
	.4byte lbl_801FE4C4
	.4byte 0xFF000000
	.4byte lbl_801FE4E0
	.4byte 0xFF000000
	.4byte lbl_801FE504
	.4byte 0xFF000000
	.4byte lbl_801FE520
	.4byte 0xB4000000
	.4byte lbl_801FE538
	.4byte 0xFF000000
	.4byte lbl_801FE554
	.4byte 0xFF000000
	.4byte lbl_801FE56C
	.4byte 0xFF000000
	.4byte lbl_801FE584
	.4byte 0xFF000000
	.4byte lbl_801FE598
	.4byte 0xFF000000
	.4byte lbl_801FE5B0
	.4byte 0xFF000000
	.4byte lbl_801FE5CC
	.4byte 0xFF000000
	.4byte lbl_801FE5E4
	.4byte 0xFF000000
	.4byte lbl_801FE5F8
	.4byte 0xFF000000
	.4byte lbl_801FE60C

.global lbl_8021097C
lbl_8021097C:

	# ROM: 0x20D97C
	.4byte 0xB4000000

.global lbl_80210980
lbl_80210980:

	# ROM: 0x20D980
	.4byte lbl_801FE620

.global lbl_80210984
lbl_80210984:

	# ROM: 0x20D984
	.4byte 0xB4000000

.global lbl_80210988
lbl_80210988:

	# ROM: 0x20D988
	.4byte lbl_801FE634

.global lbl_8021098C
lbl_8021098C:

	# ROM: 0x20D98C
	.4byte 0x96000000

.global lbl_80210990
lbl_80210990:

	# ROM: 0x20D990
	.4byte lbl_801FE648

.global lbl_80210994
lbl_80210994:

	# ROM: 0x20D994
	.4byte 0xFF000000

.global lbl_80210998
lbl_80210998:

	# ROM: 0x20D998
	.4byte lbl_801FE660

.global lbl_8021099C
lbl_8021099C:

	# ROM: 0x20D99C
	.4byte 0xFF000000

.global lbl_802109A0
lbl_802109A0:

	# ROM: 0x20D9A0
	.4byte lbl_801FE678
	.4byte 0xFF000000

.global lbl_802109A8
lbl_802109A8:

	# ROM: 0x20D9A8
	.4byte lbl_801FE690

.global lbl_802109AC
lbl_802109AC:

	# ROM: 0x20D9AC
	.4byte 0xFF000000

.global lbl_802109B0
lbl_802109B0:

	# ROM: 0x20D9B0
	.4byte lbl_801FE6A8

.global lbl_802109B4
lbl_802109B4:

	# ROM: 0x20D9B4
	.4byte 0xFF000000
	.4byte lbl_801FE6C0
	.4byte 0xFF000000
	.4byte lbl_801FE6DC
	.4byte 0xFF000000
	.4byte lbl_801FE6FC
	.4byte 0xFF000000
	.4byte lbl_801FE71C
	.4byte 0xFF000000
	.4byte lbl_801FE738
	.4byte 0xFF000000
	.4byte lbl_801FE758
	.4byte 0xFF000000
	.4byte lbl_801FE778
	.4byte 0xFF000000
	.4byte lbl_801FE78C
	.4byte 0xFF000000
	.4byte lbl_801FE7A0
	.4byte 0xFF000000
	.4byte lbl_801FE7B8
	.4byte 0xFF000000
	.4byte lbl_801FE7D0
	.4byte 0xFF000000
	.4byte lbl_801FE7E8
	.4byte 0xFF000000
	.4byte lbl_801FE7FC
	.4byte 0xFF000000
	.4byte lbl_801FE810
	.4byte 0xFF000000
	.4byte lbl_801FE828
	.4byte 0xFF000000
	.4byte lbl_801FE83C
	.4byte 0xFF000000
	.4byte lbl_801FE854
	.4byte 0xFF000000
	.4byte lbl_801FE86C
	.4byte 0xFF000000
	.4byte lbl_801FE884
	.4byte 0xFF000000
	.4byte lbl_801FE8A0
	.4byte 0xFF000000
	.4byte lbl_801FE8B8
	.4byte 0xFF000000
	.4byte lbl_801FE8CC
	.4byte 0xFF000000
	.4byte lbl_801FE8E4
	.4byte 0x9B000000
	.4byte lbl_801FE8FC
	.4byte 0xFF000000
	.4byte lbl_801FE914
	.4byte 0x96000000
	.4byte lbl_801FE928
	.4byte 0xDC000000
	.4byte lbl_801FE93C
	.4byte 0xFF000000
	.4byte lbl_801FE954
	.4byte 0xFF000000
	.4byte lbl_801FE968
	.4byte 0xFF000000
	.4byte lbl_801FE97C
	.4byte 0xFF000000
	.4byte lbl_801FE990
	.4byte 0xFF000000
	.4byte lbl_801FE9A8
	.4byte 0xFF000000
	.4byte lbl_801FE9C0
	.4byte 0xFF000000
	.4byte lbl_801FE9DC
	.4byte 0xFF000000
	.4byte lbl_801FE9F0
	.4byte 0xFF000000
	.4byte lbl_801FEA04
	.4byte 0xFF000000
	.4byte lbl_801FEA1C
	.4byte 0xFF000000
	.4byte lbl_801FEA34
	.4byte 0xFF000000
	.4byte lbl_801FEA4C
	.4byte 0x3C000000
	.4byte lbl_801FEA64
	.4byte 0xFF000000
	.4byte lbl_801FEA78
	.4byte 0xFF000000
	.4byte lbl_801FEA90
	.4byte 0xB4000000
	.4byte lbl_801FEAA8
	.4byte 0xFF000000
	.4byte lbl_801FEAC0
	.4byte 0xFF000000
	.4byte lbl_801FEAD4
	.4byte 0xFF000000
	.4byte lbl_801FEAEC
	.4byte 0xFF000000
	.4byte lbl_801FEB04
	.4byte 0xFF000000
	.4byte lbl_801FEB18
	.4byte 0x96000000
	.4byte lbl_801FEB30
	.4byte 0xFF000000
	.4byte lbl_801FEB44
	.4byte 0xFF000000
	.4byte lbl_801FEB58
	.4byte 0xFF000000
	.4byte lbl_801FEB6C
	.4byte 0xFF000000
	.4byte lbl_801FEB84
	.4byte 0xFF000000

.global lbl_80210B60
lbl_80210B60:

	# ROM: 0x20DB60
	.4byte lbl_801FEB98
	.4byte 0xC8000000
	.4byte lbl_801FEBB0
	.4byte 0xDC000000
	.4byte lbl_801FEBC8
	.4byte 0xDC000000
	.4byte lbl_801FEBE0
	.4byte 0xFF000000

.global lbl_80210B80
lbl_80210B80:

	# ROM: 0x20DB80
	.4byte lbl_801FEBF4
	.4byte 0xFF000000
	.4byte lbl_801FEC0C

.global lbl_80210B8C
lbl_80210B8C:

	# ROM: 0x20DB8C
	.4byte 0xFF000000
	.4byte lbl_801FEC24

.global lbl_80210B94
lbl_80210B94:

	# ROM: 0x20DB94
	.4byte 0xFF000000
	.4byte lbl_801FEC3C
	.4byte 0xFF000000
	.4byte lbl_801FEC54
	.4byte 0xFF000000
	.4byte lbl_801FEC68
	.4byte 0xFF000000
	.4byte lbl_801FEC80
	.4byte 0xFF000000
	.4byte lbl_801FEC94
	.4byte 0xE6000000
	.4byte lbl_801FECA8
	.4byte 0xFF000000
	.4byte lbl_801FECC0
	.4byte 0xFF000000
	.4byte lbl_801FECD8
	.4byte 0xFF000000
	.4byte lbl_801FECEC
	.4byte 0xFF000000
	.4byte lbl_801FED00
	.4byte 0xB4000000
	.4byte lbl_801FED18

.global lbl_80210BEC
lbl_80210BEC:

	# ROM: 0x20DBEC
	.4byte 0xFF000000

.global lbl_80210BF0
lbl_80210BF0:

	# ROM: 0x20DBF0
	.4byte lbl_801FED2C
	.4byte 0xFF000000
	.4byte lbl_801FED40
	.4byte 0xFF000000
	.4byte lbl_801FED54
	.4byte 0xFF000000
	.4byte lbl_801FED6C
	.4byte 0xFF000000

.global lbl_80210C10
lbl_80210C10:

	# ROM: 0x20DC10
	.4byte 0x42C80000
	.4byte 0x42960000
	.4byte 0x42480000
	.4byte 0x41C80000
	.4byte 0x43960000
	.4byte 0x43480000
	.4byte 0x43480000
	.4byte 0x43160000
	.4byte 0x42960000
	.4byte 0x42200000
	.4byte 0x41F00000
	.4byte 0x41C80000
	.4byte 0x41F00000
	.4byte 0x41A00000
	.4byte 0x41200000
	.4byte 0x40A00000
	.4byte 0x44160000
	.4byte 0x43960000
	.4byte 0x43480000
	.4byte 0x43160000
	.4byte 0x00000021
	.4byte 0x00000022
	.4byte 0x00000023
	.4byte 0x00000024
	.4byte 0x00000025
	.4byte 0x00000026

.global lbl_80210C78
lbl_80210C78:

	# ROM: 0x20DC78
	.4byte 0x00000027

.global lbl_80210C7C
lbl_80210C7C:

	# ROM: 0x20DC7C
	.4byte 0x00000028

.global lbl_80210C80
lbl_80210C80:

	# ROM: 0x20DC80
	.4byte 0x00000029

.global lbl_80210C84
lbl_80210C84:

	# ROM: 0x20DC84
	.4byte 0x0000002A

.global lbl_80210C88
lbl_80210C88:

	# ROM: 0x20DC88
	.4byte 0x00000021

.global lbl_80210C8C
lbl_80210C8C:

	# ROM: 0x20DC8C
	.4byte 0x00000022

.global lbl_80210C90
lbl_80210C90:

	# ROM: 0x20DC90
	.4byte 0x00000023

.global lbl_80210C94
lbl_80210C94:

	# ROM: 0x20DC94
	.4byte 0x00000024

.global lbl_80210C98
lbl_80210C98:

	# ROM: 0x20DC98
	.4byte 0x00000025
	.4byte 0x0000002B

.global lbl_80210CA0
lbl_80210CA0:

	# ROM: 0x20DCA0
	.4byte 0x0000002C

.global lbl_80210CA4
lbl_80210CA4:

	# ROM: 0x20DCA4
	.4byte 0x0000002D
	.4byte 0x0000002E
	.4byte 0x0000002F
	.4byte 0x00000030
	.4byte 0x00000031
	.4byte 0x00000032
	.4byte 0x00000033
	.4byte 0x00000034
	.4byte 0x00000021
	.4byte 0x00000022
	.4byte 0x00000023
	.4byte 0x00000024
	.4byte 0x00000025
	.4byte 0x00000021
	.4byte 0x00000022
	.4byte 0x00000023
	.4byte 0x00000024
	.4byte 0x00000025
	.4byte 0x0000002B
	.4byte 0x0000002C
	.4byte 0x0000002D
	.4byte 0x0000002E
	.4byte 0x0000002F
	.4byte 0x0000002B
	.4byte 0x0000002C
	.4byte 0x0000002D
	.4byte 0x0000002E
	.4byte 0x0000002F
	.4byte 0x00000021
	.4byte 0x00000022
	.4byte 0x00000023
	.4byte 0x00000024
	.4byte 0x00000025
	.4byte 0x00000030
	.4byte 0x00000031
	.4byte 0x00000032
	.4byte 0x00000033
	.4byte 0x00000034
	.4byte 0x0000002B
	.4byte 0x0000002C
	.4byte 0x0000002D
	.4byte 0x0000002E
	.4byte 0x0000002F
	.4byte 0x00000021
	.4byte 0x00000022
	.4byte 0x00000023
	.4byte 0x00000024
	.4byte 0x00000025
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0x00000013
	.4byte 0x00000014
	.4byte 0x00000015
	.4byte 0x00000016
	.4byte 0x00000017
	.4byte 0x00000018
	.4byte 0x000000FD
	.4byte 0x000000FE
	.4byte 0x000000FF
	.4byte 0x00000100
	.4byte 0x000000FD
	.4byte 0x000000FE
	.4byte 0x000000FF
	.4byte 0x00000100
	.4byte 0x00000101
	.4byte 0x00000101
	.4byte 0x00000102
	.4byte 0x00000102
	.4byte 0x00000103
	.4byte 0x00000103
	.4byte 0x00000104
	.4byte 0x00000105
	.4byte 0x00000106
	.4byte 0x00000101
	.4byte 0x00000107
	.4byte 0x00000102
	.4byte 0x00000108
	.4byte 0x00000103
	.4byte 0x00000109
	.4byte 0x0000010A
	.4byte 0x0000010B
	.4byte 0x00000110
	.4byte 0x00000111
	.4byte 0x00000112
	.4byte 0x00000113
	.4byte 0x00000114
	.4byte 0x00000115
	.4byte 0x00000116
	.4byte 0x00000117
	.4byte 0x00000137
	.4byte 0x00000138
	.4byte 0x00000139
	.4byte 0x0000013A
	.4byte 0x0000013B
	.4byte 0x0000013C
	.4byte 0x0000013D
	.4byte 0x0000013E
	.4byte 0x0000013F
	.4byte 0x00000140
	.4byte 0x00000141
	.4byte 0x00000176
	.4byte 0x00000177
	.4byte 0x00000178
	.4byte 0x00000179
	.4byte 0x0000017A
	.4byte 0x0000017B
	.4byte 0x0000016F
	.4byte 0x00000170
	.4byte 0x00000171
	.4byte 0x00000172
	.4byte 0x00000173
	.4byte 0x00000174
	.4byte 0x000000C1
	.4byte 0x000000C2
	.4byte 0x000000C3
	.4byte 0x000000C4
	.4byte 0x000000C5
	.4byte 0x000000C6
	.4byte 0x000000C7
	.4byte 0x00000092
	.4byte 0x00000093
	.4byte 0x00000094
	.4byte 0x00000095
	.4byte 0x00000096
	.4byte 0x00000097
	.4byte 0x00000098
	.4byte 0x00000099
	.4byte 0x0000009A
	.4byte 0x0000009B
	.4byte 0x0000009E
	.4byte 0x0000009F
	.4byte 0x000000A0
	.4byte 0x000000A1
	.4byte 0x000000A2
	.4byte 0x000000A3
	.4byte 0x000000A4
	.4byte 0x000000A5
	.4byte 0x000000A6
	.4byte 0x000000A7
	.4byte 0x000000B7
	.4byte 0x000000B8
	.4byte 0x000000B9
	.4byte 0x000000BA
	.4byte 0x000000BB
	.4byte 0x000000BC
	.4byte 0x000000BD
	.4byte 0x000000BE
	.4byte 0x000000BF
	.4byte 0x000000C0
	.4byte 0x00110000
	.4byte 0x00110001
	.4byte 0x00110002
	.4byte 0x00110003
	.4byte 0x00110004
	.4byte 0x00110005
	.4byte 0x00110006
	.4byte 0x00110007
	.4byte 0x00110008
	.4byte 0x00110009
	.4byte 0x000C0000
	.4byte 0x000C0001

.global lbl_80210F28
lbl_80210F28:

	# ROM: 0x20DF28
	.4byte 0x000C0002
	.4byte 0x000C0003
	.4byte 0x000C0004
	.4byte 0x000D0000
	.4byte 0x000D0001
	.4byte 0x000D0002
	.4byte 0x000D0003
	.4byte 0x000D0004
	.4byte 0x000D0005
	.4byte 0x000D0006
	.4byte 0x000D0007
	.4byte 0x000D0008
	.4byte 0x000D0009
	.4byte 0x00000050
	.4byte 0x00000051
	.4byte 0x00000052
	.4byte 0x00000053
	.4byte 0x00000054
	.4byte 0x00000055
	.4byte 0x00000056
	.4byte 0x00000057
	.4byte 0x00000058
	.4byte 0x00000059
	.4byte 0x0000005A
	.4byte 0x000E0000
	.4byte 0x000E0001
	.4byte 0x000E0002
	.4byte 0x000E0003
	.4byte 0x000E0004
	.4byte 0x0000005B
	.4byte 0x0000005C
	.4byte 0x0000005D
	.4byte 0x0000005E
	.4byte 0x0000005F
	.4byte 0x00000060
	.4byte 0x00000061
	.4byte 0x00000062
	.4byte 0x00000063
	.4byte 0x00000064
	.4byte 0x00000065
	.4byte 0x00000066
	.4byte 0x00000067
	.4byte 0x00000068
	.4byte 0x00000069
	.4byte 0x0000006A
	.4byte 0x0000006B
	.4byte 0x0000006C
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0000006F
	.4byte 0x00000070
	.4byte 0x00000071
	.4byte 0x00000072
	.4byte 0x00000073
	.4byte 0x00000074
	.4byte 0x00000075
	.4byte 0x00000076
	.4byte 0x000000C8
	.4byte 0x000000C9
	.4byte 0x000000CA
	.4byte 0x000000CB
	.4byte 0x000000CC
	.4byte 0x000000CD
	.4byte 0x000000CE
	.4byte 0x000000CF
	.4byte 0x000000D0
	.4byte 0x000000D1
	.4byte 0x00000077
	.4byte 0x00000078
	.4byte 0x00000079
	.4byte 0x0000007A
	.4byte 0x0000007B
	.4byte 0x0000007C
	.4byte 0x0000007D
	.4byte 0x0000007E
	.4byte 0x0000007F
	.4byte 0x00000080
	.4byte 0x00100000
	.4byte 0x00100001
	.4byte 0x00100002
	.4byte 0x00100003
	.4byte 0x00100004
	.4byte 0x00100005
	.4byte 0x00100006
	.4byte 0x00100007
	.4byte 0x00100008
	.4byte 0x00100009
	.4byte 0x000000D8
	.4byte 0x000000D9
	.4byte 0x000000DA
	.4byte 0x000000DB
	.4byte 0x000000DC
	.4byte 0x000000DD
	.4byte 0x000000DE
	.4byte 0x000000DF
	.4byte 0x000000E0
	.4byte 0x000000E1
	.4byte 0x000000E2
	.4byte 0x000000E3
	.4byte 0x000000E4
	.4byte 0x000000E5
	.4byte 0x000000E6
	.4byte 0x000000E7
	.4byte 0x000000E8
	.4byte 0x000000E9
	.4byte 0x000000EA
	.4byte 0x000000EB
	.4byte 0x000F0000
	.4byte 0x000F0001
	.4byte 0x000F0002
	.4byte 0x000F0003
	.4byte 0x000F0004
	.4byte 0x000F0005
	.4byte 0x000F0006
	.4byte 0x000F0007
	.4byte 0x000F0008
	.4byte 0x000F0009
	.4byte 0x000F000A
	.4byte 0x000F000B
	.4byte 0x000F000C
	.4byte 0x000F000D
	.4byte 0x000F000E
	.4byte 0x000F000F
	.4byte 0x000F0010
	.4byte 0x000F0011
	.4byte 0x000F0012
	.4byte 0x000F0013
	.4byte 0x0000014C
	.4byte 0x0000014D
	.4byte 0x0000014E
	.4byte 0x0000014F
	.4byte 0x00000150
	.4byte 0x00000151
	.4byte 0x00000152
	.4byte 0x00000153
	.4byte 0x00000154
	.4byte 0x00000155
	.4byte 0x00000156
	.4byte 0x00000157
	.4byte 0x00000158
	.4byte 0x00000159
	.4byte 0x0000015A
	.4byte 0x0010000A
	.4byte 0x0010000B
	.4byte 0x0010000C
	.4byte 0x0010000D
	.4byte 0x0010000E
	.4byte 0x0010000F
	.4byte 0x00000163
	.4byte 0x00000164
	.4byte 0x00000165
	.4byte 0x00000166
	.4byte 0x00000167
	.4byte 0x00000168
	.4byte 0x00000169
	.4byte 0x0000016A
	.4byte 0x0000016B
	.4byte 0x0000016C
	.4byte 0x00120000
	.4byte 0x00120001
	.4byte 0x00120002
	.4byte 0x00120003
	.4byte 0x00120004
	.4byte 0x00120005
	.4byte 0x00120006
	.4byte 0x00120007
	.4byte 0x00120008
	.4byte 0x00120009
	.4byte 0x0012000A
	.4byte 0x0012000B
	.4byte 0x0012000C

.global lbl_802111D4
lbl_802111D4:

	# ROM: 0x20E1D4
	.4byte 0x0012000D
	.4byte 0x0012000E
	.4byte 0x0012000F
	.4byte 0x00120010
	.4byte 0x00120011
	.4byte 0x00120012
	.4byte 0x00120013
	.4byte 0x00120014
	.4byte 0x00120015
	.4byte 0x00120016
	.4byte 0x00090014
	.4byte 0x00090015
	.4byte 0x00090016
	.4byte 0x00090017
	.4byte 0x00090018
	.4byte 0x00090019
	.4byte 0x00060010
	.4byte 0x00060011
	.4byte 0x00060012
	.4byte 0x00060013
	.4byte 0x00060014
	.4byte 0x00060015
	.4byte 0x00060016
	.4byte 0x00060017
	.4byte 0x000001AD
	.4byte 0x000001AE
	.4byte 0x000001AF
	.4byte 0x000001B0
	.4byte 0x000001B1
	.4byte 0x000001B2
	.4byte 0x000001B3
	.4byte 0x000001B4
	.4byte 0x00010027
	.4byte 0x00010028
	.4byte 0x00010029
	.4byte 0x0001002A
	.4byte 0x0001002B
	.4byte 0x0001002C
	.4byte 0x000000EE
	.4byte 0x000000EF
	.4byte 0x000000F0
	.4byte 0x000000F1
	.4byte 0x000000F2
	.4byte 0x000000F3
	.4byte 0x000000F4
	.4byte 0x000000F5
	.4byte 0x000000F6
	.4byte 0x000000F7
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000004

.global lbl_802112A8
lbl_802112A8:

	# ROM: 0x20E2A8
	.4byte lbl_8065A1C8
	.4byte 0
	.4byte DBClose_N21
	.4byte zz_8001d9b0_
	.4byte zz_8001db98_
	.4byte gdev_cc_shutdown_N6
	.4byte zz_8001db48_

.global switchdataD_802112c4
switchdataD_802112c4:

	# ROM: 0x20E2C4
	.4byte lbl_8001DCE8
	.4byte lbl_8001DCF4
	.4byte lbl_8001DD00
	.4byte lbl_8001DD0C
	.4byte lbl_8001DD18
	.4byte lbl_8001DE68
	.4byte lbl_8001DE68
	.4byte lbl_8001DD24
	.4byte lbl_8001DD30
	.4byte lbl_8001DD3C
	.4byte lbl_8001DD48
	.4byte lbl_8001DD54
	.4byte lbl_8001DD60
	.4byte lbl_8001DD6C
	.4byte lbl_8001DD78
	.4byte lbl_8001DD84
	.4byte lbl_8001DD90
	.4byte lbl_8001DD9C
	.4byte lbl_8001DDA8
	.4byte lbl_8001DDB4
	.4byte lbl_8001DDC0
	.4byte lbl_8001DDCC
	.4byte lbl_8001DDD8
	.4byte lbl_8001DDE4
	.4byte lbl_8001DDF0
	.4byte lbl_8001DDFC
	.4byte lbl_8001DE08
	.4byte lbl_8001DE14
	.4byte lbl_8001DE20
	.4byte lbl_8001DE2C
	.4byte lbl_8001DE38
	.4byte lbl_8001DE44
	.4byte lbl_8001DE50
	.4byte lbl_8001DE5C
	.4byte 0x30303030

.global lbl_80211350
lbl_80211350:

	# ROM: 0x20E350
	.4byte lbl_8065A200
	.4byte 0
	.4byte 0

.global lbl_8021135C
lbl_8021135C:

	# ROM: 0x20E35C
	.4byte lbl_8065A200
	.4byte 0
	.4byte lbl_8065A208
	.4byte 0
	.4byte 0

.global lbl_80211370
lbl_80211370:

	# ROM: 0x20E370
	.4byte lbl_8065A210
	.4byte 0
	.4byte InGameTextOverlay____dt_void__N2
	.4byte zz_80021500_
	.4byte zz_80021474_
	.4byte zz_800207c8_

.global lbl_80211388
lbl_80211388:

	# ROM: 0x20E388
	.4byte lbl_8065A200
	.4byte 0
	.4byte lbl_8065A208
	.4byte 0
	.4byte 0

.global lbl_8021139C
lbl_8021139C:

	# ROM: 0x20E39C
	.4byte lbl_8065A218
	.4byte 0
	.4byte InGameTextOverlay____dt_void__N4
	.4byte UpdateDataWith_8065c0e8
	.4byte zz_80023030_
	.4byte zz_80021570_

.global lbl_802113B4
lbl_802113B4:

	# ROM: 0x20E3B4
	.4byte lbl_8065A200
	.4byte 0
	.4byte lbl_8065A208
	.4byte 0
	.4byte 0

.global lbl_802113C8
lbl_802113C8:

	# ROM: 0x20E3C8
	.4byte lbl_8065A220
	.4byte 0
	.4byte SetCScrnWipeTex
	.4byte UpdateDataWith_8065c0e8
	.4byte zz_80023030_
	.4byte zz_80021a98_

.global lbl_802113E0
lbl_802113E0:

	# ROM: 0x20E3E0
	.4byte lbl_8065A200
	.4byte 0
	.4byte lbl_8065A208
	.4byte 0
	.4byte 0

.global lbl_802113F4
lbl_802113F4:

	# ROM: 0x20E3F4
	.4byte lbl_8065A228
	.4byte 0
	.4byte InGameTextOverlay____dt_void__N3
	.4byte UpdateDataWith_8065c0e8
	.4byte zz_80023030_
	.4byte zz_800220dc_

.global lbl_8021140C
lbl_8021140C:

	# ROM: 0x20E40C
	.4byte lbl_8065A208
	.4byte 0
	.4byte FormationOffensive____dt_void__N18
	.4byte UpdateDataWith_8065c0e8
	.4byte zz_80023030_
	.4byte zz_8002289c_
	.4byte 0x30303030

.global lbl_80211428
lbl_80211428:

	# ROM: 0x20E428
	.4byte lbl_8065A230
	.4byte 0
	.4byte 0

.global lbl_80211434
lbl_80211434:

	# ROM: 0x20E434
	.4byte lbl_8065A238
	.4byte 0
	.4byte SetCPtclDust3
	.4byte nlListContainer_P8SaveData_____ct_void__N2
	.4byte zz_800247d8_
	.4byte zz_80024600_

.global lbl_8021144C
lbl_8021144C:

	# ROM: 0x20E44C
	.4byte lbl_8065A230
	.4byte 0
	.4byte SetCPtclOne
	.4byte nlListContainer_P8SaveData_____ct_void__N2
	.4byte DBClose_N23
	.4byte DBClose_N22

.global lbl_80211464
lbl_80211464:

	# ROM: 0x20E464
	.4byte lbl_8065A230
	.4byte 0
	.4byte 0

.global lbl_80211470
lbl_80211470:

	# ROM: 0x20E470
	.4byte lbl_8065A240
	.4byte 0
	.4byte SetCPtclDust2
	.4byte nlListContainer_P8SaveData_____ct_void__N2
	.4byte zz_80024b1c_
	.4byte zz_80024934_

.global lbl_80211488
lbl_80211488:

	# ROM: 0x20E488
	.4byte lbl_8065A248
	.4byte 0
	.4byte 0

.global lbl_80211494
lbl_80211494:

	# ROM: 0x20E494
	.4byte lbl_8065A248
	.4byte 0
	.4byte lbl_8065A250
	.4byte 0
	.4byte 0

.global lbl_802114A8
lbl_802114A8:

	# ROM: 0x20E4A8
	.4byte lbl_8065A248
	.4byte 0
	.4byte lbl_8065A250
	.4byte 0
	.4byte lbl_8065A258
	.4byte 0
	.4byte 0

.global lbl_802114C4
lbl_802114C4:

	# ROM: 0x20E4C4
	.4byte lbl_8065A248
	.4byte 0
	.4byte lbl_8065A250
	.4byte 0
	.4byte lbl_8065A258
	.4byte 0
	.4byte lbl_8065A260
	.4byte 0
	.4byte 0

.global lbl_802114E8
lbl_802114E8:

	# ROM: 0x20E4E8
	.4byte lbl_8065A268
	.4byte 0
	.4byte PhysicsSphere____dt_void_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80025150_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80025548_
	.4byte zz_800253b8_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80025228_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800256e4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_80026c78_
	.4byte DBClose_N24
	.4byte zz_800928e8_
	.4byte zz_80026c2c_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80026b9c_
	.4byte zz_80090c84_
	.4byte zz_80026b64_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global switchdataD_80211630
switchdataD_80211630:

	# ROM: 0x20E630
	.4byte func_80027A64
	.4byte lbl_80027568
	.4byte lbl_80027570
	.4byte lbl_800275EC
	.4byte lbl_80027644
	.4byte lbl_800276F8
	.4byte lbl_80027760
	.4byte lbl_800277B8
	.4byte lbl_800277F4
	.4byte lbl_8002785C
	.4byte lbl_800278B4
	.4byte lbl_800278F0
	.4byte lbl_80027958
	.4byte lbl_800279B0
	.4byte lbl_800279EC
	.4byte func_80027A64

.global lbl_80211670
lbl_80211670:

	# ROM: 0x20E670
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_802116D8
lbl_802116D8:

	# ROM: 0x20E6D8
	.4byte lbl_8065C290
	.4byte lbl_8065C294
	.4byte lbl_8065C298
	.4byte lbl_8065C29C
	.4byte lbl_8065C2A0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N34
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002e574_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002df3c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002dcfc_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N33
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002d7f4_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002d4f0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N32
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002d2d4_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002d18c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N31
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002ce40_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002ccf4_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002cb40_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002c738_
	.4byte 0

.global lbl_802117A4
lbl_802117A4:

	# ROM: 0x20E7A4
	.4byte 0xFFFFFFFF

.global lbl_802117A8
lbl_802117A8:

	# ROM: 0x20E7A8
	.4byte zz_8002c3f0_

.global lbl_802117AC
lbl_802117AC:

	# ROM: 0x20E7AC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N30
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N29
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002c2d0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002c1b8_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002bd0c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte cPlayer__PostPhysicsUpdate_void__N5
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte cPlayer__PostPhysicsUpdate_void__N4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N28
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8002bb80_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N27

.global lbl_80211824
lbl_80211824:

	# ROM: 0x20E824
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021195C
lbl_8021195C:

	# ROM: 0x20E95C
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_8021196C
lbl_8021196C:

	# ROM: 0x20E96C
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_8021197C
lbl_8021197C:

	# ROM: 0x20E97C
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_8021198C
lbl_8021198C:

	# ROM: 0x20E98C
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_8021199C
lbl_8021199C:

	# ROM: 0x20E99C
	.4byte lbl_8065A27C
	.4byte 0
	.4byte 0

.global lbl_802119A8
lbl_802119A8:

	# ROM: 0x20E9A8
	.4byte lbl_8065A27C
	.4byte 0
	.4byte lbl_8065A284
	.4byte 0
	.4byte 0

.global lbl_802119BC
lbl_802119BC:

	# ROM: 0x20E9BC
	.4byte lbl_8065A27C
	.4byte 0
	.4byte lbl_8065A284
	.4byte 0
	.4byte lbl_8065A28C
	.4byte 0
	.4byte 0

.global lbl_802119D8
lbl_802119D8:

	# ROM: 0x20E9D8
	.4byte lbl_8065A27C
	.4byte 0
	.4byte lbl_8065A284
	.4byte 0
	.4byte lbl_8065A28C
	.4byte 0
	.4byte lbl_8065A294
	.4byte 0
	.4byte 0

.global lbl_802119FC
lbl_802119FC:

	# ROM: 0x20E9FC
	.4byte lbl_8065A29C
	.4byte 0
	.4byte UpdateScene
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_80028368_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte DBClose_N24
	.4byte zz_800284e0_
	.4byte zz_8002840c_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800280b4_
	.4byte zz_80090c84_
	.4byte zz_80028000_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global switchdataD_80211b44
switchdataD_80211b44:

	# ROM: 0x20EB44
	.4byte func_8002A4F0
	.4byte func_8002A4F0
	.4byte lbl_80029F80
	.4byte lbl_8002A0B0
	.4byte func_8002A4F0
	.4byte lbl_8002A0D4
	.4byte lbl_8002A118
	.4byte func_8002A4F0
	.4byte lbl_8002A15C
	.4byte lbl_8002A29C
	.4byte func_8002A4F0
	.4byte lbl_8002A180
	.4byte lbl_8002A1EC
	.4byte lbl_8002A230
	.4byte lbl_8002A29C
	.4byte lbl_8002A2E4
	.4byte func_8002A4F0
	.4byte func_8002A4F0
	.4byte lbl_8002A328
	.4byte lbl_8002A36C
	.4byte lbl_8002A3D8
	.4byte lbl_8002A41C
	.4byte lbl_8002A460
	.4byte func_8002A4F0
	.4byte lbl_8002A4A4
	.4byte func_8002A4F0

.global switchdataD_80211bac
switchdataD_80211bac:

	# ROM: 0x20EBAC
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029E6C
	.4byte lbl_80029E6C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029E6C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029E6C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029F2C
	.4byte lbl_80029E6C

.global switchdataD_80211c10
switchdataD_80211c10:

	# ROM: 0x20EC10
	.4byte func_80030C5C
	.4byte lbl_8002EED8
	.4byte lbl_8002EF38
	.4byte func_8002F0F8
	.4byte lbl_8002F14C
	.4byte lbl_8002F1A0
	.4byte func_80030C5C
	.4byte func_80030C5C
	.4byte func_80030C5C
	.4byte func_80030C5C
	.4byte lbl_8002F510
	.4byte lbl_8002F790
	.4byte lbl_8002FC68
	.4byte lbl_80030A88
	.4byte lbl_80030AE0
	.4byte func_80030C5C
	.4byte func_80030C5C
	.4byte func_80030C5C
	.4byte func_80030C5C
	.4byte func_80030C5C
	.4byte lbl_80030658
	.4byte lbl_8003087C
	.4byte lbl_80030BF4
	.4byte func_80030C5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A2A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A2AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80211CC4
lbl_80211CC4:

	# ROM: 0x20ECC4
	.4byte lbl_8065A2B4
	.4byte 0
	.4byte 0
	.4byte lbl_8065A2B4
	.4byte 0
	.4byte lbl_8065A2BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30303030

.global lbl_80211DA0
lbl_80211DA0:

	# ROM: 0x20EDA0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_80211E08
lbl_80211E08:

	# ROM: 0x20EE08
	.4byte s_StatusMenu_801ff74c
	.4byte 0x00000001
	.4byte lbl_8065C440
	.4byte 0xFFFFFFFF
	.4byte lbl_801FF758
	.4byte 0x00000006
	.4byte lbl_801FF764
	.4byte 0x00000005
	.4byte 0
	.4byte 0

.global lbl_80211E30
lbl_80211E30:

	# ROM: 0x20EE30
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_80211E40
lbl_80211E40:

	# ROM: 0x20EE40
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_80211E50
lbl_80211E50:

	# ROM: 0x20EE50
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_80211E60
lbl_80211E60:

	# ROM: 0x20EE60
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_80211E70
lbl_80211E70:

	# ROM: 0x20EE70
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8005b39c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8005a290_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80059328_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80058c7c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80058bbc_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80058764_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N40
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N39
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80058034_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80057934_

.global lbl_80211EF8
lbl_80211EF8:

	# ROM: 0x20EEF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80211F70
lbl_80211F70:

	# ROM: 0x20EF70
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_80211F80
lbl_80211F80:

	# ROM: 0x20EF80
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_80211F90
lbl_80211F90:

	# ROM: 0x20EF90
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_80211FA0
lbl_80211FA0:

	# ROM: 0x20EFA0
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_80211FB0
lbl_80211FB0:

	# ROM: 0x20EFB0
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_80211FC0
lbl_80211FC0:

	# ROM: 0x20EFC0
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_80211FD0
lbl_80211FD0:

	# ROM: 0x20EFD0
	.4byte 0x000000C2
	.4byte 0x000000C3
	.4byte 0x000000E0
	.4byte 0x000000E1
	.4byte 0x000000BE
	.4byte 0x000000BF
	.4byte 0x000000D2
	.4byte 0x000000D3
	.4byte 0x000000CA
	.4byte 0x000000CB
	.4byte 0x000000C8
	.4byte 0x000000C9
	.4byte 0x000000BC
	.4byte 0x000000BD
	.4byte 0x000000D8
	.4byte 0x000000D9
	.4byte 0x000000CC
	.4byte 0x000000CD
	.4byte 0x000000BA
	.4byte 0x000000BB
	.4byte 0x000000B8
	.4byte 0x000000B9
	.4byte 0x000000D0
	.4byte 0x000000D1
	.4byte 0x000000DC
	.4byte 0x000000DD
	.4byte 0x000000B6
	.4byte 0x000000B7
	.4byte 0x000000E4
	.4byte 0x000000E5
	.4byte 0x000000E2
	.4byte 0x000000E3
	.4byte 0x000000C6
	.4byte 0x000000C7
	.4byte 0x000000CE
	.4byte 0x000000CF
	.4byte 0x000000C4
	.4byte 0x000000C5
	.4byte 0x000000D6
	.4byte 0x000000D7
	.4byte 0x000000C0
	.4byte 0x000000C1
	.4byte 0x000000D4
	.4byte 0x000000D5
	.4byte 0x000000DA
	.4byte 0x000000DB
	.4byte 0x000000DE
	.4byte 0x000000DF
	.4byte 0
	.4byte 0xFFFFFFFF

.global lbl_80212098
lbl_80212098:

	# ROM: 0x20F098
	.4byte zz_8004d85c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8004d584_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8004cd38_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8004be48_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8004bbc0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8004b92c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N38
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8004ab40_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N37
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8004a188_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80049508_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80049418_

.global lbl_80212120
lbl_80212120:

	# ROM: 0x20F120
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802121B0
lbl_802121B0:

	# ROM: 0x20F1B0
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003cd68_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003ca2c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003c798_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003c598_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003c468_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003c0a8_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003be94_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N35
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003bb18_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003b9b8_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003b7ac_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003b40c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003b254_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003b05c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003adc8_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte cPlayer__PostPhysicsUpdate_void__N6
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003ad28_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8003ac48_

.global lbl_802122B4
lbl_802122B4:

	# ROM: 0x20F2B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021238C
lbl_8021238C:

	# ROM: 0x20F38C
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_8021239C
lbl_8021239C:

	# ROM: 0x20F39C
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_802123AC
lbl_802123AC:

	# ROM: 0x20F3AC
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_802123BC
lbl_802123BC:

	# ROM: 0x20F3BC
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_802123EC
lbl_802123EC:

	# ROM: 0x20F3EC
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_802123FC
lbl_802123FC:

	# ROM: 0x20F3FC
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_8021240C
lbl_8021240C:

	# ROM: 0x20F40C
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x00000012
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x00000010
	.4byte 0x0000000B
	.4byte 0x00000016
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF

.global lbl_80212450
lbl_80212450:

	# ROM: 0x20F450
	.4byte lbl_8065C448
	.4byte 0x00000004
	.4byte lbl_8065C450
	.4byte 0x00000002
	.4byte lbl_8065C440
	.4byte 0xFFFFFFFF
	.4byte s_delete_8065c458
	.4byte 0x00000006

.global lbl_80212470
lbl_80212470:

	# ROM: 0x20F470
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte 0

.global lbl_8021247C
lbl_8021247C:

	# ROM: 0x20F47C
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte 0

.global lbl_80212490
lbl_80212490:

	# ROM: 0x20F490
	.4byte lbl_8065A2DC
	.4byte 0
	.4byte calculateGraphMetrics
	.4byte InitTextureWithTLUTAndTransform
	.4byte initializeArrayWithGlobalVariables
	.4byte gameDataHandler
	.4byte zz_80031740_
	.4byte zz_80031ecc_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_

.global switchdataD_802124c0
switchdataD_802124c0:

	# ROM: 0x20F4C0
	.4byte lbl_80031D68
	.4byte lbl_80031D70
	.4byte lbl_80031D9C
	.4byte func_80031E7C
	.4byte lbl_80031DE8
	.4byte func_80031E7C
	.4byte lbl_80031E34

.global switchdataD_802124dc
switchdataD_802124dc:

	# ROM: 0x20F4DC
	.4byte func_80032A0C
	.4byte lbl_800325E8
	.4byte func_80032A0C
	.4byte lbl_80032838
	.4byte func_80032A0C
	.4byte lbl_800328F0
	.4byte func_80032A0C
	.4byte lbl_80032838

.global switchdataD_802124fc
switchdataD_802124fc:

	# ROM: 0x20F4FC
	.4byte lbl_80032CE8
	.4byte lbl_80032CF4
	.4byte lbl_80032D24
	.4byte func_80032E10
	.4byte lbl_80032D74
	.4byte func_80032E10
	.4byte lbl_80032DC4

.global switchdataD_80212518
switchdataD_80212518:

	# ROM: 0x20F518
	.4byte func_80036294
	.4byte lbl_8003525C
	.4byte lbl_80035314
	.4byte lbl_80035440
	.4byte lbl_8003562C
	.4byte lbl_80035740
	.4byte lbl_80035854
	.4byte lbl_8003590C
	.4byte lbl_800354A0
	.4byte lbl_80035A20
	.4byte lbl_80035B4C
	.4byte lbl_80035C7C
	.4byte lbl_80035DEC
	.4byte lbl_800360CC
	.4byte lbl_800355CC
	.4byte func_80036294
	.4byte lbl_80035D34
	.4byte lbl_80035F5C

.global switchdataD_80212560
switchdataD_80212560:

	# ROM: 0x20F560
	.4byte func_8003A580
	.4byte lbl_8003A1B8
	.4byte lbl_8003A204
	.4byte lbl_8003A228
	.4byte lbl_8003A24C
	.4byte lbl_8003A2BC
	.4byte lbl_8003A414
	.4byte func_8003A580
	.4byte lbl_8003A2FC
	.4byte lbl_8003A368
	.4byte lbl_8003A3A8
	.4byte lbl_8003A414
	.4byte lbl_8003A458
	.4byte lbl_8003A498
	.4byte lbl_8003A504
	.4byte lbl_8003A544
	.4byte func_8003A580
	.4byte func_8003A580

.global lbl_802125A8
lbl_802125A8:

	# ROM: 0x20F5A8
	.4byte lbl_80048CE0
	.4byte lbl_80048CE0
	.4byte lbl_80048B24
	.4byte lbl_80048C40
	.4byte lbl_80048B9C
	.4byte lbl_80048BF0
	.4byte lbl_80048CE0
	.4byte lbl_80048C90
	.4byte lbl_80048CE0
	.4byte lbl_80048C7C
	.4byte lbl_80048CCC

.global lbl_802125D4
lbl_802125D4:

	# ROM: 0x20F5D4
	.4byte lbl_80047D30
	.4byte lbl_80047D30
	.4byte lbl_80047C24
	.4byte lbl_80047C44
	.4byte lbl_80047C90
	.4byte lbl_80047CB0
	.4byte lbl_80047D30
	.4byte lbl_80047CF0
	.4byte lbl_80047D30
	.4byte lbl_80047CD0
	.4byte lbl_80047D10

.global lbl_80212600
lbl_80212600:

	# ROM: 0x20F600
	.4byte func_80047368
	.4byte lbl_80044F08
	.4byte lbl_800454C4
	.4byte lbl_80045B00
	.4byte lbl_80045BD4
	.4byte lbl_80045CC4
	.4byte func_80047368
	.4byte lbl_80045BF0
	.4byte func_80047368
	.4byte lbl_80045DAC
	.4byte lbl_80046C00
	.4byte func_80047368

.global switchdataD_80212630
switchdataD_80212630:

	# ROM: 0x20F630
	.4byte lbl_8004AC7C
	.4byte lbl_8004B240
	.4byte lbl_8004B4B4
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte lbl_8004B778
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte func_8004B908
	.4byte lbl_8004B8A0

.global switchdataD_80212684
switchdataD_80212684:

	# ROM: 0x20F684
	.4byte lbl_8004BF84
	.4byte lbl_8004C77C
	.4byte lbl_8004CB38
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte lbl_8004CB88
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte func_8004CD18
	.4byte lbl_8004CCB0

.global switchdataD_802126d8
switchdataD_802126d8:

	# ROM: 0x20F6D8
	.4byte lbl_8004E230
	.4byte lbl_8004E23C
	.4byte lbl_8004E248
	.4byte lbl_8004E254
	.4byte lbl_8004E260
	.4byte lbl_8004E26C
	.4byte lbl_8004E278
	.4byte lbl_8004E284
	.4byte lbl_8004E290

.global switchdataD_802126fc
switchdataD_802126fc:

	# ROM: 0x20F6FC
	.4byte lbl_80057264
	.4byte lbl_8005724C
	.4byte lbl_8005725C
	.4byte lbl_80057264
	.4byte lbl_8005724C
	.4byte lbl_8005724C
	.4byte lbl_80057264
	.4byte lbl_8005725C
	.4byte lbl_80057254
	.4byte lbl_8005724C
	.4byte lbl_8005724C
	.4byte lbl_8005724C
	.4byte lbl_80057264
	.4byte lbl_80057264
	.4byte lbl_80057264
	.4byte lbl_8005724C
	.4byte lbl_80057264
	.4byte lbl_8005724C
	.4byte lbl_8005724C
	.4byte lbl_8005724C
	.4byte lbl_8005725C
	.4byte lbl_80057264
	.4byte lbl_80057264
	.4byte lbl_8005725C

.global switchdataD_8021275c
switchdataD_8021275c:

	# ROM: 0x20F75C
	.4byte lbl_8005F958
	.4byte lbl_8005F9C0
	.4byte lbl_8005F9DC
	.4byte lbl_8005FE94
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte lbl_8005FF30
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte func_800600DC
	.4byte lbl_80060024

.global switchdataD_802127b0
switchdataD_802127b0:

	# ROM: 0x20F7B0
	.4byte func_800619E8
	.4byte lbl_80061914
	.4byte lbl_8006191C
	.4byte lbl_80061928
	.4byte func_800619E8
	.4byte lbl_80061988
	.4byte func_800619E8

.global lbl_802127CC
lbl_802127CC:

	# ROM: 0x20F7CC
	.4byte lbl_8065A2E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A2F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80212820
lbl_80212820:

	# ROM: 0x20F820
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte 0

.global lbl_80212834
lbl_80212834:

	# ROM: 0x20F834
	.4byte lbl_8065A2FC
	.4byte 0
	.4byte zz_80032efc_
	.4byte InitTextureWithTLUTAndTransform
	.4byte initializeArrayWithGlobalVariables
	.4byte zz_8003255c_
	.4byte zz_80032098_
	.4byte zz_80032e24_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_

.global lbl_80212864
lbl_80212864:

	# ROM: 0x20F864
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte 0

.global lbl_80212878
lbl_80212878:

	# ROM: 0x20F878
	.4byte lbl_8065A304
	.4byte 0
	.4byte zz_800341ec_
	.4byte InitTextureWithTLUTAndTransform
	.4byte initializeArrayWithGlobalVariables
	.4byte zz_800336dc_
	.4byte zz_800330e4_
	.4byte zz_80034108_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_

.global lbl_802128A8
lbl_802128A8:

	# ROM: 0x20F8A8
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte 0

.global lbl_802128BC
lbl_802128BC:

	# ROM: 0x20F8BC
	.4byte lbl_8065A30C
	.4byte 0
	.4byte zz_8003d730_
	.4byte InitTextureWithTLUTAndTransform
	.4byte zz_8003d6fc_
	.4byte zz_8003ce18_
	.4byte SaveGameMenuHandler
	.4byte zz_8003d350_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_

.global lbl_802128EC
lbl_802128EC:

	# ROM: 0x20F8EC
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte 0

.global lbl_80212900
lbl_80212900:

	# ROM: 0x20F900
	.4byte lbl_8065A314
	.4byte 0
	.4byte zz_8004ed74_
	.4byte InitTextureWithTLUTAndTransform
	.4byte initializeArrayWithGlobalVariables
	.4byte zz_8004dd1c_
	.4byte zz_80044c74_
	.4byte zz_8004e54c_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_

.global lbl_80212930
lbl_80212930:

	# ROM: 0x20F930
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte 0

.global lbl_80212944
lbl_80212944:

	# ROM: 0x20F944
	.4byte lbl_8065A31C
	.4byte 0
	.4byte zz_8005c728_
	.4byte InitTextureWithTLUTAndTransform
	.4byte initializeArrayWithGlobalVariables
	.4byte zz_8005b438_
	.4byte zz_8005773c_
	.4byte zz_8005be74_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_

.global lbl_80212974
lbl_80212974:

	# ROM: 0x20F974
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte 0

.global lbl_80212988
lbl_80212988:

	# ROM: 0x20F988
	.4byte lbl_8065A324
	.4byte 0
	.4byte zz_80060768_
	.4byte InitTextureWithTLUTAndTransform
	.4byte initializeArrayWithGlobalVariables
	.4byte zz_8005f378_
	.4byte zz_8005ec48_
	.4byte zz_80060118_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_

.global lbl_802129B8
lbl_802129B8:

	# ROM: 0x20F9B8
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte 0

.global lbl_802129CC
lbl_802129CC:

	# ROM: 0x20F9CC
	.4byte lbl_8065A32C
	.4byte 0
	.4byte zz_80061424_
	.4byte InitTextureWithTLUTAndTransform
	.4byte zz_800613b0_
	.4byte zz_80060cdc_
	.4byte store_and_restore_floating_point_registers
	.4byte zz_80061290_
	.4byte zz_80061204_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte zz_800611d4_

.global lbl_802129FC
lbl_802129FC:

	# ROM: 0x20F9FC
	.4byte lbl_8065A2CC
	.4byte 0
	.4byte zz_80061c74_
	.4byte InitTextureWithTLUTAndTransform
	.4byte initializeArrayWithGlobalVariables
	.4byte update_float_parameters
	.4byte updateAndDrawSceneIfNeeded
	.4byte zz_80010cd0_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_

.global lbl_80212A2C
lbl_80212A2C:

	# ROM: 0x20FA2C
	.4byte lbl_8065A334
	.4byte 0
	.4byte 0

.global lbl_80212A38
lbl_80212A38:

	# ROM: 0x20FA38
	.4byte lbl_8065A334
	.4byte 0
	.4byte lbl_8065A33C
	.4byte 0
	.4byte 0

.global lbl_80212A4C
lbl_80212A4C:

	# ROM: 0x20FA4C
	.4byte lbl_8065A334
	.4byte 0
	.4byte lbl_8065A33C
	.4byte 0
	.4byte lbl_8065A344
	.4byte 0
	.4byte 0

.global lbl_80212A68
lbl_80212A68:

	# ROM: 0x20FA68
	.4byte lbl_8065A334
	.4byte 0
	.4byte lbl_8065A33C
	.4byte 0
	.4byte lbl_8065A344
	.4byte 0
	.4byte lbl_8065A34C
	.4byte 0
	.4byte 0

.global lbl_80212A8C
lbl_80212A8C:

	# ROM: 0x20FA8C
	.4byte lbl_8065A334
	.4byte 0
	.4byte lbl_8065A33C
	.4byte 0
	.4byte lbl_8065A344
	.4byte 0
	.4byte lbl_8065A34C
	.4byte 0
	.4byte lbl_8065A354
	.4byte 0
	.4byte 0

.global lbl_80212AB8
lbl_80212AB8:

	# ROM: 0x20FAB8
	.4byte lbl_8065A35C
	.4byte 0
	.4byte PhysicsSphere____dt_void__N2
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80025150_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80025548_
	.4byte zz_800253b8_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80025228_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800256e4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_80026c78_
	.4byte DBClose_N24
	.4byte cPlayer__PostPhysicsUpdate_void__N10
	.4byte zz_80026c2c_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80062390_
	.4byte zz_80090c84_
	.4byte zz_80026b64_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte lbl_8065A2E4
	.4byte 0
	.4byte lbl_8065A2EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80212CB4
lbl_80212CB4:

	# ROM: 0x20FCB4
	.4byte lbl_8065A2D4
	.4byte 0
	.4byte zz_80061c74_
	.4byte InitTextureWithTLUTAndTransform
	.4byte initializeArrayWithGlobalVariables
	.4byte update_float_parameters
	.4byte updateAndDrawSceneIfNeeded
	.4byte zz_80010cd0_
	.4byte zz_8003135c_
	.4byte zz_800313a4_
	.4byte setFlagAndValue
	.4byte nlListContainer_P8SaveData_____ct_void_
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80212CF0
lbl_80212CF0:

	# ROM: 0x20FCF0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A36C

.global switchdataD_80212cfc
switchdataD_80212cfc:

	# ROM: 0x20FCFC
	.4byte lbl_80064A60
	.4byte lbl_80064AD8
	.4byte lbl_80064B10
	.4byte lbl_80064B40
	.4byte lbl_80064B68
	.4byte lbl_80064BC4
	.4byte func_80064D88
	.4byte func_80064D88
	.4byte func_80064D88
	.4byte func_80064D88
	.4byte lbl_80064C14
	.4byte lbl_80064C4C
	.4byte lbl_80064C84
	.4byte lbl_80064CE0
	.4byte lbl_80064D3C

.global switchdataD_80212d38
switchdataD_80212d38:

	# ROM: 0x20FD38
	.4byte lbl_8006B978
	.4byte lbl_8006BA88
	.4byte lbl_8006BA9C
	.4byte lbl_8006BAB0
	.4byte lbl_8006BAFC
	.4byte lbl_8006BB44
	.4byte lbl_8006BBB4
	.4byte lbl_8006BBF8
	.4byte lbl_8006BCE8

.global switchdataD_80212d5c
switchdataD_80212d5c:

	# ROM: 0x20FD5C
	.4byte lbl_8006B5D0
	.4byte lbl_8006B5EC
	.4byte lbl_8006B5F8
	.4byte lbl_8006B604
	.4byte lbl_8006B648
	.4byte lbl_8006B688
	.4byte lbl_8006B778

.global lbl_80212D78
lbl_80212D78:

	# ROM: 0x20FD78
	.4byte lbl_8065A384
	.4byte 0
	.4byte cHeadTrack____dt_void__N34
	.4byte 0x30303030

.global lbl_80212D88
lbl_80212D88:

	# ROM: 0x20FD88
	.4byte 0x000000A1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000003B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000003C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000003D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000003E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000003F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000040
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000042
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000045
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000000FD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000000FE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000100
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000101
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000102
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000103
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000011A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x60012001
	.4byte 0x0000011E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000135
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000136
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000011E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000014C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x60012001
	.4byte 0x00000155
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x60012001
	.4byte 0x0000015A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000016D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000016E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000016F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000170
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000171
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000172
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000173
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000174
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000175
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000176
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000177
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000183
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000184
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000185
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000186
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000187
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000188
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000189
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000018A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000018B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000019C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000019D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000001A2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802137CC
lbl_802137CC:

	# ROM: 0x2107CC
	.4byte 0x20012001

.global lbl_802137D0
lbl_802137D0:

	# ROM: 0x2107D0
	.4byte 0x000001A6

.global lbl_802137D4
lbl_802137D4:

	# ROM: 0x2107D4
	.4byte 0

.global lbl_802137D8
lbl_802137D8:

	# ROM: 0x2107D8
	.4byte 0
	.4byte 0
	.byte 0x00

.global lbl_802137E1
lbl_802137E1:

	# ROM: 0x2107E1
	.balign 4
	.4byte 0

.global lbl_802137E8
lbl_802137E8:

	# ROM: 0x2107E8
	.4byte 0

.global lbl_802137EC
lbl_802137EC:

	# ROM: 0x2107EC
	.4byte 0x00000064

.global lbl_802137F0
lbl_802137F0:

	# ROM: 0x2107F0
	.4byte 0x00000064

.global lbl_802137F4
lbl_802137F4:

	# ROM: 0x2107F4
	.4byte 0x00000064

.global lbl_802137F8
lbl_802137F8:

	# ROM: 0x2107F8
	.4byte 0

.global lbl_802137FC
lbl_802137FC:

	# ROM: 0x2107FC
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000112
	.4byte 0

.global lbl_80213810
lbl_80213810:

	# ROM: 0x210810
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000001B5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000090
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000001CA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000001CB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000001CE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000001CF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000001F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064

.global lbl_802139B4
lbl_802139B4:

	# ROM: 0x2109B4
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000001F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x60012001
	.4byte 0x0000022E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000242
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000243
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000244
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000245
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000246
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000214
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000215
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000216
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000217
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000218
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000219
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000021A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000021B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000021C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000021D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000021E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000021F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000220
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000221
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000222
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000223
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000224
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000225
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000226
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000227
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000228
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000229
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000022A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000022B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000027C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000B4
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000027E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000280
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000B4
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000281
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000B4
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000283
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000287
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000288
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000289
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000028A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000028B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000002BF
	.4byte 0

.global lbl_802142C8
lbl_802142C8:

	# ROM: 0x2112C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000028F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000290
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000291
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000292
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000293
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000294
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000295
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000296
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000297
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000299
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000029A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000002AB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000002AD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000002AE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064

.global lbl_802145F8
lbl_802145F8:

	# ROM: 0x2115F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000002B5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000002C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000324
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000032B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000032C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000333
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000334
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000335
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000336
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000337
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000338
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000339
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000033E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000342
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000344
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000345
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000035C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000364
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000362
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000367
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000368
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000375
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000038E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000397
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000398
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000399
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000039A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000039B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003A5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003B7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003B9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003BA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003D6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003D7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003D9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003DA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x000003DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000415
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000422
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000427
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000428
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000044A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x0000044B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001
	.4byte 0x00000469
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20012001

.global lbl_80215050
lbl_80215050:

	# ROM: 0x212050
	.4byte 0
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x00000001
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x00000002
	.4byte 0x0000007E
	.4byte 0x00000003
	.4byte 0x0000007E
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x0000007E
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x000000F4
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000012
	.4byte 0x00000011
	.4byte 0x00000013
	.4byte 0x00000013
	.4byte 0x00000014
	.4byte 0x00000015
	.4byte 0x00000016
	.4byte 0x00000017
	.4byte 0x00000018
	.4byte 0x00000019
	.4byte 0x0000001A
	.4byte 0x00000013
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000001B
	.4byte 0x0000001C
	.4byte 0x0000001B
	.4byte 0x0000001B
	.4byte 0x0000001D
	.4byte 0x0000001E
	.4byte 0x0000001F
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x00000022
	.4byte 0x00000023
	.4byte 0x00000024
	.4byte 0x00000025
	.4byte 0x00000026
	.4byte 0x00000027
	.4byte 0x00000028
	.4byte 0x00000029
	.4byte 0x0000007E
	.4byte 0x0000002A
	.4byte 0x0000007E
	.4byte 0x0000002B
	.4byte 0x0000002C
	.4byte 0x0000002D
	.4byte 0x0000002E
	.4byte 0x0000002F
	.4byte 0x00000030
	.4byte 0x00000031
	.4byte 0x00000032
	.4byte 0x00000033
	.4byte 0x00000034
	.4byte 0x00000035
	.4byte 0x00000036
	.4byte 0x00000037
	.4byte 0x00000038
	.4byte 0x00000039
	.4byte 0x0000003A
	.4byte 0x0000003B
	.4byte 0x0000003C
	.4byte 0x0000003D
	.4byte 0x0000003E
	.4byte 0x0000003F
	.4byte 0x0000007E
	.4byte 0x00000040
	.4byte 0x0000007E
	.4byte 0x00000041
	.4byte 0x00000042
	.4byte 0x00000043
	.4byte 0x00000044
	.4byte 0x00000045
	.4byte 0x00000046
	.4byte 0x00000047
	.4byte 0x00000048
	.4byte 0x00000049
	.4byte 0x0000004A
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000007E
	.4byte 0x0000004B
	.4byte 0x0000004C
	.4byte 0x0000004D
	.4byte 0x0000004E
	.4byte 0x0000004F
	.4byte 0x00000050
	.4byte 0x00000051
	.4byte 0x00000052
	.4byte 0x00000053
	.4byte 0x00000054
	.4byte 0x00000055
	.4byte 0x00000056

.global lbl_802152CC
lbl_802152CC:

	# ROM: 0x2122CC
	.4byte s_Do_you_want_to_display_80201af0
	.4byte s_the_game_in_Progressive_Mode__80201b08
	.4byte s__s_02XYes_s__s_02XNo_s_80201b28
	.4byte s_Progressive_Mode_has_80201b40
	.4byte s_been_turned_on__80201b58
	.4byte lbl_8065CA58
	.4byte s_Progressive_Mode_has_80201b40
	.4byte s_been_turned_off__80201b68
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Store_Item_80201b7c
	.4byte s_Remove_Suit_80201b88
	.4byte lbl_8065CA5C
	.4byte lbl_8065CA60
	.4byte s_Rumble_8065ca68
	.4byte lbl_8065CA70
	.4byte lbl_8065CA74
	.4byte s_Sound_8065ca78
	.4byte s_Stereo_8065ca80
	.4byte lbl_8065CA88
	.4byte lbl_8065CA90
	.4byte s_Pause_8065ca98
	.4byte s_Items_8065caa0
	.4byte s_Controller_80201b94
	.4byte s_Status_8065caa8
	.4byte s_Stickers_80201ba0
	.4byte lbl_8065CA58
	.4byte s_Action_8065cab0
	.4byte s_Cancel_8065cab8
	.4byte s_Rotate_Camera_80201bac
	.4byte s_Equip_Screen_80201bbc
	.4byte s_Chibi_Vision_80201bcc
	.4byte lbl_8065CAC0
	.4byte s_Center_Camera_80201bdc
	.4byte lbl_8065CAC8
	.4byte s_Pause_8065ca98
	.4byte s_Select_8065cacc
	.4byte s_Control_Chibi___Select_80201bec
	.4byte s_Chibi_Ranking_80201c04
	.4byte s_Chibi_Doors_Completed_80201c14
	.4byte s_Happy_Points_80201c2c
	.4byte s_Moolah_8065cad4
	.4byte s_Scrap_8065cadc
	.4byte lbl_8065CA58
	.4byte s_Chibi_PC_Menu_80201c3c
	.4byte s_Online_Shop_80201c4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE4
	.4byte lbl_8065CA90
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE8
	.4byte s_Select_8065cacc
	.4byte s_Bought_8065caec
	.4byte lbl_8065CAF4
	.4byte lbl_8065CAFC
	.4byte lbl_8065CB00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Recyclotron_80201c58
	.4byte s_Build_8065cb04
	.4byte s_Exchanged_80201c64
	.4byte s_Exchange__80201c70
	.4byte s_Scrap_Trade_80201c7c
	.4byte s_Exchange_rate_80201c88
	.4byte s_Exchange_how_many__80201c98
	.4byte s_You_don_t_have_enough_Scrap__80201cac
	.4byte s_It_s_8065cb0c
	.4byte lbl_8065CB14
	.4byte lbl_8065CB18
	.4byte s_Build__8065cb1c
	.4byte s_OK__stand_by__80201ccc
	.4byte s_Exchange_80201cdc
	.4byte lbl_8065CA58
	.4byte s_The_Disc_Cover_is_open__Please_c_80201ce8
	.4byte s_Please_insert_the_Chibi_Robo_Gam_80201d34
	.4byte s_Please_insert_the_Chibi_Robo_Gam_80201d34
	.4byte s_The_Game_Disc_could_not_be_read__80201d5c
	.4byte s_Loading_8065cb24
	.4byte s_Loading_8065cb24
	.4byte s_Score_8065cb2c
	.4byte lbl_8065CB34
	.4byte s_Course_8065cb3c
	.4byte s_Enemy_8065cb44
	.4byte s_New_Game_80201dc0
	.4byte s_Load_Game_80201dcc
	.4byte s_Options_8065cb4c
	.4byte s_Settings_80201dd8
	.4byte lbl_8065CB54
	.4byte s_Empty_8065cb5c
	.4byte s_Yes_No_8065cb64
	.4byte lbl_8065CAFC
	.4byte lbl_8065CB00
	.4byte s_There_is_no_Memory_Card_80201de4
	.4byte s_in_Slot_A__Insert_a_Memory_Card_80201dfc
	.4byte s_or_press_the_A_Button_to_80201e1c
	.4byte s_continue_without_saving__80201e38
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_in_Slot_A__80201e54
	.4byte s_Please_insert_a_different_Memory_80201e6c
	.4byte s_press_the_A_Button_to_continue_80201e98
	.4byte s_without_saving__80201eb8
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_80201ec8
	.4byte s_cannot_be_used__80201ee4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_corrupted_and_needs_to_be_80201f14
	.4byte s_formatted__Format_now__80201f30
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Formatting_the_Memory_Card_in_Sl_80201f48
	.4byte s_will_erase_all_save_data__Contin_80201f70
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Formatting____Do_not_touch_the_80201f94
	.4byte s_Memory_Card_in_Slot_A_80201fb4
	.4byte s_or_the_POWER_Button__80201fcc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_80201ec8
	.4byte s_could_not_be_formatted__80201fe4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_80201ec8
	.4byte s_has_been_formatted__80201ffc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Continue_without_saving__80202010
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_To_create_new_game_data__8020202c
	.4byte s_please_select_a_file__80202048
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_80202060
	.4byte s_enough_free_space__80202070
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_This_data_80202084
	.4byte s_is_corrupted__80202090
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_80201ec8
	.4byte s_does_not_have_enough_space__802020a0
	.4byte s_Chibi_Robo_requires_1_file_and_802020bc
	.4byte s_6_blocks_to_save__802020dc
	.4byte lbl_8065CA58
	.4byte s_Overwrite_existing_file__802020f0
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_To_manage_the_contents_of_your_M_8020210c
	.4byte s_Card__use_the_Memory_Card_screen_80202134
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Now_saving____80202158
	.4byte s_Do_not_touch_the_Memory_Card_80202168
	.4byte s_in_Slot_A_or_the_POWER_Button__80202188
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_has_occurred_during_sav_802021a8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_a_file_to_load__802021d0
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Loading____802021e8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Chibi_Robo_file_on_the_802021f4
	.4byte s_Memory_Card_in_Slot_A_is_80202210
	.4byte s_corrupted_and_must_be_erased__8020222c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Create_new_8020224c
	.4byte s_game_data__80202258
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_in_Slot_A__80201e54
	.4byte s_Please_insert_a_different_Memory_80201e6c
	.4byte s_press_the_A_Button_to_continue_80201e98
	.4byte s_without_saving__80201eb8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_cannot_be_used__80202264
	.4byte s_Insert_another_Memory_Card_80202280
	.4byte s_or_press_the_A_Button_to_80201e1c
	.4byte s_continue_without_saving__80201e38
	.4byte s_Please_insert_a_different_Memory_8020229c
	.4byte s_or_press_the_A_Button_to_continu_802022c4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Save_completed__802022f8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_a_file__80202308
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_save_data_could_not_be_loade_80202318
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_80201ec8
	.4byte s_is_no_longer_available__8020233c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_cannot_be_used__80202264
	.4byte s_Insert_a_different_Memory_Card_o_80202354
	.4byte s_A_Button_to_continue_without_sav_80202380
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_80201ec8
	.4byte s_cannot_be_used__80201ee4
	.4byte s_Please_insert_a_different_Memory_80201e6c
	.4byte s_press_the_A_Button_to_continue_w_802023a8
	.4byte lbl_8065CA58
	.4byte s_Chibi_Robo__802023d8
	.4byte s_Time_Played__802023e4
	.4byte lbl_8065CAFC
	.4byte lbl_8065CB00

.global lbl_802156E4
lbl_802156E4:

	# ROM: 0x2126E4
	.4byte s_And_now__for_the_weather__A_powe_802023f4
	.4byte s_And_now__for_sports__I_hope_you__8020249c
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s__80202670
	.4byte s_Shopping_time__shopping_time__Wh_8020267c
	.4byte s__80202670
	.4byte s_Collect_Scrap_to_build_Utilibots_802026bc
	.4byte s_Swap_your_spare_Scrap_for_Moolah_802026ec
	.4byte s__80202670
	.4byte s_Hello__and_thank_you_for_accessi_80202738

.global lbl_80215738
lbl_80215738:

	# ROM: 0x212738
	.4byte s_Do_you_want_to_display_80201af0
	.4byte s_the_game_in_Progressive_Mode__80201b08
	.4byte lbl_802028CC
	.4byte s_Screen_has_802028e8
	.4byte s_been_set_to_802028f4
	.4byte s_Progressive_Mode_80202900
	.4byte s_Progressive_Mode_80202900
	.4byte s_has_been_80202914
	.4byte s_turned_off_80202920
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s__store_item__8020292c
	.4byte s__remove_suit__8020293c
	.4byte lbl_8065CA5C
	.4byte lbl_8065CA60
	.4byte s_Vibration_8020294c
	.4byte lbl_8065CA70
	.4byte lbl_8065CA74
	.4byte s_Sound_8065ca78
	.4byte s_Stereo_8065ca80
	.4byte s_Monaural_80202958
	.4byte lbl_8065CA90
	.4byte lbl_8065CB6C
	.4byte lbl_8065CB74
	.4byte s_Controller_80201b94
	.4byte s_Status_8065caa8
	.4byte s_Happy_Stickers_80202964
	.4byte lbl_8065CA58
	.4byte s_Action_8065cab0
	.4byte s_Cancel_8065cab8
	.4byte s_Camera_control_80202974
	.4byte s_Item_menu_80202984
	.4byte s_Chibi_Eye_80202990
	.4byte s_Z_action_8020299c
	.4byte s_Behind_camera_802029a8
	.4byte lbl_8065CAC8
	.4byte s_Pause_8065ca98
	.4byte s_Menu_select_802029b8
	.4byte s_Control_of_ChibiRobo_Menu_select_802029c4
	.4byte s_ChibiRobo_Ranking_802029e8
	.4byte s_Chibi_Doors_completed_802029fc
	.4byte s_Happy_points_80202a14
	.4byte lbl_8065CB7C
	.4byte s_Junks_8065cb84
	.4byte lbl_8065CB8C
	.4byte s_ChibiCom_Menu_80202a24
	.4byte s_Online_Shop_80201c4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE4
	.4byte lbl_8065CA90
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE8
	.4byte s_Select_8065cacc
	.4byte s_Bought_8065caec
	.4byte lbl_8065CAF4
	.4byte lbl_8065CAFC
	.4byte lbl_8065CB00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Junk_Machine_80202a34
	.4byte s_Build_8065cb04
	.4byte s_Exchanged_80201c64
	.4byte s_Exchange__80201c70
	.4byte s_Junk_trade_80202a44
	.4byte s_Current_exchange_rate_80202a50
	.4byte s_Exchange_how_much__80202a68
	.4byte s_There_is_no_enough_junks_80202a7c
	.4byte s_It_s_8065cb0c
	.4byte lbl_8065CB14
	.4byte lbl_8065CB18
	.4byte s_Build__8065cb1c
	.4byte s_Stamby_ok_80202a98
	.4byte s_Exchange_80201cdc
	.4byte lbl_8065CA58
	.4byte s_The_Disc_Cover_is_open__If_you_w_80202aa4
	.4byte s_Please_insert_the_ChibiRobo__Gam_80202afc
	.4byte s_Please_insert_the_ChibiRobo__Gam_80202afc
	.4byte s_The_Game_Disc_could_not_be_read__80202b24
	.4byte s_Reading_8065cb90
	.4byte s_Reading_8065cb90
	.4byte s_SCORE_8065cb98
	.4byte lbl_8065CBA0
	.4byte s_COURCE_8065cba8
	.4byte s_ENEMY_8065cbb0
	.4byte s_New_Game_80201dc0
	.4byte s_Load_Game_80201dcc
	.4byte s_Option_8065cbb8
	.4byte s_Settings_80201dd8
	.4byte lbl_8065CB54
	.4byte s_Empty_8065cb5c
	.4byte s_Yes_No_8065cbc0
	.4byte s_No_Memory_Card_80202b94
	.4byte s_found_in_Slot_A__80202ba4
	.4byte s_Please_check__80202bb8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_in_Slot_A__Please_i_80202bc8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_can_not_be_used__80202c00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_cor_80202c20
	.4byte s_and_needs_to_be_formatted__80202c48
	.4byte s_Do_you_want_to_format__80202c64
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Formatting_the_Memory_Card_will_e_80202c7c
	.4byte s_all_previously_saved_data__Conti_80202ca4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Saving_to_the_Memory_Card__80202ccc
	.4byte s_Do_not_touch_the_Memory_80202ce8
	.4byte s_Card_or_the_POWER_Button__80202d00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_may_occurred_during_for_80202d1c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_has_been_formatt_80202d44
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Continue_without_80202d68
	.4byte s_saving__8065cbc8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Create_a_new_game_data__80202d7c
	.4byte s_Please_select_a_file__80202d94
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_enough_free_space_80202dac
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_save_data_80202dcc
	.4byte s_is_broken_80202ddc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_enough_free_space_80202dac
	.4byte s_on_the_Memory_Card_in_Slot_A__80202de8
	.4byte s_ChibiRobo__requires_1_file_and_80202e08
	.4byte s_6_blocks_to_save__802020dc
	.4byte lbl_8065CA58
	.4byte s_Overwrite_existing_file__802020f0
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_To_manage_the_contents_of_your_M_8020210c
	.4byte s_Card__use_the_Memory_Card_Screen_80202e28
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Saving_to_the_Memory_Card__80202ccc
	.4byte s_Do_not_touch_the_Memory_Card_80202168
	.4byte s_or_the_POWER_Button__80201fcc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_may_occurred_during_sav_80202e4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_the_file_to_load_80202e70
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Loading_8065cb24
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_ChibiRobo__file_on_Memory_Ca_80202e88
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Restart_with_a_80202ee4
	.4byte s_new_save_data__80202ef4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_80202f04
	.4byte s_in_Slot_A__80202f14
	.4byte s_Please_insert_a_80202f20
	.4byte s_Memory_Card__80202f30
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_cannot_be_used__80202264
	.4byte s_Please_insert_a_80202f20
	.4byte s_Memory_Card__80202f30
	.4byte lbl_8065CA58
	.4byte s_Please_insert_a_Memory_Card_80202f40
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Save_completed_80202f5c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_a_file_80202f6c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_data_could_not_be_loaded_80202f7c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_80202f9c
	.4byte s_is_no_longer_available__8020233c

.global lbl_80215B04
lbl_80215B04:

	# ROM: 0x212B04
	.4byte lbl_80202FAC
	.4byte lbl_80203064
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_80203204
	.4byte lbl_8065CBD0
	.4byte lbl_80203258
	.4byte lbl_802032AC
	.4byte lbl_8065CBD0
	.4byte lbl_802032F8
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0

.global lbl_80215B64
lbl_80215B64:

	# ROM: 0x212B64
	.4byte s_Do_you_want_to_display_80201af0
	.4byte s_the_game_in_Progressive_Mode__80201b08
	.4byte lbl_802028CC
	.4byte s_Screen_has_802028e8
	.4byte s_been_set_to_802028f4
	.4byte s_Progressive_Mode_80202900
	.4byte s_Progressive_Mode_80202900
	.4byte s_has_been_80202914
	.4byte s_turned_off_80202920
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s__store_item__8020292c
	.4byte s__remove_suit__8020293c
	.4byte lbl_8065CA5C
	.4byte lbl_8065CA60
	.4byte s_Vibration_8020294c
	.4byte lbl_8065CA70
	.4byte lbl_8065CA74
	.4byte s_Sound_8065ca78
	.4byte s_Stereo_8065ca80
	.4byte s_Monaural_80202958
	.4byte lbl_8065CA90
	.4byte lbl_8065CB6C
	.4byte lbl_8065CB74
	.4byte s_Controller_80201b94
	.4byte s_Status_8065caa8
	.4byte s_Happy_Stickers_80202964
	.4byte lbl_8065CA58
	.4byte s_Action_8065cab0
	.4byte s_Cancel_8065cab8
	.4byte s_Camera_control_80202974
	.4byte s_Item_menu_80202984
	.4byte s_Chibi_Eye_80202990
	.4byte s_Z_action_8020299c
	.4byte s_Behind_camera_802029a8
	.4byte lbl_8065CAC8
	.4byte s_Pause_8065ca98
	.4byte s_Menu_select_802029b8
	.4byte s_Control_of_ChibiRobo_Menu_select_802029c4
	.4byte s_ChibiRobo_Ranking_802029e8
	.4byte s_Chibi_Doors_completed_802029fc
	.4byte s_Happy_points_80202a14
	.4byte lbl_8065CB7C
	.4byte s_Junks_8065cb84
	.4byte lbl_8065CB8C
	.4byte s_ChibiCom_Menu_80202a24
	.4byte s_Online_Shop_80201c4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE4
	.4byte lbl_8065CA90
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE8
	.4byte s_Select_8065cacc
	.4byte s_Bought_8065caec
	.4byte lbl_8065CAF4
	.4byte lbl_8065CAFC
	.4byte lbl_8065CB00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Junk_Machine_80202a34
	.4byte s_Build_8065cb04
	.4byte s_Exchanged_80201c64
	.4byte s_Exchange__80201c70
	.4byte s_Junk_trade_80202a44
	.4byte s_Current_exchange_rate_80202a50
	.4byte s_Exchange_how_much__80202a68
	.4byte s_There_is_no_enough_junks_80202a7c
	.4byte s_It_s_8065cb0c
	.4byte lbl_8065CB14
	.4byte lbl_8065CB18
	.4byte s_Build__8065cb1c
	.4byte s_Stamby_ok_80202a98
	.4byte s_Exchange_80201cdc
	.4byte lbl_8065CA58
	.4byte s_The_Disc_Cover_is_open__If_you_w_80202aa4
	.4byte s_Please_insert_the_ChibiRobo__Gam_80202afc
	.4byte s_Please_insert_the_ChibiRobo__Gam_80202afc
	.4byte s_The_Game_Disc_could_not_be_read__80202b24
	.4byte s_Reading_8065cb90
	.4byte s_Reading_8065cb90
	.4byte s_SCORE_8065cb98
	.4byte lbl_8065CBA0
	.4byte s_COURCE_8065cba8
	.4byte s_ENEMY_8065cbb0
	.4byte s_New_Game_80201dc0
	.4byte s_Load_Game_80201dcc
	.4byte s_Option_8065cbb8
	.4byte s_Settings_80201dd8
	.4byte lbl_8065CB54
	.4byte s_Empty_8065cb5c
	.4byte s_Yes_No_8065cbc0
	.4byte s_No_Memory_Card_80202b94
	.4byte s_found_in_Slot_A__80202ba4
	.4byte s_Please_check__80202bb8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_in_Slot_A__Please_i_80202bc8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_can_not_be_used__80202c00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_cor_80202c20
	.4byte s_and_needs_to_be_formatted__80202c48
	.4byte s_Do_you_want_to_format__80202c64
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Formatting_the_Memory_Card_will_e_80202c7c
	.4byte s_all_previously_saved_data__Conti_80202ca4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Saving_to_the_Memory_Card__80202ccc
	.4byte s_Do_not_touch_the_Memory_80202ce8
	.4byte s_Card_or_the_POWER_Button__80202d00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_may_occurred_during_for_80202d1c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_has_been_formatt_80202d44
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Continue_without_80202d68
	.4byte s_saving__8065cbc8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Create_a_new_game_data__80202d7c
	.4byte s_Please_select_a_file__80202d94
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_enough_free_space_80202dac
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_save_data_80202dcc
	.4byte s_is_broken_80202ddc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_enough_free_space_80202dac
	.4byte s_on_the_Memory_Card_in_Slot_A__80202de8
	.4byte s_ChibiRobo__requires_1_file_and_80202e08
	.4byte s_6_blocks_to_save__802020dc
	.4byte lbl_8065CA58
	.4byte s_Overwrite_existing_file__802020f0
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_To_manage_the_contents_of_your_M_8020210c
	.4byte s_Card__use_the_Memory_Card_Screen_80202e28
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Saving_to_the_Memory_Card__80202ccc
	.4byte s_Do_not_touch_the_Memory_Card_80202168
	.4byte s_or_the_POWER_Button__80201fcc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_may_occurred_during_sav_80202e4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_the_file_to_load_80202e70
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Loading_8065cb24
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_ChibiRobo__file_on_Memory_Ca_80202e88
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Restart_with_a_80202ee4
	.4byte s_new_save_data__80202ef4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_80202f04
	.4byte s_in_Slot_A__80202f14
	.4byte s_Please_insert_a_80202f20
	.4byte s_Memory_Card__80202f30
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_cannot_be_used__80202264
	.4byte s_Please_insert_a_80202f20
	.4byte s_Memory_Card__80202f30
	.4byte lbl_8065CA58
	.4byte s_Please_insert_a_Memory_Card_80202f40
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Save_completed_80202f5c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_a_file_80202f6c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_data_could_not_be_loaded_80202f7c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_80202f9c
	.4byte s_is_no_longer_available__8020233c

.global lbl_80215F30
lbl_80215F30:

	# ROM: 0x212F30
	.4byte lbl_80202FAC
	.4byte lbl_80203064
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_80203204
	.4byte lbl_8065CBD0
	.4byte lbl_80203258
	.4byte lbl_802032AC
	.4byte lbl_8065CBD0
	.4byte lbl_802032F8
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0

.global lbl_80215F90
lbl_80215F90:

	# ROM: 0x212F90
	.4byte s_Do_you_want_to_display_80201af0
	.4byte s_the_game_in_Progressive_Mode__80201b08
	.4byte lbl_802028CC
	.4byte s_Screen_has_802028e8
	.4byte s_been_set_to_802028f4
	.4byte s_Progressive_Mode_80202900
	.4byte s_Progressive_Mode_80202900
	.4byte s_has_been_80202914
	.4byte s_turned_off_80202920
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s__store_item__8020292c
	.4byte s__remove_suit__8020293c
	.4byte lbl_8065CA5C
	.4byte lbl_8065CA60
	.4byte s_Vibration_8020294c
	.4byte lbl_8065CA70
	.4byte lbl_8065CA74
	.4byte s_Sound_8065ca78
	.4byte s_Stereo_8065ca80
	.4byte s_Monaural_80202958
	.4byte lbl_8065CA90
	.4byte lbl_8065CB6C
	.4byte lbl_8065CB74
	.4byte s_Controller_80201b94
	.4byte s_Status_8065caa8
	.4byte s_Happy_Stickers_80202964
	.4byte lbl_8065CA58
	.4byte s_Action_8065cab0
	.4byte s_Cancel_8065cab8
	.4byte s_Camera_control_80202974
	.4byte s_Item_menu_80202984
	.4byte s_Chibi_Eye_80202990
	.4byte s_Z_action_8020299c
	.4byte s_Behind_camera_802029a8
	.4byte lbl_8065CAC8
	.4byte s_Pause_8065ca98
	.4byte s_Menu_select_802029b8
	.4byte s_Control_of_ChibiRobo_Menu_select_802029c4
	.4byte s_ChibiRobo_Ranking_802029e8
	.4byte s_Chibi_Doors_completed_802029fc
	.4byte s_Happy_points_80202a14
	.4byte lbl_8065CB7C
	.4byte s_Junks_8065cb84
	.4byte lbl_8065CB8C
	.4byte s_ChibiCom_Menu_80202a24
	.4byte s_Online_Shop_80201c4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE4
	.4byte lbl_8065CA90
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE8
	.4byte s_Select_8065cacc
	.4byte s_Bought_8065caec
	.4byte lbl_8065CAF4
	.4byte lbl_8065CAFC
	.4byte lbl_8065CB00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Junk_Machine_80202a34
	.4byte s_Build_8065cb04
	.4byte s_Exchanged_80201c64
	.4byte s_Exchange__80201c70
	.4byte s_Junk_trade_80202a44
	.4byte s_Current_exchange_rate_80202a50
	.4byte s_Exchange_how_much__80202a68
	.4byte s_There_is_no_enough_junks_80202a7c
	.4byte s_It_s_8065cb0c
	.4byte lbl_8065CB14
	.4byte lbl_8065CB18
	.4byte s_Build__8065cb1c
	.4byte s_Stamby_ok_80202a98
	.4byte s_Exchange_80201cdc
	.4byte lbl_8065CA58
	.4byte s_The_Disc_Cover_is_open__If_you_w_80202aa4
	.4byte s_Please_insert_the_ChibiRobo__Gam_80202afc
	.4byte s_Please_insert_the_ChibiRobo__Gam_80202afc
	.4byte s_The_Game_Disc_could_not_be_read__80202b24
	.4byte s_Reading_8065cb90
	.4byte s_Reading_8065cb90
	.4byte s_SCORE_8065cb98
	.4byte lbl_8065CBA0
	.4byte s_COURCE_8065cba8
	.4byte s_ENEMY_8065cbb0
	.4byte s_New_Game_80201dc0
	.4byte s_Load_Game_80201dcc
	.4byte s_Option_8065cbb8
	.4byte s_Settings_80201dd8
	.4byte lbl_8065CB54
	.4byte s_Empty_8065cb5c
	.4byte s_Yes_No_8065cbc0
	.4byte s_No_Memory_Card_80202b94
	.4byte s_found_in_Slot_A__80202ba4
	.4byte s_Please_check__80202bb8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_in_Slot_A__Please_i_80202bc8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_can_not_be_used__80202c00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_cor_80202c20
	.4byte s_and_needs_to_be_formatted__80202c48
	.4byte s_Do_you_want_to_format__80202c64
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Formatting_the_Memory_Card_will_e_80202c7c
	.4byte s_all_previously_saved_data__Conti_80202ca4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Saving_to_the_Memory_Card__80202ccc
	.4byte s_Do_not_touch_the_Memory_80202ce8
	.4byte s_Card_or_the_POWER_Button__80202d00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_may_occurred_during_for_80202d1c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_has_been_formatt_80202d44
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Continue_without_80202d68
	.4byte s_saving__8065cbc8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Create_a_new_game_data__80202d7c
	.4byte s_Please_select_a_file__80202d94
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_enough_free_space_80202dac
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_save_data_80202dcc
	.4byte s_is_broken_80202ddc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_enough_free_space_80202dac
	.4byte s_on_the_Memory_Card_in_Slot_A__80202de8
	.4byte s_ChibiRobo__requires_1_file_and_80202e08
	.4byte s_6_blocks_to_save__802020dc
	.4byte lbl_8065CA58
	.4byte s_Overwrite_existing_file__802020f0
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_To_manage_the_contents_of_your_M_8020210c
	.4byte s_Card__use_the_Memory_Card_Screen_80202e28
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Saving_to_the_Memory_Card__80202ccc
	.4byte s_Do_not_touch_the_Memory_Card_80202168
	.4byte s_or_the_POWER_Button__80201fcc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_may_occurred_during_sav_80202e4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_the_file_to_load_80202e70
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Loading_8065cb24
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_ChibiRobo__file_on_Memory_Ca_80202e88
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Restart_with_a_80202ee4
	.4byte s_new_save_data__80202ef4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_80202f04
	.4byte s_in_Slot_A__80202f14
	.4byte s_Please_insert_a_80202f20
	.4byte s_Memory_Card__80202f30
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_cannot_be_used__80202264
	.4byte s_Please_insert_a_80202f20
	.4byte s_Memory_Card__80202f30
	.4byte lbl_8065CA58
	.4byte s_Please_insert_a_Memory_Card_80202f40
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Save_completed_80202f5c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_a_file_80202f6c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_data_could_not_be_loaded_80202f7c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_80202f9c
	.4byte s_is_no_longer_available__8020233c

.global lbl_8021635C
lbl_8021635C:

	# ROM: 0x21335C
	.4byte lbl_80202FAC
	.4byte lbl_80203064
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_80203204
	.4byte lbl_8065CBD0
	.4byte lbl_80203258
	.4byte lbl_802032AC
	.4byte lbl_8065CBD0
	.4byte lbl_802032F8
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0

.global lbl_802163BC
lbl_802163BC:

	# ROM: 0x2133BC
	.4byte s_Do_you_want_to_display_80201af0
	.4byte s_the_game_in_Progressive_Mode__80201b08
	.4byte lbl_802028CC
	.4byte s_Screen_has_802028e8
	.4byte s_been_set_to_802028f4
	.4byte s_Progressive_Mode_80202900
	.4byte s_Progressive_Mode_80202900
	.4byte s_has_been_80202914
	.4byte s_turned_off_80202920
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s__store_item__8020292c
	.4byte s__remove_suit__8020293c
	.4byte lbl_8065CA5C
	.4byte lbl_8065CA60
	.4byte s_Vibration_8020294c
	.4byte lbl_8065CA70
	.4byte lbl_8065CA74
	.4byte s_Sound_8065ca78
	.4byte s_Stereo_8065ca80
	.4byte s_Monaural_80202958
	.4byte lbl_8065CA90
	.4byte lbl_8065CB6C
	.4byte lbl_8065CB74
	.4byte s_Controller_80201b94
	.4byte s_Status_8065caa8
	.4byte s_Happy_Stickers_80202964
	.4byte lbl_8065CA58
	.4byte s_Action_8065cab0
	.4byte s_Cancel_8065cab8
	.4byte s_Camera_control_80202974
	.4byte s_Item_menu_80202984
	.4byte s_Chibi_Eye_80202990
	.4byte s_Z_action_8020299c
	.4byte s_Behind_camera_802029a8
	.4byte lbl_8065CAC8
	.4byte s_Pause_8065ca98
	.4byte s_Menu_select_802029b8
	.4byte s_Control_of_ChibiRobo_Menu_select_802029c4
	.4byte s_ChibiRobo_Ranking_802029e8
	.4byte s_Chibi_Doors_completed_802029fc
	.4byte s_Happy_points_80202a14
	.4byte lbl_8065CB7C
	.4byte s_Junks_8065cb84
	.4byte lbl_8065CB8C
	.4byte s_ChibiCom_Menu_80202a24
	.4byte s_Online_Shop_80201c4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE4
	.4byte lbl_8065CA90
	.4byte lbl_8065CA58
	.4byte lbl_8065CAE8
	.4byte s_Select_8065cacc
	.4byte s_Bought_8065caec
	.4byte lbl_8065CAF4
	.4byte lbl_8065CAFC
	.4byte lbl_8065CB00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Junk_Machine_80202a34
	.4byte s_Build_8065cb04
	.4byte s_Exchanged_80201c64
	.4byte s_Exchange__80201c70
	.4byte s_Junk_trade_80202a44
	.4byte s_Current_exchange_rate_80202a50
	.4byte s_Exchange_how_much__80202a68
	.4byte s_There_is_no_enough_junks_80202a7c
	.4byte s_It_s_8065cb0c
	.4byte lbl_8065CB14
	.4byte lbl_8065CB18
	.4byte s_Build__8065cb1c
	.4byte s_Stamby_ok_80202a98
	.4byte s_Exchange_80201cdc
	.4byte lbl_8065CA58
	.4byte s_The_Disc_Cover_is_open__If_you_w_80202aa4
	.4byte s_Please_insert_the_ChibiRobo__Gam_80202afc
	.4byte s_Please_insert_the_ChibiRobo__Gam_80202afc
	.4byte s_The_Game_Disc_could_not_be_read__80202b24
	.4byte s_Reading_8065cb90
	.4byte s_Reading_8065cb90
	.4byte s_SCORE_8065cb98
	.4byte lbl_8065CBA0
	.4byte s_COURCE_8065cba8
	.4byte s_ENEMY_8065cbb0
	.4byte s_New_Game_80201dc0
	.4byte s_Load_Game_80201dcc
	.4byte s_Option_8065cbb8
	.4byte s_Settings_80201dd8
	.4byte lbl_8065CB54
	.4byte s_Empty_8065cb5c
	.4byte s_Yes_No_8065cbc0
	.4byte s_No_Memory_Card_80202b94
	.4byte s_found_in_Slot_A__80202ba4
	.4byte s_Please_check__80202bb8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_in_Slot_A__Please_i_80202bc8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_can_not_be_used__80202c00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_cor_80202c20
	.4byte s_and_needs_to_be_formatted__80202c48
	.4byte s_Do_you_want_to_format__80202c64
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Formatting_the_Memory_Card_will_e_80202c7c
	.4byte s_all_previously_saved_data__Conti_80202ca4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Saving_to_the_Memory_Card__80202ccc
	.4byte s_Do_not_touch_the_Memory_80202ce8
	.4byte s_Card_or_the_POWER_Button__80202d00
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_may_occurred_during_for_80202d1c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_has_been_formatt_80202d44
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Continue_without_80202d68
	.4byte s_saving__8065cbc8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Create_a_new_game_data__80202d7c
	.4byte s_Please_select_a_file__80202d94
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_enough_free_space_80202dac
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_save_data_80202dcc
	.4byte s_is_broken_80202ddc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_There_is_not_enough_free_space_80202dac
	.4byte s_on_the_Memory_Card_in_Slot_A__80202de8
	.4byte s_ChibiRobo__requires_1_file_and_80202e08
	.4byte s_6_blocks_to_save__802020dc
	.4byte lbl_8065CA58
	.4byte s_Overwrite_existing_file__802020f0
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_To_manage_the_contents_of_your_M_8020210c
	.4byte s_Card__use_the_Memory_Card_Screen_80202e28
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Saving_to_the_Memory_Card__80202ccc
	.4byte s_Do_not_touch_the_Memory_Card_80202168
	.4byte s_or_the_POWER_Button__80201fcc
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_An_error_may_occurred_during_sav_80202e4c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_the_file_to_load_80202e70
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Loading_8065cb24
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_ChibiRobo__file_on_Memory_Ca_80202e88
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Restart_with_a_80202ee4
	.4byte s_new_save_data__80202ef4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Wrong_device_80202f04
	.4byte s_in_Slot_A__80202f14
	.4byte s_Please_insert_a_80202f20
	.4byte s_Memory_Card__80202f30
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_in_Slot_A_is_80201ef4
	.4byte s_damaged_and_cannot_be_used__80202264
	.4byte s_Please_insert_a_80202f20
	.4byte s_Memory_Card__80202f30
	.4byte lbl_8065CA58
	.4byte s_Please_insert_a_Memory_Card_80202f40
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Save_completed_80202f5c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_Select_a_file_80202f6c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_data_could_not_be_loaded_80202f7c
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte s_The_Memory_Card_80202f9c
	.4byte s_is_no_longer_available__8020233c

.global lbl_80216788
lbl_80216788:

	# ROM: 0x213788
	.4byte lbl_80202FAC
	.4byte lbl_80203064
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_80203204
	.4byte lbl_8065CBD0
	.4byte lbl_80203258
	.4byte lbl_802032AC
	.4byte lbl_8065CBD0
	.4byte lbl_802032F8
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0

.global lbl_802167E8
lbl_802167E8:

	# ROM: 0x2137E8
	.4byte lbl_802034A0
	.4byte lbl_802034B8
	.4byte lbl_802034C8
	.4byte lbl_802034EC
	.4byte lbl_80203500
	.4byte lbl_80203518
	.4byte lbl_802034EC
	.4byte lbl_8020352C
	.4byte lbl_80203518
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_80203544
	.4byte lbl_80203550
	.4byte lbl_8065CBD8
	.4byte lbl_8065CBDC
	.4byte lbl_8065CBE4
	.4byte lbl_8065CBEC
	.4byte lbl_8065CBF4
	.4byte lbl_8020355C
	.4byte lbl_80203568
	.4byte lbl_80203574
	.4byte lbl_8065CBFC
	.4byte lbl_80203580
	.4byte lbl_8020358C
	.4byte lbl_80203598
	.4byte lbl_802035A8
	.4byte lbl_802035B4
	.4byte lbl_8065CBD4
	.4byte lbl_802035C4
	.4byte lbl_802035D0
	.4byte lbl_802035DC
	.4byte lbl_802035EC
	.4byte lbl_802035FC
	.4byte lbl_80203608
	.4byte lbl_80203618
	.4byte lbl_80203628
	.4byte lbl_80203638
	.4byte lbl_80203648
	.4byte lbl_8020365C
	.4byte lbl_80203684
	.4byte lbl_80203698
	.4byte lbl_802036B0
	.4byte lbl_8065CC04
	.4byte lbl_802036C4
	.4byte lbl_8065CB8C
	.4byte lbl_802036D0
	.4byte lbl_802036E4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CC0C
	.4byte lbl_8065CBFC
	.4byte lbl_8065CBD4
	.4byte lbl_8065CC14
	.4byte lbl_8065CC1C
	.4byte lbl_802036F8
	.4byte lbl_80203704
	.4byte lbl_8065CC24
	.4byte lbl_8065CC2C
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_80203714
	.4byte lbl_8065CC34
	.4byte lbl_80203728
	.4byte lbl_8020373C
	.4byte lbl_80203750
	.4byte lbl_80203764
	.4byte lbl_80203778
	.4byte lbl_80203790
	.4byte lbl_802037A8
	.4byte lbl_802037B4
	.4byte lbl_8065CB18
	.4byte lbl_802037C8
	.4byte lbl_802037D8
	.4byte lbl_802037F0
	.4byte lbl_8065CBD4
	.4byte lbl_802037FC
	.4byte lbl_80203850
	.4byte lbl_80203850
	.4byte lbl_8020387C
	.4byte lbl_802038C4
	.4byte s_reading_8065cc3c
	.4byte s_SCORE_8065cb98
	.4byte lbl_8065CBA0
	.4byte s_COURCE_8065cba8
	.4byte s_ENEMY_8065cbb0
	.4byte lbl_802038E0
	.4byte lbl_802038EC
	.4byte lbl_802038F8
	.4byte lbl_80203904
	.4byte lbl_8065CC44
	.4byte lbl_80203920
	.4byte lbl_8020392C
	.4byte lbl_8065CC24
	.4byte lbl_8065CC2C
	.4byte lbl_8020393C
	.4byte lbl_8020394C
	.4byte lbl_8020396C
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203994
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_802039C0
	.4byte lbl_802039E0
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_802039C0
	.4byte lbl_80203A00
	.4byte lbl_80203A2C
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203A40
	.4byte lbl_80203A68
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203A94
	.4byte lbl_80203AB4
	.4byte lbl_80203AD4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203AEC
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203B10
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203B30
	.4byte lbl_802037B4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203B4C
	.4byte lbl_80203B6C
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203B88
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203B9C
	.4byte lbl_80203BAC
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203BBC
	.4byte lbl_80203BEC
	.4byte lbl_80203C10
	.4byte lbl_80203C3C
	.4byte lbl_8065CA58
	.4byte lbl_80203C5C
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203C84
	.4byte lbl_80203C9C
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203CC8
	.4byte lbl_80203AB4
	.4byte lbl_80203AD4
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203CD8
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203CFC
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203D24
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203D34
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203D58
	.4byte lbl_80203D78
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203D98
	.4byte lbl_80203994
	.4byte lbl_80203DAC
	.4byte lbl_80203DBC
	.4byte lbl_8065CA58
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_8065CBD4
	.4byte lbl_80203D98
	.4byte lbl_802039C0
	.4byte lbl_802039E0
	.4byte lbl_80203DE8
	.4byte lbl_8065CA58
	.4byte lbl_80203E14
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203E38
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203B6C
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203E48
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203E60
	.4byte lbl_80203E74
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_8065CA58
	.4byte lbl_80203E88
	.4byte lbl_80203E94

.global lbl_80216BD0
lbl_80216BD0:

	# ROM: 0x213BD0
	.4byte lbl_80202FAC
	.4byte lbl_80203064
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_80203204
	.4byte lbl_8065CBD0
	.4byte lbl_80203258
	.4byte lbl_802032AC
	.4byte lbl_8065CBD0
	.4byte lbl_802032F8
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0
	.4byte lbl_8065CBD0

.global lbl_80216C30
lbl_80216C30:

	# ROM: 0x213C30
	.4byte s_cb_robo_8065cc4c
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216C44
lbl_80216C44:

	# ROM: 0x213C44
	.4byte lbl_80203EA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216C58
lbl_80216C58:

	# ROM: 0x213C58
	.4byte lbl_80203EAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216C6C
lbl_80216C6C:

	# ROM: 0x213C6C
	.4byte lbl_80203EC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216C80
lbl_80216C80:

	# ROM: 0x213C80
	.4byte lbl_80203ED0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216C94
lbl_80216C94:

	# ROM: 0x213C94
	.4byte lbl_80203EE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216CA8
lbl_80216CA8:

	# ROM: 0x213CA8
	.4byte lbl_80203EF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216CBC
lbl_80216CBC:

	# ROM: 0x213CBC
	.4byte lbl_80203F08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216CD0
lbl_80216CD0:

	# ROM: 0x213CD0
	.4byte lbl_80203F1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216CE4
lbl_80216CE4:

	# ROM: 0x213CE4
	.4byte lbl_80203F30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216CF8
lbl_80216CF8:

	# ROM: 0x213CF8
	.4byte lbl_80203F44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216D0C
lbl_80216D0C:

	# ROM: 0x213D0C
	.4byte lbl_80203F54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216D20
lbl_80216D20:

	# ROM: 0x213D20
	.4byte lbl_80203F64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216D34
lbl_80216D34:

	# ROM: 0x213D34
	.4byte lbl_80203F74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216D48
lbl_80216D48:

	# ROM: 0x213D48
	.4byte lbl_80203F88
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216D5C
lbl_80216D5C:

	# ROM: 0x213D5C
	.4byte lbl_80203F98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216D70
lbl_80216D70:

	# ROM: 0x213D70
	.4byte lbl_80203FA4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216D84
lbl_80216D84:

	# ROM: 0x213D84
	.4byte lbl_8065CC54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216D98
lbl_80216D98:

	# ROM: 0x213D98
	.4byte lbl_80203FB8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216DAC
lbl_80216DAC:

	# ROM: 0x213DAC
	.4byte lbl_80203FC4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216DC0
lbl_80216DC0:

	# ROM: 0x213DC0
	.4byte lbl_80203FD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216DD4
lbl_80216DD4:

	# ROM: 0x213DD4
	.4byte lbl_80203FDC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216DE8
lbl_80216DE8:

	# ROM: 0x213DE8
	.4byte lbl_80203FEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216DFC
lbl_80216DFC:

	# ROM: 0x213DFC
	.4byte lbl_80203FF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216E10
lbl_80216E10:

	# ROM: 0x213E10
	.4byte lbl_80204004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216E24
lbl_80216E24:

	# ROM: 0x213E24
	.4byte lbl_80204010
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216E38
lbl_80216E38:

	# ROM: 0x213E38
	.4byte lbl_80204020
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216E4C
lbl_80216E4C:

	# ROM: 0x213E4C
	.4byte lbl_80204030
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216E60
lbl_80216E60:

	# ROM: 0x213E60
	.4byte lbl_80204040
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216E74
lbl_80216E74:

	# ROM: 0x213E74
	.4byte lbl_80204050
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216E88
lbl_80216E88:

	# ROM: 0x213E88
	.4byte lbl_80204060
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216E9C
lbl_80216E9C:

	# ROM: 0x213E9C
	.4byte lbl_80204070
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216EB0
lbl_80216EB0:

	# ROM: 0x213EB0
	.4byte lbl_80204080
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216EC4
lbl_80216EC4:

	# ROM: 0x213EC4
	.4byte lbl_8020408C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216ED8
lbl_80216ED8:

	# ROM: 0x213ED8
	.4byte lbl_802040A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216EEC
lbl_80216EEC:

	# ROM: 0x213EEC
	.4byte lbl_802040B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216F00
lbl_80216F00:

	# ROM: 0x213F00
	.4byte lbl_802040C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216F14
lbl_80216F14:

	# ROM: 0x213F14
	.4byte lbl_802040D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216F28
lbl_80216F28:

	# ROM: 0x213F28
	.4byte lbl_802040E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216F3C
lbl_80216F3C:

	# ROM: 0x213F3C
	.4byte lbl_802040F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216F50
lbl_80216F50:

	# ROM: 0x213F50
	.4byte lbl_80204108
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216F64
lbl_80216F64:

	# ROM: 0x213F64
	.4byte lbl_80204118
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216F78
lbl_80216F78:

	# ROM: 0x213F78
	.4byte lbl_80204128
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216F8C
lbl_80216F8C:

	# ROM: 0x213F8C
	.4byte lbl_80204138
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216FA0
lbl_80216FA0:

	# ROM: 0x213FA0
	.4byte lbl_80204144
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80216FB4
lbl_80216FB4:

	# ROM: 0x213FB4
	.4byte lbl_8065CC5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216FC8
lbl_80216FC8:

	# ROM: 0x213FC8
	.4byte lbl_8065CC64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216FDC
lbl_80216FDC:

	# ROM: 0x213FDC
	.4byte lbl_8065CC6C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80216FF0
lbl_80216FF0:

	# ROM: 0x213FF0
	.4byte lbl_80204154
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217004
lbl_80217004:

	# ROM: 0x214004
	.4byte lbl_80204164
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217018
lbl_80217018:

	# ROM: 0x214018
	.4byte lbl_80204170
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021702C
lbl_8021702C:

	# ROM: 0x21402C
	.4byte lbl_80204180
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217040
lbl_80217040:

	# ROM: 0x214040
	.4byte lbl_80204190
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217054
lbl_80217054:

	# ROM: 0x214054
	.4byte lbl_802041A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217068
lbl_80217068:

	# ROM: 0x214068
	.4byte lbl_802041AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021707C
lbl_8021707C:

	# ROM: 0x21407C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217090
lbl_80217090:

	# ROM: 0x214090
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802170A4
lbl_802170A4:

	# ROM: 0x2140A4
	.4byte lbl_802041B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802170B8
lbl_802170B8:

	# ROM: 0x2140B8
	.4byte lbl_802041C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802170CC
lbl_802170CC:

	# ROM: 0x2140CC
	.4byte lbl_802041D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802170E0
lbl_802170E0:

	# ROM: 0x2140E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802170F4
lbl_802170F4:

	# ROM: 0x2140F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217108
lbl_80217108:

	# ROM: 0x214108
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021711C
lbl_8021711C:

	# ROM: 0x21411C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217130
lbl_80217130:

	# ROM: 0x214130
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217144
lbl_80217144:

	# ROM: 0x214144
	.4byte lbl_8065CC74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217158
lbl_80217158:

	# ROM: 0x214158
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021716C
lbl_8021716C:

	# ROM: 0x21416C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217180
lbl_80217180:

	# ROM: 0x214180
	.4byte lbl_802041DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217194
lbl_80217194:

	# ROM: 0x214194
	.4byte lbl_802041EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802171A8
lbl_802171A8:

	# ROM: 0x2141A8
	.4byte lbl_80204200
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802171BC
lbl_802171BC:

	# ROM: 0x2141BC
	.4byte lbl_80204214
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802171D0
lbl_802171D0:

	# ROM: 0x2141D0
	.4byte lbl_80204228
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802171E4
lbl_802171E4:

	# ROM: 0x2141E4
	.4byte lbl_80204238
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802171F8
lbl_802171F8:

	# ROM: 0x2141F8
	.4byte lbl_80204244
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021720C
lbl_8021720C:

	# ROM: 0x21420C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217220
lbl_80217220:

	# ROM: 0x214220
	.4byte lbl_80204250
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217234
lbl_80217234:

	# ROM: 0x214234
	.4byte lbl_80204260
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217248
lbl_80217248:

	# ROM: 0x214248
	.4byte lbl_80204270
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021725C
lbl_8021725C:

	# ROM: 0x21425C
	.4byte lbl_80204280
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217270
lbl_80217270:

	# ROM: 0x214270
	.4byte lbl_80204290
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217284
lbl_80217284:

	# ROM: 0x214284
	.4byte lbl_8020429C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217298
lbl_80217298:

	# ROM: 0x214298
	.4byte lbl_802042A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802172AC
lbl_802172AC:

	# ROM: 0x2142AC
	.4byte lbl_802042B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802172C0
lbl_802172C0:

	# ROM: 0x2142C0
	.4byte lbl_802042C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802172D4
lbl_802172D4:

	# ROM: 0x2142D4
	.4byte lbl_802042D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802172E8
lbl_802172E8:

	# ROM: 0x2142E8
	.4byte lbl_802042E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802172FC
lbl_802172FC:

	# ROM: 0x2142FC
	.4byte lbl_802042EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217310
lbl_80217310:

	# ROM: 0x214310
	.4byte lbl_802042F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217324
lbl_80217324:

	# ROM: 0x214324
	.4byte lbl_8020430C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217338
lbl_80217338:

	# ROM: 0x214338
	.4byte lbl_8020431C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021734C
lbl_8021734C:

	# ROM: 0x21434C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217360
lbl_80217360:

	# ROM: 0x214360
	.4byte lbl_8020432C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217374
lbl_80217374:

	# ROM: 0x214374
	.4byte lbl_80204338
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217388
lbl_80217388:

	# ROM: 0x214388
	.4byte lbl_8020434C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021739C
lbl_8021739C:

	# ROM: 0x21439C
	.4byte lbl_80204360
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802173B0
lbl_802173B0:

	# ROM: 0x2143B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802173C4
lbl_802173C4:

	# ROM: 0x2143C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802173D8
lbl_802173D8:

	# ROM: 0x2143D8
	.4byte lbl_80204374
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802173EC
lbl_802173EC:

	# ROM: 0x2143EC
	.4byte lbl_80204380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217400
lbl_80217400:

	# ROM: 0x214400
	.4byte lbl_80204390
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217414
lbl_80217414:

	# ROM: 0x214414
	.4byte lbl_802043A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217428
lbl_80217428:

	# ROM: 0x214428
	.4byte lbl_802043B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021743C
lbl_8021743C:

	# ROM: 0x21443C
	.4byte lbl_802043C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217450
lbl_80217450:

	# ROM: 0x214450
	.4byte lbl_802043D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217478
lbl_80217478:

	# ROM: 0x214478
	.4byte lbl_802043E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021748C
lbl_8021748C:

	# ROM: 0x21448C
	.4byte lbl_8065CC7C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802174A0
lbl_802174A0:

	# ROM: 0x2144A0
	.4byte lbl_802043F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802174B4
lbl_802174B4:

	# ROM: 0x2144B4
	.4byte lbl_802043FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802174C8
lbl_802174C8:

	# ROM: 0x2144C8
	.4byte lbl_80204410
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802174DC
lbl_802174DC:

	# ROM: 0x2144DC
	.4byte lbl_80204420
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802174F0
lbl_802174F0:

	# ROM: 0x2144F0
	.4byte lbl_8020442C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217504
lbl_80217504:

	# ROM: 0x214504
	.4byte lbl_8020443C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217518
lbl_80217518:

	# ROM: 0x214518
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021752C
lbl_8021752C:

	# ROM: 0x21452C
	.4byte lbl_8020444C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217540
lbl_80217540:

	# ROM: 0x214540
	.4byte lbl_80204464
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217554
lbl_80217554:

	# ROM: 0x214554
	.4byte lbl_8020447C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217568
lbl_80217568:

	# ROM: 0x214568
	.4byte lbl_80204488
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021757C
lbl_8021757C:

	# ROM: 0x21457C
	.4byte lbl_80204498
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217590
lbl_80217590:

	# ROM: 0x214590
	.4byte lbl_802044AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802175A4
lbl_802175A4:

	# ROM: 0x2145A4
	.4byte lbl_802044C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802175B8
lbl_802175B8:

	# ROM: 0x2145B8
	.4byte lbl_802044E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802175CC
lbl_802175CC:

	# ROM: 0x2145CC
	.4byte lbl_802044F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802175E0
lbl_802175E0:

	# ROM: 0x2145E0
	.4byte lbl_80204500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802175F4
lbl_802175F4:

	# ROM: 0x2145F4
	.4byte lbl_80204514
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217608
lbl_80217608:

	# ROM: 0x214608
	.4byte lbl_80204524
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021761C
lbl_8021761C:

	# ROM: 0x21461C
	.4byte lbl_80204538
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217630
lbl_80217630:

	# ROM: 0x214630
	.4byte lbl_80204548
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217644
lbl_80217644:

	# ROM: 0x214644
	.4byte lbl_80204558
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217658
lbl_80217658:

	# ROM: 0x214658
	.4byte lbl_8020456C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021766C
lbl_8021766C:

	# ROM: 0x21466C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217680
lbl_80217680:

	# ROM: 0x214680
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217694
lbl_80217694:

	# ROM: 0x214694
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802176A8
lbl_802176A8:

	# ROM: 0x2146A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802176BC
lbl_802176BC:

	# ROM: 0x2146BC
	.4byte lbl_80204580
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802176D0
lbl_802176D0:

	# ROM: 0x2146D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802176F8
lbl_802176F8:

	# ROM: 0x2146F8
	.4byte lbl_80204590
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021770C
lbl_8021770C:

	# ROM: 0x21470C
	.4byte lbl_802045A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217720
lbl_80217720:

	# ROM: 0x214720
	.4byte lbl_802045B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217734
lbl_80217734:

	# ROM: 0x214734
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217748
lbl_80217748:

	# ROM: 0x214748
	.4byte lbl_802045CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021775C
lbl_8021775C:

	# ROM: 0x21475C
	.4byte lbl_802045DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217770
lbl_80217770:

	# ROM: 0x214770
	.4byte lbl_802045EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217784
lbl_80217784:

	# ROM: 0x214784
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217798
lbl_80217798:

	# ROM: 0x214798
	.4byte lbl_80204600
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802177AC
lbl_802177AC:

	# ROM: 0x2147AC
	.4byte lbl_80204610
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802177C0
lbl_802177C0:

	# ROM: 0x2147C0
	.4byte lbl_80204620
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802177D4
lbl_802177D4:

	# ROM: 0x2147D4
	.4byte lbl_80204634
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802177E8
lbl_802177E8:

	# ROM: 0x2147E8
	.4byte lbl_80204644
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802177FC
lbl_802177FC:

	# ROM: 0x2147FC
	.4byte lbl_80204654
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217810
lbl_80217810:

	# ROM: 0x214810
	.4byte lbl_80204664
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217824
lbl_80217824:

	# ROM: 0x214824
	.4byte lbl_80204678
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217838
lbl_80217838:

	# ROM: 0x214838
	.4byte lbl_80204690
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021784C
lbl_8021784C:

	# ROM: 0x21484C
	.4byte lbl_802046A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217860
lbl_80217860:

	# ROM: 0x214860
	.4byte lbl_802046B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217874
lbl_80217874:

	# ROM: 0x214874
	.4byte lbl_802046C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217888
lbl_80217888:

	# ROM: 0x214888
	.4byte lbl_802046D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021789C
lbl_8021789C:

	# ROM: 0x21489C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802178B0
lbl_802178B0:

	# ROM: 0x2148B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802178C4
lbl_802178C4:

	# ROM: 0x2148C4
	.4byte lbl_802046E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802178D8
lbl_802178D8:

	# ROM: 0x2148D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802178EC
lbl_802178EC:

	# ROM: 0x2148EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217900
lbl_80217900:

	# ROM: 0x214900
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217914
lbl_80217914:

	# ROM: 0x214914
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217928
lbl_80217928:

	# ROM: 0x214928
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021793C
lbl_8021793C:

	# ROM: 0x21493C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217950
lbl_80217950:

	# ROM: 0x214950
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217964
lbl_80217964:

	# ROM: 0x214964
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217978
lbl_80217978:

	# ROM: 0x214978
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021798C
lbl_8021798C:

	# ROM: 0x21498C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802179A0
lbl_802179A0:

	# ROM: 0x2149A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802179B4
lbl_802179B4:

	# ROM: 0x2149B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802179C8
lbl_802179C8:

	# ROM: 0x2149C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802179DC
lbl_802179DC:

	# ROM: 0x2149DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802179F0
lbl_802179F0:

	# ROM: 0x2149F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217A04
lbl_80217A04:

	# ROM: 0x214A04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217A18
lbl_80217A18:

	# ROM: 0x214A18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217A2C
lbl_80217A2C:

	# ROM: 0x214A2C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217A40
lbl_80217A40:

	# ROM: 0x214A40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217A54
lbl_80217A54:

	# ROM: 0x214A54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217A68
lbl_80217A68:

	# ROM: 0x214A68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217A7C
lbl_80217A7C:

	# ROM: 0x214A7C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217A90
lbl_80217A90:

	# ROM: 0x214A90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217AA4
lbl_80217AA4:

	# ROM: 0x214AA4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217AB8
lbl_80217AB8:

	# ROM: 0x214AB8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217ACC
lbl_80217ACC:

	# ROM: 0x214ACC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217AE0
lbl_80217AE0:

	# ROM: 0x214AE0
	.4byte lbl_802046F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217AF4
lbl_80217AF4:

	# ROM: 0x214AF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217B08
lbl_80217B08:

	# ROM: 0x214B08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217B1C
lbl_80217B1C:

	# ROM: 0x214B1C
	.4byte lbl_8065CC84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217B30
lbl_80217B30:

	# ROM: 0x214B30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217B44
lbl_80217B44:

	# ROM: 0x214B44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217B58
lbl_80217B58:

	# ROM: 0x214B58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217B6C
lbl_80217B6C:

	# ROM: 0x214B6C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217B80
lbl_80217B80:

	# ROM: 0x214B80
	.4byte lbl_80204700
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217B94
lbl_80217B94:

	# ROM: 0x214B94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217BA8
lbl_80217BA8:

	# ROM: 0x214BA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217BBC
lbl_80217BBC:

	# ROM: 0x214BBC
	.4byte lbl_8020470C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217BD0
lbl_80217BD0:

	# ROM: 0x214BD0
	.4byte lbl_80204718
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217BE4
lbl_80217BE4:

	# ROM: 0x214BE4
	.4byte lbl_80204728
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217BF8
lbl_80217BF8:

	# ROM: 0x214BF8
	.4byte lbl_80204738
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217C0C
lbl_80217C0C:

	# ROM: 0x214C0C
	.4byte lbl_8020474C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217C20
lbl_80217C20:

	# ROM: 0x214C20
	.4byte lbl_80204760
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217C34
lbl_80217C34:

	# ROM: 0x214C34
	.4byte lbl_80204770
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217C48
lbl_80217C48:

	# ROM: 0x214C48
	.4byte lbl_80204780
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217C5C
lbl_80217C5C:

	# ROM: 0x214C5C
	.4byte lbl_80204794
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217C70
lbl_80217C70:

	# ROM: 0x214C70
	.4byte lbl_802047A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217C84
lbl_80217C84:

	# ROM: 0x214C84
	.4byte lbl_802047B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217C98
lbl_80217C98:

	# ROM: 0x214C98
	.4byte lbl_802047BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217CAC
lbl_80217CAC:

	# ROM: 0x214CAC
	.4byte lbl_802047CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217CC0
lbl_80217CC0:

	# ROM: 0x214CC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217CD4
lbl_80217CD4:

	# ROM: 0x214CD4
	.4byte lbl_802047E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217CE8
lbl_80217CE8:

	# ROM: 0x214CE8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217CFC
lbl_80217CFC:

	# ROM: 0x214CFC
	.4byte lbl_802047F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217D10
lbl_80217D10:

	# ROM: 0x214D10
	.4byte lbl_80204804
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217D24
lbl_80217D24:

	# ROM: 0x214D24
	.4byte lbl_80204818
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217D38
lbl_80217D38:

	# ROM: 0x214D38
	.4byte lbl_80204828
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217D4C
lbl_80217D4C:

	# ROM: 0x214D4C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217D60
lbl_80217D60:

	# ROM: 0x214D60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217D74
lbl_80217D74:

	# ROM: 0x214D74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217D88
lbl_80217D88:

	# ROM: 0x214D88
	.4byte lbl_80204838
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217D9C
lbl_80217D9C:

	# ROM: 0x214D9C
	.4byte lbl_80204848
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217DB0
lbl_80217DB0:

	# ROM: 0x214DB0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217DC4
lbl_80217DC4:

	# ROM: 0x214DC4
	.4byte lbl_80204858
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217DD8
lbl_80217DD8:

	# ROM: 0x214DD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217DEC
lbl_80217DEC:

	# ROM: 0x214DEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217E00
lbl_80217E00:

	# ROM: 0x214E00
	.4byte lbl_8020486C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217E14
lbl_80217E14:

	# ROM: 0x214E14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217E28
lbl_80217E28:

	# ROM: 0x214E28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217E3C
lbl_80217E3C:

	# ROM: 0x214E3C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217E50
lbl_80217E50:

	# ROM: 0x214E50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217E64
lbl_80217E64:

	# ROM: 0x214E64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217E78
lbl_80217E78:

	# ROM: 0x214E78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217E8C
lbl_80217E8C:

	# ROM: 0x214E8C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217EA0
lbl_80217EA0:

	# ROM: 0x214EA0
	.4byte lbl_80204884
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217EB4
lbl_80217EB4:

	# ROM: 0x214EB4
	.4byte lbl_80204890
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217EC8
lbl_80217EC8:

	# ROM: 0x214EC8
	.4byte lbl_802048A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217EDC
lbl_80217EDC:

	# ROM: 0x214EDC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217EF0
lbl_80217EF0:

	# ROM: 0x214EF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217F04
lbl_80217F04:

	# ROM: 0x214F04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217F18
lbl_80217F18:

	# ROM: 0x214F18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217F2C
lbl_80217F2C:

	# ROM: 0x214F2C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217F40
lbl_80217F40:

	# ROM: 0x214F40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217F54
lbl_80217F54:

	# ROM: 0x214F54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217F68
lbl_80217F68:

	# ROM: 0x214F68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217F7C
lbl_80217F7C:

	# ROM: 0x214F7C
	.4byte lbl_802048B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217F90
lbl_80217F90:

	# ROM: 0x214F90
	.4byte lbl_802048C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80217FA4
lbl_80217FA4:

	# ROM: 0x214FA4
	.4byte lbl_802048D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217FB8
lbl_80217FB8:

	# ROM: 0x214FB8
	.4byte lbl_802048E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217FCC
lbl_80217FCC:

	# ROM: 0x214FCC
	.4byte lbl_80204900
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217FE0
lbl_80217FE0:

	# ROM: 0x214FE0
	.4byte lbl_8020490C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80217FF4
lbl_80217FF4:

	# ROM: 0x214FF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218008
lbl_80218008:

	# ROM: 0x215008
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021801C
lbl_8021801C:

	# ROM: 0x21501C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218030
lbl_80218030:

	# ROM: 0x215030
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218044
lbl_80218044:

	# ROM: 0x215044
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218058
lbl_80218058:

	# ROM: 0x215058
	.4byte lbl_8020491C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021806C
lbl_8021806C:

	# ROM: 0x21506C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218080
lbl_80218080:

	# ROM: 0x215080
	.4byte lbl_8020492C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218094
lbl_80218094:

	# ROM: 0x215094
	.4byte lbl_8020493C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802180A8
lbl_802180A8:

	# ROM: 0x2150A8
	.4byte lbl_80204948
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802180BC
lbl_802180BC:

	# ROM: 0x2150BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802180D0
lbl_802180D0:

	# ROM: 0x2150D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802180E4
lbl_802180E4:

	# ROM: 0x2150E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802180F8
lbl_802180F8:

	# ROM: 0x2150F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021810C
lbl_8021810C:

	# ROM: 0x21510C
	.4byte lbl_80204958
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218120
lbl_80218120:

	# ROM: 0x215120
	.4byte lbl_8020496C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218134
lbl_80218134:

	# ROM: 0x215134
	.4byte lbl_80204978
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218148
lbl_80218148:

	# ROM: 0x215148
	.4byte lbl_80204984
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021815C
lbl_8021815C:

	# ROM: 0x21515C
	.4byte lbl_80204990
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218170
lbl_80218170:

	# ROM: 0x215170
	.4byte lbl_802049A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218184
lbl_80218184:

	# ROM: 0x215184
	.4byte lbl_802049AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218198
lbl_80218198:

	# ROM: 0x215198
	.4byte lbl_802049C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802181AC
lbl_802181AC:

	# ROM: 0x2151AC
	.4byte lbl_802049D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802181C0
lbl_802181C0:

	# ROM: 0x2151C0
	.4byte lbl_802049E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802181D4
lbl_802181D4:

	# ROM: 0x2151D4
	.4byte lbl_802049F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802181E8
lbl_802181E8:

	# ROM: 0x2151E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802181FC
lbl_802181FC:

	# ROM: 0x2151FC
	.4byte lbl_80204A10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218210
lbl_80218210:

	# ROM: 0x215210
	.4byte lbl_80204A1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218224
lbl_80218224:

	# ROM: 0x215224
	.4byte lbl_8065CC8C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218238
lbl_80218238:

	# ROM: 0x215238
	.4byte lbl_80204A28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021824C
lbl_8021824C:

	# ROM: 0x21524C
	.4byte lbl_80204A34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218260
lbl_80218260:

	# ROM: 0x215260
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218274
lbl_80218274:

	# ROM: 0x215274
	.4byte lbl_80204A44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218288
lbl_80218288:

	# ROM: 0x215288
	.4byte lbl_80204A54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021829C
lbl_8021829C:

	# ROM: 0x21529C
	.4byte lbl_80204A64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802182B0
lbl_802182B0:

	# ROM: 0x2152B0
	.4byte lbl_80204A74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802182C4
lbl_802182C4:

	# ROM: 0x2152C4
	.4byte lbl_80204A80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802182D8
lbl_802182D8:

	# ROM: 0x2152D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802182EC
lbl_802182EC:

	# ROM: 0x2152EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218300
lbl_80218300:

	# ROM: 0x215300
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218314
lbl_80218314:

	# ROM: 0x215314
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218328
lbl_80218328:

	# ROM: 0x215328
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021833C
lbl_8021833C:

	# ROM: 0x21533C
	.4byte lbl_80204A94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218350
lbl_80218350:

	# ROM: 0x215350
	.4byte lbl_80204AA4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218364
lbl_80218364:

	# ROM: 0x215364
	.4byte lbl_80204AB4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218378
lbl_80218378:

	# ROM: 0x215378
	.4byte lbl_80204AC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021838C
lbl_8021838C:

	# ROM: 0x21538C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802183A0
lbl_802183A0:

	# ROM: 0x2153A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802183B4
lbl_802183B4:

	# ROM: 0x2153B4
	.4byte lbl_80204AD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802183C8
lbl_802183C8:

	# ROM: 0x2153C8
	.4byte lbl_80204AE8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802183DC
lbl_802183DC:

	# ROM: 0x2153DC
	.4byte lbl_80204AF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802183F0
lbl_802183F0:

	# ROM: 0x2153F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218404
lbl_80218404:

	# ROM: 0x215404
	.4byte lbl_80204B0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218418
lbl_80218418:

	# ROM: 0x215418
	.4byte lbl_80204B20
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021842C
lbl_8021842C:

	# ROM: 0x21542C
	.4byte lbl_80204B34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218440
lbl_80218440:

	# ROM: 0x215440
	.4byte lbl_8065CC94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218454
lbl_80218454:

	# ROM: 0x215454
	.4byte lbl_80204B44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218468
lbl_80218468:

	# ROM: 0x215468
	.4byte lbl_80204B54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021847C
lbl_8021847C:

	# ROM: 0x21547C
	.4byte lbl_80204B68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218490
lbl_80218490:

	# ROM: 0x215490
	.4byte lbl_80204B78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802184A4
lbl_802184A4:

	# ROM: 0x2154A4
	.4byte lbl_80204B84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802184B8
lbl_802184B8:

	# ROM: 0x2154B8
	.4byte lbl_80204B90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802184CC
lbl_802184CC:

	# ROM: 0x2154CC
	.4byte lbl_80204BA4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802184E0
lbl_802184E0:

	# ROM: 0x2154E0
	.4byte lbl_80204BB4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802184F4
lbl_802184F4:

	# ROM: 0x2154F4
	.4byte lbl_80204BC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218508
lbl_80218508:

	# ROM: 0x215508
	.4byte lbl_80204BD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021851C
lbl_8021851C:

	# ROM: 0x21551C
	.4byte lbl_80204BE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218530
lbl_80218530:

	# ROM: 0x215530
	.4byte lbl_80204BF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218544
lbl_80218544:

	# ROM: 0x215544
	.4byte lbl_80204C0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218558
lbl_80218558:

	# ROM: 0x215558
	.4byte lbl_80204C18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021856C
lbl_8021856C:

	# ROM: 0x21556C
	.4byte lbl_80204C24
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218580
lbl_80218580:

	# ROM: 0x215580
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218594
lbl_80218594:

	# ROM: 0x215594
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802185A8
lbl_802185A8:

	# ROM: 0x2155A8
	.4byte lbl_80204C34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802185BC
lbl_802185BC:

	# ROM: 0x2155BC
	.4byte lbl_80204C44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802185D0
lbl_802185D0:

	# ROM: 0x2155D0
	.4byte lbl_80204C54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802185E4
lbl_802185E4:

	# ROM: 0x2155E4
	.4byte lbl_80204C60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802185F8
lbl_802185F8:

	# ROM: 0x2155F8
	.4byte lbl_80204C6C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021860C
lbl_8021860C:

	# ROM: 0x21560C
	.4byte lbl_80204C78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218620
lbl_80218620:

	# ROM: 0x215620
	.4byte lbl_80204C88
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218634
lbl_80218634:

	# ROM: 0x215634
	.4byte lbl_80204C94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218648
lbl_80218648:

	# ROM: 0x215648
	.4byte lbl_80204CA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021865C
lbl_8021865C:

	# ROM: 0x21565C
	.4byte lbl_80204CB0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218670
lbl_80218670:

	# ROM: 0x215670
	.4byte lbl_80204CC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218684
lbl_80218684:

	# ROM: 0x215684
	.4byte lbl_80204CD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218698
lbl_80218698:

	# ROM: 0x215698
	.4byte lbl_80204CE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802186AC
lbl_802186AC:

	# ROM: 0x2156AC
	.4byte lbl_80204CF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802186C0
lbl_802186C0:

	# ROM: 0x2156C0
	.4byte lbl_80204D04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802186D4
lbl_802186D4:

	# ROM: 0x2156D4
	.4byte lbl_80204D18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802186E8
lbl_802186E8:

	# ROM: 0x2156E8
	.4byte lbl_80204D28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802186FC
lbl_802186FC:

	# ROM: 0x2156FC
	.4byte lbl_80204D38
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218710
lbl_80218710:

	# ROM: 0x215710
	.4byte lbl_80204D44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218724
lbl_80218724:

	# ROM: 0x215724
	.4byte lbl_8065CC9C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218738
lbl_80218738:

	# ROM: 0x215738
	.4byte lbl_80204D50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021874C
lbl_8021874C:

	# ROM: 0x21574C
	.4byte lbl_80204D5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218760
lbl_80218760:

	# ROM: 0x215760
	.4byte lbl_80204D70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218774
lbl_80218774:

	# ROM: 0x215774
	.4byte lbl_80204D84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218788
lbl_80218788:

	# ROM: 0x215788
	.4byte lbl_80204D98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021879C
lbl_8021879C:

	# ROM: 0x21579C
	.4byte lbl_80204DA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802187B0
lbl_802187B0:

	# ROM: 0x2157B0
	.4byte lbl_80204DB4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802187C4
lbl_802187C4:

	# ROM: 0x2157C4
	.4byte lbl_80204DC4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802187D8
lbl_802187D8:

	# ROM: 0x2157D8
	.4byte lbl_80204DD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802187EC
lbl_802187EC:

	# ROM: 0x2157EC
	.4byte lbl_80204DE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218800
lbl_80218800:

	# ROM: 0x215800
	.4byte lbl_80204DF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218814
lbl_80218814:

	# ROM: 0x215814
	.4byte lbl_80204E08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218828
lbl_80218828:

	# ROM: 0x215828
	.4byte lbl_80204E18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021883C
lbl_8021883C:

	# ROM: 0x21583C
	.4byte lbl_80204E28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218850
lbl_80218850:

	# ROM: 0x215850
	.4byte lbl_80204E34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218864
lbl_80218864:

	# ROM: 0x215864
	.4byte lbl_80204E44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218878
lbl_80218878:

	# ROM: 0x215878
	.4byte lbl_80204E58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021888C
lbl_8021888C:

	# ROM: 0x21588C
	.4byte lbl_80204E68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802188A0
lbl_802188A0:

	# ROM: 0x2158A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218968
lbl_80218968:

	# ROM: 0x215968
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021897C
lbl_8021897C:

	# ROM: 0x21597C
	.4byte lbl_80204E7C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218990
lbl_80218990:

	# ROM: 0x215990
	.4byte lbl_80204E8C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802189A4
lbl_802189A4:

	# ROM: 0x2159A4
	.4byte lbl_80204EA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802189B8
lbl_802189B8:

	# ROM: 0x2159B8
	.4byte lbl_80204EB0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802189CC
lbl_802189CC:

	# ROM: 0x2159CC
	.4byte lbl_80204EC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802189E0
lbl_802189E0:

	# ROM: 0x2159E0
	.4byte lbl_80204EDC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802189F4
lbl_802189F4:

	# ROM: 0x2159F4
	.4byte lbl_80204EEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218A08
lbl_80218A08:

	# ROM: 0x215A08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218A1C
lbl_80218A1C:

	# ROM: 0x215A1C
	.4byte lbl_80204EF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218A30
lbl_80218A30:

	# ROM: 0x215A30
	.4byte lbl_80204F0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218A44
lbl_80218A44:

	# ROM: 0x215A44
	.4byte lbl_80204F1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218A58
lbl_80218A58:

	# ROM: 0x215A58
	.4byte lbl_80204F30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218A6C
lbl_80218A6C:

	# ROM: 0x215A6C
	.4byte lbl_80204F48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218A80
lbl_80218A80:

	# ROM: 0x215A80
	.4byte lbl_80204F5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218A94
lbl_80218A94:

	# ROM: 0x215A94
	.4byte lbl_80204F70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218AA8
lbl_80218AA8:

	# ROM: 0x215AA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218ABC
lbl_80218ABC:

	# ROM: 0x215ABC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218AD0
lbl_80218AD0:

	# ROM: 0x215AD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218AE4
lbl_80218AE4:

	# ROM: 0x215AE4
	.4byte lbl_80204F84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218B20
lbl_80218B20:

	# ROM: 0x215B20
	.4byte lbl_80204F94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218B34
lbl_80218B34:

	# ROM: 0x215B34
	.4byte lbl_80204FB0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218B48
lbl_80218B48:

	# ROM: 0x215B48
	.4byte lbl_80204FC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218B5C
lbl_80218B5C:

	# ROM: 0x215B5C
	.4byte lbl_80204FD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218B70
lbl_80218B70:

	# ROM: 0x215B70
	.4byte lbl_80204FE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218B84
lbl_80218B84:

	# ROM: 0x215B84
	.4byte lbl_80204FF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218B98
lbl_80218B98:

	# ROM: 0x215B98
	.4byte lbl_8020500C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218BAC
lbl_80218BAC:

	# ROM: 0x215BAC
	.4byte lbl_8020501C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218BC0
lbl_80218BC0:

	# ROM: 0x215BC0
	.4byte lbl_80205030
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218BD4
lbl_80218BD4:

	# ROM: 0x215BD4
	.4byte lbl_80205048
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218BE8
lbl_80218BE8:

	# ROM: 0x215BE8
	.4byte lbl_80205058
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218BFC
lbl_80218BFC:

	# ROM: 0x215BFC
	.4byte lbl_80205068
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218C10
lbl_80218C10:

	# ROM: 0x215C10
	.4byte lbl_80205078
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218C24
lbl_80218C24:

	# ROM: 0x215C24
	.4byte lbl_8020508C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218C38
lbl_80218C38:

	# ROM: 0x215C38
	.4byte lbl_802050A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218C4C
lbl_80218C4C:

	# ROM: 0x215C4C
	.4byte lbl_802050B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218C60
lbl_80218C60:

	# ROM: 0x215C60
	.4byte lbl_802050C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218C74
lbl_80218C74:

	# ROM: 0x215C74
	.4byte lbl_802050DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218C88
lbl_80218C88:

	# ROM: 0x215C88
	.4byte lbl_802050F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218C9C
lbl_80218C9C:

	# ROM: 0x215C9C
	.4byte lbl_80205108
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218CB0
lbl_80218CB0:

	# ROM: 0x215CB0
	.4byte lbl_80205118
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218CC4
lbl_80218CC4:

	# ROM: 0x215CC4
	.4byte lbl_8020512C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218CD8
lbl_80218CD8:

	# ROM: 0x215CD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218CEC
lbl_80218CEC:

	# ROM: 0x215CEC
	.4byte lbl_8020513C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218D00
lbl_80218D00:

	# ROM: 0x215D00
	.4byte lbl_80205150
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218D14
lbl_80218D14:

	# ROM: 0x215D14
	.4byte lbl_80205164
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218D28
lbl_80218D28:

	# ROM: 0x215D28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218D3C
lbl_80218D3C:

	# ROM: 0x215D3C
	.4byte lbl_80205178
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218D50
lbl_80218D50:

	# ROM: 0x215D50
	.4byte lbl_80205188
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218D64
lbl_80218D64:

	# ROM: 0x215D64
	.4byte lbl_80205198
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218D78
lbl_80218D78:

	# ROM: 0x215D78
	.4byte lbl_802051A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218D8C
lbl_80218D8C:

	# ROM: 0x215D8C
	.4byte lbl_802051B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218DA0
lbl_80218DA0:

	# ROM: 0x215DA0
	.4byte lbl_802051C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218DB4
lbl_80218DB4:

	# ROM: 0x215DB4
	.4byte lbl_802051D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218DC8
lbl_80218DC8:

	# ROM: 0x215DC8
	.4byte lbl_802051EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218DDC
lbl_80218DDC:

	# ROM: 0x215DDC
	.4byte lbl_80205200
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218DF0
lbl_80218DF0:

	# ROM: 0x215DF0
	.4byte lbl_80205214
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218E04
lbl_80218E04:

	# ROM: 0x215E04
	.4byte lbl_80205224
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218E18
lbl_80218E18:

	# ROM: 0x215E18
	.4byte lbl_80205238
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218E2C
lbl_80218E2C:

	# ROM: 0x215E2C
	.4byte lbl_80205250
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218E40
lbl_80218E40:

	# ROM: 0x215E40
	.4byte lbl_80205260
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218E54
lbl_80218E54:

	# ROM: 0x215E54
	.4byte lbl_80205270
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218E68
lbl_80218E68:

	# ROM: 0x215E68
	.4byte lbl_80205280
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218E7C
lbl_80218E7C:

	# ROM: 0x215E7C
	.4byte lbl_80205294
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218E90
lbl_80218E90:

	# ROM: 0x215E90
	.4byte lbl_802052A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218EA4
lbl_80218EA4:

	# ROM: 0x215EA4
	.4byte lbl_802052BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218EB8
lbl_80218EB8:

	# ROM: 0x215EB8
	.4byte lbl_802052D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218ECC
lbl_80218ECC:

	# ROM: 0x215ECC
	.4byte lbl_802052E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218EE0
lbl_80218EE0:

	# ROM: 0x215EE0
	.4byte lbl_802052F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218EF4
lbl_80218EF4:

	# ROM: 0x215EF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218F08
lbl_80218F08:

	# ROM: 0x215F08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218F1C
lbl_80218F1C:

	# ROM: 0x215F1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218F30
lbl_80218F30:

	# ROM: 0x215F30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218F44
lbl_80218F44:

	# ROM: 0x215F44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218F58
lbl_80218F58:

	# ROM: 0x215F58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218F6C
lbl_80218F6C:

	# ROM: 0x215F6C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218F80
lbl_80218F80:

	# ROM: 0x215F80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218F94
lbl_80218F94:

	# ROM: 0x215F94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218FA8
lbl_80218FA8:

	# ROM: 0x215FA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80218FBC
lbl_80218FBC:

	# ROM: 0x215FBC
	.4byte lbl_80205300
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218FD0
lbl_80218FD0:

	# ROM: 0x215FD0
	.4byte lbl_80205314
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218FE4
lbl_80218FE4:

	# ROM: 0x215FE4
	.4byte lbl_80205324
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80218FF8
lbl_80218FF8:

	# ROM: 0x215FF8
	.4byte lbl_80205334
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021900C
lbl_8021900C:

	# ROM: 0x21600C
	.4byte lbl_80205348
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219020
lbl_80219020:

	# ROM: 0x216020
	.4byte lbl_8020535C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219034
lbl_80219034:

	# ROM: 0x216034
	.4byte lbl_80205370
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219048
lbl_80219048:

	# ROM: 0x216048
	.4byte lbl_8020537C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219070
lbl_80219070:

	# ROM: 0x216070
	.4byte lbl_80205388
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219084
lbl_80219084:

	# ROM: 0x216084
	.4byte lbl_8020539C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219098
lbl_80219098:

	# ROM: 0x216098
	.4byte lbl_802053B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802190AC
lbl_802190AC:

	# ROM: 0x2160AC
	.4byte lbl_802053C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802190C0
lbl_802190C0:

	# ROM: 0x2160C0
	.4byte lbl_802053CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802190D4
lbl_802190D4:

	# ROM: 0x2160D4
	.4byte lbl_802053E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802190E8
lbl_802190E8:

	# ROM: 0x2160E8
	.4byte lbl_802053F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802190FC
lbl_802190FC:

	# ROM: 0x2160FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219110
lbl_80219110:

	# ROM: 0x216110
	.4byte lbl_80205408
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219124
lbl_80219124:

	# ROM: 0x216124
	.4byte lbl_8020541C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219138
lbl_80219138:

	# ROM: 0x216138
	.4byte lbl_80205430
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021914C
lbl_8021914C:

	# ROM: 0x21614C
	.4byte lbl_80205444
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219160
lbl_80219160:

	# ROM: 0x216160
	.4byte lbl_80205458
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219174
lbl_80219174:

	# ROM: 0x216174
	.4byte lbl_8020546C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219188
lbl_80219188:

	# ROM: 0x216188
	.4byte lbl_80205480
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021919C
lbl_8021919C:

	# ROM: 0x21619C
	.4byte lbl_80205490
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802191B0
lbl_802191B0:

	# ROM: 0x2161B0
	.4byte lbl_802054A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802191C4
lbl_802191C4:

	# ROM: 0x2161C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802191D8
lbl_802191D8:

	# ROM: 0x2161D8
	.4byte lbl_802054B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802191EC
lbl_802191EC:

	# ROM: 0x2161EC
	.4byte lbl_802054C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219200
lbl_80219200:

	# ROM: 0x216200
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219214
lbl_80219214:

	# ROM: 0x216214
	.4byte lbl_802054D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219228
lbl_80219228:

	# ROM: 0x216228
	.4byte lbl_802054E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021923C
lbl_8021923C:

	# ROM: 0x21623C
	.4byte lbl_802054F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219250
lbl_80219250:

	# ROM: 0x216250
	.4byte lbl_80205500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219264
lbl_80219264:

	# ROM: 0x216264
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219278
lbl_80219278:

	# ROM: 0x216278
	.4byte lbl_80205510
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021928C
lbl_8021928C:

	# ROM: 0x21628C
	.4byte lbl_80205520
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802192A0
lbl_802192A0:

	# ROM: 0x2162A0
	.4byte lbl_80205530
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802192B4
lbl_802192B4:

	# ROM: 0x2162B4
	.4byte lbl_80205548
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802192C8
lbl_802192C8:

	# ROM: 0x2162C8
	.4byte lbl_80205560
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802192DC
lbl_802192DC:

	# ROM: 0x2162DC
	.4byte lbl_80205578
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802192F0
lbl_802192F0:

	# ROM: 0x2162F0
	.4byte lbl_8020558C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219304
lbl_80219304:

	# ROM: 0x216304
	.4byte lbl_8020559C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219318
lbl_80219318:

	# ROM: 0x216318
	.4byte lbl_802055AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021932C
lbl_8021932C:

	# ROM: 0x21632C
	.4byte lbl_802055C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219340
lbl_80219340:

	# ROM: 0x216340
	.4byte lbl_802055D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219354
lbl_80219354:

	# ROM: 0x216354
	.4byte lbl_802055E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219368
lbl_80219368:

	# ROM: 0x216368
	.4byte lbl_8065CCA4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021937C
lbl_8021937C:

	# ROM: 0x21637C
	.4byte lbl_802055F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219390
lbl_80219390:

	# ROM: 0x216390
	.4byte lbl_80205604
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802193A4
lbl_802193A4:

	# ROM: 0x2163A4
	.4byte lbl_80205614
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802193B8
lbl_802193B8:

	# ROM: 0x2163B8
	.4byte lbl_80205624
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802193CC
lbl_802193CC:

	# ROM: 0x2163CC
	.4byte lbl_80205634
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802193E0
lbl_802193E0:

	# ROM: 0x2163E0
	.4byte lbl_80205640
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802193F4
lbl_802193F4:

	# ROM: 0x2163F4
	.4byte lbl_8020564C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219408
lbl_80219408:

	# ROM: 0x216408
	.4byte lbl_8020565C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021941C
lbl_8021941C:

	# ROM: 0x21641C
	.4byte lbl_8020566C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219430
lbl_80219430:

	# ROM: 0x216430
	.4byte lbl_8020567C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219444
lbl_80219444:

	# ROM: 0x216444
	.4byte lbl_80205690
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219458
lbl_80219458:

	# ROM: 0x216458
	.4byte lbl_802056A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021946C
lbl_8021946C:

	# ROM: 0x21646C
	.4byte lbl_802056B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219480
lbl_80219480:

	# ROM: 0x216480
	.4byte lbl_802056C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219494
lbl_80219494:

	# ROM: 0x216494
	.4byte lbl_802056D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802194A8
lbl_802194A8:

	# ROM: 0x2164A8
	.4byte lbl_802056E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802194BC
lbl_802194BC:

	# ROM: 0x2164BC
	.4byte lbl_802056F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802194D0
lbl_802194D0:

	# ROM: 0x2164D0
	.4byte lbl_80205704
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802194E4
lbl_802194E4:

	# ROM: 0x2164E4
	.4byte lbl_80205714
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802194F8
lbl_802194F8:

	# ROM: 0x2164F8
	.4byte lbl_80205724
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021950C
lbl_8021950C:

	# ROM: 0x21650C
	.4byte lbl_80205734
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219520
lbl_80219520:

	# ROM: 0x216520
	.4byte lbl_80205744
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219534
lbl_80219534:

	# ROM: 0x216534
	.4byte lbl_80205754
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219548
lbl_80219548:

	# ROM: 0x216548
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021955C
lbl_8021955C:

	# ROM: 0x21655C
	.4byte lbl_80205764
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219570
lbl_80219570:

	# ROM: 0x216570
	.4byte lbl_80205778
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219584
lbl_80219584:

	# ROM: 0x216584
	.4byte lbl_8020578C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219598
lbl_80219598:

	# ROM: 0x216598
	.4byte lbl_802057A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802195AC
lbl_802195AC:

	# ROM: 0x2165AC
	.4byte lbl_802057B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802195C0
lbl_802195C0:

	# ROM: 0x2165C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802195D4
lbl_802195D4:

	# ROM: 0x2165D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802195E8
lbl_802195E8:

	# ROM: 0x2165E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802195FC
lbl_802195FC:

	# ROM: 0x2165FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219610
lbl_80219610:

	# ROM: 0x216610
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219624
lbl_80219624:

	# ROM: 0x216624
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219638
lbl_80219638:

	# ROM: 0x216638
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021964C
lbl_8021964C:

	# ROM: 0x21664C
	.4byte lbl_802057C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219660
lbl_80219660:

	# ROM: 0x216660
	.4byte lbl_802057D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219674
lbl_80219674:

	# ROM: 0x216674
	.4byte lbl_802057E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219688
lbl_80219688:

	# ROM: 0x216688
	.4byte lbl_802057FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021969C
lbl_8021969C:

	# ROM: 0x21669C
	.4byte lbl_80205810
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802196B0
lbl_802196B0:

	# ROM: 0x2166B0
	.4byte lbl_80205824
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802196C4
lbl_802196C4:

	# ROM: 0x2166C4
	.4byte lbl_80205838
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802196D8
lbl_802196D8:

	# ROM: 0x2166D8
	.4byte lbl_8020584C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802196EC
lbl_802196EC:

	# ROM: 0x2166EC
	.4byte lbl_80205860
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219700
lbl_80219700:

	# ROM: 0x216700
	.4byte lbl_80205874
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219714
lbl_80219714:

	# ROM: 0x216714
	.4byte lbl_80205888
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219728
lbl_80219728:

	# ROM: 0x216728
	.4byte lbl_8020589C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021973C
lbl_8021973C:

	# ROM: 0x21673C
	.4byte lbl_802058B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219750
lbl_80219750:

	# ROM: 0x216750
	.4byte lbl_802058C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219764
lbl_80219764:

	# ROM: 0x216764
	.4byte lbl_802058D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219778
lbl_80219778:

	# ROM: 0x216778
	.4byte lbl_802058EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021978C
lbl_8021978C:

	# ROM: 0x21678C
	.4byte lbl_80205900
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802197A0
lbl_802197A0:

	# ROM: 0x2167A0
	.4byte lbl_80205914
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802197B4
lbl_802197B4:

	# ROM: 0x2167B4
	.4byte lbl_80205928
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802197C8
lbl_802197C8:

	# ROM: 0x2167C8
	.4byte lbl_8020593C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802197DC
lbl_802197DC:

	# ROM: 0x2167DC
	.4byte lbl_80205948
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802197F0
lbl_802197F0:

	# ROM: 0x2167F0
	.4byte lbl_8020595C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219804
lbl_80219804:

	# ROM: 0x216804
	.4byte lbl_8020596C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219818
lbl_80219818:

	# ROM: 0x216818
	.4byte lbl_8020597C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021982C
lbl_8021982C:

	# ROM: 0x21682C
	.4byte lbl_8020598C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219840
lbl_80219840:

	# ROM: 0x216840
	.4byte lbl_802059A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219854
lbl_80219854:

	# ROM: 0x216854
	.4byte lbl_802059B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219868
lbl_80219868:

	# ROM: 0x216868
	.4byte lbl_802059C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021987C
lbl_8021987C:

	# ROM: 0x21687C
	.4byte lbl_802059D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219890
lbl_80219890:

	# ROM: 0x216890
	.4byte lbl_802059EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802198A4
lbl_802198A4:

	# ROM: 0x2168A4
	.4byte lbl_80205A00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802198B8
lbl_802198B8:

	# ROM: 0x2168B8
	.4byte lbl_80205A10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802198CC
lbl_802198CC:

	# ROM: 0x2168CC
	.4byte lbl_80205A20
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802198E0
lbl_802198E0:

	# ROM: 0x2168E0
	.4byte lbl_80205A30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802198F4
lbl_802198F4:

	# ROM: 0x2168F4
	.4byte lbl_80205A44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219908
lbl_80219908:

	# ROM: 0x216908
	.4byte lbl_80205A54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021991C
lbl_8021991C:

	# ROM: 0x21691C
	.4byte lbl_80205A64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219930
lbl_80219930:

	# ROM: 0x216930
	.4byte lbl_80205A74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219944
lbl_80219944:

	# ROM: 0x216944
	.4byte lbl_80205A84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219958
lbl_80219958:

	# ROM: 0x216958
	.4byte lbl_80205A94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021996C
lbl_8021996C:

	# ROM: 0x21696C
	.4byte lbl_80205AA4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219980
lbl_80219980:

	# ROM: 0x216980
	.4byte lbl_80205AB4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219994
lbl_80219994:

	# ROM: 0x216994
	.4byte lbl_80205AC4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802199A8
lbl_802199A8:

	# ROM: 0x2169A8
	.4byte lbl_80205AD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802199BC
lbl_802199BC:

	# ROM: 0x2169BC
	.4byte lbl_80205AE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802199D0
lbl_802199D0:

	# ROM: 0x2169D0
	.4byte lbl_80205AF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802199E4
lbl_802199E4:

	# ROM: 0x2169E4
	.4byte lbl_80205B08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802199F8
lbl_802199F8:

	# ROM: 0x2169F8
	.4byte lbl_80205B1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219A0C
lbl_80219A0C:

	# ROM: 0x216A0C
	.4byte lbl_80205B2C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219A20
lbl_80219A20:

	# ROM: 0x216A20
	.4byte lbl_80205B3C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219A34
lbl_80219A34:

	# ROM: 0x216A34
	.4byte lbl_80205B4C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219A48
lbl_80219A48:

	# ROM: 0x216A48
	.4byte lbl_80205B5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219A5C
lbl_80219A5C:

	# ROM: 0x216A5C
	.4byte lbl_80205B68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219A70
lbl_80219A70:

	# ROM: 0x216A70
	.4byte lbl_80205B80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219A84
lbl_80219A84:

	# ROM: 0x216A84
	.4byte lbl_80205B98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219A98
lbl_80219A98:

	# ROM: 0x216A98
	.4byte lbl_80205BB0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219AAC
lbl_80219AAC:

	# ROM: 0x216AAC
	.4byte lbl_80205BC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219AC0
lbl_80219AC0:

	# ROM: 0x216AC0
	.4byte lbl_80205BD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219AD4
lbl_80219AD4:

	# ROM: 0x216AD4
	.4byte lbl_80205BE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219AE8
lbl_80219AE8:

	# ROM: 0x216AE8
	.4byte lbl_80205BF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219AFC
lbl_80219AFC:

	# ROM: 0x216AFC
	.4byte lbl_80205C04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219B10
lbl_80219B10:

	# ROM: 0x216B10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219B24
lbl_80219B24:

	# ROM: 0x216B24
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219B38
lbl_80219B38:

	# ROM: 0x216B38
	.4byte lbl_80205C14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219B4C
lbl_80219B4C:

	# ROM: 0x216B4C
	.4byte lbl_80205C28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219B60
lbl_80219B60:

	# ROM: 0x216B60
	.4byte lbl_80205C3C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219B74
lbl_80219B74:

	# ROM: 0x216B74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219B88
lbl_80219B88:

	# ROM: 0x216B88
	.4byte lbl_80205C4C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219B9C
lbl_80219B9C:

	# ROM: 0x216B9C
	.4byte lbl_80205C58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219BB0
lbl_80219BB0:

	# ROM: 0x216BB0
	.4byte lbl_80205C74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219BC4
lbl_80219BC4:

	# ROM: 0x216BC4
	.4byte lbl_80205C8C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219BD8
lbl_80219BD8:

	# ROM: 0x216BD8
	.4byte lbl_80205C9C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219BEC
lbl_80219BEC:

	# ROM: 0x216BEC
	.4byte lbl_80205CA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219C00
lbl_80219C00:

	# ROM: 0x216C00
	.4byte lbl_80205CBC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219C14
lbl_80219C14:

	# ROM: 0x216C14
	.4byte lbl_80205CD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219C28
lbl_80219C28:

	# ROM: 0x216C28
	.4byte lbl_80205CE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219C3C
lbl_80219C3C:

	# ROM: 0x216C3C
	.4byte lbl_80205CF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219C50
lbl_80219C50:

	# ROM: 0x216C50
	.4byte lbl_80205D04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219C64
lbl_80219C64:

	# ROM: 0x216C64
	.4byte lbl_80205D14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219C78
lbl_80219C78:

	# ROM: 0x216C78
	.4byte lbl_80205D28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219C8C
lbl_80219C8C:

	# ROM: 0x216C8C
	.4byte lbl_80205D38
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219CA0
lbl_80219CA0:

	# ROM: 0x216CA0
	.4byte lbl_80205D48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219CB4
lbl_80219CB4:

	# ROM: 0x216CB4
	.4byte lbl_80205D54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219CC8
lbl_80219CC8:

	# ROM: 0x216CC8
	.4byte lbl_80205D60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219CDC
lbl_80219CDC:

	# ROM: 0x216CDC
	.4byte lbl_80205D74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219CF0
lbl_80219CF0:

	# ROM: 0x216CF0
	.4byte lbl_80205D88
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219D04
lbl_80219D04:

	# ROM: 0x216D04
	.4byte lbl_80205D9C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219D18
lbl_80219D18:

	# ROM: 0x216D18
	.4byte lbl_80205DAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219D2C
lbl_80219D2C:

	# ROM: 0x216D2C
	.4byte lbl_80205DBC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219D40
lbl_80219D40:

	# ROM: 0x216D40
	.4byte lbl_80205DC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219D54
lbl_80219D54:

	# ROM: 0x216D54
	.4byte lbl_80205DD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219D68
lbl_80219D68:

	# ROM: 0x216D68
	.4byte lbl_80205DE8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219D7C
lbl_80219D7C:

	# ROM: 0x216D7C
	.4byte lbl_80205DF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219D90
lbl_80219D90:

	# ROM: 0x216D90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219DA4
lbl_80219DA4:

	# ROM: 0x216DA4
	.4byte lbl_80205E0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219DB8
lbl_80219DB8:

	# ROM: 0x216DB8
	.4byte lbl_80205E20
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219DCC
lbl_80219DCC:

	# ROM: 0x216DCC
	.4byte lbl_80205E34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219DE0
lbl_80219DE0:

	# ROM: 0x216DE0
	.4byte lbl_80205E44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219DF4
lbl_80219DF4:

	# ROM: 0x216DF4
	.4byte lbl_80205E54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219E08
lbl_80219E08:

	# ROM: 0x216E08
	.4byte lbl_80205E64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219E1C
lbl_80219E1C:

	# ROM: 0x216E1C
	.4byte lbl_80205E74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219E58
lbl_80219E58:

	# ROM: 0x216E58
	.4byte lbl_80205E84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219E6C
lbl_80219E6C:

	# ROM: 0x216E6C
	.4byte lbl_80205E98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219E80
lbl_80219E80:

	# ROM: 0x216E80
	.4byte lbl_80205EA4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219E94
lbl_80219E94:

	# ROM: 0x216E94
	.4byte lbl_80205EB8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219EA8
lbl_80219EA8:

	# ROM: 0x216EA8
	.4byte lbl_80205ECC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219EBC
lbl_80219EBC:

	# ROM: 0x216EBC
	.4byte lbl_80205EDC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80219EF8
lbl_80219EF8:

	# ROM: 0x216EF8
	.4byte lbl_80205EE8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219F0C
lbl_80219F0C:

	# ROM: 0x216F0C
	.4byte lbl_80205EF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219F20
lbl_80219F20:

	# ROM: 0x216F20
	.4byte lbl_80205F00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219F34
lbl_80219F34:

	# ROM: 0x216F34
	.4byte lbl_80205F14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219F48
lbl_80219F48:

	# ROM: 0x216F48
	.4byte lbl_80205F28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219F5C
lbl_80219F5C:

	# ROM: 0x216F5C
	.4byte lbl_80205F3C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219F70
lbl_80219F70:

	# ROM: 0x216F70
	.4byte lbl_80205F48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219F84
lbl_80219F84:

	# ROM: 0x216F84
	.4byte lbl_80205F54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219F98
lbl_80219F98:

	# ROM: 0x216F98
	.4byte lbl_80205F68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219FAC
lbl_80219FAC:

	# ROM: 0x216FAC
	.4byte lbl_80205F74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219FC0
lbl_80219FC0:

	# ROM: 0x216FC0
	.4byte lbl_80205F80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219FD4
lbl_80219FD4:

	# ROM: 0x216FD4
	.4byte lbl_80205F8C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219FE8
lbl_80219FE8:

	# ROM: 0x216FE8
	.4byte lbl_80205F98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_80219FFC
lbl_80219FFC:

	# ROM: 0x216FFC
	.4byte lbl_80205FAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A010
lbl_8021A010:

	# ROM: 0x217010
	.4byte lbl_80205FBC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A024
lbl_8021A024:

	# ROM: 0x217024
	.4byte lbl_80205FCC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A038
lbl_8021A038:

	# ROM: 0x217038
	.4byte lbl_80205FDC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A04C
lbl_8021A04C:

	# ROM: 0x21704C
	.4byte lbl_80205FEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A060
lbl_8021A060:

	# ROM: 0x217060
	.4byte lbl_80205FFC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A074
lbl_8021A074:

	# ROM: 0x217074
	.4byte lbl_8020600C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A088
lbl_8021A088:

	# ROM: 0x217088
	.4byte lbl_80206018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A09C
lbl_8021A09C:

	# ROM: 0x21709C
	.4byte lbl_80206024
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A0B0
lbl_8021A0B0:

	# ROM: 0x2170B0
	.4byte lbl_80206034
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A0C4
lbl_8021A0C4:

	# ROM: 0x2170C4
	.4byte lbl_80206040
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A0D8
lbl_8021A0D8:

	# ROM: 0x2170D8
	.4byte lbl_8020604C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A0EC
lbl_8021A0EC:

	# ROM: 0x2170EC
	.4byte lbl_80206058
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A100
lbl_8021A100:

	# ROM: 0x217100
	.4byte lbl_8020606C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A114
lbl_8021A114:

	# ROM: 0x217114
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A128
lbl_8021A128:

	# ROM: 0x217128
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A13C
lbl_8021A13C:

	# ROM: 0x21713C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A150
lbl_8021A150:

	# ROM: 0x217150
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A164
lbl_8021A164:

	# ROM: 0x217164
	.4byte lbl_80206080
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A178
lbl_8021A178:

	# ROM: 0x217178
	.4byte lbl_80206094
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A18C
lbl_8021A18C:

	# ROM: 0x21718C
	.4byte lbl_802060A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A1A0
lbl_8021A1A0:

	# ROM: 0x2171A0
	.4byte lbl_802060B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A1B4
lbl_8021A1B4:

	# ROM: 0x2171B4
	.4byte lbl_802060C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A1C8
lbl_8021A1C8:

	# ROM: 0x2171C8
	.4byte lbl_802060D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A1DC
lbl_8021A1DC:

	# ROM: 0x2171DC
	.4byte lbl_802060F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A1F0
lbl_8021A1F0:

	# ROM: 0x2171F0
	.4byte lbl_80206100
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A204
lbl_8021A204:

	# ROM: 0x217204
	.4byte lbl_80206114
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A218
lbl_8021A218:

	# ROM: 0x217218
	.4byte lbl_8020612C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A22C
lbl_8021A22C:

	# ROM: 0x21722C
	.4byte lbl_80206144
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A240
lbl_8021A240:

	# ROM: 0x217240
	.4byte lbl_80206154
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A254
lbl_8021A254:

	# ROM: 0x217254
	.4byte lbl_80206160
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A268
lbl_8021A268:

	# ROM: 0x217268
	.4byte lbl_80206174
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A27C
lbl_8021A27C:

	# ROM: 0x21727C
	.4byte lbl_80206190
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A290
lbl_8021A290:

	# ROM: 0x217290
	.4byte lbl_8020619C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A2A4
lbl_8021A2A4:

	# ROM: 0x2172A4
	.4byte lbl_802061A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A2B8
lbl_8021A2B8:

	# ROM: 0x2172B8
	.4byte lbl_802061B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A2CC
lbl_8021A2CC:

	# ROM: 0x2172CC
	.4byte lbl_802061C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A2E0
lbl_8021A2E0:

	# ROM: 0x2172E0
	.4byte lbl_802061D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A2F4
lbl_8021A2F4:

	# ROM: 0x2172F4
	.4byte lbl_802061E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A308
lbl_8021A308:

	# ROM: 0x217308
	.4byte lbl_802061F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A31C
lbl_8021A31C:

	# ROM: 0x21731C
	.4byte lbl_80206208
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A330
lbl_8021A330:

	# ROM: 0x217330
	.4byte lbl_80206220
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A344
lbl_8021A344:

	# ROM: 0x217344
	.4byte lbl_80206234
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A358
lbl_8021A358:

	# ROM: 0x217358
	.4byte lbl_80206248
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A36C
lbl_8021A36C:

	# ROM: 0x21736C
	.4byte lbl_8020625C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A380
lbl_8021A380:

	# ROM: 0x217380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A394
lbl_8021A394:

	# ROM: 0x217394
	.4byte lbl_80206268
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A3A8
lbl_8021A3A8:

	# ROM: 0x2173A8
	.4byte lbl_80206274
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A3BC
lbl_8021A3BC:

	# ROM: 0x2173BC
	.4byte lbl_80206280
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A3D0
lbl_8021A3D0:

	# ROM: 0x2173D0
	.4byte lbl_80206298
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A3E4
lbl_8021A3E4:

	# ROM: 0x2173E4
	.4byte lbl_802062AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A3F8
lbl_8021A3F8:

	# ROM: 0x2173F8
	.4byte lbl_802062BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A40C
lbl_8021A40C:

	# ROM: 0x21740C
	.4byte lbl_802062CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A420
lbl_8021A420:

	# ROM: 0x217420
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A434
lbl_8021A434:

	# ROM: 0x217434
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A448
lbl_8021A448:

	# ROM: 0x217448
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A45C
lbl_8021A45C:

	# ROM: 0x21745C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A470
lbl_8021A470:

	# ROM: 0x217470
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A484
lbl_8021A484:

	# ROM: 0x217484
	.4byte lbl_802062D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A498
lbl_8021A498:

	# ROM: 0x217498
	.4byte lbl_802062EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A4AC
lbl_8021A4AC:

	# ROM: 0x2174AC
	.4byte lbl_802062F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A4C0
lbl_8021A4C0:

	# ROM: 0x2174C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A4D4
lbl_8021A4D4:

	# ROM: 0x2174D4
	.4byte lbl_80206308
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A4E8
lbl_8021A4E8:

	# ROM: 0x2174E8
	.4byte lbl_8020631C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A4FC
lbl_8021A4FC:

	# ROM: 0x2174FC
	.4byte lbl_80206330
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A510
lbl_8021A510:

	# ROM: 0x217510
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A524
lbl_8021A524:

	# ROM: 0x217524
	.4byte lbl_80206344
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A538
lbl_8021A538:

	# ROM: 0x217538
	.4byte lbl_80206350
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A54C
lbl_8021A54C:

	# ROM: 0x21754C
	.4byte lbl_8020635C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A560
lbl_8021A560:

	# ROM: 0x217560
	.4byte lbl_80206368
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A574
lbl_8021A574:

	# ROM: 0x217574
	.4byte lbl_80206378
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A588
lbl_8021A588:

	# ROM: 0x217588
	.4byte lbl_80206384
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A59C
lbl_8021A59C:

	# ROM: 0x21759C
	.4byte lbl_80206390
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A5B0
lbl_8021A5B0:

	# ROM: 0x2175B0
	.4byte lbl_8020639C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A5C4
lbl_8021A5C4:

	# ROM: 0x2175C4
	.4byte lbl_802063A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A5D8
lbl_8021A5D8:

	# ROM: 0x2175D8
	.4byte lbl_802063B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A5EC
lbl_8021A5EC:

	# ROM: 0x2175EC
	.4byte lbl_802063C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A600
lbl_8021A600:

	# ROM: 0x217600
	.4byte lbl_802063D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A614
lbl_8021A614:

	# ROM: 0x217614
	.4byte lbl_802063DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A628
lbl_8021A628:

	# ROM: 0x217628
	.4byte lbl_802063E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A63C
lbl_8021A63C:

	# ROM: 0x21763C
	.4byte lbl_802063F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A650
lbl_8021A650:

	# ROM: 0x217650
	.4byte lbl_80206404
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A664
lbl_8021A664:

	# ROM: 0x217664
	.4byte lbl_80206414
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A678
lbl_8021A678:

	# ROM: 0x217678
	.4byte lbl_80206424
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A68C
lbl_8021A68C:

	# ROM: 0x21768C
	.4byte lbl_80206434
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A6A0
lbl_8021A6A0:

	# ROM: 0x2176A0
	.4byte lbl_8020644C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A6B4
lbl_8021A6B4:

	# ROM: 0x2176B4
	.4byte lbl_8020645C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A6C8
lbl_8021A6C8:

	# ROM: 0x2176C8
	.4byte lbl_8020646C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A6DC
lbl_8021A6DC:

	# ROM: 0x2176DC
	.4byte lbl_8020647C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A6F0
lbl_8021A6F0:

	# ROM: 0x2176F0
	.4byte lbl_8020648C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A704
lbl_8021A704:

	# ROM: 0x217704
	.4byte lbl_8020649C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A718
lbl_8021A718:

	# ROM: 0x217718
	.4byte lbl_802064AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A72C
lbl_8021A72C:

	# ROM: 0x21772C
	.4byte lbl_802064BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A740
lbl_8021A740:

	# ROM: 0x217740
	.4byte lbl_802064CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A754
lbl_8021A754:

	# ROM: 0x217754
	.4byte lbl_802064DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A768
lbl_8021A768:

	# ROM: 0x217768
	.4byte lbl_802064EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A77C
lbl_8021A77C:

	# ROM: 0x21777C
	.4byte lbl_802064FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A790
lbl_8021A790:

	# ROM: 0x217790
	.4byte lbl_8020650C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A7A4
lbl_8021A7A4:

	# ROM: 0x2177A4
	.4byte lbl_80206520
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A7B8
lbl_8021A7B8:

	# ROM: 0x2177B8
	.4byte lbl_80206534
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A7CC
lbl_8021A7CC:

	# ROM: 0x2177CC
	.4byte lbl_80206548
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A7E0
lbl_8021A7E0:

	# ROM: 0x2177E0
	.4byte lbl_80206558
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021A8D0
lbl_8021A8D0:

	# ROM: 0x2178D0
	.4byte lbl_80206568
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A8E4
lbl_8021A8E4:

	# ROM: 0x2178E4
	.4byte lbl_80206578
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A8F8
lbl_8021A8F8:

	# ROM: 0x2178F8
	.4byte lbl_80206588
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A90C
lbl_8021A90C:

	# ROM: 0x21790C
	.4byte lbl_8020659C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A920
lbl_8021A920:

	# ROM: 0x217920
	.4byte lbl_802065AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A934
lbl_8021A934:

	# ROM: 0x217934
	.4byte lbl_802065C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A948
lbl_8021A948:

	# ROM: 0x217948
	.4byte lbl_802065D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A95C
lbl_8021A95C:

	# ROM: 0x21795C
	.4byte lbl_802065E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A970
lbl_8021A970:

	# ROM: 0x217970
	.4byte lbl_802065F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A984
lbl_8021A984:

	# ROM: 0x217984
	.4byte lbl_80206600
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A998
lbl_8021A998:

	# ROM: 0x217998
	.4byte lbl_80206614
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A9AC
lbl_8021A9AC:

	# ROM: 0x2179AC
	.4byte lbl_80206628
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A9C0
lbl_8021A9C0:

	# ROM: 0x2179C0
	.4byte lbl_80206634
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A9D4
lbl_8021A9D4:

	# ROM: 0x2179D4
	.4byte lbl_80206644
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A9E8
lbl_8021A9E8:

	# ROM: 0x2179E8
	.4byte lbl_80206654
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021A9FC
lbl_8021A9FC:

	# ROM: 0x2179FC
	.4byte lbl_80206664
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AA10
lbl_8021AA10:

	# ROM: 0x217A10
	.4byte lbl_80206670
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AA24
lbl_8021AA24:

	# ROM: 0x217A24
	.4byte lbl_80206684
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AA38
lbl_8021AA38:

	# ROM: 0x217A38
	.4byte lbl_80206694
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AA4C
lbl_8021AA4C:

	# ROM: 0x217A4C
	.4byte lbl_802066A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AA60
lbl_8021AA60:

	# ROM: 0x217A60
	.4byte lbl_802066B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AA74
lbl_8021AA74:

	# ROM: 0x217A74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AA88
lbl_8021AA88:

	# ROM: 0x217A88
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AA9C
lbl_8021AA9C:

	# ROM: 0x217A9C
	.4byte lbl_802066C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AAB0
lbl_8021AAB0:

	# ROM: 0x217AB0
	.4byte lbl_802066D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AAC4
lbl_8021AAC4:

	# ROM: 0x217AC4
	.4byte lbl_802066E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AAD8
lbl_8021AAD8:

	# ROM: 0x217AD8
	.4byte lbl_802066F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AAEC
lbl_8021AAEC:

	# ROM: 0x217AEC
	.4byte lbl_80206708
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AB14
lbl_8021AB14:

	# ROM: 0x217B14
	.4byte lbl_80206714
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AB28
lbl_8021AB28:

	# ROM: 0x217B28
	.4byte lbl_80206724
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AB3C
lbl_8021AB3C:

	# ROM: 0x217B3C
	.4byte lbl_80206730
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AB50
lbl_8021AB50:

	# ROM: 0x217B50
	.4byte lbl_8020673C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AB64
lbl_8021AB64:

	# ROM: 0x217B64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AB78
lbl_8021AB78:

	# ROM: 0x217B78
	.4byte lbl_8020674C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AB8C
lbl_8021AB8C:

	# ROM: 0x217B8C
	.4byte lbl_8020675C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ABA0
lbl_8021ABA0:

	# ROM: 0x217BA0
	.4byte lbl_80206770
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ABB4
lbl_8021ABB4:

	# ROM: 0x217BB4
	.4byte lbl_80206784
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ABC8
lbl_8021ABC8:

	# ROM: 0x217BC8
	.4byte lbl_80206794
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ABDC
lbl_8021ABDC:

	# ROM: 0x217BDC
	.4byte lbl_802067A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ABF0
lbl_8021ABF0:

	# ROM: 0x217BF0
	.4byte lbl_802067B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AC04
lbl_8021AC04:

	# ROM: 0x217C04
	.4byte lbl_802067C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AC18
lbl_8021AC18:

	# ROM: 0x217C18
	.4byte lbl_802067D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AC2C
lbl_8021AC2C:

	# ROM: 0x217C2C
	.4byte lbl_802067E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AC40
lbl_8021AC40:

	# ROM: 0x217C40
	.4byte lbl_802067F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AC54
lbl_8021AC54:

	# ROM: 0x217C54
	.4byte lbl_80206804
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AC68
lbl_8021AC68:

	# ROM: 0x217C68
	.4byte lbl_80206814
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AC7C
lbl_8021AC7C:

	# ROM: 0x217C7C
	.4byte lbl_80206824
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AC90
lbl_8021AC90:

	# ROM: 0x217C90
	.4byte lbl_80206834
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ACA4
lbl_8021ACA4:

	# ROM: 0x217CA4
	.4byte lbl_80206844
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021ACB8
lbl_8021ACB8:

	# ROM: 0x217CB8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021ACCC
lbl_8021ACCC:

	# ROM: 0x217CCC
	.4byte lbl_80206854
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ACE0
lbl_8021ACE0:

	# ROM: 0x217CE0
	.4byte lbl_80206868
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ACF4
lbl_8021ACF4:

	# ROM: 0x217CF4
	.4byte lbl_80206878
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AD08
lbl_8021AD08:

	# ROM: 0x217D08
	.4byte lbl_80206888
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AD1C
lbl_8021AD1C:

	# ROM: 0x217D1C
	.4byte lbl_8020689C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AD30
lbl_8021AD30:

	# ROM: 0x217D30
	.4byte lbl_802068AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AD44
lbl_8021AD44:

	# ROM: 0x217D44
	.4byte lbl_802068BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AD58
lbl_8021AD58:

	# ROM: 0x217D58
	.4byte lbl_802068D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AD6C
lbl_8021AD6C:

	# ROM: 0x217D6C
	.4byte lbl_802068DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AD80
lbl_8021AD80:

	# ROM: 0x217D80
	.4byte lbl_802068F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AD94
lbl_8021AD94:

	# ROM: 0x217D94
	.4byte lbl_80206900
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ADA8
lbl_8021ADA8:

	# ROM: 0x217DA8
	.4byte lbl_80206910
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ADBC
lbl_8021ADBC:

	# ROM: 0x217DBC
	.4byte lbl_8020691C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ADD0
lbl_8021ADD0:

	# ROM: 0x217DD0
	.4byte lbl_80206930
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ADE4
lbl_8021ADE4:

	# ROM: 0x217DE4
	.4byte lbl_80206944
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021ADF8
lbl_8021ADF8:

	# ROM: 0x217DF8
	.4byte lbl_80206954
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AE0C
lbl_8021AE0C:

	# ROM: 0x217E0C
	.4byte lbl_80206960
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AE20
lbl_8021AE20:

	# ROM: 0x217E20
	.4byte lbl_80206970
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AE34
lbl_8021AE34:

	# ROM: 0x217E34
	.4byte lbl_80206984
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AE48
lbl_8021AE48:

	# ROM: 0x217E48
	.4byte lbl_80206998
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AE5C
lbl_8021AE5C:

	# ROM: 0x217E5C
	.4byte lbl_802069A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AE70
lbl_8021AE70:

	# ROM: 0x217E70
	.4byte lbl_802069B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AE84
lbl_8021AE84:

	# ROM: 0x217E84
	.4byte lbl_802069CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AE98
lbl_8021AE98:

	# ROM: 0x217E98
	.4byte lbl_802069E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AEAC
lbl_8021AEAC:

	# ROM: 0x217EAC
	.4byte lbl_802069F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AEC0
lbl_8021AEC0:

	# ROM: 0x217EC0
	.4byte lbl_80206A10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AED4
lbl_8021AED4:

	# ROM: 0x217ED4
	.4byte lbl_80206A28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AEE8
lbl_8021AEE8:

	# ROM: 0x217EE8
	.4byte lbl_80206A40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AEFC
lbl_8021AEFC:

	# ROM: 0x217EFC
	.4byte lbl_80206A58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AF10
lbl_8021AF10:

	# ROM: 0x217F10
	.4byte lbl_80206A70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AF24
lbl_8021AF24:

	# ROM: 0x217F24
	.4byte lbl_80206A88
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AF38
lbl_8021AF38:

	# ROM: 0x217F38
	.4byte lbl_80206A98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AF4C
lbl_8021AF4C:

	# ROM: 0x217F4C
	.4byte lbl_80206AAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AF60
lbl_8021AF60:

	# ROM: 0x217F60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AF74
lbl_8021AF74:

	# ROM: 0x217F74
	.4byte lbl_80206AC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021AF88
lbl_8021AF88:

	# ROM: 0x217F88
	.4byte lbl_80206AD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AF9C
lbl_8021AF9C:

	# ROM: 0x217F9C
	.4byte lbl_80206AE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AFB0
lbl_8021AFB0:

	# ROM: 0x217FB0
	.4byte lbl_80206AF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AFC4
lbl_8021AFC4:

	# ROM: 0x217FC4
	.4byte lbl_80206B0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AFD8
lbl_8021AFD8:

	# ROM: 0x217FD8
	.4byte lbl_80206B20
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021AFEC
lbl_8021AFEC:

	# ROM: 0x217FEC
	.4byte lbl_80206B30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B000
lbl_8021B000:

	# ROM: 0x218000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B014
lbl_8021B014:

	# ROM: 0x218014
	.4byte lbl_80206B40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B028
lbl_8021B028:

	# ROM: 0x218028
	.4byte lbl_80206B58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B03C
lbl_8021B03C:

	# ROM: 0x21803C
	.4byte lbl_80206B68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B050
lbl_8021B050:

	# ROM: 0x218050
	.4byte lbl_80206B78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B064
lbl_8021B064:

	# ROM: 0x218064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B078
lbl_8021B078:

	# ROM: 0x218078
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B08C
lbl_8021B08C:

	# ROM: 0x21808C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B0A0
lbl_8021B0A0:

	# ROM: 0x2180A0
	.4byte lbl_80206B84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B0B4
lbl_8021B0B4:

	# ROM: 0x2180B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B0C8
lbl_8021B0C8:

	# ROM: 0x2180C8
	.4byte lbl_80206B98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B0DC
lbl_8021B0DC:

	# ROM: 0x2180DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B0F0
lbl_8021B0F0:

	# ROM: 0x2180F0
	.4byte lbl_80206BA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B104
lbl_8021B104:

	# ROM: 0x218104
	.4byte lbl_80206BB8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B118
lbl_8021B118:

	# ROM: 0x218118
	.4byte lbl_80206BC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B12C
lbl_8021B12C:

	# ROM: 0x21812C
	.4byte lbl_80206BD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B140
lbl_8021B140:

	# ROM: 0x218140
	.4byte lbl_80206BE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B154
lbl_8021B154:

	# ROM: 0x218154
	.4byte lbl_80206BF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B168
lbl_8021B168:

	# ROM: 0x218168
	.4byte lbl_80206C04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B17C
lbl_8021B17C:

	# ROM: 0x21817C
	.4byte lbl_80206C14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B190
lbl_8021B190:

	# ROM: 0x218190
	.4byte lbl_80206C24
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B1A4
lbl_8021B1A4:

	# ROM: 0x2181A4
	.4byte lbl_80206C34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B1B8
lbl_8021B1B8:

	# ROM: 0x2181B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B1CC
lbl_8021B1CC:

	# ROM: 0x2181CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B1E0
lbl_8021B1E0:

	# ROM: 0x2181E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B1F4
lbl_8021B1F4:

	# ROM: 0x2181F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B208
lbl_8021B208:

	# ROM: 0x218208
	.4byte lbl_80206C44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B21C
lbl_8021B21C:

	# ROM: 0x21821C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B230
lbl_8021B230:

	# ROM: 0x218230
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B244
lbl_8021B244:

	# ROM: 0x218244
	.4byte lbl_80206C50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B258
lbl_8021B258:

	# ROM: 0x218258
	.4byte lbl_80206C60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B26C
lbl_8021B26C:

	# ROM: 0x21826C
	.4byte lbl_80206C70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B280
lbl_8021B280:

	# ROM: 0x218280
	.4byte lbl_80206C80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B294
lbl_8021B294:

	# ROM: 0x218294
	.4byte lbl_80206C8C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B2A8
lbl_8021B2A8:

	# ROM: 0x2182A8
	.4byte lbl_80206C98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B2BC
lbl_8021B2BC:

	# ROM: 0x2182BC
	.4byte lbl_80206CAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B2D0
lbl_8021B2D0:

	# ROM: 0x2182D0
	.4byte lbl_80206CC4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B2E4
lbl_8021B2E4:

	# ROM: 0x2182E4
	.4byte lbl_80206CD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B2F8
lbl_8021B2F8:

	# ROM: 0x2182F8
	.4byte lbl_80206CE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B30C
lbl_8021B30C:

	# ROM: 0x21830C
	.4byte lbl_80206CF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B320
lbl_8021B320:

	# ROM: 0x218320
	.4byte lbl_80206D04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B334
lbl_8021B334:

	# ROM: 0x218334
	.4byte lbl_80206D18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B35C
lbl_8021B35C:

	# ROM: 0x21835C
	.4byte lbl_80206D30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B370
lbl_8021B370:

	# ROM: 0x218370
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B384
lbl_8021B384:

	# ROM: 0x218384
	.4byte lbl_80206D48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B398
lbl_8021B398:

	# ROM: 0x218398
	.4byte lbl_80206D5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B3AC
lbl_8021B3AC:

	# ROM: 0x2183AC
	.4byte lbl_80206D6C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B3C0
lbl_8021B3C0:

	# ROM: 0x2183C0
	.4byte lbl_80206D80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B3D4
lbl_8021B3D4:

	# ROM: 0x2183D4
	.4byte lbl_80206D94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B3E8
lbl_8021B3E8:

	# ROM: 0x2183E8
	.4byte lbl_80206DA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B3FC
lbl_8021B3FC:

	# ROM: 0x2183FC
	.4byte lbl_80206DBC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B410
lbl_8021B410:

	# ROM: 0x218410
	.4byte lbl_80206DC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B424
lbl_8021B424:

	# ROM: 0x218424
	.4byte lbl_80206DD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B438
lbl_8021B438:

	# ROM: 0x218438
	.4byte lbl_80206DEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B44C
lbl_8021B44C:

	# ROM: 0x21844C
	.4byte lbl_80206E00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B460
lbl_8021B460:

	# ROM: 0x218460
	.4byte lbl_80206E14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B474
lbl_8021B474:

	# ROM: 0x218474
	.4byte lbl_80206E28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B488
lbl_8021B488:

	# ROM: 0x218488
	.4byte lbl_80206E38
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B49C
lbl_8021B49C:

	# ROM: 0x21849C
	.4byte lbl_80206E48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B4B0
lbl_8021B4B0:

	# ROM: 0x2184B0
	.4byte lbl_80206E5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B4C4
lbl_8021B4C4:

	# ROM: 0x2184C4
	.4byte lbl_80206E70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B4D8
lbl_8021B4D8:

	# ROM: 0x2184D8
	.4byte lbl_80206E80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B4EC
lbl_8021B4EC:

	# ROM: 0x2184EC
	.4byte lbl_80206E94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B500
lbl_8021B500:

	# ROM: 0x218500
	.4byte lbl_80206EA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B514
lbl_8021B514:

	# ROM: 0x218514
	.4byte lbl_80206EBC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B528
lbl_8021B528:

	# ROM: 0x218528
	.4byte lbl_80206ED0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B53C
lbl_8021B53C:

	# ROM: 0x21853C
	.4byte lbl_80206EE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B550
lbl_8021B550:

	# ROM: 0x218550
	.4byte lbl_80206EF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B564
lbl_8021B564:

	# ROM: 0x218564
	.4byte lbl_80206F04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B578
lbl_8021B578:

	# ROM: 0x218578
	.4byte lbl_80206F14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B58C
lbl_8021B58C:

	# ROM: 0x21858C
	.4byte lbl_80206F2C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B5A0
lbl_8021B5A0:

	# ROM: 0x2185A0
	.4byte lbl_80206F38
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B5B4
lbl_8021B5B4:

	# ROM: 0x2185B4
	.4byte lbl_80206F48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B5C8
lbl_8021B5C8:

	# ROM: 0x2185C8
	.4byte lbl_80206F5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B5DC
lbl_8021B5DC:

	# ROM: 0x2185DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B5F0
lbl_8021B5F0:

	# ROM: 0x2185F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B604
lbl_8021B604:

	# ROM: 0x218604
	.4byte lbl_80206F68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B618
lbl_8021B618:

	# ROM: 0x218618
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B62C
lbl_8021B62C:

	# ROM: 0x21862C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B640
lbl_8021B640:

	# ROM: 0x218640
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B654
lbl_8021B654:

	# ROM: 0x218654
	.4byte lbl_80206F74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B668
lbl_8021B668:

	# ROM: 0x218668
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B6CC
lbl_8021B6CC:

	# ROM: 0x2186CC
	.4byte lbl_80206F84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B6E0
lbl_8021B6E0:

	# ROM: 0x2186E0
	.4byte lbl_80206F98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B6F4
lbl_8021B6F4:

	# ROM: 0x2186F4
	.4byte lbl_80206FA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B708
lbl_8021B708:

	# ROM: 0x218708
	.4byte lbl_80206FBC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B71C
lbl_8021B71C:

	# ROM: 0x21871C
	.4byte lbl_80206FD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B744
lbl_8021B744:

	# ROM: 0x218744
	.4byte lbl_80206FF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B758
lbl_8021B758:

	# ROM: 0x218758
	.4byte lbl_80207000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B76C
lbl_8021B76C:

	# ROM: 0x21876C
	.4byte lbl_80207010
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B780
lbl_8021B780:

	# ROM: 0x218780
	.4byte lbl_80207020
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B794
lbl_8021B794:

	# ROM: 0x218794
	.4byte lbl_80207034
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B7A8
lbl_8021B7A8:

	# ROM: 0x2187A8
	.4byte lbl_80207044
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B7BC
lbl_8021B7BC:

	# ROM: 0x2187BC
	.4byte lbl_80207054
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B7D0
lbl_8021B7D0:

	# ROM: 0x2187D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B7E4
lbl_8021B7E4:

	# ROM: 0x2187E4
	.4byte lbl_80207064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B7F8
lbl_8021B7F8:

	# ROM: 0x2187F8
	.4byte lbl_80207070
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B80C
lbl_8021B80C:

	# ROM: 0x21880C
	.4byte lbl_80207080
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B820
lbl_8021B820:

	# ROM: 0x218820
	.4byte lbl_8020708C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B834
lbl_8021B834:

	# ROM: 0x218834
	.4byte lbl_8020709C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B848
lbl_8021B848:

	# ROM: 0x218848
	.4byte lbl_802070AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B85C
lbl_8021B85C:

	# ROM: 0x21885C
	.4byte lbl_802070BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B870
lbl_8021B870:

	# ROM: 0x218870
	.4byte lbl_802070CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B884
lbl_8021B884:

	# ROM: 0x218884
	.4byte lbl_802070DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B898
lbl_8021B898:

	# ROM: 0x218898
	.4byte lbl_802070EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B8AC
lbl_8021B8AC:

	# ROM: 0x2188AC
	.4byte lbl_802070FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B8C0
lbl_8021B8C0:

	# ROM: 0x2188C0
	.4byte lbl_8020710C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B8D4
lbl_8021B8D4:

	# ROM: 0x2188D4
	.4byte lbl_8020711C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B8E8
lbl_8021B8E8:

	# ROM: 0x2188E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B8FC
lbl_8021B8FC:

	# ROM: 0x2188FC
	.4byte lbl_8020712C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B910
lbl_8021B910:

	# ROM: 0x218910
	.4byte lbl_80207138
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B924
lbl_8021B924:

	# ROM: 0x218924
	.4byte lbl_80207144
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B938
lbl_8021B938:

	# ROM: 0x218938
	.4byte lbl_80207150
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B94C
lbl_8021B94C:

	# ROM: 0x21894C
	.4byte lbl_8020715C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B960
lbl_8021B960:

	# ROM: 0x218960
	.4byte lbl_80207168
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B974
lbl_8021B974:

	# ROM: 0x218974
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B988
lbl_8021B988:

	# ROM: 0x218988
	.4byte lbl_80207178
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B99C
lbl_8021B99C:

	# ROM: 0x21899C
	.4byte lbl_8020718C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B9B0
lbl_8021B9B0:

	# ROM: 0x2189B0
	.4byte lbl_8020719C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021B9C4
lbl_8021B9C4:

	# ROM: 0x2189C4
	.4byte lbl_802071AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B9D8
lbl_8021B9D8:

	# ROM: 0x2189D8
	.4byte lbl_802071C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021B9EC
lbl_8021B9EC:

	# ROM: 0x2189EC
	.4byte lbl_802071D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BA00
lbl_8021BA00:

	# ROM: 0x218A00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BA14
lbl_8021BA14:

	# ROM: 0x218A14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BA28
lbl_8021BA28:

	# ROM: 0x218A28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BA3C
lbl_8021BA3C:

	# ROM: 0x218A3C
	.4byte lbl_802071E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BA50
lbl_8021BA50:

	# ROM: 0x218A50
	.4byte lbl_80207200
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BA64
lbl_8021BA64:

	# ROM: 0x218A64
	.4byte lbl_80207214
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BA78
lbl_8021BA78:

	# ROM: 0x218A78
	.4byte lbl_80207228
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BA8C
lbl_8021BA8C:

	# ROM: 0x218A8C
	.4byte lbl_8020723C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BAA0
lbl_8021BAA0:

	# ROM: 0x218AA0
	.4byte lbl_80207250
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BAB4
lbl_8021BAB4:

	# ROM: 0x218AB4
	.4byte lbl_80207264
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BAC8
lbl_8021BAC8:

	# ROM: 0x218AC8
	.4byte lbl_80207278
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BADC
lbl_8021BADC:

	# ROM: 0x218ADC
	.4byte lbl_8020728C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BAF0
lbl_8021BAF0:

	# ROM: 0x218AF0
	.4byte lbl_802072A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BB04
lbl_8021BB04:

	# ROM: 0x218B04
	.4byte lbl_802072B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BB18
lbl_8021BB18:

	# ROM: 0x218B18
	.4byte lbl_802072C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BB2C
lbl_8021BB2C:

	# ROM: 0x218B2C
	.4byte lbl_802072E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BB40
lbl_8021BB40:

	# ROM: 0x218B40
	.4byte lbl_802072F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BB54
lbl_8021BB54:

	# ROM: 0x218B54
	.4byte lbl_80207308
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BB68
lbl_8021BB68:

	# ROM: 0x218B68
	.4byte lbl_8020731C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BB7C
lbl_8021BB7C:

	# ROM: 0x218B7C
	.4byte lbl_80207330
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BB90
lbl_8021BB90:

	# ROM: 0x218B90
	.4byte lbl_80207344
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BBA4
lbl_8021BBA4:

	# ROM: 0x218BA4
	.4byte lbl_80207354
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BBB8
lbl_8021BBB8:

	# ROM: 0x218BB8
	.4byte lbl_80207364
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BBCC
lbl_8021BBCC:

	# ROM: 0x218BCC
	.4byte lbl_80207378
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BBE0
lbl_8021BBE0:

	# ROM: 0x218BE0
	.4byte lbl_80207388
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BBF4
lbl_8021BBF4:

	# ROM: 0x218BF4
	.4byte lbl_8020739C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BC08
lbl_8021BC08:

	# ROM: 0x218C08
	.4byte lbl_802073B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BC1C
lbl_8021BC1C:

	# ROM: 0x218C1C
	.4byte lbl_802073C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BC30
lbl_8021BC30:

	# ROM: 0x218C30
	.4byte lbl_802073D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BC44
lbl_8021BC44:

	# ROM: 0x218C44
	.4byte lbl_802073E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BC58
lbl_8021BC58:

	# ROM: 0x218C58
	.4byte lbl_802073F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BC6C
lbl_8021BC6C:

	# ROM: 0x218C6C
	.4byte lbl_80207408
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BC80
lbl_8021BC80:

	# ROM: 0x218C80
	.4byte lbl_8020741C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BC94
lbl_8021BC94:

	# ROM: 0x218C94
	.4byte lbl_8020742C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BCA8
lbl_8021BCA8:

	# ROM: 0x218CA8
	.4byte lbl_8020743C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BCBC
lbl_8021BCBC:

	# ROM: 0x218CBC
	.4byte lbl_8020744C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BCD0
lbl_8021BCD0:

	# ROM: 0x218CD0
	.4byte lbl_8020745C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BCE4
lbl_8021BCE4:

	# ROM: 0x218CE4
	.4byte lbl_8020746C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BCF8
lbl_8021BCF8:

	# ROM: 0x218CF8
	.4byte lbl_8020747C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BD0C
lbl_8021BD0C:

	# ROM: 0x218D0C
	.4byte lbl_8020748C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BD20
lbl_8021BD20:

	# ROM: 0x218D20
	.4byte lbl_8020749C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BD34
lbl_8021BD34:

	# ROM: 0x218D34
	.4byte lbl_802074AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BD48
lbl_8021BD48:

	# ROM: 0x218D48
	.4byte lbl_802074BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BD5C
lbl_8021BD5C:

	# ROM: 0x218D5C
	.4byte lbl_802074C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BD70
lbl_8021BD70:

	# ROM: 0x218D70
	.4byte lbl_802074D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BD84
lbl_8021BD84:

	# ROM: 0x218D84
	.4byte lbl_802074E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BD98
lbl_8021BD98:

	# ROM: 0x218D98
	.4byte lbl_802074F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BDAC
lbl_8021BDAC:

	# ROM: 0x218DAC
	.4byte lbl_80207508
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BDC0
lbl_8021BDC0:

	# ROM: 0x218DC0
	.4byte lbl_80207518
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BDE8
lbl_8021BDE8:

	# ROM: 0x218DE8
	.4byte lbl_80207528
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BDFC
lbl_8021BDFC:

	# ROM: 0x218DFC
	.4byte lbl_80207538
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BE10
lbl_8021BE10:

	# ROM: 0x218E10
	.4byte lbl_80207548
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BE24
lbl_8021BE24:

	# ROM: 0x218E24
	.4byte lbl_80207558
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BE38
lbl_8021BE38:

	# ROM: 0x218E38
	.4byte lbl_80207568
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BE4C
lbl_8021BE4C:

	# ROM: 0x218E4C
	.4byte lbl_80207578
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BE60
lbl_8021BE60:

	# ROM: 0x218E60
	.4byte lbl_8020758C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BE74
lbl_8021BE74:

	# ROM: 0x218E74
	.4byte lbl_802075A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BE88
lbl_8021BE88:

	# ROM: 0x218E88
	.4byte lbl_802075B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BE9C
lbl_8021BE9C:

	# ROM: 0x218E9C
	.4byte lbl_802075C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BEB0
lbl_8021BEB0:

	# ROM: 0x218EB0
	.4byte lbl_802075DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BEC4
lbl_8021BEC4:

	# ROM: 0x218EC4
	.4byte lbl_802075F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BED8
lbl_8021BED8:

	# ROM: 0x218ED8
	.4byte lbl_80207610
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BEEC
lbl_8021BEEC:

	# ROM: 0x218EEC
	.4byte lbl_80207624
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BF00
lbl_8021BF00:

	# ROM: 0x218F00
	.4byte lbl_80207630
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BF14
lbl_8021BF14:

	# ROM: 0x218F14
	.4byte lbl_80207640
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BF28
lbl_8021BF28:

	# ROM: 0x218F28
	.4byte lbl_80207650
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BF3C
lbl_8021BF3C:

	# ROM: 0x218F3C
	.4byte lbl_80207664
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BF50
lbl_8021BF50:

	# ROM: 0x218F50
	.4byte lbl_8020767C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BF64
lbl_8021BF64:

	# ROM: 0x218F64
	.4byte lbl_8020768C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BF78
lbl_8021BF78:

	# ROM: 0x218F78
	.4byte lbl_8020769C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BF8C
lbl_8021BF8C:

	# ROM: 0x218F8C
	.4byte lbl_802076B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BFA0
lbl_8021BFA0:

	# ROM: 0x218FA0
	.4byte lbl_802076C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021BFB4
lbl_8021BFB4:

	# ROM: 0x218FB4
	.4byte lbl_802076CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BFC8
lbl_8021BFC8:

	# ROM: 0x218FC8
	.4byte lbl_802076DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BFDC
lbl_8021BFDC:

	# ROM: 0x218FDC
	.4byte lbl_802076EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021BFF0
lbl_8021BFF0:

	# ROM: 0x218FF0
	.4byte lbl_802076FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C004
lbl_8021C004:

	# ROM: 0x219004
	.4byte lbl_8020770C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C018
lbl_8021C018:

	# ROM: 0x219018
	.4byte lbl_80207718
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C02C
lbl_8021C02C:

	# ROM: 0x21902C
	.4byte lbl_80207724
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C040
lbl_8021C040:

	# ROM: 0x219040
	.4byte lbl_80207734
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C054
lbl_8021C054:

	# ROM: 0x219054
	.4byte lbl_80207748
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C068
lbl_8021C068:

	# ROM: 0x219068
	.4byte lbl_80207758
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C07C
lbl_8021C07C:

	# ROM: 0x21907C
	.4byte lbl_80207768
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C090
lbl_8021C090:

	# ROM: 0x219090
	.4byte lbl_80207778
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C0A4
lbl_8021C0A4:

	# ROM: 0x2190A4
	.4byte lbl_8020778C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C0B8
lbl_8021C0B8:

	# ROM: 0x2190B8
	.4byte lbl_80207798
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C0CC
lbl_8021C0CC:

	# ROM: 0x2190CC
	.4byte lbl_802077A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C0E0
lbl_8021C0E0:

	# ROM: 0x2190E0
	.4byte lbl_802077B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C0F4
lbl_8021C0F4:

	# ROM: 0x2190F4
	.4byte lbl_802077BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C108
lbl_8021C108:

	# ROM: 0x219108
	.4byte lbl_802077C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C11C
lbl_8021C11C:

	# ROM: 0x21911C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C130
lbl_8021C130:

	# ROM: 0x219130
	.4byte lbl_802077D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C144
lbl_8021C144:

	# ROM: 0x219144
	.4byte lbl_802077E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C158
lbl_8021C158:

	# ROM: 0x219158
	.4byte lbl_802077F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C16C
lbl_8021C16C:

	# ROM: 0x21916C
	.4byte lbl_80207804
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C180
lbl_8021C180:

	# ROM: 0x219180
	.4byte lbl_80207818
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C194
lbl_8021C194:

	# ROM: 0x219194
	.4byte lbl_80207828
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C1A8
lbl_8021C1A8:

	# ROM: 0x2191A8
	.4byte lbl_8020783C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C1BC
lbl_8021C1BC:

	# ROM: 0x2191BC
	.4byte lbl_8020784C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C1D0
lbl_8021C1D0:

	# ROM: 0x2191D0
	.4byte lbl_8020785C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C1E4
lbl_8021C1E4:

	# ROM: 0x2191E4
	.4byte lbl_80207870
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C1F8
lbl_8021C1F8:

	# ROM: 0x2191F8
	.4byte lbl_80207888
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C20C
lbl_8021C20C:

	# ROM: 0x21920C
	.4byte lbl_8020789C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C220
lbl_8021C220:

	# ROM: 0x219220
	.4byte lbl_802078B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C234
lbl_8021C234:

	# ROM: 0x219234
	.4byte lbl_802078C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C248
lbl_8021C248:

	# ROM: 0x219248
	.4byte lbl_802078E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C25C
lbl_8021C25C:

	# ROM: 0x21925C
	.4byte lbl_802078F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C270
lbl_8021C270:

	# ROM: 0x219270
	.4byte lbl_80207908
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C284
lbl_8021C284:

	# ROM: 0x219284
	.4byte lbl_80207918
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C2AC
lbl_8021C2AC:

	# ROM: 0x2192AC
	.4byte lbl_8020792C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C2C0
lbl_8021C2C0:

	# ROM: 0x2192C0
	.4byte lbl_80207948
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C2D4
lbl_8021C2D4:

	# ROM: 0x2192D4
	.4byte lbl_80207964
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C2E8
lbl_8021C2E8:

	# ROM: 0x2192E8
	.4byte lbl_80207980
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C2FC
lbl_8021C2FC:

	# ROM: 0x2192FC
	.4byte lbl_8020799C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C310
lbl_8021C310:

	# ROM: 0x219310
	.4byte lbl_802079AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C324
lbl_8021C324:

	# ROM: 0x219324
	.4byte lbl_802079B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C338
lbl_8021C338:

	# ROM: 0x219338
	.4byte lbl_802079C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C34C
lbl_8021C34C:

	# ROM: 0x21934C
	.4byte lbl_802079DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C360
lbl_8021C360:

	# ROM: 0x219360
	.4byte lbl_802079EC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C374
lbl_8021C374:

	# ROM: 0x219374
	.4byte lbl_80207A00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C388
lbl_8021C388:

	# ROM: 0x219388
	.4byte lbl_80207A14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C39C
lbl_8021C39C:

	# ROM: 0x21939C
	.4byte lbl_80207A28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C3B0
lbl_8021C3B0:

	# ROM: 0x2193B0
	.4byte lbl_80207A34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C3C4
lbl_8021C3C4:

	# ROM: 0x2193C4
	.4byte lbl_80207A40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C3D8
lbl_8021C3D8:

	# ROM: 0x2193D8
	.4byte lbl_80207A50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C3EC
lbl_8021C3EC:

	# ROM: 0x2193EC
	.4byte lbl_80207A60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C400
lbl_8021C400:

	# ROM: 0x219400
	.4byte lbl_80207A74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C414
lbl_8021C414:

	# ROM: 0x219414
	.4byte lbl_80207A84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C428
lbl_8021C428:

	# ROM: 0x219428
	.4byte lbl_80207A98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C43C
lbl_8021C43C:

	# ROM: 0x21943C
	.4byte lbl_80207AAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C450
lbl_8021C450:

	# ROM: 0x219450
	.4byte lbl_80207ABC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C464
lbl_8021C464:

	# ROM: 0x219464
	.4byte lbl_80207ACC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C478
lbl_8021C478:

	# ROM: 0x219478
	.4byte lbl_80207ADC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C48C
lbl_8021C48C:

	# ROM: 0x21948C
	.4byte lbl_80207AF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C4A0
lbl_8021C4A0:

	# ROM: 0x2194A0
	.4byte lbl_80207B08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C4B4
lbl_8021C4B4:

	# ROM: 0x2194B4
	.4byte lbl_80207B1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C4C8
lbl_8021C4C8:

	# ROM: 0x2194C8
	.4byte lbl_80207B30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C4DC
lbl_8021C4DC:

	# ROM: 0x2194DC
	.4byte lbl_80207B44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C4F0
lbl_8021C4F0:

	# ROM: 0x2194F0
	.4byte lbl_80207B58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C504
lbl_8021C504:

	# ROM: 0x219504
	.4byte lbl_80207B68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C518
lbl_8021C518:

	# ROM: 0x219518
	.4byte lbl_80207B74
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C52C
lbl_8021C52C:

	# ROM: 0x21952C
	.4byte lbl_80207B80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C540
lbl_8021C540:

	# ROM: 0x219540
	.4byte lbl_80207B94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C554
lbl_8021C554:

	# ROM: 0x219554
	.4byte lbl_80207BA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C568
lbl_8021C568:

	# ROM: 0x219568
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C57C
lbl_8021C57C:

	# ROM: 0x21957C
	.4byte lbl_80207BBC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C590
lbl_8021C590:

	# ROM: 0x219590
	.4byte lbl_80207BD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C5A4
lbl_8021C5A4:

	# ROM: 0x2195A4
	.4byte lbl_80207BE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C5B8
lbl_8021C5B8:

	# ROM: 0x2195B8
	.4byte lbl_80207BF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C5CC
lbl_8021C5CC:

	# ROM: 0x2195CC
	.4byte lbl_80207BFC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C5E0
lbl_8021C5E0:

	# ROM: 0x2195E0
	.4byte lbl_80207C10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C5F4
lbl_8021C5F4:

	# ROM: 0x2195F4
	.4byte lbl_80207C24
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C608
lbl_8021C608:

	# ROM: 0x219608
	.4byte lbl_80207C38
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C61C
lbl_8021C61C:

	# ROM: 0x21961C
	.4byte lbl_80207C48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C630
lbl_8021C630:

	# ROM: 0x219630
	.4byte lbl_80207C58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C644
lbl_8021C644:

	# ROM: 0x219644
	.4byte lbl_80207C6C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C658
lbl_8021C658:

	# ROM: 0x219658
	.4byte lbl_80207C80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C66C
lbl_8021C66C:

	# ROM: 0x21966C
	.4byte lbl_80207C9C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C680
lbl_8021C680:

	# ROM: 0x219680
	.4byte lbl_80207CAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C694
lbl_8021C694:

	# ROM: 0x219694
	.4byte lbl_80207CB8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C6A8
lbl_8021C6A8:

	# ROM: 0x2196A8
	.4byte lbl_80207CC4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C6BC
lbl_8021C6BC:

	# ROM: 0x2196BC
	.4byte lbl_80207CD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_8021C6D0
lbl_8021C6D0:

	# ROM: 0x2196D0
	.4byte lbl_80207CE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8021C6E4
lbl_8021C6E4:

	# ROM: 0x2196E4
	.4byte lbl_80207D00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_8021C70C
lbl_8021C70C:

	# ROM: 0x21970C
	.4byte lbl_80216C30
	.4byte 0
	.4byte 0x000002C9
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00020000
	.4byte lbl_80216C44
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80216C58
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216C6C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216C80
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216C94
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216CA8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216CBC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216CD0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216CE4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216CF8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216D0C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216D20
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216D34
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216D48
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216D5C
	.4byte 0
	.4byte 0x00000289
	.4byte 0x00000003
	.4byte 0
	.4byte 0x000A000A
	.4byte lbl_80216D70
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216D84
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00180000
	.4byte lbl_80216D98
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_80216DAC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000D
	.4byte lbl_80216DC0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216DD4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216DE8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216DFC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_80216E10
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80216E24
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216E38
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216E4C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216E60
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216E74
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216E88
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216E9C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216EB0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216EC4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216ED8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216EEC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216F00
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216F14
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216F28
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216F3C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216F50
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216F64
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216F78
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216F8C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0016001E
	.4byte lbl_80216FA0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80216FB4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00070002
	.4byte lbl_80216FC8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00070000
	.4byte lbl_80216FDC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00070001
	.4byte lbl_80216FF0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217004
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217018
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021702C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217040
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217054
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80217068
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021707C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217090
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802170A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0016001E
	.4byte lbl_802170B8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0016001E
	.4byte lbl_802170CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080001
	.4byte lbl_802170E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080002
	.4byte lbl_802170F4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080003
	.4byte lbl_80217108
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080004
	.4byte lbl_8021711C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080005
	.4byte lbl_80217130
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080006
	.4byte lbl_80217144
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217158
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080007
	.4byte lbl_8021716C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217180
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217194
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00080008
	.4byte lbl_802171A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802171BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050007
	.4byte lbl_802171D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802171E4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_802171F8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021720C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217220
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217234
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217248
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021725C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217270
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217284
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217298
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802172AC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802172C0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802172D4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802172E8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802172FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217310
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217324
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217338
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021734C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217360
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80217374
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217388
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021739C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802173B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802173C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802173D8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802173EC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217400
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217414
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217428
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021743C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217450
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217478
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021748C
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000E0000
	.4byte lbl_802174A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802174B4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802174C8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802174DC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A0014
	.4byte lbl_802174F0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217504
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217518
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021752C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217540
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217554
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217568
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021757C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217590
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802175A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802175B8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802175CC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802175E0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802175F4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217608
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021761C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217630
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217644
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217658
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021766C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217680
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217694
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802176A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802176BC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802176D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802176F8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021770C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217720
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217734
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217748
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021775C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217770
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080032
	.4byte lbl_80217784
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217798
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802177AC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802177C0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802177D4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802177E8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_802177FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217810
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217824
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217838
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021784C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217860
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217874
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217888
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021789C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802178B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802178C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080000
	.4byte lbl_802178D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802178EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217900
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217914
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217928
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021793C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217950
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217964
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217978
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021798C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802179A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802179B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802179C8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802179DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802179F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217A04
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217A18
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217A2C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217A40
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217A54
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217A68
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217A7C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217A90
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217AA4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217AB8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217ACC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217AE0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217AF4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217B08
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217B1C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x000700C8
	.4byte lbl_80217B30
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217B44
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217B58
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217B6C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217B80
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000B0000
	.4byte lbl_80217B94
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217BA8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80217BBC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80217BD0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217BE4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217BF8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217C0C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217C20
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217C34
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217C48
	.4byte 0
	.4byte 0x00002003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217C5C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217C70
	.4byte 0
	.4byte 0x00004003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217C84
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217C98
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217CAC
	.4byte 0
	.4byte 0x00004021
	.4byte 0
	.4byte 0x00010014
	.4byte 0x00090000
	.4byte lbl_80217CC0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217CD4
	.4byte 0
	.4byte 0x00004003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217CE8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217CFC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000C0000
	.4byte lbl_80217D10
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217D24
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217D38
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217D4C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217D60
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217D74
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217D88
	.4byte 0
	.4byte 0x00004003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217D9C
	.4byte 0
	.4byte 0x00004003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217DB0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217DC4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217DD8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217DEC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217E00
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217E14
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217E28
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217E3C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217E50
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217E64
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217E78
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217E8C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217EA0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217EB4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217EC8
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217EDC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217EF0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217F04
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217F18
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217F2C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217F40
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217F54
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217F68
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80217F7C
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00100000
	.4byte lbl_80217F90
	.4byte 0
	.4byte 0x00000081
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00100000
	.4byte lbl_80217FA4
	.4byte 0
	.4byte 0x00004003
	.4byte 0
	.4byte 0
	.4byte 0x00050001
	.4byte lbl_80217FB8
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217FCC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217FE0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80217FF4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080009
	.4byte lbl_80218008
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008000A
	.4byte lbl_8021801C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008000B
	.4byte lbl_80218030
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008000C
	.4byte lbl_80218044
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008000D
	.4byte lbl_80218058
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008000E
	.4byte lbl_8021806C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008000F
	.4byte lbl_80218080
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00070067
	.4byte lbl_80218094
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00070064
	.4byte lbl_802180A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802180BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802180D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802180E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802180F8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021810C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218120
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218134
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218148
	.4byte 0
	.4byte 0x00000021
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021815C
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000F0000
	.4byte lbl_80218170
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A001E
	.4byte lbl_80218184
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218198
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00080030
	.4byte lbl_802181AC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000D0000
	.4byte lbl_802181C0
	.4byte 0
	.4byte 0x00006003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802181D4
	.4byte 0
	.4byte 0x00000023
	.4byte 0
	.4byte 0x00010014
	.4byte 0x00090001
	.4byte lbl_802181E8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00010014
	.4byte 0x00090002
	.4byte lbl_802181FC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A0028
	.4byte lbl_80218210
	.4byte 0
	.4byte 0x00000181
	.4byte 0
	.4byte 0
	.4byte 0x00110000
	.4byte lbl_80218224
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218238
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080010
	.4byte lbl_8021824C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218260
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218274
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080011
	.4byte lbl_8021829C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802182B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802182C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802182D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802182EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218300
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218314
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218328
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021833C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218350
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218364
	.4byte 0
	.4byte 0x00000021
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218378
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021838C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802183A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802183B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050006
	.4byte lbl_802183C8
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802183DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802183F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218404
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218418
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021842C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218440
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218454
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080012
	.4byte lbl_80218468
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080013
	.4byte lbl_8021847C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218490
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140001
	.4byte lbl_802184A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_802184B8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802184CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802184E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802184F4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218508
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021851C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218530
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218544
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00070065
	.4byte lbl_80218558
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00070066
	.4byte lbl_8021856C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218580
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218594
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802185A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802185BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802185D0
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802185E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte lbl_802185F8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte lbl_8021860C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218620
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080015
	.4byte lbl_80218634
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_80218648
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_8021865C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_80218670
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_80218684
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_80218698
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_802186AC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_802186C0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00160000
	.4byte lbl_802186D4
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080016
	.4byte lbl_802186E8
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A0032
	.4byte lbl_802186FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x000A0033
	.4byte lbl_80218710
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218724
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A003C
	.4byte lbl_80218738
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080017
	.4byte lbl_8021874C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218760
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218774
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218788
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021879C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802187B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802187C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802187D8
	.4byte 0
	.4byte 0x00000181
	.4byte 0
	.4byte 0
	.4byte 0x00120000
	.4byte lbl_802187EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218800
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218814
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218828
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_8021883C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218850
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218864
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218878
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021888C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802188A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x000A0046
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080018
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080019
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008001A
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008001B
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008001C
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008001D
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008001E
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008001F
	.4byte lbl_80218288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080020
	.4byte lbl_80218968
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00080021
	.4byte lbl_8021897C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00080022
	.4byte lbl_80218990
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802189A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802189B8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802189CC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802189E0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802189F4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218A08
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218A1C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218A30
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218A44
	.4byte 0
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00150000
	.4byte lbl_80218A58
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218A6C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080023
	.4byte lbl_80218A80
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080024
	.4byte lbl_80218A94
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080025
	.4byte lbl_80218AA8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080026
	.4byte lbl_80218ABC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080027
	.4byte lbl_80218AD0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080028
	.4byte lbl_80218AE4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080029
	.4byte lbl_80218AE4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008002A
	.4byte lbl_80218AE4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008002B
	.4byte lbl_80218B20
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218B34
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218B48
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218B5C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0007012C
	.4byte lbl_80218B70
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140032
	.4byte lbl_80218B84
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140032
	.4byte lbl_80218B98
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140032
	.4byte lbl_80218BAC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80218BC0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218BD4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218BE8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218BFC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218C10
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218C24
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218C38
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218C4C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218C60
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008002C
	.4byte lbl_80218C74
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008002D
	.4byte lbl_80218C88
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218C9C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218CB0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218CC4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218CD8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008002E
	.4byte lbl_80218CEC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218D00
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218D14
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218D28
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008002F
	.4byte lbl_80218D3C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218D50
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218D64
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218D78
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218D8C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218DA0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218DB4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218DC8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218DDC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218DF0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218E04
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218E18
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_80218E2C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218E40
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218E54
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080031
	.4byte lbl_80218E68
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218E7C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050002
	.4byte lbl_80218E90
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050003
	.4byte lbl_80218EA4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050004
	.4byte lbl_80218EB8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218ECC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218EE0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218EF4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218F08
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218F1C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218F30
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218F44
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218F58
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218F6C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218F80
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218F94
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218FA8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_80218FBC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218FD0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218FE4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218FF8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080033
	.4byte lbl_8021900C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080034
	.4byte lbl_80219020
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219034
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219048
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080035
	.4byte lbl_80219048
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080036
	.4byte lbl_80219070
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219084
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219098
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00060000
	.4byte lbl_802190AC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A0000
	.4byte lbl_802190C0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802190D4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802190E8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802190FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219110
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219124
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219138
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021914C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219160
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219174
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219188
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021919C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802191B0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802191C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802191D8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802191EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219200
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219214
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219228
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021923C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219250
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219264
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219278
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021928C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802192A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802192B4
	.4byte 0
	.4byte 0x00002001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802192C8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802192DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802192F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080037
	.4byte lbl_80219304
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219318
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021932C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219340
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219354
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219368
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_8021937C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219390
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080038
	.4byte lbl_802193A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802193B8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802193CC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A0064
	.4byte lbl_802193E0
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A0050
	.4byte lbl_802193F4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219408
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021941C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219430
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219444
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219458
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021946C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219480
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219494
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802194A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802194BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802194D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802194E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802194F8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021950C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219520
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219534
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219548
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021955C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219570
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219584
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219598
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802195AC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802195C0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008003F
	.4byte lbl_802195D4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080040
	.4byte lbl_802195E8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080041
	.4byte lbl_802195FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080042
	.4byte lbl_80219610
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080043
	.4byte lbl_80219624
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080044
	.4byte lbl_80219638
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080045
	.4byte lbl_8021964C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080046
	.4byte lbl_80219660
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080047
	.4byte lbl_80219674
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080048
	.4byte lbl_80219688
	.4byte 0
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x0001000F
	.4byte 0x00080049
	.4byte lbl_8021969C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008004A
	.4byte lbl_802196B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008004B
	.4byte lbl_802196C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008004C
	.4byte lbl_802196D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008004D
	.4byte lbl_802196EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008004E
	.4byte lbl_80219700
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008004F
	.4byte lbl_80219714
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080050
	.4byte lbl_80219728
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080051
	.4byte lbl_8021973C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080052
	.4byte lbl_80219750
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080053
	.4byte lbl_80219764
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080054
	.4byte lbl_80219778
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080055
	.4byte lbl_8021978C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080056
	.4byte lbl_802197A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802197B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802197C8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080039
	.4byte lbl_802197DC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802197F0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219804
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219818
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021982C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219840
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219854
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219868
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021987C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219890
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802198A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802198B8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802198CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802198E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802198F4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219908
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021991C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219930
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219944
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219958
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008003A
	.4byte lbl_8021996C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008003B
	.4byte lbl_80219980
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008003C
	.4byte lbl_80219994
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008003D
	.4byte lbl_802199A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008003E
	.4byte lbl_802199BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802199D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802199E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140024
	.4byte lbl_802199F8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219A0C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219A20
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219A34
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219A48
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219A5C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219A70
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219A84
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219A98
	.4byte 0
	.4byte 0x00002401
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219AAC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219AC0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219AD4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219AE8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219AFC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219B10
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219B24
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219B38
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_80219B4C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_80219B60
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_80219B74
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140032
	.4byte lbl_80219B88
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A0078
	.4byte lbl_80219B9C
	.4byte 0
	.4byte 0x00000001
	.4byte 0

.global lbl_80220004
lbl_80220004:

	# ROM: 0x21D004
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219BB0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219BC4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219BD8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219BEC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219C00
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219C14
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219C28
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219C3C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219C50
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219C64
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80219C78
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80219C8C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219CA0
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A005A
	.4byte lbl_80219CB4
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A006E
	.4byte lbl_80219CC8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219CDC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219CF0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219D04
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219D18
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219D2C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219D40
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219D54
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219D68
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219D7C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219D90
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219DA4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219DB8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219DCC
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219DE0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080057
	.4byte lbl_80219DF4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219E08
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080058
	.4byte lbl_80219E1C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219DE0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080059
	.4byte lbl_80219DE0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008005A
	.4byte lbl_80219E58
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219E6C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008005B
	.4byte lbl_80219E80
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219E94
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219EA8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219EBC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008005C
	.4byte lbl_80219EBC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008005D
	.4byte lbl_80219EBC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008005E
	.4byte lbl_80219EF8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008005F
	.4byte lbl_80219F0C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080060
	.4byte lbl_80219F20
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219F34
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219F48
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80219F5C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080062
	.4byte lbl_80219F70
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080063
	.4byte lbl_80219F84
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080064
	.4byte lbl_80219F98
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080065
	.4byte lbl_80219FAC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080066
	.4byte lbl_80219FC0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080067
	.4byte lbl_80219FD4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080068
	.4byte lbl_80219FE8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080069
	.4byte lbl_80219FFC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008006A
	.4byte lbl_8021A010
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A024
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0008006B
	.4byte lbl_8021A038
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008006C
	.4byte lbl_8021A04C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A060
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A074
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160008
	.4byte lbl_8021A088
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00050008
	.4byte lbl_8021A09C
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A0B0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A0C4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A0D8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A0EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A100
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A114
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_8021A128
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A13C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A150
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A164
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A178
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00050008
	.4byte lbl_8021A18C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008006D
	.4byte lbl_8021A1A0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A1B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008006E
	.4byte lbl_8021A1C8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0008006F
	.4byte lbl_8021A1DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A1F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A204
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A218
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A22C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A240
	.4byte 0
	.4byte 0x00000201
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A254
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080070
	.4byte lbl_8021A268
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A27C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A290
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A2A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A2B8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A2CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A2E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A2F4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A308
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A31C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080061
	.4byte lbl_8021A330
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080071
	.4byte lbl_8021A344
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A358
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A36C
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00050013
	.4byte lbl_8021A380
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A394
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A3A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A3BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A3D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A3E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A3F8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A40C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A420
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_8021A434
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A448
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A45C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A470
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A484
	.4byte 0
	.4byte 0x00001001
	.4byte 0
	.4byte 0
	.4byte 0x00140024
	.4byte lbl_8021A498
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_8021A4AC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A4C0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A4D4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A4E8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A4FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A510
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A524
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A538
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A54C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A560
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x000A0000
	.4byte lbl_8021A574
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A588
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A59C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A5B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A5C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A5D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A5EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A600
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A614
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A628
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A63C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A650
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A664
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A678
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A68C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A6A0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A6B4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A6C8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A6DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A6F0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A704
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A718
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A72C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A740
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A754
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A768
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A77C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A790
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7B8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A7CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A8D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A8E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A8F8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A90C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A920
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A934
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A948
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A95C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A970
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A984
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A998
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A9AC
	.4byte 0
	.4byte 0x00000201
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A9C0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A9D4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A9E8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A9FC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A0000
	.4byte lbl_8021AA10
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AA24
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AA38
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AA4C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050009
	.4byte lbl_8021AA60
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AA74
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AA88
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AA9C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AAB0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AAC4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AAD8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AAEC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021A178
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080072
	.4byte lbl_8021AB14
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AB28
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AB3C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AB50
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AB64
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AB78
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AB8C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080073
	.4byte lbl_8021ABA0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080074
	.4byte lbl_8021ABB4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ABC8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ABDC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ABF0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AC04
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AC18
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AC2C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080075
	.4byte lbl_8021AC40
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080076
	.4byte lbl_8021AC54
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080077
	.4byte lbl_8021AC68
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080078
	.4byte lbl_8021AC7C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080079
	.4byte lbl_8021AC90
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008007A
	.4byte lbl_8021ACA4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008007B
	.4byte lbl_8021ACB8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ACCC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ACE0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ACF4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AD08
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008007C
	.4byte lbl_8021AD1C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AD30
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AD44
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AD58
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008007D
	.4byte lbl_8021AD6C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AD80
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008007E
	.4byte lbl_8021AD94
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008007F
	.4byte lbl_8021ADA8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ADBC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ADD0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ADE4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021ADF8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AE0C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AE20
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AE34
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AE48
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AE5C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AE70
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AE84
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AE98
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AEAC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AEC0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AED4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AEE8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AEFC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AF10
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AF24
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AF38
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AF4C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AF60
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080080
	.4byte lbl_8021AF74
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AF88
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AF9C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AFB0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AFC4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021AFD8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080082
	.4byte lbl_8021AFEC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080081
	.4byte lbl_8021B014
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B028
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B03C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080083
	.4byte lbl_8021B050
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080084
	.4byte lbl_8021B064
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B078
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B08C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B0A0
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B0B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B0C8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B0DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B0F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B104
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B118
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B12C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B140
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B154
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080085
	.4byte lbl_8021B168
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000F0000
	.4byte lbl_8021B17C
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B190
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B1A4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B1B8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B1CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B1E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B1F4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B208
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B21C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B230
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B244
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B258
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_8021B26C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_8021B280
	.4byte 0
	.4byte 0x00000181
	.4byte 0
	.4byte 0
	.4byte 0x00130000
	.4byte lbl_8021B294
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B2A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B2BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B2D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_8021B2E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_8021B2F8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140022
	.4byte lbl_8021B30C
	.4byte 0
	.4byte 0x00000801
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B320
	.4byte 0
	.4byte 0x00000401
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B334
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802190AC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080086
	.4byte lbl_8021B35C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B370
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B384
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B398
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B3AC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B3C0
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B3D4
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B3E8
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B3FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080087
	.4byte lbl_8021B410
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080088
	.4byte lbl_8021B424
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080089
	.4byte lbl_8021B438
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008008A
	.4byte lbl_8021B44C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008008B
	.4byte lbl_8021B460
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B474
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B488
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B49C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B4B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B4C4
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B4D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B4EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B500
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B514
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008008C
	.4byte lbl_8021B528
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B53C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B550
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B564
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B578
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B58C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B5A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B5B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B5C8
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B5DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B5F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B604
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B618
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_8021B62C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B640
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B654
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B668
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008008D
	.4byte lbl_8021B668
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008008E
	.4byte lbl_8021B668
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008008F
	.4byte lbl_8021B668
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080090
	.4byte lbl_8021B668
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080091
	.4byte lbl_8021B6CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B6E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B6F4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000C
	.4byte lbl_8021B708
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B71C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050008
	.4byte lbl_802186FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B744
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B758
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B76C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B780
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B794
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_8021B7A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140012
	.4byte lbl_8021B7BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B7D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B7E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B7F8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B80C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B820
	.4byte 0
	.4byte 0x00000801
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B834
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B848
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B85C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B870
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B884
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B898
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B8AC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B8C0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B8D4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000B
	.4byte lbl_8021B8E8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080092
	.4byte lbl_8021B8FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080093
	.4byte lbl_8021B910
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080094
	.4byte lbl_8021B924
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080095
	.4byte lbl_8021B938
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080096
	.4byte lbl_8021B94C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080097
	.4byte lbl_8021B960
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B974
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B988
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B99C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B9B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000D
	.4byte lbl_8021B9C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B9D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021B9EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BA00
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BA14
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BA28
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BA3C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BA50
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BA64
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BA78
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BA8C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BAA0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BAB4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BAC8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BADC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BAF0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BB04
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BB18
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BB2C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BB40
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BB54
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BB68
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00030000
	.4byte lbl_8021BB7C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BB90
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BBA4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BBB8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BBCC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BBE0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BBF4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BC08
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050002
	.4byte lbl_8021BC1C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050003
	.4byte lbl_8021BC30
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BC44
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BC58
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BC6C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BC80
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BC94
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BCA8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BCBC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BCD0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BCE4
	.4byte 0
	.4byte 0x00000801
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BCF8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BD0C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BD20
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BD34
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050010
	.4byte lbl_8021BD48
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BD5C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050002
	.4byte lbl_8021BD70
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050003
	.4byte lbl_8021BD84
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050002
	.4byte lbl_8021BD98
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050003
	.4byte lbl_8021BDAC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050002
	.4byte lbl_8021BDC0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050003
	.4byte lbl_80219EBC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080098
	.4byte lbl_8021BDE8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BDFC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BE10
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BE24
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BE38
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BE4C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BE60
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BE74
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BE88
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BE9C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BEB0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BEC4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BED8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x00080099
	.4byte lbl_8021BEEC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00110000
	.4byte lbl_8021BF00
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BF14
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BF28
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BF3C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008009A
	.4byte lbl_8021BF50
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008009B
	.4byte lbl_8021BF64
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte lbl_8021BF78
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BF8C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000E
	.4byte lbl_8021BFA0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BFB4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BFC8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BFDC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021BFF0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C004
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C018
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C02C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C040
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C054
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050002
	.4byte lbl_8021C068
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050003
	.4byte lbl_8021C07C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050004
	.4byte lbl_8021C090
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00050012
	.4byte lbl_8021C0A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C0B8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0005000F
	.4byte lbl_8021C0CC
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C0E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C0F4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C108
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C11C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C130
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C144
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C158
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C16C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C180
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C194
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C1A8
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C1BC
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C1D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C1E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8021C1F8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008009C
	.4byte lbl_8021C20C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001000F
	.4byte 0x0008009D
	.4byte lbl_8021C220
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C234
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C248
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C25C
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C270
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C284
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218198
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte lbl_8021C2AC
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C2C0
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C2D4
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C2E8
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C2FC
	.4byte 0
	.4byte 0x00001001
	.4byte 0
	.4byte 0
	.4byte 0x00140032
	.4byte lbl_8021C310
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C324
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C338
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C34C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C360
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C374
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C388
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C39C
	.4byte 0
	.4byte 0x00000801
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C3B0
	.4byte 0
	.4byte 0x00000801
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C3C4
	.4byte 0
	.4byte 0x00000801
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C3D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C3EC
	.4byte 0
	.4byte 0x00000801
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C400
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C414
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C428
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C43C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C450
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C464
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x0008009E
	.4byte lbl_8021C478
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C48C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C4A0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C4B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C4C8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C4DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C4F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C504
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C518
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C52C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C540
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C554
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C568
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C57C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C590
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C5A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C5B8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C5CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C5E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C5F4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C608
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C61C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C630
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C644
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C658
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C66C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C680
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C694
	.4byte 0
	.4byte 0x00000081
	.4byte 0
	.4byte 0
	.4byte 0x000A005A
	.4byte lbl_8021C6A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C6BC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C6D0
	.4byte 0
	.4byte 0x00004001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8021C6E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000

.global lbl_802233FC
lbl_802233FC:

	# ROM: 0x2203FC
	.4byte lbl_80207D0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223410
lbl_80223410:

	# ROM: 0x220410
	.4byte lbl_80207D24
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223424
lbl_80223424:

	# ROM: 0x220424
	.4byte lbl_80207D30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223438
lbl_80223438:

	# ROM: 0x220438
	.4byte lbl_80206B68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022344C
lbl_8022344C:

	# ROM: 0x22044C
	.4byte lbl_80206B78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223460
lbl_80223460:

	# ROM: 0x220460
	.4byte lbl_80207D44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223474
lbl_80223474:

	# ROM: 0x220474
	.4byte lbl_80207D50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223488
lbl_80223488:

	# ROM: 0x220488
	.4byte lbl_80207D5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022349C
lbl_8022349C:

	# ROM: 0x22049C
	.4byte lbl_80207D70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802234B0
lbl_802234B0:

	# ROM: 0x2204B0
	.4byte lbl_80207D84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802234C4
lbl_802234C4:

	# ROM: 0x2204C4
	.4byte lbl_80207D98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802234D8
lbl_802234D8:

	# ROM: 0x2204D8
	.4byte lbl_80207D84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802234EC
lbl_802234EC:

	# ROM: 0x2204EC
	.4byte lbl_80207DAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223500
lbl_80223500:

	# ROM: 0x220500
	.4byte lbl_80207DC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223514
lbl_80223514:

	# ROM: 0x220514
	.4byte lbl_80207DD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223528
lbl_80223528:

	# ROM: 0x220528
	.4byte lbl_80207DEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022353C
lbl_8022353C:

	# ROM: 0x22053C
	.4byte lbl_80207E04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223550
lbl_80223550:

	# ROM: 0x220550
	.4byte lbl_80206B0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223564
lbl_80223564:

	# ROM: 0x220564
	.4byte lbl_80207E1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223578
lbl_80223578:

	# ROM: 0x220578
	.4byte lbl_80207E34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022358C
lbl_8022358C:

	# ROM: 0x22058C
	.4byte lbl_80207E4C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802235A0
lbl_802235A0:

	# ROM: 0x2205A0
	.4byte lbl_80207E64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802235B4
lbl_802235B4:

	# ROM: 0x2205B4
	.4byte lbl_80207E7C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802235C8
lbl_802235C8:

	# ROM: 0x2205C8
	.4byte lbl_80207E94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802235DC
lbl_802235DC:

	# ROM: 0x2205DC
	.4byte lbl_80207EAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802235F0
lbl_802235F0:

	# ROM: 0x2205F0
	.4byte lbl_80207EC4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223604
lbl_80223604:

	# ROM: 0x220604
	.4byte lbl_80207EDC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223618
lbl_80223618:

	# ROM: 0x220618
	.4byte lbl_80207EF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022362C
lbl_8022362C:

	# ROM: 0x22062C
	.4byte lbl_80207F0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223640
lbl_80223640:

	# ROM: 0x220640
	.4byte lbl_80207F1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223654
lbl_80223654:

	# ROM: 0x220654
	.4byte lbl_80207F2C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223668
lbl_80223668:

	# ROM: 0x220668
	.4byte lbl_80207F3C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022367C
lbl_8022367C:

	# ROM: 0x22067C
	.4byte lbl_80207F3C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80223690
lbl_80223690:

	# ROM: 0x220690
	.4byte lbl_80223550
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223564
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223578
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8022358C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802235A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802235B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802235C8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802235DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802235F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223604
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223618
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802233FC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80216D5C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223410
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223424
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223438
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8022344C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223460
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223474
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223488
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8022349C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802234B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802234C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802234D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_802234EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223500
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223514
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223528
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8022353C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223668
	.4byte 0
	.4byte 0x00000401
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_8022367C
	.4byte 0
	.4byte 0x00000401
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80218490
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140001
	.4byte lbl_802184A4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00140032
	.4byte lbl_8022362C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223640
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000
	.4byte lbl_80223654
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00160000

.global lbl_802239F0
lbl_802239F0:

	# ROM: 0x2209F0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000013
	.4byte 0x00000013
	.4byte 0x00000138
	.4byte 0x00000139
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_80223A80
lbl_80223A80:

	# ROM: 0x220A80
	.4byte 0x00002710
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002711
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002712
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002713
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002714
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002715
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002716
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002717
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002718
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002719
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000271A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000271B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000271C
	.4byte 0
	.4byte 0xFFFFFA24
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000258
	.4byte 0x00000258
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0000271C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00002301
	.4byte 0x00000011
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00010003
	.4byte 0x0000271D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000271E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000271F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002720
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002721
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002722
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000069
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000011
	.4byte 0x00000069
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000011
	.4byte 0x00000069
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000001
	.4byte 0x00000069
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000001
	.4byte 0x00002723
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002724
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002725
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002726
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002727
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002728
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002729
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000272A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000272B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000272C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000018F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000001BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000003
	.4byte 0x00000104
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000007
	.4byte 0x00000105
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000007
	.4byte 0x00000141
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000007
	.4byte 0x00000142
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000007
	.4byte 0x000001AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000003
	.4byte 0x000001B3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000003
	.4byte 0x00002731
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00002732
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00002733
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001

.global lbl_802244C8
lbl_802244C8:

	# ROM: 0x2214C8
	.4byte lbl_8065CCAC
	.4byte lbl_8065CCB0
	.4byte lbl_8065CCB4
	.4byte lbl_8065CCB8
	.4byte lbl_8065CCBC
	.4byte lbl_8065CCAC
	.4byte lbl_8065CA58

.global lbl_802244E4
lbl_802244E4:

	# ROM: 0x2214E4
	.4byte s_stage00_8065ccc0
	.4byte 0
	.4byte 0x00000005
	.4byte s_stage01_8065ccc8
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte s_stage02_8065ccd0
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte lbl_8065CCD8
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte lbl_8065CCE0
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte lbl_8065CCE8
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte lbl_8065CCF0
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte lbl_8065CCF8
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte lbl_8065CD00
	.4byte 0x00000008
	.4byte 0x00000005
	.4byte lbl_8065CD08
	.4byte 0x00000009
	.4byte 0x00000005
	.4byte lbl_8065CD10
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte lbl_8065CD18
	.4byte 0x0000000B
	.4byte 0x00000005
	.4byte lbl_8065CD20
	.4byte 0x0000000C
	.4byte 0x00000005
	.4byte lbl_8065CD28
	.4byte 0x0000000D
	.4byte 0x00000005
	.4byte lbl_8065CD30
	.4byte 0x0000000E
	.4byte 0x00000005
	.4byte lbl_8065CD38
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte lbl_8065CD40
	.4byte 0x00000010
	.4byte 0x00000005
	.4byte lbl_8065CD48
	.4byte 0x00000011
	.4byte 0x00000005
	.4byte lbl_8065CD50
	.4byte 0x00000012
	.4byte 0x00000005
	.4byte lbl_8065CD58
	.4byte 0x00000013
	.4byte 0x00000005
	.4byte lbl_8065CD60
	.4byte 0x00000014
	.4byte 0x00000005
	.4byte lbl_8065CD68
	.4byte 0x00000015
	.4byte 0x00000005
	.4byte lbl_8065CD70
	.4byte 0x00000016
	.4byte 0x00000005
	.4byte lbl_8065CD78
	.4byte 0x00000017
	.4byte 0x00000005
	.4byte lbl_8065CD80
	.4byte 0x00000018
	.4byte 0x00000005
	.4byte lbl_8065CD88
	.4byte 0x00000019
	.4byte 0x00000005
	.4byte lbl_8065CD90
	.4byte 0x0000001A
	.4byte 0x00000005
	.4byte lbl_8065CD98
	.4byte 0x0000001B
	.4byte 0x00000005
	.4byte lbl_8065CDA0
	.4byte 0x0000001C
	.4byte 0x00000005
	.4byte lbl_8065CDA8
	.4byte 0x0000001D
	.4byte 0x00000005
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte lbl_8065CDB0
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte lbl_8065CDB8
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte lbl_8065CDC0
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte lbl_8065CDC4
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte lbl_8065CDCC
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte lbl_8065CDD4
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte lbl_8065CDDC
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte lbl_80207F58
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte lbl_8065CDE4
	.4byte 0xFFFFFFFF
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802246D0
lbl_802246D0:

	# ROM: 0x2216D0
	.4byte lbl_802152CC
	.4byte lbl_80215738
	.4byte lbl_80215B64
	.4byte lbl_80215F90
	.4byte lbl_802163BC
	.4byte lbl_802152CC
	.4byte lbl_802167E8

.global lbl_802246EC
lbl_802246EC:

	# ROM: 0x2216EC
	.4byte lbl_802156E4
	.4byte lbl_80215B04
	.4byte lbl_80215F30
	.4byte lbl_8021635C
	.4byte lbl_80216788
	.4byte lbl_802156E4
	.4byte lbl_80216BD0

.global lbl_80224708
lbl_80224708:

	# ROM: 0x221708
	.4byte lbl_8065A394
	.4byte 0
	.4byte FormationOffensive____dt_void__N23

.global lbl_80224714
lbl_80224714:

	# ROM: 0x221714
	.4byte lbl_8065A39C
	.4byte 0
	.4byte 0

.global lbl_80224720
lbl_80224720:

	# ROM: 0x221720
	.4byte lbl_8065A3A4
	.4byte 0
	.4byte InitModule

.global lbl_8022472C
lbl_8022472C:

	# ROM: 0x22172C
	.4byte lbl_8065A3AC
	.4byte 0
	.4byte cHeadTrack____dt_void__N35

.global lbl_80224738
lbl_80224738:

	# ROM: 0x221738
	.4byte lbl_8065A3B4
	.4byte 0
	.4byte GetStageData
	.4byte 0x30303030

.global lbl_80224748
lbl_80224748:

	# ROM: 0x221748
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_802247B0
lbl_802247B0:

	# ROM: 0x2217B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007ba7c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007bb88_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007bd8c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte LexicalCast_PCc_f__float
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007be54_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007be54_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007bd8c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007be54_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007be54_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007be54_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007bd8c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007bd34_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007bcc0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007be30_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007be0c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007bdc4_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007b48c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007b48c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007ae5c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007a950_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SpawnObjs
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80078754_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte CamMessageHandler
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleWaitMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleColorMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007a950_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleObjMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleObjMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800762ac_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80075eac_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleLightMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80075a80_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80075454_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte StartInteraction
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80074bc4_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800749dc_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8007464c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80074614_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80073c38_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleAnimMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleScaleMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleScaleMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleScreenMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800749dc_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleSFXMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80071ea0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte HandleWaitMSG
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80070218_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8006fd8c_

.global lbl_80224C00
lbl_80224C00:

	# ROM: 0x221C00
	.4byte 0x01030000
	.4byte lbl_8065CE10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x020B0000
	.4byte lbl_8065CE18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03030000
	.4byte lbl_8065CE20
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x04030000
	.4byte lbl_8065CE28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05030000
	.4byte lbl_8065CE2C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x06030000
	.4byte lbl_8065CE30
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07030000
	.4byte lbl_8065CE38
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x08030000
	.4byte lbl_8065CE40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x09030000
	.4byte lbl_8065CE48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0A030000
	.4byte lbl_8065CE50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0B030000
	.4byte lbl_8065CE58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0C070000
	.4byte lbl_8065CE60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0D070000
	.4byte lbl_8065CE64
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte lbl_8065CE68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0F000000
	.4byte lbl_8065CE70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x10000000
	.4byte lbl_8065CE78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x11030000
	.4byte lbl_8065CE80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x12030000
	.4byte lbl_8065CE88
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x13030000
	.4byte lbl_8065CE90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x14010000
	.4byte lbl_8065CE98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x15030000
	.4byte lbl_8065CEA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x16030000
	.4byte lbl_8065CEA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x17030000
	.4byte lbl_8065CEB0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x18030000
	.4byte lbl_8065CEB8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x19030000
	.4byte lbl_8065CEC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x1A030000
	.4byte lbl_8065CEC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x1B030000
	.4byte lbl_8065CED0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x1C030000
	.4byte lbl_8065CED4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x1D030000
	.4byte lbl_8065CEDC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x1E030000
	.4byte lbl_8065CEE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x1F030000
	.4byte lbl_8065CEEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x20030000
	.4byte lbl_8065CEF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x21030000
	.4byte lbl_8065CEFC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x22030000
	.4byte lbl_8065CF04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x31030000
	.4byte lbl_8065CF0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x23030000
	.4byte lbl_8065CF14
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x24030000
	.4byte lbl_8065CF18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x25010000
	.4byte lbl_8065CF1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x26030000
	.4byte lbl_8065CF24
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x27030000
	.4byte lbl_8065CF2C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x28030000
	.4byte lbl_8065CF34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x29030000
	.4byte lbl_8065CF3C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x2A030000
	.4byte lbl_8065CF44
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x2B030000
	.4byte lbl_8065CF4C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x2C030000
	.4byte lbl_8065CF54
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x2D030000
	.4byte lbl_8065CF58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x2E030000
	.4byte lbl_8065CF60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x2F030000
	.4byte lbl_8065CF68
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30030000
	.4byte lbl_8065CF70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global s_Evaluate_80224fe8
s_Evaluate_80224fe8:

	# ROM: 0x221FE8
	.asciz "Evaluate"
	.balign 4

.global s__cmd_BORN_80224ff4
s__cmd_BORN_80224ff4:

	# ROM: 0x221FF4
	.asciz "_cmd_BORN"
	.balign 4

.global s__cmd_CALL_80225000
s__cmd_CALL_80225000:

	# ROM: 0x222000
	.asciz "_cmd_CALL"
	.balign 4

.global s__cmd_CAMERA_8022500c
s__cmd_CAMERA_8022500c:

	# ROM: 0x22200C
	.asciz "_cmd_CAMERA"

.global s__cmd_DIR_80225018
s__cmd_DIR_80225018:

	# ROM: 0x222018
	.asciz "_cmd_DIR"
	.balign 4

.global s__cmd_LIGHT_80225024
s__cmd_LIGHT_80225024:

	# ROM: 0x222024
	.asciz "_cmd_LIGHT"
	.balign 4

.global s__cmd_PTCL_80225030
s__cmd_PTCL_80225030:

	# ROM: 0x222030
	.asciz "_cmd_PTCL"
	.balign 4

.global s__cmd_READ_8022503c
s__cmd_READ_8022503c:

	# ROM: 0x22203C
	.asciz "_cmd_READ"
	.balign 4

.global s__cmd_SCRN_80225048
s__cmd_SCRN_80225048:

	# ROM: 0x222048
	.asciz "_cmd_SCRN"
	.balign 4

.global s__cmd_SFX_80225054
s__cmd_SFX_80225054:

	# ROM: 0x222054
	.asciz "_cmd_SFX"
	.balign 4

.global s__cmd_WAIT_80225060
s__cmd_WAIT_80225060:

	# ROM: 0x222060
	.asciz "_cmd_WAIT"
	.balign 4

.global switchdataD_8022506c
switchdataD_8022506c:

	# ROM: 0x22206C
	.4byte lbl_8007036C
	.4byte lbl_80070454
	.4byte lbl_8007054C
	.4byte lbl_800706C0
	.4byte lbl_800706D8
	.4byte lbl_80070B14
	.4byte lbl_80070DF0
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071438
	.4byte lbl_80071E18
	.4byte lbl_800713E8
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_8007177C
	.4byte lbl_800717FC
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071980
	.4byte lbl_80071C8C
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_80071E18
	.4byte lbl_8007065C
	.4byte lbl_80071E18
	.4byte lbl_80071CE0
	.4byte lbl_800704D0
	.4byte lbl_80071E18
	.4byte lbl_8007110C
	.4byte lbl_80071D54
	.4byte lbl_80071DA4

.global switchdataD_80225128
switchdataD_80225128:

	# ROM: 0x222128
	.4byte lbl_800722A0
	.4byte lbl_80072420
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_80072AB0
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_80072DF8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_800730A8
	.4byte lbl_80072984
	.4byte lbl_800730A8
	.4byte lbl_80072F44
	.4byte lbl_80072360

.global switchdataD_802251d0
switchdataD_802251d0:

	# ROM: 0x2221D0
	.4byte lbl_800785E4
	.4byte lbl_800785B8
	.4byte lbl_800785FC
	.4byte lbl_80078614
	.4byte lbl_8007862C
	.4byte lbl_80078670
	.4byte lbl_800786B4

.global switchdataD_802251ec
switchdataD_802251ec:

	# ROM: 0x2221EC
	.4byte lbl_8007832C
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800779B0
	.4byte lbl_80077E14
	.4byte lbl_800783B4
	.4byte lbl_800786F0
	.4byte lbl_800778DC
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_80078080
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_80077CE0
	.4byte lbl_80078264
	.4byte lbl_80078280
	.4byte lbl_80078430
	.4byte lbl_800786F0
	.4byte lbl_8007858C
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_8007849C
	.4byte lbl_800784F4
	.4byte lbl_80078558
	.4byte lbl_800786F0
	.4byte lbl_80077AE4
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_80077AE4
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_800786F0
	.4byte lbl_80077AE4
	.4byte lbl_80077AE4

.global switchdataD_802252b0
switchdataD_802252b0:

	# ROM: 0x2222B0
	.4byte lbl_8007E740
	.4byte lbl_8007E76C
	.4byte lbl_8007E724
	.4byte lbl_8007E6FC
	.4byte lbl_8007E76C
	.4byte lbl_8007E6F4
	.4byte lbl_8007E708
	.4byte lbl_8007E76C
	.4byte lbl_8007E740

.global switchdataD_802252d4
switchdataD_802252d4:

	# ROM: 0x2222D4
	.4byte lbl_8007D078
	.4byte lbl_8007D084
	.4byte lbl_8007D090
	.4byte lbl_8007D0B0
	.4byte lbl_8007D0D0
	.4byte lbl_8007D130
	.4byte lbl_8007D234
	.4byte lbl_8007D2B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80225318
lbl_80225318:

	# ROM: 0x222318
	.4byte lbl_8065A3DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80225330
lbl_80225330:

	# ROM: 0x222330
	.4byte lbl_8065A3EC
	.4byte 0
	.4byte cHeadTrack____dt_void__N36
	.4byte lbl_8065A3DC
	.4byte 0
	.4byte lbl_8065A3E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802253FC
lbl_802253FC:

	# ROM: 0x2223FC
	.4byte lbl_8065A3F4
	.4byte 0
	.4byte 0

.global lbl_80225408
lbl_80225408:

	# ROM: 0x222408
	.4byte lbl_8065A3FC
	.4byte 0
	.4byte FormationOffensive____dt_void__N25

.global lbl_80225414
lbl_80225414:

	# ROM: 0x222414
	.4byte lbl_8065A3F4
	.4byte 0
	.4byte cHeadTrack____dt_void__N37

.global lbl_80225420
lbl_80225420:

	# ROM: 0x222420
	.4byte lbl_8065A404
	.4byte 0
	.4byte 0

.global lbl_8022542C
lbl_8022542C:

	# ROM: 0x22242C
	.4byte lbl_8065A40C
	.4byte 0
	.4byte cHeadTrack____dt_void__N38

.global lbl_80225438
lbl_80225438:

	# ROM: 0x222438
	.4byte lbl_8065A414
	.4byte 0
	.4byte 0

.global lbl_80225444
lbl_80225444:

	# ROM: 0x222444
	.4byte lbl_8065A41C
	.4byte 0
	.4byte cHeadTrack____dt_void__N39

.global lbl_80225450
lbl_80225450:

	# ROM: 0x222450
	.4byte 0xFFFFFFFF
	.4byte 0x808080FF
	.4byte 0x101010FF
	.4byte 0x00FFFFFF
	.4byte 0x00E000FF
	.4byte 0x0000E0FF
	.4byte 0xFF00FFFF
	.4byte 0xE00000FF
	.4byte 0xFFFF00FF
	.4byte 0xFF8000FF

.global s__cmd_SETFONT_80225478
s__cmd_SETFONT_80225478:

	# ROM: 0x222478
	.asciz "_cmd_SETFONT"
	.byte 0x30, 0x30, 0x30

.global switchdataD_80225488
switchdataD_80225488:

	# ROM: 0x222488
	.4byte lbl_8007FFE8
	.4byte lbl_80080030
	.4byte lbl_8008006C
	.4byte lbl_800800C8
	.4byte lbl_80080240
	.4byte lbl_80080108
	.4byte lbl_800800E8
	.4byte lbl_8008014C
	.4byte lbl_800801A4

.global switchdataD_802254ac
switchdataD_802254ac:

	# ROM: 0x2224AC
	.4byte lbl_80080534
	.4byte lbl_80080324
	.4byte lbl_80080364
	.4byte lbl_80080384
	.4byte lbl_800803C8
	.4byte lbl_8008040C
	.4byte lbl_80080494
	.4byte lbl_800804F4

.global switchdataD_802254cc
switchdataD_802254cc:

	# ROM: 0x2224CC
	.4byte lbl_80081834
	.4byte lbl_80081844
	.4byte lbl_800818A0
	.4byte lbl_800818B0
	.4byte lbl_8008194C
	.4byte lbl_8008195C
	.4byte lbl_800818C0
	.4byte lbl_80081B68
	.4byte lbl_80081B68
	.4byte lbl_80081B68
	.4byte lbl_800816EC
	.4byte lbl_80081790
	.4byte lbl_80081B68
	.4byte lbl_8008198C
	.4byte lbl_8008199C
	.4byte lbl_800819AC
	.4byte lbl_800819BC
	.4byte lbl_80081B68
	.4byte lbl_800819DC
	.4byte lbl_800819CC
	.4byte lbl_800819EC
	.4byte lbl_800819FC
	.4byte lbl_80081A0C
	.4byte lbl_80081A90
	.4byte lbl_80081B58

.global switchdataD_80225530
switchdataD_80225530:

	# ROM: 0x222530
	.4byte lbl_80086860
	.4byte lbl_80086868
	.4byte lbl_80086868
	.4byte lbl_80086878
	.4byte lbl_80086880
	.4byte lbl_80086868
	.4byte lbl_80086870
	.4byte lbl_800868D4
	.4byte lbl_800868D4
	.4byte lbl_800868D4
	.4byte lbl_80086860
	.4byte lbl_80086860
	.4byte lbl_800868D4
	.4byte lbl_800868B4
	.4byte lbl_800868B4
	.4byte lbl_800868CC
	.4byte lbl_800868B4
	.4byte lbl_800868B4
	.4byte lbl_800868C4
	.4byte lbl_800868B4
	.4byte lbl_800868BC
	.4byte lbl_800868CC
	.4byte lbl_800868C4
	.4byte lbl_800868BC
	.4byte lbl_80086860

.global switchdataD_80225594
switchdataD_80225594:

	# ROM: 0x222594
	.4byte lbl_80086598
	.4byte func_8008683C
	.4byte func_8008683C
	.4byte func_8008683C
	.4byte func_8008683C
	.4byte lbl_80086634
	.4byte func_8008683C
	.4byte lbl_80086640
	.4byte lbl_80086640
	.4byte lbl_80086640
	.4byte lbl_80086530
	.4byte lbl_80086530
	.4byte lbl_80086640
	.4byte lbl_800865D0
	.4byte func_8008683C
	.4byte func_8008683C
	.4byte lbl_80086620
	.4byte lbl_80086640
	.4byte func_8008683C
	.4byte lbl_80086628
	.4byte func_8008683C
	.4byte func_8008683C
	.4byte func_8008683C
	.4byte func_8008683C
	.4byte func_8008683C

.global switchdataD_802255f8
switchdataD_802255f8:

	# ROM: 0x2225F8
	.4byte lbl_80086A00
	.4byte lbl_80086CA8
	.4byte lbl_80086CA8
	.4byte lbl_80086D7C
	.4byte lbl_80086DC4
	.4byte lbl_80086CA8
	.4byte lbl_80086D44
	.4byte lbl_80086E84
	.4byte lbl_80086E84
	.4byte lbl_80086E84
	.4byte lbl_80086C94
	.4byte lbl_80086C94
	.4byte lbl_80086A10
	.4byte lbl_80086CA8
	.4byte lbl_80086CA8
	.4byte lbl_80086E54
	.4byte lbl_80086CA8
	.4byte lbl_80086CA8
	.4byte lbl_80086D18
	.4byte lbl_80086CA8
	.4byte lbl_80086CC4
	.4byte lbl_80086CE8
	.4byte lbl_80086D18
	.4byte lbl_80086CC4
	.4byte lbl_80086C94
	.4byte 0x30303030

.global lbl_80225660
lbl_80225660:

	# ROM: 0x222660
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_802256C8
lbl_802256C8:

	# ROM: 0x2226C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80225728
lbl_80225728:

	# ROM: 0x222728
	.4byte 0xBF000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802257B8
lbl_802257B8:

	# ROM: 0x2227B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80225818
lbl_80225818:

	# ROM: 0x222818
	.4byte 0xBF000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0

.global lbl_80225830
lbl_80225830:

	# ROM: 0x222830
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80225890
lbl_80225890:

	# ROM: 0x222890
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802258F0
lbl_802258F0:

	# ROM: 0x2228F0
	.4byte 0xBF000000
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0
	.4byte 0

.global lbl_80225908
lbl_80225908:

	# ROM: 0x222908
	.4byte lbl_8065A430
	.4byte 0
	.4byte 0

.global lbl_80225914
lbl_80225914:

	# ROM: 0x222914
	.4byte lbl_8065A438
	.4byte 0
	.4byte FormationOffensive____dt_void__N17
	.4byte zz_8008a4fc_
	.4byte zz_801a415c_
	.4byte zz_801a3f18_
	.4byte zz_8008a360_

.global lbl_80225930
lbl_80225930:

	# ROM: 0x222930
	.4byte lbl_8065A440
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80225948
lbl_80225948:

	# ROM: 0x222948
	.4byte lbl_8065A450
	.4byte 0
	.4byte 0

.global lbl_80225954
lbl_80225954:

	# ROM: 0x222954
	.4byte lbl_8065A450
	.4byte 0
	.4byte lbl_8065A458
	.4byte 0
	.4byte 0

.global lbl_80225968
lbl_80225968:

	# ROM: 0x222968
	.4byte lbl_8065A450
	.4byte 0
	.4byte lbl_8065A458
	.4byte 0
	.4byte lbl_8065A460
	.4byte 0
	.4byte 0

.global lbl_80225984
lbl_80225984:

	# ROM: 0x222984
	.4byte lbl_8065A468
	.4byte 0
	.4byte GetEventData
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte DBClose_N24
	.4byte zz_800928e8_
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80090ed4_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte lbl_8065A440
	.4byte 0
	.4byte lbl_8065A448
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30303030

.global lbl_80225B90
lbl_80225B90:

	# ROM: 0x222B90
	.4byte lbl_8065A470
	.4byte 0
	.4byte 0

.global lbl_80225B9C
lbl_80225B9C:

	# ROM: 0x222B9C
	.4byte lbl_8065A470
	.4byte 0
	.4byte lbl_8065A478
	.4byte 0
	.4byte 0

.global lbl_80225BB0
lbl_80225BB0:

	# ROM: 0x222BB0
	.4byte lbl_8065A470
	.4byte 0
	.4byte lbl_8065A478
	.4byte 0
	.4byte lbl_8065A480
	.4byte 0
	.4byte 0

.global lbl_80225BCC
lbl_80225BCC:

	# ROM: 0x222BCC
	.4byte lbl_8065A470
	.4byte 0
	.4byte lbl_8065A478
	.4byte 0
	.4byte lbl_8065A480
	.4byte 0
	.4byte lbl_8065A488
	.4byte 0
	.4byte 0

.global lbl_80225BF0
lbl_80225BF0:

	# ROM: 0x222BF0
	.4byte lbl_8065A490
	.4byte 0
	.4byte InitCamera
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_80092cf0_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte cPlayer__PostPhysicsUpdate_void__N11
	.4byte DBClose_N24
	.4byte cAIPad____ct_void_
	.4byte zz_80092d34_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80092b90_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global lbl_80225D38
lbl_80225D38:

	# ROM: 0x222D38
	.4byte lbl_8065A498
	.4byte 0
	.4byte 0

.global lbl_80225D44
lbl_80225D44:

	# ROM: 0x222D44
	.4byte lbl_8065A498
	.4byte 0
	.4byte lbl_8065A4A0
	.4byte 0
	.4byte 0

.global lbl_80225D58
lbl_80225D58:

	# ROM: 0x222D58
	.4byte lbl_8065A498
	.4byte 0
	.4byte lbl_8065A4A0
	.4byte 0
	.4byte lbl_8065A4A8
	.4byte 0
	.4byte 0

.global lbl_80225D74
lbl_80225D74:

	# ROM: 0x222D74
	.4byte lbl_8065A498
	.4byte 0
	.4byte lbl_8065A4A0
	.4byte 0
	.4byte lbl_8065A4A8
	.4byte 0
	.4byte lbl_8065A4B0
	.4byte 0
	.4byte 0

.global lbl_80225D98
lbl_80225D98:

	# ROM: 0x222D98
	.4byte lbl_8065A4B8
	.4byte 0
	.4byte IniSceneLights
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_80092f00_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte cPlayer__PostPhysicsUpdate_void__N12
	.4byte DBClose_N24
	.4byte zz_800930e4_
	.4byte zz_80092f98_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80092e38_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global lbl_80225EE0
lbl_80225EE0:

	# ROM: 0x222EE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80225F14
lbl_80225F14:

	# ROM: 0x222F14
	.4byte lbl_8065A4C0
	.4byte 0
	.4byte 0

.global lbl_80225F20
lbl_80225F20:

	# ROM: 0x222F20
	.4byte lbl_8065A4C0
	.4byte 0
	.4byte lbl_8065A4C8
	.4byte 0
	.4byte 0

.global lbl_80225F34
lbl_80225F34:

	# ROM: 0x222F34
	.4byte lbl_8065A4C0
	.4byte 0
	.4byte lbl_8065A4C8
	.4byte 0
	.4byte lbl_8065A4D0
	.4byte 0
	.4byte 0

.global lbl_80225F50
lbl_80225F50:

	# ROM: 0x222F50
	.4byte lbl_8065A4C0
	.4byte 0
	.4byte lbl_8065A4C8
	.4byte 0
	.4byte lbl_8065A4D0
	.4byte 0
	.4byte lbl_8065A4D8
	.4byte 0
	.4byte 0

.global lbl_80225F74
lbl_80225F74:

	# ROM: 0x222F74
	.4byte lbl_8065A4E0
	.4byte 0
	.4byte GetGameMap
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_80093768_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte cPlayer__PostPhysicsUpdate_void__N13
	.4byte DBClose_N24
	.4byte zz_80093ac0_
	.4byte zz_80093828_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_8009369c_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global lbl_802260BC
lbl_802260BC:

	# ROM: 0x2230BC
	.4byte lbl_8065A4E8
	.4byte 0
	.4byte cHeadTrack____dt_void__N40

.global lbl_802260C8
lbl_802260C8:

	# ROM: 0x2230C8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_80226130
lbl_80226130:

	# ROM: 0x223130
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802262AC
lbl_802262AC:

	# ROM: 0x2232AC
	.4byte 0
	.4byte s_cb_robo_6_dat_80209588
	.4byte s_cb_robo_7_dat_80209598
	.4byte s_cb_robo_8_dat_802095a8
	.4byte s_cb_robo_9_dat_802095b8
	.4byte s_cb_robo_10_dat_802095c8
	.4byte s_cb_robo_11_dat_802095d8
	.4byte s_cb_robo_12_dat_802095e8
	.4byte 0

.global lbl_802262D0
lbl_802262D0:

	# ROM: 0x2232D0
	.4byte 0
	.4byte s_cb_robo_13_dat_802095f8
	.4byte s_cb_robo_15_dat_80209608
	.4byte s_cb_robo_14_dat_80209618
	.4byte s_cb_robo_25_dat_80209628
	.4byte 0
	.4byte lbl_80209638
	.4byte lbl_80209648
	.4byte lbl_80209658

.global lbl_802262F4
lbl_802262F4:

	# ROM: 0x2232F4
	.4byte 0x00000020
	.4byte 0x00000022
	.4byte 0x00000023

.global lbl_80226300
lbl_80226300:

	# ROM: 0x223300
	.4byte 0x00000001
	.4byte 0x00000CF7
	.4byte 0x00000CF9
	.4byte 0x00000CF8
	.4byte 0x00000CFD
	.4byte 0x00000001
	.4byte 0x00000CFA
	.4byte 0x00000CFB
	.4byte 0x00000CFC

.global lbl_80226324
lbl_80226324:

	# ROM: 0x223324
	.4byte 0x00000012
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte zz_800a8494_
	.4byte zz_800a8454_
	.4byte 0x0000000C
	.4byte 0xFF000000
	.4byte 0x00000003
	.4byte 0x40000000
	.4byte 0x41880000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000000A
	.4byte 0xFF000000
	.4byte 0x00000003
	.4byte 0x40E00000
	.4byte 0x41B00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x0000000C
	.4byte 0x40E00000
	.4byte 0x41B00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000896
	.4byte 0x40E00000
	.4byte 0x41B00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000818
	.4byte 0x40E00000
	.4byte 0x41B00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000077
	.4byte 0x41300000
	.4byte 0x41D00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000088
	.4byte 0x41300000
	.4byte 0x41D00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000897
	.4byte 0x41300000
	.4byte 0x41D00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000882
	.4byte 0x41300000
	.4byte 0x41D00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x40C00000
	.4byte 0x41A80000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000000A
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x41300000
	.4byte 0x41D00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x0000000D
	.4byte 0x40C00000
	.4byte 0x41A80000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000000A
	.4byte 0xFF000000
	.4byte 0x0000000D
	.4byte 0x41300000
	.4byte 0x41D00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000898
	.4byte 0x40C00000
	.4byte 0x41A80000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000000A
	.4byte 0xFF000000
	.4byte 0x00000898
	.4byte 0x41300000
	.4byte 0x41D00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000819
	.4byte 0x40C00000
	.4byte 0x41A80000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000000A
	.4byte 0xFF000000
	.4byte 0x00000819
	.4byte 0x41300000
	.4byte 0x41D00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x000000B3
	.4byte 0x40000000
	.4byte 0x41800000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x0000012A
	.4byte 0x40000000
	.4byte 0x41880000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000000A
	.4byte 0xFF000000
	.4byte 0x0000012A
	.4byte 0x40E00000
	.4byte 0x41B00000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x0000000A
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000005
	.4byte 0xFF000000
	.4byte 0x0000000A
	.4byte 0x42280000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000006
	.4byte 0xFF000000
	.4byte 0x0000000B
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000005
	.4byte 0xFF000000
	.4byte 0x0000000B
	.4byte 0x42280000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000006
	.4byte 0xFF000000
	.4byte 0x0000009F
	.4byte 0x42080000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000038
	.4byte 0xFF000000
	.4byte 0x000000A0
	.4byte 0x41C00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000038
	.4byte 0xFF000000
	.4byte 0x000000AD
	.4byte 0x42980000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000037
	.4byte 0xFF000000
	.4byte 0x000000AC
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000037
	.4byte 0xFF000000
	.4byte 0x00000020
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000096
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000001F
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000095
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000001B
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000001E
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000094
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000123
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000075
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000039
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000059
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x0000009F
	.4byte 0x42B80000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x000000AD
	.4byte 0x42A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000005C
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000111
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000117
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000062
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000114
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x0000011A
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000065
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x0000011D
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000120
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x0000005B
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x00000110
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x00000116
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x00000061
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x00000113
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x00000119
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x00000064
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x0000011C
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x0000011F
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003C
	.4byte 0xFF000000
	.4byte 0x00000017
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000000D
	.4byte 0xFF000000
	.4byte 0x0000007D
	.4byte 0x41400000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000000E
	.4byte 0xFF000000
	.4byte 0x00000015
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003F
	.4byte 0xFF000000
	.4byte 0x00000016
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003F
	.4byte 0xFF000000
	.4byte 0x00000018
	.4byte 0
	.4byte 0x42400000
	.4byte zz_800a84d0_
	.4byte 0
	.4byte 0x0000000C
	.4byte 0xFF000000
	.4byte 0x00000018
	.4byte 0x42680000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000098
	.4byte 0
	.4byte 0x42400000
	.4byte zz_800a84d0_
	.4byte 0
	.4byte 0x0000000C
	.4byte 0xFF000000
	.4byte 0x00000098
	.4byte 0x42680000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006D
	.4byte 0
	.4byte 0x42400000
	.4byte zz_800a84d0_
	.4byte 0
	.4byte 0x0000000C
	.4byte 0xFF000000
	.4byte 0x0000006D
	.4byte 0x42680000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006D
	.4byte 0x42C20000
	.4byte 0x42E80000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006D
	.4byte 0x43050000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006D
	.4byte 0x42480000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003E
	.4byte 0xFF000000
	.4byte 0x0000008B
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000010
	.4byte 0xFF000000
	.4byte 0x0000008D
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000010
	.4byte 0xFF000000
	.4byte 0x00000040
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000020
	.4byte 0xFF000000
	.4byte 0x00000041
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001F
	.4byte 0xFF000000
	.4byte 0x00000035
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFF000000
	.4byte 0x0000010D
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFF000000
	.4byte 0x00000043
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFF000000
	.4byte 0x0000010E
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFF000000
	.4byte 0x00000043
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8454_
	.4byte 0
	.4byte 0x0000003B
	.4byte 0xFF000000
	.4byte 0x0000010E
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8454_
	.4byte 0
	.4byte 0x0000003B
	.4byte 0xFF000000
	.4byte 0x00000043
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8454_
	.4byte 0
	.4byte 0x00000036
	.4byte 0xFF000000
	.4byte 0x0000010E
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8454_
	.4byte 0
	.4byte 0x00000036
	.4byte 0xFF000000
	.4byte 0x0000005A
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000010F
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000115
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000060
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000112
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000118
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000063
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000011B
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000011E
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000013
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000013
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003E
	.4byte 0xFF000000
	.4byte 0x00000019
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000066
	.4byte 0x41200000
	.4byte 0x42040000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000066
	.4byte 0x42140000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000066
	.4byte 0x41C80000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003E
	.4byte 0xFF000000
	.4byte 0x00000069
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000069
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006A
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006A
	.4byte 0x41900000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006E
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006E
	.4byte 0x41A00000
	.4byte 0x42200000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006E
	.4byte 0x41880000
	.4byte 0x42180000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006E
	.4byte 0x42680000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006F
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006F
	.4byte 0x41A00000
	.4byte 0x42200000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006F
	.4byte 0x41880000
	.4byte 0x42180000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006F
	.4byte 0x42680000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006B
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006B
	.4byte 0x41900000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x0000006C
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000006C
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000072
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000073
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000021
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000021
	.4byte 0x41E00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003E
	.4byte 0xFF000000
	.4byte 0x00000025
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000005
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000007
	.4byte 0x41C00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000007
	.4byte 0xFF000000
	.4byte 0x0000003E
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000003E
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003E
	.4byte 0xFF000000
	.4byte 0x00000042
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x00000009
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000009F
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x000000AD
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x000000A0
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000009
	.4byte 0xFF000000
	.4byte 0x0000007A
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003D
	.4byte 0xFF000000
	.4byte 0x000000CA
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000003D
	.4byte 0xFF000000
	.4byte 0x00000814
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000005
	.4byte 0xFF000000
	.4byte 0x00000817
	.4byte 0x41D00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000006
	.4byte 0xFF000000
	.4byte 0x00000816
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0x00000879
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000005
	.4byte 0xFF000000
	.4byte 0x0000087A
	.4byte 0x41D00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000006
	.4byte 0xFF000000
	.4byte 0x0000081F
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000004
	.4byte 0xFF000000
	.4byte 0x00000820
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000004
	.4byte 0xFF000000
	.4byte 0x00000821
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000002
	.4byte 0xFF000000
	.4byte 0x00000824
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000002
	.4byte 0xFF000000
	.4byte 0x00000078
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000005
	.4byte 0xFF000000
	.4byte 0x00000078
	.4byte 0x42700000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000006
	.4byte 0xFF000000
	.4byte 0x000000EF
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000005
	.4byte 0xFF000000
	.4byte 0x000000EF
	.4byte 0x42700000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000006
	.4byte 0xFF000000
	.4byte 0x0000013B
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000005
	.4byte 0xFF000000
	.4byte 0x0000013B
	.4byte 0x42700000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000006
	.4byte 0xFF000000
	.4byte 0x000000AF
	.4byte 0x41700000
	.4byte 0x42140000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x000000AF
	.4byte 0x426C0000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x000000B0
	.4byte 0x41900000
	.4byte 0x42200000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x000000B0
	.4byte 0x42740000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x000000EA
	.4byte 0x41700000
	.4byte 0x42140000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x000000EA
	.4byte 0x426C0000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x000000EB
	.4byte 0x41900000
	.4byte 0x42200000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x000000EB
	.4byte 0x42740000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000895
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8560_
	.4byte 0
	.4byte 0x000000FD
	.4byte 0xFF000000
	.4byte 0x000000BC
	.4byte 0x42400000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000038
	.4byte 0xFF000000
	.4byte 0x000000BF
	.4byte 0x42AA0000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000118
	.4byte 0xFF000000
	.4byte 0x000000BF
	.4byte 0x430E0000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000037
	.4byte 0xFF000000
	.4byte 0x000008AE
	.4byte 0x40A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000010C
	.4byte 0xFF000000
	.4byte 0x000008AE
	.4byte 0x42A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000010D
	.4byte 0xFF000000
	.4byte 0x000008B1
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000039
	.4byte 0xFF000000
	.4byte 0x000004A3
	.4byte 0x420C0000
	.4byte 0x423C0000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x00000119
	.4byte 0xFF000000
	.4byte 0x000000DD
	.4byte 0x41B00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000015B
	.4byte 0xFF000000
	.4byte 0x000000D5
	.4byte 0x41C80000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000121
	.4byte 0xFF000000
	.4byte 0x000000F6
	.4byte 0x41C80000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000121
	.4byte 0xFF000000
	.4byte 0x000004D0
	.4byte 0x41C80000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000121
	.4byte 0xFF000000
	.4byte 0x00000037
	.4byte 0x41F00000
	.4byte 0x420C0000
	.4byte zz_800a85dc_
	.4byte 0
	.4byte 0x0000001A
	.4byte 0xFF000000
	.4byte 0x00000037
	.4byte 0x42DC0000
	.4byte 0x42F00000
	.4byte zz_800a84d0_
	.4byte 0
	.4byte 0x0000000C
	.4byte 0xFF000000
	.4byte 0x000000EE
	.4byte 0x42DC0000
	.4byte 0x42F00000
	.4byte zz_800a84d0_
	.4byte 0
	.4byte 0x0000000C
	.4byte 0xFF000000
	.4byte 0x00000CEC
	.4byte 0x42C80000
	.4byte 0x42DC0000
	.4byte zz_800a84d0_
	.4byte 0
	.4byte 0x0000000C
	.4byte 0xFF000000
	.4byte 0x000008C5
	.4byte 0x40E00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000016D
	.4byte 0xFF000000
	.4byte 0x000008C5
	.4byte 0x42000000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000016E
	.4byte 0xFF000000
	.4byte 0x000008C0
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000175
	.4byte 0xFF000000
	.4byte 0x000008C1
	.4byte 0x42640000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000175
	.4byte 0xFF000000
	.4byte 0x000008C2
	.4byte 0x42400000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000176
	.4byte 0xFF000000
	.4byte 0x000008C3
	.4byte 0x42400000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000177
	.4byte 0xFF000000
	.4byte 0x000008C4
	.4byte 0x42400000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000178
	.4byte 0xFF000000
	.4byte 0x00000513
	.4byte 0x41A00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000198
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802276D4
lbl_802276D4:

	# ROM: 0x2246D4
	.4byte 0x00000005
	.4byte 0x41B00000
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000000F
	.4byte 0xFF000000
	.4byte 0x00000008
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x0000000F
	.4byte 0xFF000000
	.4byte 0x00000006
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8640_
	.4byte 0
	.4byte 0x00000008
	.4byte 0xFF000000
	.4byte 0x00000002
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8494_
	.4byte 0
	.4byte 0x00000008
	.4byte 0xFF000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8494_
	.4byte 0
	.4byte 0x00000008
	.4byte 0xFF000000
	.4byte 0x00000007
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8454_
	.4byte 0
	.4byte 0x00000008
	.4byte 0xFF000000
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte zz_800a8454_
	.4byte 0
	.4byte 0x00000008
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802277B4
lbl_802277B4:

	# ROM: 0x2247B4
	.4byte 0x00000011
	.4byte 0x00000008
	.4byte 0x00000894
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000894
	.4byte 0xFFFFFFFF
	.4byte 0x0000005D
	.4byte 0x00000008
	.4byte 0x00000894
	.4byte 0xFFFFFFFF
	.4byte 0x0000005E
	.4byte 0x00000008
	.4byte 0x00000894
	.4byte 0xFFFFFFFF
	.4byte 0x0000005F
	.4byte 0x00000008
	.4byte 0x00000894
	.4byte 0xFFFFFFFF
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000894
	.4byte 0xFFFFFFFF
	.4byte 0x000000D4
	.4byte 0x000000E4
	.4byte 0x000000E5
	.4byte 0xFFFFFFFF
	.4byte 0x00000079
	.4byte 0x00000089
	.4byte 0x000000E0
	.4byte 0xFFFFFFFF
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x00000896
	.4byte 0x00000818
	.4byte 0x00000077
	.4byte 0x00000088
	.4byte 0x00000897
	.4byte 0x00000882
	.4byte 0x00000004
	.4byte 0x0000000D
	.4byte 0x00000898
	.4byte 0x00000819
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0000010A
	.4byte 0x00000035
	.4byte 0x00000035
	.4byte 0x00000035
	.4byte 0x0000010D
	.4byte 0x00000043
	.4byte 0x00000043
	.4byte 0x00000043
	.4byte 0x0000010E
	.4byte 0x00000078
	.4byte 0x0000013B
	.4byte 0x000000EF
	.4byte 0xFFFFFFFF
	.4byte 0x0000005A
	.4byte 0x0000010F
	.4byte 0x00000115
	.4byte 0xFFFFFFFF
	.4byte 0x0000005B
	.4byte 0x00000110
	.4byte 0x00000116
	.4byte 0xFFFFFFFF
	.4byte 0x0000005C
	.4byte 0x00000111
	.4byte 0x00000117
	.4byte 0xFFFFFFFF
	.4byte 0x00000060
	.4byte 0x00000112
	.4byte 0x00000118
	.4byte 0xFFFFFFFF
	.4byte 0x00000061
	.4byte 0x00000113
	.4byte 0x00000119
	.4byte 0xFFFFFFFF
	.4byte 0x00000062
	.4byte 0x00000114
	.4byte 0x0000011A
	.4byte 0xFFFFFFFF
	.4byte 0x00000063
	.4byte 0x0000011B
	.4byte 0x0000011E
	.4byte 0xFFFFFFFF
	.4byte 0x00000064
	.4byte 0x0000011C
	.4byte 0x0000011F
	.4byte 0xFFFFFFFF
	.4byte 0x00000065
	.4byte 0x0000011D
	.4byte 0x00000120
	.4byte 0xFFFFFFFF
	.4byte 0x0000007A
	.4byte 0x000000CA
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000020
	.4byte 0x00000096
	.4byte 0x00000129
	.4byte 0xFFFFFFFF
	.4byte 0x0000001F
	.4byte 0x00000095
	.4byte 0x00000128
	.4byte 0xFFFFFFFF
	.4byte 0x0000001C
	.4byte 0x00000092
	.4byte 0x00000121
	.4byte 0xFFFFFFFF
	.4byte 0x0000001D
	.4byte 0x00000093
	.4byte 0x00000122
	.4byte 0xFFFFFFFF
	.4byte 0x0000001E
	.4byte 0x00000094
	.4byte 0x00000123
	.4byte 0xFFFFFFFF
	.4byte 0x0000008E
	.4byte 0x0000009B
	.4byte 0x00000124
	.4byte 0xFFFFFFFF
	.4byte 0x0000008F
	.4byte 0x0000009C
	.4byte 0x00000125
	.4byte 0xFFFFFFFF
	.4byte 0x00000090
	.4byte 0x0000009D
	.4byte 0x00000126
	.4byte 0x0000010B
	.4byte 0x0000009A
	.4byte 0x0000009E
	.4byte 0x00000127
	.4byte 0x0000010C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802279E4
lbl_802279E4:

	# ROM: 0x2249E4
	.4byte 0
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0x41A00000
	.4byte 0x41A00000
	.4byte 0x41A00000
	.4byte 0
	.4byte 0xC1A00000
	.4byte 0xC1A00000

.global lbl_80227A08
lbl_80227A08:

	# ROM: 0x224A08
	.4byte 0xC1A00000
	.4byte 0xC1A00000
	.4byte 0xC1F00000
	.4byte 0xC1A00000
	.4byte 0xC1200000
	.4byte 0
	.4byte 0x41200000
	.4byte 0
	.4byte 0xC1200000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC0400000
	.4byte 0xC0000000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x40000000
	.4byte 0x40400000
	.4byte 0x40800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xBF800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_80227ACC
lbl_80227ACC:

	# ROM: 0x224ACC
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_80227ADC
lbl_80227ADC:

	# ROM: 0x224ADC
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_80227AEC
lbl_80227AEC:

	# ROM: 0x224AEC
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_80227AFC
lbl_80227AFC:

	# ROM: 0x224AFC
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_80227B0C
lbl_80227B0C:

	# ROM: 0x224B0C
	.4byte lbl_8065A4F8
	.4byte 0
	.4byte 0

.global lbl_80227B18
lbl_80227B18:

	# ROM: 0x224B18
	.4byte lbl_8065A500
	.4byte 0
	.4byte FormationOffensive____dt_void__N26
	.4byte zz_800985b4_
	.4byte zz_8009be1c_
	.4byte DemoOverlay__SceneCreated_void__N2
	.4byte cAIPad____ct_void__N2
	.4byte zz_800984f4_
	.4byte zz_8009841c_
	.4byte zz_800983b8_
	.4byte zz_80098204_
	.4byte zz_800984cc_

.global switchdataD_80227b48
switchdataD_80227b48:

	# ROM: 0x224B48
	.4byte lbl_8009EB5C
	.4byte func_8009ED1C
	.4byte lbl_8009EB98
	.4byte lbl_8009EC30
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte lbl_8009EC98
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte func_8009ED1C
	.4byte lbl_8009ECD8

.global lbl_80227B9C
lbl_80227B9C:

	# ROM: 0x224B9C
	.4byte func_800A8C48
	.4byte lbl_800A891C
	.4byte lbl_800A891C
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte lbl_800A8924
	.4byte lbl_800A8950
	.4byte lbl_800A8958
	.4byte func_800A8C48
	.4byte lbl_800A8958

.global switchdataD_80227bc4
switchdataD_80227bc4:

	# ROM: 0x224BC4
	.4byte lbl_800A88E8
	.4byte func_800A8C48
	.4byte lbl_800A88E0
	.4byte lbl_800A88E0
	.4byte func_800A8C48
	.4byte lbl_800A88E0
	.4byte lbl_800A88E0
	.4byte func_800A8C48
	.4byte lbl_800A88E0
	.4byte lbl_800A88E0

.global lbl_80227BEC
lbl_80227BEC:

	# ROM: 0x224BEC
	.4byte func_800A8C48
	.4byte lbl_800A886C
	.4byte lbl_800A886C
	.4byte func_800A8C48
	.4byte lbl_800A8874
	.4byte lbl_800A887C
	.4byte lbl_800A88A0
	.4byte lbl_800A88A0
	.4byte func_800A8C48
	.4byte lbl_800A88A8

.global switchdataD_80227c14
switchdataD_80227c14:

	# ROM: 0x224C14
	.4byte func_800A8C48
	.4byte lbl_800A86E4
	.4byte lbl_800A86E4
	.4byte lbl_800A86F4
	.4byte lbl_800A86F4
	.4byte func_800A8C48
	.4byte lbl_800A86EC
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte lbl_800A8838
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte lbl_800A86EC
	.4byte lbl_800A86E4
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte lbl_800A87C8
	.4byte lbl_800A87C8
	.4byte lbl_800A87DC
	.4byte lbl_800A87DC
	.4byte lbl_800A87F0
	.4byte lbl_800A87F0
	.4byte func_800A8C48
	.4byte func_800A8C48
	.4byte lbl_800A8804
	.4byte lbl_800A8804

.global switchdataD_80227ca8
switchdataD_80227ca8:

	# ROM: 0x224CA8
	.4byte func_800B354C
	.4byte lbl_800B3450
	.4byte lbl_800B345C
	.4byte lbl_800B3468
	.4byte lbl_800B3474
	.4byte lbl_800B34A8
	.4byte lbl_800B34DC
	.4byte lbl_800B3510
	.4byte lbl_800B3544

.global switchdataD_80227ccc
switchdataD_80227ccc:

	# ROM: 0x224CCC
	.4byte lbl_800B320C
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte lbl_800B3334
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte lbl_800B3398
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte lbl_800B3428
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte func_800B35A8
	.4byte lbl_800B3564

.global switchdataD_80227d48
switchdataD_80227d48:

	# ROM: 0x224D48
	.4byte lbl_800B98B0
	.4byte lbl_800BA40C
	.4byte lbl_800BA464
	.4byte lbl_800BA590
	.4byte lbl_800BA6A4
	.4byte lbl_800BA7D0
	.4byte lbl_800BA8FC
	.4byte lbl_800BAA44
	.4byte lbl_800BAA54
	.4byte lbl_800BAA64
	.4byte lbl_800BAB00
	.4byte lbl_800BAC8C
	.4byte lbl_800BAC9C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A510
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80227E04
lbl_80227E04:

	# ROM: 0x224E04
	.4byte lbl_8065A518
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80227E1C
lbl_80227E1C:

	# ROM: 0x224E1C
	.4byte lbl_8065A4F8
	.4byte 0
	.4byte 0

.global lbl_80227E28
lbl_80227E28:

	# ROM: 0x224E28
	.4byte lbl_8065A528
	.4byte 0
	.4byte FormationOffensive____dt_void__N27
	.4byte zz_80098e48_
	.4byte zz_8009be1c_
	.4byte DemoOverlay__SceneCreated_void__N2
	.4byte cAIPad____ct_void__N2
	.4byte zz_80098dd4_
	.4byte zz_80098cec_
	.4byte zz_80098c20_
	.4byte zz_80098a3c_
	.4byte zz_80098d9c_

.global lbl_80227E58
lbl_80227E58:

	# ROM: 0x224E58
	.4byte lbl_8065A4F8
	.4byte 0
	.4byte cHeadTrack____dt_void__N41
	.4byte zz_8009bf14_
	.4byte zz_8009be1c_
	.4byte DemoOverlay__SceneCreated_void__N2
	.4byte cAIPad____ct_void__N2
	.4byte DBClose_N45
	.4byte gdev_cc_shutdown_N11
	.4byte GetDAT_8065d4ac
	.4byte zz_8009afec_
	.4byte gdev_cc_shutdown_N10

.global lbl_80227E88
lbl_80227E88:

	# ROM: 0x224E88
	.4byte lbl_8065A508
	.4byte 0
	.4byte 0

.global lbl_80227E94
lbl_80227E94:

	# ROM: 0x224E94
	.4byte lbl_8065A508
	.4byte 0
	.4byte lbl_8065A530
	.4byte 0
	.4byte 0

.global lbl_80227EA8
lbl_80227EA8:

	# ROM: 0x224EA8
	.4byte lbl_8065A508
	.4byte 0
	.4byte lbl_8065A530
	.4byte 0
	.4byte lbl_8065A538
	.4byte 0
	.4byte 0

.global lbl_80227EC4
lbl_80227EC4:

	# ROM: 0x224EC4
	.4byte lbl_8065A508
	.4byte 0
	.4byte lbl_8065A530
	.4byte 0
	.4byte lbl_8065A538
	.4byte 0
	.4byte lbl_8065A540
	.4byte 0
	.4byte 0

.global lbl_80227EE8
lbl_80227EE8:

	# ROM: 0x224EE8
	.4byte lbl_8065A548
	.4byte 0
	.4byte ChibiActions
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_800a36e8_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800b7b5c_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_800a0694_
	.4byte zz_801a2030_
	.4byte zz_800a3f88_
	.4byte zz_80090254_
	.4byte cPlayer__PostPhysicsUpdate_void__N14
	.4byte zz_801a0bcc_
	.4byte zz_800bc0e4_
	.4byte zz_800bbdac_
	.4byte zz_800bb77c_
	.4byte LoadScene
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800b5e34_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800a7a2c_
	.4byte zz_800a7894_
	.4byte zz_800a77d4_
	.4byte zz_800a72f8_
	.4byte zz_800a5c58_
	.4byte zz_800a4a60_
	.4byte zz_800a551c_
	.4byte zz_800a4678_
	.4byte zz_800a45b8_
	.4byte CalculateDesireChance
	.4byte zz_800b5974_
	.4byte zz_800b580c_
	.4byte DBClose_N47
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_800a0bd8_
	.4byte zz_800a3d34_
	.4byte zz_800a3ae0_
	.4byte zz_800a388c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte calculateParamValue
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_800b5ab8_
	.4byte zz_8009ddb8_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_800a0234_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8009ff40_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte zz_8009d778_
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_802280C4
lbl_802280C4:

	# ROM: 0x2250C4
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_802280D0
lbl_802280D0:

	# ROM: 0x2250D0
	.4byte lbl_8065A558
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_802280E0
lbl_802280E0:

	# ROM: 0x2250E0
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_802280EC
lbl_802280EC:

	# ROM: 0x2250EC
	.4byte lbl_8065A560
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_802280FC
lbl_802280FC:

	# ROM: 0x2250FC
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_80228108
lbl_80228108:

	# ROM: 0x225108
	.4byte lbl_8065A568
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_80228118
lbl_80228118:

	# ROM: 0x225118
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_80228124
lbl_80228124:

	# ROM: 0x225124
	.4byte lbl_8065A570
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_80228134
lbl_80228134:

	# ROM: 0x225134
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_80228140
lbl_80228140:

	# ROM: 0x225140
	.4byte lbl_8065A578
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_80228150
lbl_80228150:

	# ROM: 0x225150
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_8022815C
lbl_8022815C:

	# ROM: 0x22515C
	.4byte lbl_8065A580
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_8022816C
lbl_8022816C:

	# ROM: 0x22516C
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_80228178
lbl_80228178:

	# ROM: 0x225178
	.4byte lbl_8065A588
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_80228188
lbl_80228188:

	# ROM: 0x225188
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_80228194
lbl_80228194:

	# ROM: 0x225194
	.4byte lbl_8065A590
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_802281A4
lbl_802281A4:

	# ROM: 0x2251A4
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_802281B0
lbl_802281B0:

	# ROM: 0x2251B0
	.4byte lbl_8065A598
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_802281C0
lbl_802281C0:

	# ROM: 0x2251C0
	.4byte lbl_8065A550
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_802281D0
lbl_802281D0:

	# ROM: 0x2251D0
	.4byte lbl_8065A550
	.4byte 0
	.4byte 0

.global lbl_802281DC
lbl_802281DC:

	# ROM: 0x2251DC
	.4byte lbl_8065A5A0
	.4byte 0
	.4byte zz_800bbd7c_
	.4byte cPlayer__ClearSwapControllerTimer_void_

.global lbl_802281EC
lbl_802281EC:

	# ROM: 0x2251EC
	.4byte lbl_8065A5A8
	.4byte 0
	.4byte cHeadTrack____dt_void__N42
	.4byte lbl_8065A518
	.4byte 0
	.4byte lbl_8065A520
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80228218
lbl_80228218:

	# ROM: 0x225218
	.4byte lbl_8065A5B0
	.4byte 0
	.4byte 0

.global lbl_80228224
lbl_80228224:

	# ROM: 0x225224
	.4byte lbl_8065A5B8
	.4byte 0
	.4byte cHeadTrack____dt_void__N43

.global lbl_80228230
lbl_80228230:

	# ROM: 0x225230
	.4byte lbl_8065A5C0
	.4byte 0
	.4byte 0

.global lbl_8022823C
lbl_8022823C:

	# ROM: 0x22523C
	.4byte lbl_8065A5C8
	.4byte 0
	.4byte FormationOffensive____dt_void__N28
	.4byte zz_8019e8bc_
	.4byte zz_8019e864_
	.4byte zz_8019e5dc_

.global lbl_80228254
lbl_80228254:

	# ROM: 0x225254
	.4byte lbl_8065A5D0
	.4byte 0
	.4byte MenuList_19TLComponentInstance_____dt_void__N2

.global lbl_80228260
lbl_80228260:

	# ROM: 0x225260
	.4byte lbl_8065A5D8
	.4byte 0
	.4byte cHeadTrack____dt_void__N44
	.4byte 0x30303030

.global lbl_80228270
lbl_80228270:

	# ROM: 0x225270
	.4byte zz_800d47f4_
	.4byte 0
	.4byte 0

.global switchdataD_8022827c
switchdataD_8022827c:

	# ROM: 0x22527C
	.4byte func_800C1388
	.4byte lbl_800C0574
	.4byte lbl_800C05E4
	.4byte lbl_800C0698
	.4byte func_800C1388
	.4byte lbl_800C06F0
	.4byte lbl_800C083C
	.4byte lbl_800C083C
	.4byte lbl_800C122C
	.4byte lbl_800C1260
	.4byte lbl_800C12D0

.global switchdataD_802282a8
switchdataD_802282a8:

	# ROM: 0x2252A8
	.4byte func_800C35D0
	.4byte lbl_800C2F94
	.4byte lbl_800C3038
	.4byte lbl_800C30E8
	.4byte lbl_800C30FC
	.4byte lbl_800C31E4
	.4byte lbl_800C335C
	.4byte lbl_800C33C8
	.4byte lbl_800C34A0
	.4byte lbl_800C3578

.global switchdataD_802282d0
switchdataD_802282d0:

	# ROM: 0x2252D0
	.4byte func_800C4448
	.4byte lbl_800C3ACC
	.4byte func_800C4448
	.4byte lbl_800C3B94
	.4byte lbl_800C3C34
	.4byte func_800C4448
	.4byte lbl_800C3D30
	.4byte lbl_800C3DD0
	.4byte lbl_800C3E70
	.4byte lbl_800C3EB4
	.4byte lbl_800C3F10
	.4byte lbl_800C3FD8
	.4byte lbl_800C4034
	.4byte lbl_800C40B4
	.4byte lbl_800C4114
	.4byte lbl_800C42C4
	.4byte lbl_800C438C
	.4byte lbl_800C43AC

.global switchdataD_80228318
switchdataD_80228318:

	# ROM: 0x225318
	.4byte func_800C7768
	.4byte lbl_800C5BF4
	.4byte lbl_800C5FEC
	.4byte lbl_800C64EC
	.4byte lbl_800C6CCC
	.4byte lbl_800C6D10
	.4byte lbl_800C729C
	.4byte lbl_800C73E4
	.4byte lbl_800C7424
	.4byte lbl_800C74F8
	.4byte lbl_800C7658
	.4byte lbl_800C76B4

.global switchdataD_80228348
switchdataD_80228348:

	# ROM: 0x225348
	.4byte func_800C9B4C
	.4byte lbl_800C7C20
	.4byte lbl_800C8058
	.4byte lbl_800C8498
	.4byte lbl_800C8C30
	.4byte lbl_800C8C74
	.4byte lbl_800C923C
	.4byte lbl_800C9438
	.4byte lbl_800C9634
	.4byte lbl_800C9758
	.4byte lbl_800C9984
	.4byte lbl_800C9AF4

.global switchdataD_80228378
switchdataD_80228378:

	# ROM: 0x225378
	.4byte func_800CBD78
	.4byte lbl_800CA3C4
	.4byte lbl_800CA41C
	.4byte lbl_800CA41C
	.4byte lbl_800CA760
	.4byte lbl_800CA7DC
	.4byte lbl_800CA8A0
	.4byte lbl_800CAC5C
	.4byte lbl_800CACD0
	.4byte lbl_800CB878
	.4byte lbl_800CBB58
	.4byte lbl_800CAD00
	.4byte lbl_800CB8A8
	.4byte lbl_800CBB88
	.4byte lbl_800CAD30
	.4byte lbl_800CB8D8
	.4byte lbl_800CBBB8
	.4byte lbl_800CA41C
	.4byte lbl_800CBCB4
	.4byte lbl_800CBD18

.global switchdataD_802283c8
switchdataD_802283c8:

	# ROM: 0x2253C8
	.4byte lbl_800CA260
	.4byte func_800CA38C
	.4byte func_800CA38C
	.4byte func_800CA38C
	.4byte func_800CA38C
	.4byte func_800CA38C
	.4byte lbl_800CA274
	.4byte func_800CA38C
	.4byte func_800CA38C
	.4byte lbl_800CA274
	.4byte func_800CA38C
	.4byte func_800CA38C
	.4byte lbl_800CA274
	.4byte func_800CA38C
	.4byte lbl_800CA260
	.4byte lbl_800CA24C

.global switchdataD_80228408
switchdataD_80228408:

	# ROM: 0x225408
	.4byte func_800CDA7C
	.4byte lbl_800CBE40
	.4byte lbl_800CD360
	.4byte func_800CC9E8
	.4byte lbl_800CC468
	.4byte lbl_800CD5A4
	.4byte lbl_800CD684
	.4byte lbl_800CD684
	.4byte lbl_800CD7A4
	.4byte lbl_800CD7E4
	.4byte lbl_800CD87C
	.4byte lbl_800CDA24

.global switchdataD_80228438
switchdataD_80228438:

	# ROM: 0x225438
	.4byte func_800D0D18
	.4byte lbl_800CED9C
	.4byte lbl_800CEFB4
	.4byte lbl_800CF0C4
	.4byte lbl_800CF360
	.4byte lbl_800CF8F4
	.4byte lbl_800CFB08
	.4byte lbl_800CFD28
	.4byte lbl_800CFF1C
	.4byte func_800D0D18
	.4byte lbl_800D00B0
	.4byte lbl_800D0248
	.4byte lbl_800D040C
	.4byte lbl_800D050C
	.4byte lbl_800D06D0
	.4byte lbl_800D093C
	.4byte lbl_800D0A04
	.4byte lbl_800D0B40
	.4byte lbl_800D0A04
	.4byte lbl_800D0BC4
	.4byte lbl_800D0CA4

.global switchdataD_8022848c
switchdataD_8022848c:

	# ROM: 0x22548C
	.4byte func_800D3A38
	.4byte lbl_800D0FF4
	.4byte func_800D11B8
	.4byte lbl_800D11F8
	.4byte lbl_800D144C
	.4byte lbl_800D16CC
	.4byte lbl_800D17CC
	.4byte lbl_800D1840
	.4byte lbl_800D1840
	.4byte lbl_800D1840
	.4byte lbl_800D191C
	.4byte lbl_800D1B0C
	.4byte lbl_800D1C58
	.4byte lbl_800D1E84
	.4byte lbl_800D1FB8
	.4byte func_800D3A38
	.4byte lbl_800D20B8
	.4byte lbl_800D221C
	.4byte lbl_800D22D8
	.4byte lbl_800D2394
	.4byte lbl_800D24CC
	.4byte lbl_800D2500
	.4byte lbl_800D2538
	.4byte lbl_800D26C8
	.4byte lbl_800D2748
	.4byte lbl_800D277C
	.4byte lbl_800D27B4
	.4byte lbl_800D28E4
	.4byte lbl_800D2968
	.4byte lbl_800D2A18
	.4byte lbl_800D2A94
	.4byte lbl_800D2C1C
	.4byte func_800D3A38
	.4byte lbl_800D2D78
	.4byte lbl_800D2E40
	.4byte lbl_800D2E4C
	.4byte lbl_800D32D4

.global lbl_80228520
lbl_80228520:

	# ROM: 0x225520
	.4byte lbl_8065A5E0
	.4byte 0
	.4byte 0

.global lbl_8022852C
lbl_8022852C:

	# ROM: 0x22552C
	.4byte lbl_8065A5E0
	.4byte 0
	.4byte lbl_8065A5E8
	.4byte 0
	.4byte 0

.global lbl_80228540
lbl_80228540:

	# ROM: 0x225540
	.4byte lbl_8065A5E0
	.4byte 0
	.4byte lbl_8065A5E8
	.4byte 0
	.4byte lbl_8065A5F0
	.4byte 0
	.4byte 0

.global lbl_8022855C
lbl_8022855C:

	# ROM: 0x22555C
	.4byte lbl_8065A5E0
	.4byte 0
	.4byte lbl_8065A5E8
	.4byte 0
	.4byte lbl_8065A5F0
	.4byte 0
	.4byte lbl_8065A5F8
	.4byte 0
	.4byte 0

.global lbl_80228580
lbl_80228580:

	# ROM: 0x225580
	.4byte lbl_8065A5E0
	.4byte 0
	.4byte lbl_8065A5E8
	.4byte 0
	.4byte lbl_8065A5F0
	.4byte 0
	.4byte lbl_8065A5F8
	.4byte 0
	.4byte lbl_8065A600
	.4byte 0
	.4byte 0

.global lbl_802285AC
lbl_802285AC:

	# ROM: 0x2255AC
	.4byte lbl_8065A608
	.4byte 0
	.4byte PhysicsSphere____dt_void__N8
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800d7c60_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800d7cfc_
	.4byte zz_800d7cc8_
	.4byte cPlayer__PostPhysicsUpdate_void__N17
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800d55bc_
	.4byte zz_80090c84_
	.4byte zz_800d5580_
	.4byte zz_800a7c44_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800d552c_
	.4byte zz_800bb728_
	.4byte GXInitTexObjUserData_N13

.global lbl_80228700
lbl_80228700:

	# ROM: 0x225700
	.4byte lbl_8065A5E0
	.4byte 0
	.4byte lbl_8065A5E8
	.4byte 0
	.4byte lbl_8065A5F0
	.4byte 0
	.4byte lbl_8065A5F8
	.4byte 0
	.4byte lbl_8065A600
	.4byte 0
	.4byte 0

.global lbl_8022872C
lbl_8022872C:

	# ROM: 0x22572C
	.4byte lbl_8065A610
	.4byte 0
	.4byte PhysicsSphere____dt_void__N7
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800d7c60_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800d6f98_
	.4byte zz_800d7cc8_
	.4byte cPlayer__PostPhysicsUpdate_void__N17
	.4byte zz_800d6ac0_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800d5ff0_
	.4byte zz_80090c84_
	.4byte zz_800d5580_
	.4byte zz_800a7c44_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800d552c_
	.4byte zz_800bb728_
	.4byte GXInitTexObjUserData_N13

.global lbl_80228880
lbl_80228880:

	# ROM: 0x225880
	.4byte lbl_8065A5E0
	.4byte 0
	.4byte lbl_8065A5E8
	.4byte 0
	.4byte lbl_8065A5F0
	.4byte 0
	.4byte lbl_8065A5F8
	.4byte 0
	.4byte lbl_8065A600
	.4byte 0
	.4byte 0

.global lbl_802288AC
lbl_802288AC:

	# ROM: 0x2258AC
	.4byte lbl_8065A618
	.4byte 0
	.4byte PhysicsSphere____dt_void__N6
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800d7c60_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800d7cfc_
	.4byte zz_800d7cc8_
	.4byte cPlayer__PostPhysicsUpdate_void__N17
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800d6fe8_
	.4byte zz_80090c84_
	.4byte zz_800d5580_
	.4byte zz_800a7c44_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800d552c_
	.4byte zz_800bb728_
	.4byte GXInitTexObjUserData_N13

.global lbl_80228A00
lbl_80228A00:

	# ROM: 0x225A00
	.4byte lbl_8065A5E0
	.4byte 0
	.4byte lbl_8065A5E8
	.4byte 0
	.4byte lbl_8065A5F0
	.4byte 0
	.4byte lbl_8065A5F8
	.4byte 0
	.4byte lbl_8065A600
	.4byte 0
	.4byte 0

.global lbl_80228A2C
lbl_80228A2C:

	# ROM: 0x225A2C
	.4byte lbl_8065A620
	.4byte 0
	.4byte PhysicsSphere____dt_void__N4
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800d7c60_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800d7cfc_
	.4byte zz_800d7cc8_
	.4byte cPlayer__PostPhysicsUpdate_void__N17
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800d7668_
	.4byte zz_80090c84_
	.4byte zz_800d5580_
	.4byte zz_800a7c44_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800d552c_
	.4byte zz_800bb728_
	.4byte GXInitTexObjUserData_N13

.global lbl_80228B80
lbl_80228B80:

	# ROM: 0x225B80
	.4byte lbl_8065A600
	.4byte 0
	.4byte PhysicsSphere____dt_void__N5
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800d7c60_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800d7cfc_
	.4byte zz_800d7cc8_
	.4byte cPlayer__PostPhysicsUpdate_void__N17
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80090ed4_
	.4byte zz_80090c84_
	.4byte zz_800d5580_
	.4byte zz_800a7c44_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800d552c_
	.4byte zz_800bb728_
	.4byte GXInitTexObjUserData_N13
	.4byte 0x30303030

.global lbl_80228CD8
lbl_80228CD8:

	# ROM: 0x225CD8
	.4byte 0
	.4byte 0xBE4CCCCD
	.4byte 0

.global lbl_80228CE4
lbl_80228CE4:

	# ROM: 0x225CE4
	.4byte lbl_8065A628
	.4byte 0
	.4byte 0

.global lbl_80228CF0
lbl_80228CF0:

	# ROM: 0x225CF0
	.4byte lbl_8065A628
	.4byte 0
	.4byte lbl_8065A630
	.4byte 0
	.4byte 0

.global lbl_80228D04
lbl_80228D04:

	# ROM: 0x225D04
	.4byte lbl_8065A628
	.4byte 0
	.4byte lbl_8065A630
	.4byte 0
	.4byte lbl_8065A638
	.4byte 0
	.4byte 0

.global lbl_80228D20
lbl_80228D20:

	# ROM: 0x225D20
	.4byte lbl_8065A628
	.4byte 0
	.4byte lbl_8065A630
	.4byte 0
	.4byte lbl_8065A638
	.4byte 0
	.4byte lbl_8065A640
	.4byte 0
	.4byte 0

.global lbl_80228D44
lbl_80228D44:

	# ROM: 0x225D44
	.4byte lbl_8065A648
	.4byte 0
	.4byte PhysicsSphere____dt_void__N3
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800d7fe4_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte DBClose_N24
	.4byte zz_800d8068_
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800d7f84_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800d7f24_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global lbl_80228E8C
lbl_80228E8C:

	# ROM: 0x225E8C
	.4byte lbl_8065A628
	.4byte 0
	.4byte lbl_8065A630
	.4byte 0
	.4byte lbl_8065A638
	.4byte 0
	.4byte lbl_8065A640
	.4byte 0
	.4byte 0

.global lbl_80228EB0
lbl_80228EB0:

	# ROM: 0x225EB0
	.4byte lbl_8065A650
	.4byte 0
	.4byte zz_800bcc4c_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800d93c8_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800d9a84_
	.4byte zz_800d9a54_
	.4byte zz_800d9518_
	.4byte zz_800d9414_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800d83cc_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800d8358_
	.4byte NSNMessengerScene__SceneCreated_void__N8
	.4byte zz_800d8184_
	.4byte zz_8009056c_
	.4byte zz_800d8138_
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_800d80e4_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global lbl_80228FF8
lbl_80228FF8:

	# ROM: 0x225FF8
	.4byte 0x00000002
	.4byte 0x41900000
	.4byte 0x420C0000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF040000
	.4byte 0x00000003
	.4byte 0x41600000
	.4byte 0x41D80000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF040000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229040
lbl_80229040:

	# ROM: 0x226040
	.4byte lbl_8065A658
	.4byte 0
	.4byte 0

.global lbl_8022904C
lbl_8022904C:

	# ROM: 0x22604C
	.4byte lbl_8065A658
	.4byte 0
	.4byte lbl_8065A660
	.4byte 0
	.4byte 0

.global lbl_80229060
lbl_80229060:

	# ROM: 0x226060
	.4byte lbl_8065A658
	.4byte 0
	.4byte lbl_8065A660
	.4byte 0
	.4byte lbl_8065A668
	.4byte 0
	.4byte 0

.global lbl_8022907C
lbl_8022907C:

	# ROM: 0x22607C
	.4byte lbl_8065A658
	.4byte 0
	.4byte lbl_8065A660
	.4byte 0
	.4byte lbl_8065A668
	.4byte 0
	.4byte lbl_8065A670
	.4byte 0
	.4byte 0

.global lbl_802290A0
lbl_802290A0:

	# ROM: 0x2260A0
	.4byte lbl_8065A678
	.4byte 0
	.4byte PhysicsSphere____dt_void__N9
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800dd56c_
	.4byte DBClose_N24
	.4byte zz_800dd504_
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800dd43c_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800dd38c_
	.4byte 0x30303030

.global lbl_802291F0
lbl_802291F0:

	# ROM: 0x2261F0
	.4byte lbl_8065A680
	.4byte 0
	.4byte 0

.global lbl_802291FC
lbl_802291FC:

	# ROM: 0x2261FC
	.4byte lbl_8065A680
	.4byte 0
	.4byte lbl_8065A688
	.4byte 0
	.4byte 0

.global lbl_80229210
lbl_80229210:

	# ROM: 0x226210
	.4byte lbl_8065A680
	.4byte 0
	.4byte lbl_8065A688
	.4byte 0
	.4byte lbl_8065A690
	.4byte 0
	.4byte 0

.global lbl_8022922C
lbl_8022922C:

	# ROM: 0x22622C
	.4byte lbl_8065A680
	.4byte 0
	.4byte lbl_8065A688
	.4byte 0
	.4byte lbl_8065A690
	.4byte 0
	.4byte lbl_8065A698
	.4byte 0
	.4byte 0

.global lbl_80229250
lbl_80229250:

	# ROM: 0x226250
	.4byte lbl_8065A6A0
	.4byte 0
	.4byte PhysicsSphere____dt_void__N10
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte sndAuxCallbackPrepareDelay
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800dd694_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte DBClose_N24
	.4byte zz_800de060_
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800ddb8c_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_800dd96c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_800dd600_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global lbl_80229398
lbl_80229398:

	# ROM: 0x226398
	.4byte lbl_8065A680
	.4byte 0
	.4byte lbl_8065A688
	.4byte 0
	.4byte lbl_8065A690
	.4byte 0
	.4byte lbl_8065A698
	.4byte 0
	.4byte 0

.global lbl_802293BC
lbl_802293BC:

	# ROM: 0x2263BC
	.4byte lbl_8065A680
	.4byte 0
	.4byte lbl_8065A688
	.4byte 0
	.4byte lbl_8065A690
	.4byte 0
	.4byte lbl_8065A698
	.4byte 0
	.4byte lbl_8065A6A8
	.4byte 0
	.4byte 0

.global lbl_802293E8
lbl_802293E8:

	# ROM: 0x2263E8
	.4byte lbl_8065A6B0
	.4byte 0
	.4byte PhysicsSphere____dt_void__N11
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte sndAuxCallbackPrepareDelay_N2
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800de7f4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte zz_800e2300_
	.4byte zz_800df9a0_
	.4byte zz_800df6f8_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800df588_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800deca8_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte handleSpecialCase
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_800de608_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_800de424_
	.4byte zz_8008a604_
	.4byte zz_800de14c_
	.4byte DBClose
	.4byte zz_800dfb24_

.global lbl_80229534
lbl_80229534:

	# ROM: 0x226534
	.4byte lbl_8065A6A8
	.4byte 0
	.4byte PhysicsSphere____dt_void__N12
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte zz_800e2300_
	.4byte zz_800928e8_
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80090ed4_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte CBGetBytesAvailableForRead_N16

.global lbl_80229680
lbl_80229680:

	# ROM: 0x226680
	.4byte lbl_8065A680
	.4byte 0
	.4byte lbl_8065A688
	.4byte 0
	.4byte lbl_8065A690
	.4byte 0
	.4byte lbl_8065A698
	.4byte 0
	.4byte 0

.global lbl_802296A4
lbl_802296A4:

	# ROM: 0x2266A4
	.4byte lbl_8065A6B8
	.4byte 0
	.4byte zz_800e239c_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800e0f40_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800e1168_
	.4byte zz_800e1138_
	.4byte zz_800e10d8_
	.4byte zz_800e0f8c_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800dffd4_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800dff5c_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_800dff14_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_800dfd24_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_800dfb68_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_800dfc68_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose

.global lbl_802297EC
lbl_802297EC:

	# ROM: 0x2267EC
	.4byte lbl_8065A680
	.4byte 0
	.4byte lbl_8065A688
	.4byte 0
	.4byte lbl_8065A690
	.4byte 0
	.4byte lbl_8065A698
	.4byte 0
	.4byte lbl_8065A6A8
	.4byte 0
	.4byte 0

.global lbl_80229818
lbl_80229818:

	# ROM: 0x226818
	.4byte lbl_8065A6C0
	.4byte 0
	.4byte PhysicsSphere____dt_void__N13
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte zz_800e2300_
	.4byte zz_800e1f30_
	.4byte zz_800e1e60_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800e1980_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_800e1440_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_800e13c4_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800e20f8_

.global lbl_80229964
lbl_80229964:

	# ROM: 0x226964
	.4byte lbl_8065A680
	.4byte 0
	.4byte lbl_8065A688
	.4byte 0
	.4byte lbl_8065A690
	.4byte 0
	.4byte lbl_8065A698
	.4byte 0
	.4byte lbl_8065A6A8
	.4byte 0
	.4byte 0

.global lbl_80229990
lbl_80229990:

	# ROM: 0x226990
	.4byte lbl_8065A6C8
	.4byte 0
	.4byte PhysicsSphere____dt_void__N14
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte zz_800e2300_
	.4byte zz_800928e8_
	.4byte zz_800e213c_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80090ed4_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80025a48_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_8008a6c0_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800e21fc_
	.4byte 0x30303030

.global lbl_80229AE0
lbl_80229AE0:

	# ROM: 0x226AE0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_80229B48
lbl_80229B48:

	# ROM: 0x226B48
	.4byte 0x00020000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000004B0
	.4byte 0x00001388
	.4byte 0x000004B0
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229B88
lbl_80229B88:

	# ROM: 0x226B88
	.4byte 0x00020000
	.4byte 0
	.4byte 0x00000205
	.4byte 0
	.4byte 0
	.4byte 0x000004C0
	.4byte 0x0000036E
	.4byte 0x000004C0
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229BC8
lbl_80229BC8:

	# ROM: 0x226BC8
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFEDD6
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFCA18
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFA722
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFF9048
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00000A5A
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229C68
lbl_80229C68:

	# ROM: 0x226C68
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFEDD6
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFCA18
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFA722
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229CE8
lbl_80229CE8:

	# ROM: 0x226CE8
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFEDD6
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFCA18
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFACCC
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001388
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229D68
lbl_80229D68:

	# ROM: 0x226D68
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFEDD6
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFCA18
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFB370
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00000A5A
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229DE8
lbl_80229DE8:

	# ROM: 0x226DE8
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFEDD6
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFCA18
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229E48
lbl_80229E48:

	# ROM: 0x226E48
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFEDD6
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFCFC2
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001388
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229EA8
lbl_80229EA8:

	# ROM: 0x226EA8
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFEDD6
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFD666
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00000A5A
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229F08
lbl_80229F08:

	# ROM: 0x226F08
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFEDD6
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001DE2
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229F48
lbl_80229F48:

	# ROM: 0x226F48
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFF380
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00001388
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229F88
lbl_80229F88:

	# ROM: 0x226F88
	.4byte 0x00020000
	.4byte 0
	.4byte 0x000003E8
	.4byte 0xFFFFFA24
	.4byte 0
	.4byte 0x00000258
	.4byte 0x00000096
	.4byte 0x00000A5A
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80229FC8
lbl_80229FC8:

	# ROM: 0x226FC8
	.4byte 0x00020000
	.4byte 0
	.4byte 0x00000A04
	.4byte 0x00000006
	.4byte 0
	.4byte 0x0000025C
	.4byte 0x00000B0B
	.4byte 0x00000079
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022A008
lbl_8022A008:

	# ROM: 0x227008
	.4byte lbl_80229FC8
	.4byte lbl_80229F88
	.4byte lbl_80229F48
	.4byte lbl_80229F08
	.4byte lbl_80229EA8
	.4byte lbl_80229E48
	.4byte lbl_80229DE8
	.4byte lbl_80229D68
	.4byte lbl_80229CE8
	.4byte lbl_80229C68
	.4byte lbl_80229BC8

.global lbl_8022A034
lbl_8022A034:

	# ROM: 0x227034
	.4byte 0x00000007
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00000190
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e5a98_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e5688_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e54e0_

.global lbl_8022A088
lbl_8022A088:

	# ROM: 0x227088
	.4byte lbl_8065A6D8
	.4byte 0
	.4byte 0

.global lbl_8022A094
lbl_8022A094:

	# ROM: 0x227094
	.4byte lbl_8065A6D8
	.4byte 0
	.4byte lbl_8065A6E0
	.4byte 0
	.4byte 0

.global lbl_8022A0A8
lbl_8022A0A8:

	# ROM: 0x2270A8
	.4byte lbl_8065A6D8
	.4byte 0
	.4byte lbl_8065A6E0
	.4byte 0
	.4byte lbl_8065A6E8
	.4byte 0
	.4byte 0

.global lbl_8022A0C4
lbl_8022A0C4:

	# ROM: 0x2270C4
	.4byte lbl_8065A6D8
	.4byte 0
	.4byte lbl_8065A6E0
	.4byte 0
	.4byte lbl_8065A6E8
	.4byte 0
	.4byte lbl_8065A6F0
	.4byte 0
	.4byte 0

.global lbl_8022A0E8
lbl_8022A0E8:

	# ROM: 0x2270E8
	.4byte lbl_8065A6F8
	.4byte 0
	.4byte PhysicsSphere____dt_void__N15
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte DBClose_N24
	.4byte zz_800e6410_
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800e5e78_
	.4byte zz_80090c84_
	.4byte zz_800e51bc_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte zz_800e4e58_
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_800e3af4_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte zz_800e2eac_
	.4byte zz_800e322c_
	.4byte DBClose_N50
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800e3050_
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022A240
lbl_8022A240:

	# ROM: 0x227240
	.4byte lbl_8065A700
	.4byte 0
	.4byte 0
	.4byte lbl_8065A700
	.4byte 0
	.4byte lbl_8065A708
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022A318
lbl_8022A318:

	# ROM: 0x227318
	.4byte lbl_8065A710
	.4byte 0
	.4byte 0

.global lbl_8022A324
lbl_8022A324:

	# ROM: 0x227324
	.4byte lbl_8065A710
	.4byte 0
	.4byte lbl_8065A718
	.4byte 0
	.4byte 0

.global lbl_8022A338
lbl_8022A338:

	# ROM: 0x227338
	.4byte lbl_8065A720
	.4byte 0
	.4byte zz_800e6818_
	.4byte DBClose_N10
	.4byte zz_800e64a8_
	.4byte zz_800e6790_
	.4byte DBClose_N11
	.4byte DBClose_N12
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N22
	.4byte gdev_cc_shutdown_N23
	.4byte J3DAnmCluster__getWeight_unsigned_N3
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5
	.4byte Nis__Offset_
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30303030

.global lbl_8022A408
lbl_8022A408:

	# ROM: 0x227408
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_8022A470
lbl_8022A470:

	# ROM: 0x227470
	.4byte 0
	.4byte 0
	.4byte 0x00000226
	.4byte 0
	.4byte 0
	.4byte 0x00000200
	.4byte 0x00000200
	.4byte 0x00000200
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022A4B0
lbl_8022A4B0:

	# ROM: 0x2274B0
	.4byte 0
	.4byte 0
	.4byte 0x00000100
	.4byte 0xFFFFFF2C
	.4byte 0
	.4byte 0x00000200
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022A4F0
lbl_8022A4F0:

	# ROM: 0x2274F0
	.4byte 0
	.4byte 0
	.4byte 0x00000100
	.4byte 0
	.4byte 0
	.4byte 0x00000200
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022A530
lbl_8022A530:

	# ROM: 0x227530
	.4byte lbl_8022A470
	.4byte lbl_8022A4B0
	.4byte lbl_8022A4F0

.global lbl_8022A53C
lbl_8022A53C:

	# ROM: 0x22753C
	.4byte 0x00000002
	.4byte 0x41900000
	.4byte 0x42100000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF040000
	.4byte 0x00000003
	.4byte 0x41600000
	.4byte 0x41D80000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF040000
	.4byte 0x00000011
	.4byte 0x41300000
	.4byte 0x41B00000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF040000
	.4byte 0x00000012
	.4byte 0x40A00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0011000D
	.4byte 0xFF040000
	.4byte 0x0000000F
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0011001C
	.4byte 0xFF000000
	.4byte 0x00000007
	.4byte 0x41E00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00110028
	.4byte 0xFF000000
	.4byte 0x00000028
	.4byte 0x41900000
	.4byte 0x42100000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022A5FC
lbl_8022A5FC:

	# ROM: 0x2275FC
	.4byte 0x00000002
	.4byte 0x41900000
	.4byte 0x42100000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF040000
	.4byte 0x00000003
	.4byte 0x41600000
	.4byte 0x41D80000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF040000
	.4byte 0x00000011
	.4byte 0x41300000
	.4byte 0x41B00000
	.4byte 0x00000001
	.4byte 0x0011000E
	.4byte 0xFF040000
	.4byte 0x00000012
	.4byte 0x40A00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0011000D
	.4byte 0xFF040000
	.4byte 0x0000000F
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0011001C
	.4byte 0xFF000000
	.4byte 0x00000007
	.4byte 0x41E00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00110028
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022A6A4
lbl_8022A6A4:

	# ROM: 0x2276A4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e86f8_

.global lbl_8022A6B0
lbl_8022A6B0:

	# ROM: 0x2276B0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e77f4_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e81a0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e7ddc_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e81a0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800e8564_

.global lbl_8022A6EC
lbl_8022A6EC:

	# ROM: 0x2276EC
	.4byte lbl_8065A728
	.4byte 0
	.4byte 0

.global lbl_8022A6F8
lbl_8022A6F8:

	# ROM: 0x2276F8
	.4byte lbl_8065A728
	.4byte 0
	.4byte lbl_8065A730
	.4byte 0
	.4byte 0

.global lbl_8022A70C
lbl_8022A70C:

	# ROM: 0x22770C
	.4byte lbl_8065A728
	.4byte 0
	.4byte lbl_8065A730
	.4byte 0
	.4byte lbl_8065A738
	.4byte 0
	.4byte 0

.global lbl_8022A728
lbl_8022A728:

	# ROM: 0x227728
	.4byte lbl_8065A728
	.4byte 0
	.4byte lbl_8065A730
	.4byte 0
	.4byte lbl_8065A738
	.4byte 0
	.4byte lbl_8065A740
	.4byte 0
	.4byte 0

.global lbl_8022A74C
lbl_8022A74C:

	# ROM: 0x22774C
	.4byte lbl_8065A748
	.4byte 0
	.4byte zz_800e6950_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800929c4_
	.4byte DBClose_N24
	.4byte zz_800ea17c_
	.4byte zz_80091c80_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800e9b7c_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte zz_800e980c_
	.4byte DBClose_N44
	.4byte zz_8009047c_
	.4byte DBClose_N25
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_800e6fd0_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_800e6e78_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800e6a5c_

.global switchdataD_8022a898
switchdataD_8022a898:

	# ROM: 0x227898
	.4byte lbl_800E7184
	.4byte lbl_800E72B4
	.4byte lbl_800E72D8
	.4byte lbl_800E7304
	.4byte lbl_800E7344
	.4byte lbl_800E7388
	.4byte lbl_800E7398

.global switchdataD_8022a8b4
switchdataD_8022a8b4:

	# ROM: 0x2278B4
	.4byte lbl_800E8904
	.4byte lbl_800E8B28
	.4byte lbl_800E8C6C
	.4byte lbl_800E8D68
	.4byte func_800E97C8
	.4byte func_800E97C8
	.4byte func_800E97C8
	.4byte func_800E97C8
	.4byte func_800E97C8
	.4byte func_800E97C8
	.4byte lbl_800E8FEC
	.4byte lbl_800E906C
	.4byte lbl_800E93B8
	.4byte lbl_800E9528
	.4byte lbl_800E95EC

.global switchdataD_8022a8f0
switchdataD_8022a8f0:

	# ROM: 0x2278F0
	.4byte lbl_800E9BF4
	.4byte lbl_800E9D74
	.4byte lbl_800E9D74
	.4byte lbl_800EA0D8
	.4byte lbl_800EA0D8
	.4byte lbl_800EA0D8
	.4byte lbl_800E9EF4
	.4byte lbl_800EA0D8
	.4byte lbl_800EA0D8
	.4byte lbl_800EA0D8
	.4byte lbl_800EA0D8
	.4byte lbl_800EA0D8
	.4byte lbl_800EA0D8
	.4byte lbl_800EA048
	.4byte lbl_800EA090

.global lbl_8022A92C
lbl_8022A92C:

	# ROM: 0x22792C
	.4byte lbl_8065A750
	.4byte 0
	.4byte 0
	.4byte lbl_8065A750
	.4byte 0
	.4byte lbl_8065A758
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022AA10
lbl_8022AA10:

	# ROM: 0x227A10
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_8022AA78
lbl_8022AA78:

	# ROM: 0x227A78
	.4byte 0
	.4byte 0
	.4byte 0x00000087
	.4byte 0
	.4byte 0
	.4byte 0x000002F2
	.4byte 0x00000278
	.4byte 0x00000179
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000087
	.4byte 0
	.4byte 0
	.4byte 0x00000BC8
	.4byte 0x00000278
	.4byte 0x00000179
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8022AA78
	.4byte lbl_8022AA78
	.4byte lbl_8022AA78
	.4byte lbl_8022AA78
	.4byte lbl_8022AA78
	.4byte lbl_8022AA78
	.4byte lbl_8022AA78
	.4byte lbl_8022AA78
	.4byte 0
	.4byte 0x3E800000
	.4byte 0x3F000000
	.asciz "?&ff?@"
	.balign 4
	.4byte 0x3F59999A
	.4byte 0x3F59999A
	.4byte 0x3F59999A
	.4byte 0x3F666666
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0x3ECCCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.asciz "?333?"
	.balign 4
	.4byte 0

.global lbl_8022AB90
lbl_8022AB90:

	# ROM: 0x227B90
	.4byte 0x00000002
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000137
	.4byte 0xFF000000
	.4byte 0x0000000C
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000137
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte clearDataWhenConditionMet
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800efdb0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N52
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800ef958_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800ee050_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800edee4_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800ed2a4_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800ec91c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N51
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800ebe20_

.global lbl_8022AC50
lbl_8022AC50:

	# ROM: 0x227C50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022ACC8
lbl_8022ACC8:

	# ROM: 0x227CC8
	.4byte lbl_8065A760
	.4byte 0
	.4byte 0

.global lbl_8022ACD4
lbl_8022ACD4:

	# ROM: 0x227CD4
	.4byte lbl_8065A760
	.4byte 0
	.4byte lbl_8065A768
	.4byte 0
	.4byte 0

.global lbl_8022ACE8
lbl_8022ACE8:

	# ROM: 0x227CE8
	.4byte lbl_8065A760
	.4byte 0
	.4byte lbl_8065A768
	.4byte 0
	.4byte lbl_8065A770
	.4byte 0
	.4byte 0

.global lbl_8022AD04
lbl_8022AD04:

	# ROM: 0x227D04
	.4byte lbl_8065A760
	.4byte 0
	.4byte lbl_8065A768
	.4byte 0
	.4byte lbl_8065A770
	.4byte 0
	.4byte lbl_8065A778
	.4byte 0
	.4byte 0

.global lbl_8022AD28
lbl_8022AD28:

	# ROM: 0x227D28
	.4byte lbl_8065A780
	.4byte 0
	.4byte zz_800ea30c_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800f4868_
	.4byte zz_800f4818_
	.4byte zz_800f373c_
	.4byte zz_800f3898_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800f31e0_
	.4byte zz_80090c84_
	.4byte zz_800f3184_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte DBClose_N55
	.4byte zz_800f2e44_
	.4byte zz_800f29a4_
	.4byte DBClose_N44
	.4byte DBClose_N54
	.4byte DBClose_N53
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_800f2350_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_800f2454_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_800f2364_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800ea40c_

.global switchdataD_8022ae74
switchdataD_8022ae74:

	# ROM: 0x227E74
	.4byte lbl_800ED348
	.4byte lbl_800ED400
	.4byte lbl_800ED96C
	.4byte lbl_800EDA18
	.4byte lbl_800EDBBC
	.4byte lbl_800EDC34
	.4byte lbl_800EDE58
	.4byte func_800EDEA8
	.4byte func_800EDEA8
	.4byte func_800EDEA8
	.4byte lbl_800ED380

.global switchdataD_8022aea0
switchdataD_8022aea0:

	# ROM: 0x227EA0
	.4byte lbl_800EE19C
	.4byte lbl_800EE240
	.4byte lbl_800EE504
	.4byte lbl_800EE5B4
	.4byte lbl_800EE98C
	.4byte lbl_800EEA40
	.4byte lbl_800EEB18
	.4byte lbl_800EED4C
	.4byte lbl_800EEDB4
	.4byte func_800EF81C
	.4byte lbl_800EEED0
	.4byte lbl_800EEF78
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte lbl_800EF020
	.4byte lbl_800EF0C8
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte lbl_800EF1D4
	.4byte lbl_800EF224
	.4byte lbl_800EF398
	.4byte lbl_800EF4D0
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte func_800EF81C
	.4byte lbl_800EF5C0
	.4byte lbl_800EF670

.global switchdataD_8022af48
switchdataD_8022af48:

	# ROM: 0x227F48
	.4byte func_800F1AFC
	.4byte lbl_800F1768
	.4byte lbl_800F178C
	.4byte lbl_800F17D0
	.4byte lbl_800F1814
	.4byte lbl_800F182C
	.4byte lbl_800F1844
	.4byte lbl_800F1860
	.4byte lbl_800F1898
	.4byte lbl_800F18A8
	.4byte lbl_800F1984
	.4byte lbl_800F1A34
	.4byte lbl_800F1A40
	.4byte lbl_800F1A4C
	.4byte lbl_800F1A64
	.4byte lbl_800F1A80
	.4byte lbl_800F1AB8
	.4byte lbl_800F1AC4
	.4byte lbl_800F1AD0
	.4byte lbl_800F1ADC
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022AFA4
lbl_8022AFA4:

	# ROM: 0x227FA4
	.4byte lbl_8065A788
	.4byte 0
	.4byte 0
	.4byte lbl_8065A788
	.4byte 0
	.4byte lbl_8065A790
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022B088
lbl_8022B088:

	# ROM: 0x228088
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_8022B0F0
lbl_8022B0F0:

	# ROM: 0x2280F0
	.4byte 0
	.4byte 0
	.4byte 0x00000087
	.4byte 0
	.4byte 0
	.4byte 0x00000179
	.4byte 0x0000009E
	.4byte 0x00000179
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022B130
lbl_8022B130:

	# ROM: 0x228130
	.4byte 0
	.4byte 0
	.4byte 0x00000087
	.4byte 0
	.4byte 0
	.4byte 0x00000179
	.4byte 0x00000278
	.4byte 0x00000179
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022B170
lbl_8022B170:

	# ROM: 0x228170
	.4byte 0x00000002
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000137
	.4byte 0xFF000000
	.4byte 0x00000007
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000137
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N56
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800fc970_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800fc930_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800fa4b0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800f9aa0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800f9350_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800f8db8_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800f8634_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800f6408_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_800f5934_

.global lbl_8022B230
lbl_8022B230:

	# ROM: 0x228230
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022B2A8
lbl_8022B2A8:

	# ROM: 0x2282A8
	.4byte lbl_8065A7A0
	.4byte 0
	.4byte 0

.global lbl_8022B2B4
lbl_8022B2B4:

	# ROM: 0x2282B4
	.4byte lbl_8065A7A0
	.4byte 0
	.4byte lbl_8065A7A8
	.4byte 0
	.4byte 0

.global lbl_8022B2C8
lbl_8022B2C8:

	# ROM: 0x2282C8
	.4byte lbl_8065A7A0
	.4byte 0
	.4byte lbl_8065A7A8
	.4byte 0
	.4byte lbl_8065A7B0
	.4byte 0
	.4byte 0

.global lbl_8022B2E4
lbl_8022B2E4:

	# ROM: 0x2282E4
	.4byte lbl_8065A7A0
	.4byte 0
	.4byte lbl_8065A7A8
	.4byte 0
	.4byte lbl_8065A7B0
	.4byte 0
	.4byte lbl_8065A7B8
	.4byte 0
	.4byte 0

.global lbl_8022B308
lbl_8022B308:

	# ROM: 0x228308
	.4byte lbl_8065A7C0
	.4byte 0
	.4byte zz_800f49f0_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_800febb4_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_800ffebc_
	.4byte zz_800ffde0_
	.4byte zz_800fec24_
	.4byte zz_800fedd0_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_800fe17c_
	.4byte zz_80090c84_
	.4byte zz_800fdef0_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte DBClose_N60
	.4byte zz_800fdbbc_
	.4byte DBClose_N57
	.4byte DBClose_N44
	.4byte DBClose_N59
	.4byte DBClose_N58
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_800fd9ec_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_800fdabc_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_800fda00_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_800f4aac_

.global switchdataD_8022b454
switchdataD_8022b454:

	# ROM: 0x228454
	.4byte func_800F53DC
	.4byte lbl_800F5014
	.4byte lbl_800F5058
	.4byte lbl_800F51D4
	.4byte lbl_800F5218
	.4byte func_800F53DC
	.4byte func_800F53DC
	.4byte func_800F53DC
	.4byte func_800F53DC
	.4byte func_800F53DC
	.4byte lbl_800F5394

.global switchdataD_8022b480
switchdataD_8022b480:

	# ROM: 0x228480
	.4byte lbl_800F5640
	.4byte lbl_800F55CC
	.4byte lbl_800F55F8
	.4byte lbl_800F55F8
	.4byte lbl_800F5614
	.4byte lbl_800F5640
	.4byte lbl_800F55CC
	.4byte lbl_800F5640
	.4byte lbl_800F5614

.global switchdataD_8022b4a4
switchdataD_8022b4a4:

	# ROM: 0x2284A4
	.4byte lbl_800F59C0
	.4byte lbl_800F5BB4
	.4byte lbl_800F5CB0
	.4byte func_800F63E4
	.4byte func_800F63E4
	.4byte func_800F63E4
	.4byte func_800F63E4
	.4byte func_800F63E4
	.4byte func_800F63E4
	.4byte func_800F63E4
	.4byte lbl_800F5EE8
	.4byte lbl_800F6188
	.4byte lbl_800F6208
	.4byte func_800F63E4

.global switchdataD_8022b4dc
switchdataD_8022b4dc:

	# ROM: 0x2284DC
	.4byte lbl_800F6678
	.4byte lbl_800F6604
	.4byte lbl_800F6630
	.4byte lbl_800F6630
	.4byte lbl_800F664C
	.4byte lbl_800F6678
	.4byte lbl_800F6604
	.4byte lbl_800F6678
	.4byte lbl_800F664C

.global switchdataD_8022b500
switchdataD_8022b500:

	# ROM: 0x228500
	.4byte lbl_800F64B4
	.4byte lbl_800F6540
	.4byte lbl_800F6700
	.4byte func_800F83D8
	.4byte lbl_800F6B80
	.4byte lbl_800F6F50
	.4byte lbl_800F706C
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte lbl_800F7348
	.4byte lbl_800F74E4
	.4byte lbl_800F76D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte lbl_800F7874
	.4byte lbl_800F78E0
	.4byte lbl_800F79DC
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte lbl_800F7B78
	.4byte lbl_800F7BEC
	.4byte lbl_800F7E20
	.4byte lbl_800F7EFC
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte func_800F83D8
	.4byte lbl_800F7F18
	.4byte lbl_800F7FDC
	.4byte lbl_800F805C
	.4byte lbl_800F80B4
	.4byte lbl_800F832C
	.4byte lbl_800F83AC

.global switchdataD_8022b6a8
switchdataD_8022b6a8:

	# ROM: 0x2286A8
	.4byte lbl_800F9B40
	.4byte lbl_800F9CB0
	.4byte lbl_800F9E80
	.4byte lbl_800F9F00
	.4byte lbl_800FA0A4
	.4byte lbl_800FA308
	.4byte lbl_800FA388

.global switchdataD_8022b6c4
switchdataD_8022b6c4:

	# ROM: 0x2286C4
	.4byte lbl_800FB3E0
	.4byte lbl_800FB36C
	.4byte lbl_800FB398
	.4byte lbl_800FB398
	.4byte lbl_800FB3B4
	.4byte lbl_800FB3E0
	.4byte lbl_800FB36C
	.4byte lbl_800FB3E0
	.4byte lbl_800FB3B4

.global switchdataD_8022b6e8
switchdataD_8022b6e8:

	# ROM: 0x2286E8
	.4byte lbl_800FA5FC
	.4byte lbl_800FB2A8
	.4byte lbl_800FB6A4
	.4byte func_800FC8EC
	.4byte lbl_800FBB24
	.4byte lbl_800FBE64
	.4byte lbl_800FBFFC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte lbl_800FC2D8
	.4byte lbl_800FC4F0
	.4byte lbl_800FC754
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte lbl_800FA7E0
	.4byte lbl_800FAA00
	.4byte lbl_800FABFC
	.4byte lbl_800FAC68
	.4byte lbl_800FAD64
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte func_800FC8EC
	.4byte lbl_800FAF00
	.4byte lbl_800FAF74
	.4byte lbl_800FB1A8
	.4byte lbl_800FB284

.global switchdataD_8022b770
switchdataD_8022b770:

	# ROM: 0x228770
	.4byte lbl_800FCCA4
	.4byte lbl_800FCCB4
	.4byte lbl_800FCCAC
	.4byte lbl_800FCCA4
	.4byte lbl_800FCCB4
	.4byte lbl_800FCCA4
	.4byte lbl_800FCCB4
	.4byte lbl_800FCCA4
	.4byte lbl_800FCCAC
	.4byte lbl_800FCCB4
	.4byte lbl_800FCCA4

.global switchdataD_8022b79c
switchdataD_8022b79c:

	# ROM: 0x22879C
	.4byte func_800FD5CC
	.4byte lbl_800FCF3C
	.4byte lbl_800FCF70
	.4byte lbl_800FCFB4
	.4byte lbl_800FCFF8
	.4byte lbl_800FD010
	.4byte lbl_800FD028
	.4byte lbl_800FD044
	.4byte lbl_800FD07C
	.4byte lbl_800FD094
	.4byte lbl_800FD154
	.4byte lbl_800FD204
	.4byte lbl_800FD244
	.4byte func_800FD5CC
	.4byte func_800FD5CC
	.4byte func_800FD5CC
	.4byte func_800FD5CC
	.4byte func_800FD5CC
	.4byte func_800FD5CC
	.4byte func_800FD5CC
	.4byte func_800FD5CC
	.4byte lbl_800FD340
	.4byte func_800FD5CC
	.4byte lbl_800FD3A0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022B808
lbl_8022B808:

	# ROM: 0x228808
	.4byte lbl_8065A7C8
	.4byte 0
	.4byte 0
	.4byte lbl_8065A7C8
	.4byte 0
	.4byte lbl_8065A7D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30303030

.global lbl_8022B8F0
lbl_8022B8F0:

	# ROM: 0x2288F0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000087
	.4byte 0
	.4byte 0
	.4byte 0x00000179
	.4byte 0x0000009E
	.4byte 0x00000179
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000087
	.4byte 0
	.4byte 0
	.4byte 0x00000179
	.4byte 0x00000278
	.4byte 0x00000179
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022B9D8
lbl_8022B9D8:

	# ROM: 0x2289D8
	.4byte 0x00000002
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00160019
	.4byte 0xFF000000
	.4byte 0x00000008
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00160019
	.4byte 0xFF000000
	.4byte 0x00000009
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00160019
	.4byte 0xFF000000
	.4byte 0x0000000F
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00160019
	.4byte 0xFF000000
	.4byte 0x0000000E
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00160019
	.4byte 0xFF000000
	.4byte 0x00000018
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00160019
	.4byte 0xFF000000
	.4byte 0x0000001A
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00160019
	.4byte 0xFF000000
	.4byte 0x00000019
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00160019
	.4byte 0xFF000000
	.4byte 0x00000002
	.4byte 0x42200000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0016001A
	.4byte 0xFF000000
	.4byte 0x00000008
	.4byte 0x41700000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0016001A
	.4byte 0xFF000000
	.4byte 0x00000009
	.4byte 0x41700000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0016001A
	.4byte 0xFF000000
	.4byte 0x0000000F
	.4byte 0x41700000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0016001A
	.4byte 0xFF000000
	.4byte 0x0000000E
	.4byte 0x41700000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0016001A
	.4byte 0xFF000000
	.4byte 0x00000018
	.4byte 0x41A00000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0016001A
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80103ec0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80103b80_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80103b28_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8010162c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80100430_

.global lbl_8022BB7C
lbl_8022BB7C:

	# ROM: 0x228B7C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022BBB8
lbl_8022BBB8:

	# ROM: 0x228BB8
	.4byte lbl_8065A7D8
	.4byte 0
	.4byte 0

.global lbl_8022BBC4
lbl_8022BBC4:

	# ROM: 0x228BC4
	.4byte lbl_8065A7D8
	.4byte 0
	.4byte lbl_8065A7E0
	.4byte 0
	.4byte 0

.global lbl_8022BBD8
lbl_8022BBD8:

	# ROM: 0x228BD8
	.4byte lbl_8065A7D8
	.4byte 0
	.4byte lbl_8065A7E0
	.4byte 0
	.4byte lbl_8065A7E8
	.4byte 0
	.4byte 0

.global lbl_8022BBF4
lbl_8022BBF4:

	# ROM: 0x228BF4
	.4byte lbl_8065A7D8
	.4byte 0
	.4byte lbl_8065A7E0
	.4byte 0
	.4byte lbl_8065A7E8
	.4byte 0
	.4byte lbl_8065A7F0
	.4byte 0
	.4byte 0

.global lbl_8022BC18
lbl_8022BC18:

	# ROM: 0x228C18
	.4byte lbl_8065A7F8
	.4byte 0
	.4byte zz_80100264_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_80106924_
	.4byte zz_801068d4_
	.4byte zz_80106000_
	.4byte zz_80106038_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80105d58_
	.4byte zz_80090c84_
	.4byte DemoOverlay__SceneCreated_void__N3
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte cPlayer__PostPhysicsUpdate_void__N19
	.4byte cPlayer__PostPhysicsUpdate_void__N18
	.4byte DBClose_N61
	.4byte DBClose_N44
	.4byte DBClose_N63
	.4byte DBClose_N62
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_801051a0_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_8010535c_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_801051b4_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_801002dc_

.global switchdataD_8022bd64
switchdataD_8022bd64:

	# ROM: 0x228D64
	.4byte lbl_8010057C
	.4byte lbl_801009D4
	.4byte lbl_80100AD0
	.4byte lbl_80100C24
	.4byte lbl_80100FFC
	.4byte lbl_80101224
	.4byte lbl_80101320
	.4byte lbl_80101404
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte func_801015F8
	.4byte lbl_80101538

.global switchdataD_8022bde0
switchdataD_8022bde0:

	# ROM: 0x228DE0
	.4byte func_80105CB8
	.4byte lbl_80105864
	.4byte lbl_80105894
	.4byte lbl_801058D8
	.4byte lbl_80105924
	.4byte lbl_8010593C
	.4byte lbl_80105954
	.4byte lbl_80105970
	.4byte lbl_801059A8
	.4byte lbl_801059B4
	.4byte lbl_80105A74
	.4byte lbl_80105B24
	.4byte lbl_80105B38
	.4byte func_80105CB8
	.4byte func_80105CB8
	.4byte func_80105CB8
	.4byte lbl_80105B44
	.4byte lbl_80105B6C
	.4byte lbl_80105C40
	.4byte func_80105CB8
	.4byte lbl_80105C94
	.4byte func_80105CB8
	.4byte lbl_80105CA8
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022BE48
lbl_8022BE48:

	# ROM: 0x228E48
	.4byte lbl_8065A800
	.4byte 0
	.4byte 0
	.4byte lbl_8065A800
	.4byte 0
	.4byte lbl_8065A808
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30303030

.global lbl_8022BF30
lbl_8022BF30:

	# ROM: 0x228F30
	.4byte lbl_8065A810
	.4byte 0
	.4byte 0

.global lbl_8022BF3C
lbl_8022BF3C:

	# ROM: 0x228F3C
	.4byte lbl_8065A810
	.4byte 0
	.4byte lbl_8065A818
	.4byte 0
	.4byte 0

.global lbl_8022BF50
lbl_8022BF50:

	# ROM: 0x228F50
	.4byte lbl_8065A810
	.4byte 0
	.4byte lbl_8065A818
	.4byte 0
	.4byte lbl_8065A820
	.4byte 0
	.4byte 0

.global lbl_8022BF6C
lbl_8022BF6C:

	# ROM: 0x228F6C
	.4byte lbl_8065A810
	.4byte 0
	.4byte lbl_8065A818
	.4byte 0
	.4byte lbl_8065A820
	.4byte 0
	.4byte lbl_8065A828
	.4byte 0
	.4byte 0

.global lbl_8022BF90
lbl_8022BF90:

	# ROM: 0x228F90
	.4byte lbl_8065A830
	.4byte 0
	.4byte InitActor
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_801083f0_
	.4byte zz_80108014_
	.4byte zz_801081f0_
	.4byte zz_80107f18_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80107de0_
	.4byte zz_80090c84_
	.4byte zz_80107620_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte cPlayer__PostPhysicsUpdate_void__N20
	.4byte DBClose_N66
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80107084_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_801075e8_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_801070a4_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N65
	.4byte gdev_cc_shutdown_N9
	.4byte zz_80107548_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_80107750_
	.4byte 0
	.4byte 0
	.4byte zz_80106ca4_
	.4byte 0
	.4byte DBClose_N64
	.4byte GXGetTexObjWrapT_N5
	.4byte zz_80106be0_
	.4byte CBGetBytesAvailableForRead_N17
	.4byte zz_80106a98_
	.4byte J3DAnmCluster__getWeight_unsigned_N7
	.4byte J3DAnmCluster__getWeight_unsigned_N6
	.4byte J3DAnmCluster__getWeight_unsigned_N5
	.4byte J3DAnmCluster__getWeight_unsigned_N4

.global lbl_8022C110
lbl_8022C110:

	# ROM: 0x229110
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_8022C178
lbl_8022C178:

	# ROM: 0x229178
	.4byte 0x00000003
	.4byte 0x41300000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000B0003
	.4byte 0xFF000000
	.4byte 0x00000003
	.4byte 0x42540000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000B0003
	.4byte 0xFF000000
	.4byte 0x00000008
	.4byte 0x41300000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000B0003
	.4byte 0xFF000000
	.4byte 0x00000008
	.4byte 0x42540000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000B0003
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000B0003
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x41300000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000B0003
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022C220
lbl_8022C220:

	# ROM: 0x229220
	.4byte 0xC0000000
	.4byte 0x40000000
	.4byte 0x40000000
	.4byte 0xC0000000

.global lbl_8022C230
lbl_8022C230:

	# ROM: 0x229230
	.4byte 0xC0000000
	.4byte 0xC0000000
	.4byte 0x40000000
	.4byte 0x40000000
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N71
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_801151e0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80114cc8_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_801147c0_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_801146f8_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N70
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8011463c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80114540_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80114060_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80111a78_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_801115fc_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8010ff94_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8010f318_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8010d65c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8010d114_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8010ce80_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8010c304_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N69
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8010bc0c_
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N68

.global lbl_8022C330
lbl_8022C330:

	# ROM: 0x229330
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022C420
lbl_8022C420:

	# ROM: 0x229420
	.4byte lbl_8065A838
	.4byte 0
	.4byte 0

.global lbl_8022C42C
lbl_8022C42C:

	# ROM: 0x22942C
	.4byte lbl_8065A838
	.4byte 0
	.4byte lbl_8065A840
	.4byte 0
	.4byte 0

.global lbl_8022C440
lbl_8022C440:

	# ROM: 0x229440
	.4byte lbl_8065A838
	.4byte 0
	.4byte lbl_8065A840
	.4byte 0
	.4byte lbl_8065A848
	.4byte 0
	.4byte 0

.global lbl_8022C45C
lbl_8022C45C:

	# ROM: 0x22945C
	.4byte lbl_8065A838
	.4byte 0
	.4byte lbl_8065A840
	.4byte 0
	.4byte lbl_8065A848
	.4byte 0
	.4byte lbl_8065A850
	.4byte 0
	.4byte 0

.global lbl_8022C480
lbl_8022C480:

	# ROM: 0x229480
	.4byte lbl_8065A858
	.4byte 0
	.4byte zz_80108424_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObjectAndHandleSpecialCase
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_80108694_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte cCharacter__IsPlayingEffect__N3
	.4byte cPlayer__PostPhysicsUpdate_void__N21
	.4byte cCharacter__IsPlayingEffect__N2
	.4byte zz_8010a574_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80109e80_
	.4byte zz_80090c84_
	.4byte ProcessObjectWithFlagCheck
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte zz_80109008_
	.4byte DBClose_N44
	.4byte processTextureWithTLUTAndObject
	.4byte DBClose_N67
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80025748_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte OSGetStackPointer
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80108794_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N26
	.4byte gdev_cc_shutdown_N9
	.4byte zz_80108728_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_80108540_

.global switchdataD_8022c5cc
switchdataD_8022c5cc:

	# ROM: 0x2295CC
	.4byte func_8010B514
	.4byte lbl_8010B3CC
	.4byte lbl_8010B3FC
	.4byte lbl_8010B42C
	.4byte lbl_8010B470
	.4byte lbl_8010B4A8
	.4byte lbl_8010B4D8
	.4byte lbl_8010B4F0

.global switchdataD_8022c5ec
switchdataD_8022c5ec:

	# ROM: 0x2295EC
	.4byte lbl_8010D6D0
	.4byte lbl_8010DA60
	.4byte lbl_8010DF8C
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte lbl_8010E144
	.4byte lbl_8010E29C
	.4byte lbl_8010E664
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte func_8010EF54
	.4byte lbl_8010E824
	.4byte lbl_8010EB30
	.4byte lbl_8010EDA0

.global switchdataD_8022c648
switchdataD_8022c648:

	# ROM: 0x229648
	.4byte lbl_80110968
	.4byte lbl_80110A18
	.4byte lbl_80110A68
	.4byte lbl_80110A80
	.4byte lbl_80110A98
	.4byte lbl_80110AB0
	.4byte lbl_80110AC8
	.4byte lbl_80110AE0
	.4byte lbl_80110AF8
	.4byte lbl_80110B10

.global switchdataD_8022c670
switchdataD_8022c670:

	# ROM: 0x229670
	.4byte lbl_8011016C
	.4byte lbl_80110188
	.4byte lbl_801101A4
	.4byte lbl_801101C0
	.4byte lbl_801101DC
	.4byte lbl_801101F8
	.4byte lbl_80110214
	.4byte lbl_80110230
	.4byte lbl_8011024C

.global switchdataD_8022c694
switchdataD_8022c694:

	# ROM: 0x229694
	.4byte lbl_8010FFFC
	.4byte lbl_801103B8
	.4byte lbl_80110884
	.4byte lbl_80110C58
	.4byte func_801112F4
	.4byte lbl_80110D08
	.4byte lbl_8011106C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022C6D4
lbl_8022C6D4:

	# ROM: 0x2296D4
	.4byte lbl_8065A860
	.4byte 0
	.4byte 0
	.4byte lbl_8065A860
	.4byte 0
	.4byte lbl_8065A868
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A870
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30303030

.global lbl_8022C7E0
lbl_8022C7E0:

	# ROM: 0x2297E0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000004
	.4byte 0x41700000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000D000D
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x42700000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00000145
	.4byte 0xFF000000
	.4byte 0x00000006
	.4byte 0x41B00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000D000F
	.4byte 0xFF000000
	.4byte 0x0000000D
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000D000B
	.4byte 0xFF000000
	.4byte 0x0000000E
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000D000C
	.4byte 0xFF000000
	.4byte 0x0000000E
	.4byte 0x42500000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000D000E
	.4byte 0xFF000000
	.4byte 0x0000000F
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000D0011
	.4byte 0xFF000000
	.4byte 0x00000002
	.4byte 0x41E00000
	.4byte 0x42600000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x00000406
	.4byte 0x41E00000
	.4byte 0x42600000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x00000024
	.4byte 0x41E00000
	.4byte 0x42600000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x0000040D
	.4byte 0x41F00000
	.4byte 0x42700000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x0000040D
	.4byte 0x42B40000
	.4byte 0x42F00000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x0000040D
	.4byte 0x43160000
	.4byte 0x43200000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x0000040D
	.4byte 0x43340000
	.4byte 0x433E0000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x0000040D
	.4byte 0x43480000
	.4byte 0x43520000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x0000040D
	.4byte 0x43700000
	.4byte 0x437A0000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x0000040D
	.4byte 0x43820000
	.4byte 0x43870000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0x0000040D
	.4byte 0x438C0000
	.4byte 0x43960000
	.4byte 0x00000001
	.4byte 0x000D0010
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022CA10
lbl_8022CA10:

	# ROM: 0x229A10
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0x3DCCCCCD
	.4byte 0x3DCCCCCD
	.4byte 0x3E4CCCCD
	.4byte 0x3E4CCCCD
	.4byte 0x3E99999A
	.4byte 0x3E99999A
	.4byte 0x3EB33333
	.4byte 0x3EB33333
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3EDC28F6
	.4byte 0x3EDC28F6
	.4byte 0x3EF0A3D7
	.4byte 0x3EF5C28F
	.4byte 0x3EE66666
	.4byte 0x3EE147AE
	.4byte 0x3EDC28F6
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3EBD70A4
	.4byte 0x3EB851EC
	.4byte 0x3E9EB852
	.4byte 0x3E99999A
	.4byte 0x3E99999A
	.4byte 0x3E99999A
	.4byte 0x3E99999A
	.4byte 0x3E99999A
	.4byte 0x3E99999A
	.4byte 0x3E99999A
	.4byte 0x3E99999A
	.4byte 0x3EB33333
	.4byte 0x3EB33333
	.4byte 0x3EDC28F6
	.4byte 0x3EDC28F6
	.4byte 0x3EF5C28F
	.4byte 0x3EF5C28F
	.4byte 0x3EFAE148
	.4byte 0x3EFAE148
	.4byte 0x3EFAE148
	.4byte 0x3EF0A3D7
	.4byte 0x3EF0A3D7
	.4byte 0x3EEB851F
	.4byte 0x3EDC28F6
	.4byte 0x3ED1EB85
	.4byte 0x3EC28F5C
	.4byte 0x3EB851EC
	.4byte 0x3EB851EC
	.4byte 0x3EB851EC
	.4byte 0x3EB851EC
	.4byte 0x3EB851EC
	.4byte 0x3E99999A
	.4byte 0x3E75C28F
	.4byte 0x3E4CCCCD
	.4byte 0x3DF5C28F
	.4byte 0
	.4byte 0xC34BF852
	.4byte 0
	.4byte 0xC1E9851F
	.4byte 0xC381651F
	.4byte 0
	.4byte 0xC1E451EC
	.4byte 0xC34BF852
	.4byte 0
	.4byte 0xC1E9851F
	.4byte 0xC34DB0A4
	.4byte 0
	.4byte 0xC347D47B
	.4byte 0xC289B333
	.4byte 0
	.4byte 0xC39E2F5C
	.4byte 0xC23A3333
	.4byte 0
	.4byte 0xC38C6E14
	.4byte 0xC28528F6
	.4byte 0
	.4byte 0x42B21EB8
	.4byte 0x00000002
	.4byte 0x42040000
	.4byte 0x42840000
	.4byte 0x00000001
	.4byte 0x000C0008
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x42200000
	.4byte 0x42A00000
	.4byte 0x00000001
	.4byte 0x000C0006
	.4byte 0xFF000000
	.4byte 0x000003ED
	.4byte 0x42200000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000C0007
	.4byte 0xFF000000
	.4byte 0x000003ED
	.4byte 0x42FC0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000C0005
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000003EE
	.4byte 0x42920000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00100012
	.4byte 0xFF000000
	.4byte 0x00000002
	.4byte 0x421C0000
	.4byte 0x429C0000
	.4byte 0x00000001
	.4byte 0x00100013
	.4byte 0xFF000000
	.4byte 0x00000002
	.4byte 0x42EA0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00100013
	.4byte 0xFF000000
	.4byte 0x000003F4
	.4byte 0x42140000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00100013
	.4byte 0xFF000000
	.4byte 0x000003F5
	.4byte 0x42140000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00100013
	.4byte 0xFF000000
	.4byte 0x000003F6
	.4byte 0x3F800000
	.4byte 0x41A00000
	.4byte 0x00000001
	.4byte 0x00100014
	.4byte 0xFF000000
	.4byte 0x00000010
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0010001F
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x42140000
	.4byte 0x42980000
	.4byte 0x00000001
	.4byte 0x0000015C
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x40000000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000E0008
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000402
	.4byte 0x40A00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001D
	.4byte 0xFF000000
	.4byte 0x00000002
	.4byte 0x41D00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001F
	.4byte 0xFF000000
	.4byte 0x00000002
	.4byte 0x425C0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001E
	.4byte 0xFF000000
	.4byte 0x0000000A
	.4byte 0x41D00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001F
	.4byte 0xFF000000
	.4byte 0x0000000A
	.4byte 0x425C0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001E
	.4byte 0xFF000000
	.4byte 0x00000011
	.4byte 0x41D00000
	.4byte 0x42AA0000
	.4byte 0x00000001
	.4byte 0x000F001F
	.4byte 0xFF000000
	.4byte 0x00000011
	.4byte 0x425C0000
	.4byte 0x42E60000
	.4byte 0x00000001
	.4byte 0x000F001E
	.4byte 0xFF000000
	.4byte 0x0000040F
	.4byte 0x41D00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001F
	.4byte 0xFF000000
	.4byte 0x0000040F
	.4byte 0x425C0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001E
	.4byte 0xFF000000
	.4byte 0x0000000D
	.4byte 0x42440000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001F
	.4byte 0xFF000000
	.4byte 0x0000000D
	.4byte 0x42BE0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x000F001E
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x41F00000
	.4byte 0x428C0000
	.4byte 0x00000001
	.4byte 0x0007001F
	.4byte 0xFF000000
	.4byte 0x00000002
	.4byte 0x42DC0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0007001F
	.4byte 0xFF000000
	.4byte 0x0000002B
	.4byte 0x42820000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0007001F
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x41880000
	.4byte 0x420C0000
	.4byte 0x00000001
	.4byte 0x0006000B
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x42E60000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0006000C
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x435C0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0006000D
	.4byte 0xFF000000
	.4byte 0x0000000B
	.4byte 0x42480000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0006000E
	.4byte 0xFF000000
	.4byte 0x00000005
	.4byte 0x425C0000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0006000F
	.4byte 0xFF000000
	.4byte 0x00000008
	.4byte 0x41E80000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x0006000B
	.4byte 0xFF000000
	.4byte 0x0000000D
	.4byte 0x42C60000
	.4byte 0x43200000
	.4byte 0x00000001
	.4byte 0x00000019
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x3F800000
	.4byte 0x42480000
	.4byte 0x00000001
	.4byte 0x0012001C
	.4byte 0xFF090000
	.4byte 0x00000007
	.4byte 0x41700000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00120028
	.4byte 0xFF000000
	.4byte 0x00000004
	.4byte 0x42200000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00120029
	.4byte 0xFF000000
	.4byte 0x00000005
	.4byte 0x41F00000
	.4byte 0xBF800000
	.4byte 0x00000001
	.4byte 0x00120027
	.4byte 0xFF000000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022CFA4
lbl_8022CFA4:

	# ROM: 0x229FA4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80118268_

.global lbl_8022CFB0
lbl_8022CFB0:

	# ROM: 0x229FB0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8011729c_

.global lbl_8022CFBC
lbl_8022CFBC:

	# ROM: 0x229FBC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80115fd4_

.global lbl_8022CFC8
lbl_8022CFC8:

	# ROM: 0x229FC8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80115fd4_

.global lbl_8022CFD4
lbl_8022CFD4:

	# ROM: 0x229FD4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80115fd4_

.global lbl_8022CFE0
lbl_8022CFE0:

	# ROM: 0x229FE0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80115fd4_

.global lbl_8022CFEC
lbl_8022CFEC:

	# ROM: 0x229FEC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80118268_

.global lbl_8022CFF8
lbl_8022CFF8:

	# ROM: 0x229FF8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_80118268_

.global lbl_8022D004
lbl_8022D004:

	# ROM: 0x22A004
	.4byte lbl_8065A878
	.4byte 0
	.4byte 0

.global lbl_8022D010
lbl_8022D010:

	# ROM: 0x22A010
	.4byte lbl_8065A878
	.4byte 0
	.4byte lbl_8065A880
	.4byte 0
	.4byte 0

.global lbl_8022D024
lbl_8022D024:

	# ROM: 0x22A024
	.4byte lbl_8065A878
	.4byte 0
	.4byte lbl_8065A880
	.4byte 0
	.4byte lbl_8065A888
	.4byte 0
	.4byte 0

.global lbl_8022D040
lbl_8022D040:

	# ROM: 0x22A040
	.4byte lbl_8065A878
	.4byte 0
	.4byte lbl_8065A880
	.4byte 0
	.4byte lbl_8065A888
	.4byte 0
	.4byte lbl_8065A890
	.4byte 0
	.4byte 0

.global lbl_8022D064
lbl_8022D064:

	# ROM: 0x22A064
	.4byte lbl_8065A878
	.4byte 0
	.4byte lbl_8065A880
	.4byte 0
	.4byte lbl_8065A888
	.4byte 0
	.4byte lbl_8065A890
	.4byte 0
	.4byte lbl_8065A898
	.4byte 0
	.4byte 0

.global lbl_8022D090
lbl_8022D090:

	# ROM: 0x22A090
	.4byte lbl_8065A8A0
	.4byte 0
	.4byte zz_801155b4_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte zz_80122978_
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_80122d98_
	.4byte zz_80122d38_
	.4byte zz_80122bc4_
	.4byte zz_801229dc_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80107de0_
	.4byte zz_80090c84_
	.4byte zz_8012214c_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte zz_801220a8_
	.4byte DBClose_N66
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80107084_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_801075e8_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80115f18_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte zz_80115980_
	.4byte gdev_cc_shutdown_N9
	.4byte zz_80107548_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_8011f29c_
	.4byte zz_8011555c_
	.4byte zz_80115538_
	.4byte zz_80106ca4_
	.4byte zz_8011f4bc_
	.4byte zz_80121b08_
	.4byte GXGetTexObjWrapT_N5
	.4byte zz_801156b0_
	.4byte CBGetBytesAvailableForRead_N17
	.4byte zz_80106a98_
	.4byte J3DAnmCluster__getWeight_unsigned_N7
	.4byte J3DAnmCluster__getWeight_unsigned_N6
	.4byte J3DAnmCluster__getWeight_unsigned_N5
	.4byte J3DAnmCluster__getWeight_unsigned_N4

.global switchdataD_8022d210
switchdataD_8022d210:

	# ROM: 0x22A210
	.4byte func_8011F288
	.4byte lbl_8011EEC4
	.4byte lbl_8011EF08
	.4byte lbl_8011F0E8
	.4byte lbl_8011F10C
	.4byte lbl_8011F18C
	.4byte lbl_8011F1C4
	.4byte lbl_8011F1F4
	.4byte lbl_8011F268

.global switchdataD_8022d234
switchdataD_8022d234:

	# ROM: 0x22A234
	.4byte lbl_8012049C
	.4byte lbl_801204FC
	.4byte lbl_80120588
	.4byte func_80121740
	.4byte func_80121740
	.4byte func_80121740
	.4byte func_80121740
	.4byte func_80121740
	.4byte func_80121740
	.4byte func_80121740
	.4byte lbl_80120668
	.4byte lbl_8012077C
	.4byte lbl_80120890
	.4byte lbl_80120A00
	.4byte lbl_80120B78
	.4byte lbl_80120E98
	.4byte lbl_80121154
	.4byte lbl_80121268
	.4byte lbl_8012137C
	.4byte lbl_80121490
	.4byte func_80121740

.global lbl_8022D288
lbl_8022D288:

	# ROM: 0x22A288
	.4byte lbl_8065A8A8
	.4byte 0
	.4byte 0
	.4byte lbl_8065A8A8
	.4byte 0
	.4byte lbl_8065A8B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30303030

.global lbl_8022D370
lbl_8022D370:

	# ROM: 0x22A370
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_8022D37C
lbl_8022D37C:

	# ROM: 0x22A37C
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_8022D388
lbl_8022D388:

	# ROM: 0x22A388
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N72

.global lbl_8022D394
lbl_8022D394:

	# ROM: 0x22A394
	.4byte lbl_8065A8B8
	.4byte 0
	.4byte 0

.global lbl_8022D3A0
lbl_8022D3A0:

	# ROM: 0x22A3A0
	.4byte lbl_8065A8B8
	.4byte 0
	.4byte lbl_8065A8C0
	.4byte 0
	.4byte 0

.global lbl_8022D3B4
lbl_8022D3B4:

	# ROM: 0x22A3B4
	.4byte lbl_8065A8B8
	.4byte 0
	.4byte lbl_8065A8C0
	.4byte 0
	.4byte lbl_8065A8C8
	.4byte 0
	.4byte 0

.global lbl_8022D3D0
lbl_8022D3D0:

	# ROM: 0x22A3D0
	.4byte lbl_8065A8B8
	.4byte 0
	.4byte lbl_8065A8C0
	.4byte 0
	.4byte lbl_8065A8C8
	.4byte 0
	.4byte lbl_8065A8D0
	.4byte 0
	.4byte 0

.global lbl_8022D3F4
lbl_8022D3F4:

	# ROM: 0x22A3F4
	.4byte lbl_8065A8B8
	.4byte 0
	.4byte lbl_8065A8C0
	.4byte 0
	.4byte lbl_8065A8C8
	.4byte 0
	.4byte lbl_8065A8D0
	.4byte 0
	.4byte lbl_8065A8D8
	.4byte 0
	.4byte 0

.global lbl_8022D420
lbl_8022D420:

	# ROM: 0x22A420
	.4byte lbl_8065A8E0
	.4byte 0
	.4byte InitJennyActor
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_80124980_
	.4byte zz_801a0bcc_
	.4byte zz_801083f0_
	.4byte zz_80108014_
	.4byte zz_801081f0_
	.4byte zz_80107f18_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80124db0_
	.4byte zz_80090c84_
	.4byte zz_80107620_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte cPlayer__PostPhysicsUpdate_void__N20
	.4byte DBClose_N66
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80107084_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_801075e8_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_8012305c_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N65
	.4byte gdev_cc_shutdown_N9
	.4byte zz_80107548_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_801232ac_
	.4byte zz_80122e30_
	.4byte zz_80122e0c_
	.4byte zz_80106ca4_
	.4byte zz_80125514_
	.4byte zz_801262f0_
	.4byte GXGetTexObjWrapT_N5
	.4byte zz_80106be0_
	.4byte zz_80122f14_
	.4byte zz_80122fb8_
	.4byte J3DAnmCluster__getWeight_unsigned_N7
	.4byte J3DAnmCluster__getWeight_unsigned_N6
	.4byte zz_80123034_
	.4byte zz_8012300c_

.global switchdataD_8022d5a0
switchdataD_8022d5a0:

	# ROM: 0x22A5A0
	.4byte func_80126290
	.4byte func_80126290
	.4byte lbl_8012561C
	.4byte lbl_80125654
	.4byte lbl_801258E0
	.4byte lbl_80125E84
	.4byte func_80126290
	.4byte lbl_801261A4
	.4byte lbl_80126254
	.4byte 0x30303030

.global lbl_8022D5C8
lbl_8022D5C8:

	# ROM: 0x22A5C8
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0

.global lbl_8022D5D8
lbl_8022D5D8:

	# ROM: 0x22A5D8
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0

.global lbl_8022D5E8
lbl_8022D5E8:

	# ROM: 0x22A5E8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N73

.global lbl_8022D5F4
lbl_8022D5F4:

	# ROM: 0x22A5F4
	.4byte lbl_8065A8E8
	.4byte 0
	.4byte 0

.global lbl_8022D600
lbl_8022D600:

	# ROM: 0x22A600
	.4byte lbl_8065A8E8
	.4byte 0
	.4byte lbl_8065A8F0
	.4byte 0
	.4byte 0

.global lbl_8022D614
lbl_8022D614:

	# ROM: 0x22A614
	.4byte lbl_8065A8E8
	.4byte 0
	.4byte lbl_8065A8F0
	.4byte 0
	.4byte lbl_8065A8F8
	.4byte 0
	.4byte 0

.global lbl_8022D630
lbl_8022D630:

	# ROM: 0x22A630
	.4byte lbl_8065A8E8
	.4byte 0
	.4byte lbl_8065A8F0
	.4byte 0
	.4byte lbl_8065A8F8
	.4byte 0
	.4byte lbl_8065A900
	.4byte 0
	.4byte 0

.global lbl_8022D654
lbl_8022D654:

	# ROM: 0x22A654
	.4byte lbl_8065A8E8
	.4byte 0
	.4byte lbl_8065A8F0
	.4byte 0
	.4byte lbl_8065A8F8
	.4byte 0
	.4byte lbl_8065A900
	.4byte 0
	.4byte lbl_8065A908
	.4byte 0
	.4byte 0

.global lbl_8022D680
lbl_8022D680:

	# ROM: 0x22A680
	.4byte lbl_8065A910
	.4byte 0
	.4byte InitActorMama
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_801083f0_
	.4byte zz_80108014_
	.4byte zz_801081f0_
	.4byte zz_80107f18_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte cPlayer__PostPhysicsUpdate_void__N22
	.4byte zz_80090c84_
	.4byte zz_80107620_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte cPlayer__PostPhysicsUpdate_void__N20
	.4byte DBClose_N66
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80107084_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_801075e8_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_80126638_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N65
	.4byte gdev_cc_shutdown_N9
	.4byte zz_80107548_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_8012684c_
	.4byte zz_80126440_
	.4byte zz_8012641c_
	.4byte zz_80106ca4_
	.4byte zz_801285bc_
	.4byte zz_8012926c_
	.4byte GXGetTexObjWrapT_N5
	.4byte zz_80106be0_
	.4byte zz_80126510_
	.4byte zz_801265bc_
	.4byte J3DAnmCluster__getWeight_unsigned_N11
	.4byte J3DAnmCluster__getWeight_unsigned_N10
	.4byte J3DAnmCluster__getWeight_unsigned_N9
	.4byte J3DAnmCluster__getWeight_unsigned_N8

.global lbl_8022D800
lbl_8022D800:

	# ROM: 0x22A800
	.4byte 0
	.4byte 0x00000002
	.4byte 0

.global lbl_8022D80C
lbl_8022D80C:

	# ROM: 0x22A80C
	.4byte 0
	.4byte 0x00000002
	.4byte 0

.global lbl_8022D818
lbl_8022D818:

	# ROM: 0x22A818
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N74

.global lbl_8022D824
lbl_8022D824:

	# ROM: 0x22A824
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8012976c_

.global lbl_8022D830
lbl_8022D830:

	# ROM: 0x22A830
	.4byte lbl_8065A918
	.4byte 0
	.4byte 0

.global lbl_8022D83C
lbl_8022D83C:

	# ROM: 0x22A83C
	.4byte lbl_8065A918
	.4byte 0
	.4byte lbl_8065A920
	.4byte 0
	.4byte 0

.global lbl_8022D850
lbl_8022D850:

	# ROM: 0x22A850
	.4byte lbl_8065A918
	.4byte 0
	.4byte lbl_8065A920
	.4byte 0
	.4byte lbl_8065A928
	.4byte 0
	.4byte 0

.global lbl_8022D86C
lbl_8022D86C:

	# ROM: 0x22A86C
	.4byte lbl_8065A918
	.4byte 0
	.4byte lbl_8065A920
	.4byte 0
	.4byte lbl_8065A928
	.4byte 0
	.4byte lbl_8065A930
	.4byte 0
	.4byte 0

.global lbl_8022D890
lbl_8022D890:

	# ROM: 0x22A890
	.4byte lbl_8065A918
	.4byte 0
	.4byte lbl_8065A920
	.4byte 0
	.4byte lbl_8065A928
	.4byte 0
	.4byte lbl_8065A930
	.4byte 0
	.4byte lbl_8065A938
	.4byte 0
	.4byte 0

.global lbl_8022D8BC
lbl_8022D8BC:

	# ROM: 0x22A8BC
	.4byte lbl_8065A940
	.4byte 0
	.4byte InitActorPapa
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_801083f0_
	.4byte zz_80108014_
	.4byte zz_801081f0_
	.4byte zz_80107f18_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80107de0_
	.4byte zz_80090c84_
	.4byte zz_80107620_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte cPlayer__PostPhysicsUpdate_void__N20
	.4byte DBClose_N66
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80107084_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_801075e8_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_8012955c_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N65
	.4byte gdev_cc_shutdown_N9
	.4byte zz_80107548_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_80129edc_
	.4byte zz_80129340_
	.4byte zz_8012931c_
	.4byte zz_80106ca4_
	.4byte zz_8012bde4_
	.4byte zz_8012c7a0_
	.4byte GXGetTexObjWrapT_N5
	.4byte zz_80106be0_
	.4byte zz_80129410_
	.4byte zz_801294b4_
	.4byte J3DAnmCluster__getWeight_unsigned_N7
	.4byte J3DAnmCluster__getWeight_unsigned_N6
	.4byte J3DAnmCluster__getWeight_unsigned_N13
	.4byte J3DAnmCluster__getWeight_unsigned_N12

.global switchdataD_8022da3c
switchdataD_8022da3c:

	# ROM: 0x22AA3C
	.4byte func_8012C744
	.4byte func_8012C744
	.4byte lbl_8012BEEC
	.4byte lbl_8012C224
	.4byte lbl_8012C560
	.4byte lbl_8012C5FC
	.4byte lbl_8012C6AC
	.4byte lbl_8012C6E8
	.4byte lbl_8012C718

.global lbl_8022DA60
lbl_8022DA60:

	# ROM: 0x22AA60
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte DBClose_N75

.global lbl_8022DA6C
lbl_8022DA6C:

	# ROM: 0x22AA6C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_8012d208_

.global lbl_8022DA78
lbl_8022DA78:

	# ROM: 0x22AA78
	.4byte lbl_8065A948
	.4byte 0
	.4byte 0

.global lbl_8022DA84
lbl_8022DA84:

	# ROM: 0x22AA84
	.4byte lbl_8065A948
	.4byte 0
	.4byte lbl_8065A950
	.4byte 0
	.4byte 0

.global lbl_8022DA98
lbl_8022DA98:

	# ROM: 0x22AA98
	.4byte lbl_8065A948
	.4byte 0
	.4byte lbl_8065A950
	.4byte 0
	.4byte lbl_8065A958
	.4byte 0
	.4byte 0

.global lbl_8022DAB4
lbl_8022DAB4:

	# ROM: 0x22AAB4
	.4byte lbl_8065A948
	.4byte 0
	.4byte lbl_8065A950
	.4byte 0
	.4byte lbl_8065A958
	.4byte 0
	.4byte lbl_8065A960
	.4byte 0
	.4byte 0

.global lbl_8022DAD8
lbl_8022DAD8:

	# ROM: 0x22AAD8
	.4byte lbl_8065A948
	.4byte 0
	.4byte lbl_8065A950
	.4byte 0
	.4byte lbl_8065A958
	.4byte 0
	.4byte lbl_8065A960
	.4byte 0
	.4byte lbl_8065A968
	.4byte 0
	.4byte 0

.global lbl_8022DB04
lbl_8022DB04:

	# ROM: 0x22AB04
	.4byte lbl_8065A970
	.4byte 0
	.4byte InitTaoActor
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte zz_801a0ee8_
	.4byte zz_801a0bcc_
	.4byte zz_801083f0_
	.4byte zz_80108014_
	.4byte zz_801081f0_
	.4byte zz_80107f18_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte zz_80107de0_
	.4byte zz_80090c84_
	.4byte zz_80107620_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte cPlayer__PostPhysicsUpdate_void__N20
	.4byte DBClose_N66
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_80107084_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_801075e8_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_8012ca98_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N65
	.4byte gdev_cc_shutdown_N9
	.4byte zz_80107548_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_8012d870_
	.4byte zz_8012c87c_
	.4byte zz_8012c858_
	.4byte zz_80106ca4_
	.4byte zz_8012f314_
	.4byte zz_8012f364_
	.4byte GXGetTexObjWrapT_N5
	.4byte zz_80106be0_
	.4byte zz_8012c94c_
	.4byte zz_8012c9f8_
	.4byte J3DAnmCluster__getWeight_unsigned_N7
	.4byte J3DAnmCluster__getWeight_unsigned_N6
	.4byte J3DAnmCluster__getWeight_unsigned_N5
	.4byte J3DAnmCluster__getWeight_unsigned_N4
	.4byte 0x30303030

.global lbl_8022DC88
lbl_8022DC88:

	# ROM: 0x22AC88
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_8022DC94
lbl_8022DC94:

	# ROM: 0x22AC94
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global lbl_8022DCA0
lbl_8022DCA0:

	# ROM: 0x22ACA0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_801308e4_

.global lbl_8022DCAC
lbl_8022DCAC:

	# ROM: 0x22ACAC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_801308e4_

.global lbl_8022DCB8
lbl_8022DCB8:

	# ROM: 0x22ACB8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte zz_801301f8_

.global lbl_8022DCC4
lbl_8022DCC4:

	# ROM: 0x22ACC4
	.4byte lbl_8065A978
	.4byte 0
	.4byte 0

.global lbl_8022DCD0
lbl_8022DCD0:

	# ROM: 0x22ACD0
	.4byte lbl_8065A978
	.4byte 0
	.4byte lbl_8065A980
	.4byte 0
	.4byte 0

.global lbl_8022DCE4
lbl_8022DCE4:

	# ROM: 0x22ACE4
	.4byte lbl_8065A978
	.4byte 0
	.4byte lbl_8065A980
	.4byte 0
	.4byte lbl_8065A988
	.4byte 0
	.4byte 0

.global lbl_8022DD00
lbl_8022DD00:

	# ROM: 0x22AD00
	.4byte lbl_8065A978
	.4byte 0
	.4byte lbl_8065A980
	.4byte 0
	.4byte lbl_8065A988
	.4byte 0
	.4byte lbl_8065A990
	.4byte 0
	.4byte 0

.global lbl_8022DD24
lbl_8022DD24:

	# ROM: 0x22AD24
	.4byte lbl_8065A978
	.4byte 0
	.4byte lbl_8065A980
	.4byte 0
	.4byte lbl_8065A988
	.4byte 0
	.4byte lbl_8065A990
	.4byte 0
	.4byte lbl_8065A998
	.4byte 0
	.4byte 0

.global lbl_8022DD50
lbl_8022DD50:

	# ROM: 0x22AD50
	.4byte lbl_8065A9A0
	.4byte 0
	.4byte zz_8012f4a4_
	.4byte ChibiJumpHandler
	.4byte zz_80025b7c_
	.4byte zz_80025c54_
	.4byte zz_80025d2c_
	.4byte zz_80027a98_
	.4byte update_parameter_value
	.4byte zz_80025edc_
	.4byte zz_8002608c_
	.4byte zz_8002623c_
	.4byte zz_80017d1c_
	.4byte zz_80017bb0_
	.4byte zz_80027e88_
	.4byte zz_80027cfc_
	.4byte zz_80018334_
	.4byte zz_80018118_
	.4byte zz_801a1dd0_
	.4byte zz_801a306c_
	.4byte zz_801a1498_
	.4byte cleanupObject
	.4byte zz_801a138c_
	.4byte zz_801a1328_
	.4byte zz_801a12c4_
	.4byte zz_8002657c_
	.4byte UpdateObjPos
	.4byte zz_80027b70_
	.4byte zz_80026938_
	.4byte zz_800266f8_
	.4byte zz_801a211c_
	.4byte zz_801a2030_
	.4byte zz_800902a4_
	.4byte zz_80090254_
	.4byte cPlayer__PostPhysicsUpdate_void__N23
	.4byte zz_801a0bcc_
	.4byte zz_801083f0_
	.4byte zz_80108014_
	.4byte zz_801081f0_
	.4byte zz_80107f18_
	.4byte CommonDesireData__CalcBoolChance_float_
	.4byte cPlayer__PostPhysicsUpdate_void__N24
	.4byte zz_80090c84_
	.4byte zz_80107620_
	.4byte zz_800908c0_
	.4byte NSNMessengerScene__SceneCreated_void__N2
	.4byte zz_80090864_
	.4byte zz_8009056c_
	.4byte DBClose_N2
	.4byte DBClose_N44
	.4byte cPlayer__PostPhysicsUpdate_void__N20
	.4byte DBClose_N66
	.4byte AddToLinkedListIfNotPresent
	.4byte CalculateDesireChance
	.4byte zz_80091c44_
	.4byte zz_80091834_
	.4byte zz_8009172c_
	.4byte zz_800914cc_
	.4byte zz_8009146c_
	.4byte zz_8012f628_
	.4byte zz_80025764_
	.4byte zz_80025858_
	.4byte zz_8002594c_
	.4byte zz_8008ed50_
	.4byte zz_801075e8_
	.4byte zz_8008b6a0_
	.4byte J3DAnmCluster__getWeight_unsigned
	.4byte zz_8008b5d4_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void_
	.4byte HandleSpecialFloatValues
	.4byte zz_8008b338_
	.4byte zz_8008b224_
	.4byte zz_8008b0d8_
	.4byte zz_8012f940_
	.4byte CBGetBytesAvailableForRead_N4
	.4byte zz_8008a820_
	.4byte DBClose_N65
	.4byte gdev_cc_shutdown_N9
	.4byte zz_80107548_
	.4byte zz_8008a604_
	.4byte zz_8008a530_
	.4byte DBClose
	.4byte zz_80130d18_
	.4byte zz_8012f44c_
	.4byte zz_8012f428_
	.4byte zz_80106ca4_
	.4byte zz_80131af0_
	.4byte zz_80131b0c_
	.4byte GXGetTexObjWrapT_N5
	.4byte zz_80106be0_
	.4byte zz_8012f530_
	.4byte zz_8012f5d4_
	.4byte J3DAnmCluster__getWeight_unsigned_N7
	.4byte J3DAnmCluster__getWeight_unsigned_N6
	.4byte J3DAnmCluster__getWeight_unsigned_N5
	.4byte J3DAnmCluster__getWeight_unsigned_N4

.global switchdataD_8022ded0
switchdataD_8022ded0:

	# ROM: 0x22AED0
	.4byte func_80130194
	.4byte func_80130194
	.4byte lbl_8012FC38
	.4byte lbl_8012FC7C
	.4byte lbl_8012FCF0
	.4byte lbl_8012FD2C
	.4byte lbl_8012FD5C
	.4byte lbl_8012FDB0
	.4byte lbl_80130114
	.4byte lbl_8013014C

.global lbl_8022DEF8
lbl_8022DEF8:

	# ROM: 0x22AEF8
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0

.global s_ReadStart_8022df60
s_ReadStart_8022df60:

	# ROM: 0x22AF60
	.asciz "ReadStart"
	.balign 4

.global lbl_8022DF6C
lbl_8022DF6C:

	# ROM: 0x22AF6C
	.4byte lbl_8065A9B0
	.4byte 0
	.4byte 0

.global lbl_8022DF78
lbl_8022DF78:

	# ROM: 0x22AF78
	.4byte lbl_8065A9B0
	.4byte 0
	.4byte lbl_8065A9B8
	.4byte 0
	.4byte 0

.global lbl_8022DF8C
lbl_8022DF8C:

	# ROM: 0x22AF8C
	.4byte lbl_8065A9C0
	.4byte 0
	.4byte GetEventMSGAnim
	.4byte zz_80132504_
	.4byte zz_80132040_
	.4byte lbl_80132428
	.4byte zz_80131fac_
	.4byte zz_80131c6c_
	.4byte lbl_8065A9C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022E180
lbl_8022E180:

	# ROM: 0x22B180
	.4byte lbl_8065A9E8
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9E8
	.4byte 0
	.4byte lbl_8065A9F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8065AA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022E288
lbl_8022E288:

	# ROM: 0x22B288
	.4byte lbl_8065A9F8
	.4byte 0
	.4byte 0

.global lbl_8022E294
lbl_8022E294:

	# ROM: 0x22B294
	.4byte lbl_8065A9F8
	.4byte 0
	.4byte lbl_8065AA08
	.4byte 0
	.4byte 0

.global lbl_8022E2A8
lbl_8022E2A8:

	# ROM: 0x22B2A8
	.4byte lbl_8065A9F8
	.4byte 0
	.4byte lbl_8065AA08
	.4byte 0
	.4byte lbl_8065AA10
	.4byte 0
	.4byte 0
	.4byte lbl_8065A9F8
	.4byte 0
	.4byte lbl_8065AA08
	.4byte 0
	.4byte lbl_8065AA10
	.4byte 0
	.4byte lbl_8065AA18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022E45C
lbl_8022E45C:

	# ROM: 0x22B45C
	.4byte lbl_8065AA20
	.4byte 0
	.4byte cHeadTrack____dt_void__N45
	.4byte zz_801325cc_

.global lbl_8022E46C
lbl_8022E46C:

	# ROM: 0x22B46C
	.4byte lbl_8065A9B0
	.4byte 0
	.4byte lbl_8065A9B8
	.4byte 0
	.4byte 0

.global lbl_8022E480
lbl_8022E480:

	# ROM: 0x22B480
	.4byte lbl_8065AA28
	.4byte 0
	.4byte GetEventMessageReadOne
	.4byte zz_80132504_
	.4byte zz_801322a4_
	.4byte lbl_80132428
	.4byte zz_801321fc_
	.4byte zz_80131c6c_

.global lbl_8022E4A0
lbl_8022E4A0:

	# ROM: 0x22B4A0
	.4byte lbl_8065A9B0
	.4byte 0
	.4byte lbl_8065A9B8
	.4byte 0
	.4byte 0

.global lbl_8022E4B4
lbl_8022E4B4:

	# ROM: 0x22B4B4
	.4byte lbl_8065AA30
	.4byte 0
	.4byte GetEventMSGALL
	.4byte zz_80132504_
	.4byte lbl_80132468
	.4byte lbl_80132428
	.4byte lbl_801323A4
	.4byte zz_80131c6c_

.global lbl_8022E4D4
lbl_8022E4D4:

	# ROM: 0x22B4D4
	.4byte lbl_8065A9B8
	.4byte 0
	.4byte GetEventMessageRead
	.4byte zz_80132504_
	.4byte lbl_80132468
	.4byte lbl_80132428
	.4byte lbl_80132140
	.4byte zz_80131c6c_
	.4byte 0x30303030

.global lbl_8022E4F8
lbl_8022E4F8:

	# ROM: 0x22B4F8
	.4byte lbl_8065AA38
	.4byte 0
	.4byte 0

.global lbl_8022E504
lbl_8022E504:

	# ROM: 0x22B504
	.4byte lbl_8065AA40
	.4byte 0
	.4byte FormationOffensive____dt_void__N3
	.4byte zz_80135220_
	.4byte zz_80135120_
	.4byte zz_8013519c_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void__N10

.global lbl_8022E520
lbl_8022E520:

	# ROM: 0x22B520
	.4byte lbl_8065AA38
	.4byte 0
	.4byte 0

.global lbl_8022E52C
lbl_8022E52C:

	# ROM: 0x22B52C
	.4byte lbl_8065AA48
	.4byte 0
	.4byte FormationOffensive____dt_void__N2
	.4byte zz_80135398_
	.4byte zz_80135280_
	.4byte zz_80135314_
	.4byte nw4hbm__ut__TextWriterBase_w___GetCharSpace_void__N11

.global lbl_8022E548
lbl_8022E548:

	# ROM: 0x22B548
	.4byte lbl_8065AA50
	.4byte 0
	.4byte cHeadTrack____dt_void__N46

.global lbl_8022E554
lbl_8022E554:

	# ROM: 0x22B554
	.4byte lbl_8065AA58
	.4byte 0
	.4byte MenuList_19TLComponentInstance_____dt_void__N3

.global s_SetEye_I_8022e560
s_SetEye_I_8022e560:

	# ROM: 0x22B560
	.asciz "SetEye_I"
	.byte 0x30, 0x30, 0x30

.global lbl_8022E56C
lbl_8022E56C:

	# ROM: 0x22B56C
	.4byte lbl_8065AA60
	.4byte 0
	.4byte 0

.global lbl_8022E578
lbl_8022E578:

	# ROM: 0x22B578
	.4byte lbl_8065AA60
	.4byte 0
	.4byte lbl_8065AA68
	.4byte 0
	.4byte 0

.global lbl_8022E58C
lbl_8022E58C:

	# ROM: 0x22B58C
	.4byte lbl_8065AA70
	.4byte 0
	.4byte initCameraZoom
	.4byte zz_80139b90_
	.4byte zz_8013964c_
	.4byte zz_80139c98_
	.4byte zz_80139d10_
	.4byte zz_80139da8_
	.4byte DBClose_N13
	.4byte zz_801395b8_
	.4byte TRKNubWelcome_N2
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte gdev_cc_shutdown_N24
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N25
	.4byte CBGetBytesAvailableForRead_N18
	.4byte TRKNubWelcome
	.4byte GetDAT_805a055c
	.4byte THPSimpleGetCurrentFrame
	.4byte updateGlobalVariable_805a0560
	.4byte zz_80015c84_
	.4byte zz_80015cc8_
	.4byte zz_80015d74_
	.4byte 0x30303030

.global s_SpringDamp_8022e610
s_SpringDamp_8022e610:

	# ROM: 0x22B610
	.asciz "SpringDamp"
	.byte 0x30

.global lbl_8022E61C
lbl_8022E61C:

	# ROM: 0x22B61C
	.4byte 0x3F000000
	.4byte 0x40200000
	.4byte 0x40900000

.global s_CalcIntersectVec_8022e628
s_CalcIntersectVec_8022e628:

	# ROM: 0x22B628
	.asciz "CalcIntersectVec"
	.byte 0x30, 0x30, 0x30

.global s_UpdateTurn_8022e63c
s_UpdateTurn_8022e63c:

	# ROM: 0x22B63C
	.asciz "UpdateTurn"
	.byte 0x30

.global lbl_8022E648
lbl_8022E648:

	# ROM: 0x22B648
	.4byte lbl_8065AA98
	.4byte 0
	.4byte 0

.global lbl_8022E654
lbl_8022E654:

	# ROM: 0x22B654
	.4byte lbl_8065AA98
	.4byte 0
	.4byte lbl_8065AAA0
	.4byte 0
	.4byte 0

.global lbl_8022E668
lbl_8022E668:

	# ROM: 0x22B668
	.4byte lbl_8065AAA8
	.4byte 0
	.4byte GetCameraActionData
	.4byte zz_80141084_
	.4byte zz_8013fa38_
	.4byte zz_80141c50_
	.4byte zz_80141288_
	.4byte zz_80141dc8_
	.4byte DBClose_N13
	.4byte zz_8013c200_
	.4byte MoviePlayerScene__PlayScreenBackSFX_void_
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte gdev_cc_shutdown_N26
	.4byte J3DAnmCluster__getWeight_unsigned_N14
	.4byte CBGetBytesAvailableForRead_N19
	.4byte CBGetBytesAvailableForRead_N3
	.4byte TRKNubWelcome
	.4byte GetDAT_805a055c
	.4byte THPSimpleGetCurrentFrame
	.4byte updateGlobalVariable_805a0560
	.4byte zz_80015c84_
	.4byte zz_80015cc8_
	.4byte zz_80015d74_

.global lbl_8022E6E8
lbl_8022E6E8:

	# ROM: 0x22B6E8
	.4byte 0x3F000000
	.4byte 0x40200000
	.4byte 0x40900000

.global lbl_8022E6F4
lbl_8022E6F4:

	# ROM: 0x22B6F4
	.4byte lbl_8065AAB0
	.4byte 0
	.4byte 0

.global lbl_8022E700
lbl_8022E700:

	# ROM: 0x22B700
	.4byte lbl_8065AAB8
	.4byte 0
	.4byte SetCCameraActionChase
	.4byte DBClose_N10
	.4byte zz_80142440_
	.4byte zz_8014295c_
	.4byte zz_801428b8_
	.4byte J3DUClipper__init_void_
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte CBGetBytesAvailableForRead_N20
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5
	.4byte 0x30303030

.global lbl_8022E768
lbl_8022E768:

	# ROM: 0x22B768
	.4byte lbl_8065AAC0
	.4byte 0
	.4byte 0

.global lbl_8022E774
lbl_8022E774:

	# ROM: 0x22B774
	.4byte lbl_8065AAC8
	.4byte 0
	.4byte initCameraActionEvents
	.4byte DBClose_N10
	.4byte zz_801435e8_
	.4byte DBClose_N3
	.4byte zz_8014384c_
	.4byte zz_80143920_
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte CBGetBytesAvailableForRead_N2
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5

.global lbl_8022E7D8
lbl_8022E7D8:

	# ROM: 0x22B7D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC37C6B85
	.4byte 0x436B30A4
	.4byte 0xC2E0D70A
	.4byte 0x430A8F5C
	.4byte 0x42700000
	.4byte 0x41700000
	.4byte 0x42040000

.global lbl_8022E804
lbl_8022E804:

	# ROM: 0x22B804
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC32E4000
	.4byte 0x432E4000
	.4byte 0xC39E0000
	.4byte 0x43820000
	.4byte 0x42700000
	.4byte 0x41700000
	.4byte 0x42700000

.global lbl_8022E830
lbl_8022E830:

	# ROM: 0x22B830
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC356FAE1
	.4byte 0x4356FAE1
	.4byte 0xC392DC29
	.4byte 0x4392DC29
	.4byte 0x42700000
	.4byte 0x41700000
	.4byte 0x42700000

.global lbl_8022E85C
lbl_8022E85C:

	# ROM: 0x22B85C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC2FA0000
	.4byte 0x42FA0000
	.4byte 0xC2DC0000
	.4byte 0x42DC0000
	.4byte 0x42700000
	.4byte 0x41700000
	.4byte 0x42700000

.global lbl_8022E888
lbl_8022E888:

	# ROM: 0x22B888
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC3480000
	.4byte 0x43480000
	.4byte 0xC3480000
	.4byte 0x43480000
	.4byte 0x42700000
	.4byte 0x41700000
	.4byte 0x42700000

.global lbl_8022E8B4
lbl_8022E8B4:

	# ROM: 0x22B8B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC3480000
	.4byte 0x43480000
	.4byte 0xC3480000
	.4byte 0x43480000
	.4byte 0x42700000
	.4byte 0x41700000
	.4byte 0x42040000

.global lbl_8022E8E0
lbl_8022E8E0:

	# ROM: 0x22B8E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC3026E14
	.4byte 0x43156148
	.4byte 0xC3863EB8
	.4byte 0x43DB88F6
	.4byte 0x42700000
	.4byte 0x41700000
	.4byte 0x42700000

.global lbl_8022E90C
lbl_8022E90C:

	# ROM: 0x22B90C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC3200000
	.4byte 0x43200000
	.4byte 0xC2A00000
	.4byte 0x42A00000
	.4byte 0x42200000
	.4byte 0x41700000
	.4byte 0x41D88F5C

.global lbl_8022E938
lbl_8022E938:

	# ROM: 0x22B938
	.4byte 0
	.4byte lbl_8022E7D8
	.4byte lbl_8022E804
	.4byte lbl_8022E85C
	.4byte lbl_8022E888
	.4byte 0
	.4byte lbl_8022E8B4
	.4byte lbl_8022E830
	.4byte 0
	.4byte lbl_8022E8E0
	.4byte 0
	.4byte lbl_8022E90C
	.4byte 0
	.4byte 0
	.4byte lbl_8022E830
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022E988
lbl_8022E988:

	# ROM: 0x22B988
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xBF800000

.global lbl_8022E998
lbl_8022E998:

	# ROM: 0x22B998
	.4byte 0xBF800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_8022E9A8
lbl_8022E9A8:

	# ROM: 0x22B9A8
	.4byte lbl_8065AAD0
	.4byte 0
	.4byte 0

.global lbl_8022E9B4
lbl_8022E9B4:

	# ROM: 0x22B9B4
	.4byte lbl_8065AAD8
	.4byte 0
	.4byte SetCCameraActionScroll_N2
	.4byte DBClose_N10
	.4byte zz_8014567c_
	.4byte zz_80145fe8_
	.4byte DBClose_N11
	.4byte DBClose_N12
	.4byte zz_80143a00_
	.4byte DBClose_N14
	.4byte DBClose_N76
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte gdev_cc_shutdown_N27
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5

.global switchdataD_8022ea18
switchdataD_8022ea18:

	# ROM: 0x22BA18
	.4byte func_801446E4
	.4byte lbl_801445B8
	.4byte func_801445E4
	.4byte lbl_8014466C
	.4byte lbl_80144674
	.4byte lbl_8014467C
	.4byte lbl_80144684
	.4byte lbl_8014468C
	.4byte func_801446E4
	.4byte lbl_801446E0

.global lbl_8022EA40
lbl_8022EA40:

	# ROM: 0x22BA40
	.4byte lbl_8065AAE0
	.4byte 0
	.4byte 0

.global lbl_8022EA4C
lbl_8022EA4C:

	# ROM: 0x22BA4C
	.4byte lbl_8065AAE8
	.4byte 0
	.4byte SetCCameraActionEye
	.4byte DBClose_N10
	.4byte zz_801469ec_
	.4byte zz_80147358_
	.4byte DBClose_N11
	.4byte DBClose_N77
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte GetOneTimerLeadGroundContactAnims_void__N2
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5

.global lbl_8022EAB0
lbl_8022EAB0:

	# ROM: 0x22BAB0
	.4byte lbl_8065AAF0
	.4byte 0
	.4byte 0

.global lbl_8022EABC
lbl_8022EABC:

	# ROM: 0x22BABC
	.4byte lbl_8065AAF8
	.4byte 0
	.4byte SetCCamActionAnim
	.4byte DBClose_N10
	.4byte zz_80147464_
	.4byte DBClose_N3
	.4byte zz_80147538_
	.4byte cAIPad____ct_void__N7
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte CBGetBytesAvailableForRead_N2
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5

.global s_PreviousUpdate_8022eb20
s_PreviousUpdate_8022eb20:

	# ROM: 0x22BB20
	.asciz "PreviousUpdate"
	.byte 0x30

.global lbl_8022EB30
lbl_8022EB30:

	# ROM: 0x22BB30
	.4byte lbl_8065AB00
	.4byte 0
	.4byte 0

.global lbl_8022EB3C
lbl_8022EB3C:

	# ROM: 0x22BB3C
	.4byte lbl_8065AB00
	.4byte 0
	.4byte lbl_8065AB08
	.4byte 0
	.4byte 0

.global lbl_8022EB50
lbl_8022EB50:

	# ROM: 0x22BB50
	.4byte lbl_8065AB10
	.4byte 0
	.4byte initCameraActionReset
	.4byte zz_80147794_
	.4byte zz_80147648_
	.4byte DBClose_N3
	.4byte zz_80147d70_
	.4byte zz_80147e3c_
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte CBGetBytesAvailableForRead_N2
	.4byte J3DAnmCluster__getWeight_unsigned_N15
	.4byte CBGetBytesAvailableForRead_N21
	.4byte CBGetBytesAvailableForRead_N22
	.4byte TRKNubWelcome
	.4byte GetDAT_805a055c
	.4byte THPSimpleGetCurrentFrame
	.4byte updateGlobalVariable_805a0560
	.4byte zz_80015c84_
	.4byte zz_80015cc8_
	.4byte zz_80015d74_

.global lbl_8022EBD0
lbl_8022EBD0:

	# ROM: 0x22BBD0
	.4byte lbl_8065AB18
	.4byte 0
	.4byte 0

.global lbl_8022EBDC
lbl_8022EBDC:

	# ROM: 0x22BBDC
	.4byte lbl_8065AB20
	.4byte 0
	.4byte SetCCameraActionScroll
	.4byte DBClose_N10
	.4byte zz_80147ec0_
	.4byte zz_80148280_
	.4byte DBClose_N78
	.4byte DBClose_N12
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte CBGetBytesAvailableForRead_N2
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte CBGetBytesAvailableForRead_N23
	.4byte gdev_cc_shutdown_N5

.global lbl_8022EC40
lbl_8022EC40:

	# ROM: 0x22BC40
	.4byte lbl_8065AB18
	.4byte 0
	.4byte 0

.global lbl_8022EC4C
lbl_8022EC4C:

	# ROM: 0x22BC4C
	.4byte lbl_8065AB28
	.4byte 0
	.4byte SetCCameaActionLadder
	.4byte DBClose_N10
	.4byte zz_801483c0_
	.4byte ColourBlendScreenTransition__Reset_void_
	.4byte DBClose_N11
	.4byte DBClose_N12
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte gdev_cc_shutdown_N28
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5
	.4byte zz_8014855c_

.global lbl_8022ECB4
lbl_8022ECB4:

	# ROM: 0x22BCB4
	.4byte lbl_8065AB18
	.4byte 0
	.4byte 0

.global lbl_8022ECC0
lbl_8022ECC0:

	# ROM: 0x22BCC0
	.4byte lbl_8065AB30
	.4byte 0
	.4byte SetCCameraActionDefault
	.4byte DBClose_N10
	.4byte zz_801485a4_
	.4byte DBClose_N3
	.4byte DBClose_N11
	.4byte DBClose_N12
	.4byte DBClose_N13
	.4byte DBClose_N14
	.4byte DBClose_N15
	.4byte nlVector3__Set_float__N3
	.4byte nlVector3__Set_float__N4
	.4byte nlVector3__Set_float__N5
	.4byte zz_80015df0_
	.4byte zz_80015e38_
	.4byte zz_80015e80_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N4
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N5
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N6
	.4byte gdev_cc_shutdown_N3
	.4byte CBGetBytesAvailableForRead_N2
	.4byte J3DAnmCluster__getWeight_unsigned_N2
	.4byte gdev_cc_shutdown_N4
	.4byte gdev_cc_shutdown_N5
	.4byte 0x30303030

.global switchdataD_8022ed28
switchdataD_8022ed28:

	# ROM: 0x22BD28
	.4byte func_8014BCB4
	.4byte lbl_8014BBD8
	.4byte lbl_8014BBE8
	.4byte lbl_8014BBF8
	.4byte lbl_8014BC18
	.4byte lbl_8014BC28
	.4byte func_8014BCB4
	.4byte lbl_8014BC08
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte lbl_8014BC38
	.4byte lbl_8014BC48
	.4byte lbl_8014BC58
	.4byte lbl_8014BC68
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte func_8014BCB4
	.4byte lbl_8014BCA8
	.4byte lbl_8014BC78
	.4byte lbl_8014BC88
	.4byte lbl_8014BC98
	.4byte 0x30303030

.global switchdataD_8022ed98
switchdataD_8022ed98:

	# ROM: 0x22BD98
	.4byte lbl_8014C814
	.4byte lbl_8014C834
	.4byte lbl_8014C80C
	.4byte lbl_8014C834
	.4byte lbl_8014C81C
	.4byte lbl_8014C824
	.4byte lbl_8014C82C

.global switchdataD_8022edb4
switchdataD_8022edb4:

	# ROM: 0x22BDB4
	.4byte lbl_8014CA58
	.4byte lbl_8014CA78
	.4byte lbl_8014CA50
	.4byte lbl_8014CA78
	.4byte lbl_8014CA60
	.4byte lbl_8014CA68
	.4byte lbl_8014CA70

.global lbl_8022EDD0
lbl_8022EDD0:

	# ROM: 0x22BDD0
	.4byte 0
	.4byte 0
	.4byte 0x00303030

.global lbl_8022EDDC
lbl_8022EDDC:

	# ROM: 0x22BDDC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000

.global lbl_8022EDEC
lbl_8022EDEC:

	# ROM: 0x22BDEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022EE00
lbl_8022EE00:

	# ROM: 0x22BE00
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.4byte 0x30303030

.global lbl_8022EE40
lbl_8022EE40:

	# ROM: 0x22BE40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022EE68
lbl_8022EE68:

	# ROM: 0x22BE68
	.4byte lbl_8065AB40
	.4byte 0
	.4byte freeStdException
	.4byte GetOneTimerLeadGroundContactAnims_void__N3

.global switchdataD_8022ee78
switchdataD_8022ee78:

	# ROM: 0x22BE78
	.4byte func_80152168
	.4byte lbl_80152160
	.4byte func_80152168
	.4byte func_80152168
	.4byte func_80152168
	.4byte func_80152168
	.4byte func_80152168
	.4byte func_80152168
	.4byte func_80152168
	.4byte func_80152168
	.4byte func_80152168
	.4byte func_80152168
	.4byte lbl_80152094
	.4byte func_80152168
	.4byte lbl_80152160
	.4byte lbl_801520B4
	.4byte lbl_80152074

.global switchdataD_8022eebc
switchdataD_8022eebc:

	# ROM: 0x22BEBC
	.4byte lbl_801529AC
	.4byte lbl_80152564
	.4byte lbl_80152578
	.4byte lbl_801525A4
	.4byte lbl_80152608
	.4byte lbl_80152654
	.4byte lbl_801526A8
	.4byte lbl_801526FC
	.4byte lbl_80152750
	.4byte lbl_801527D8
	.4byte lbl_80152854
	.4byte lbl_8015289C
	.4byte lbl_80152918
	.4byte lbl_80152940
	.4byte lbl_801529AC
	.4byte lbl_8015298C
	.4byte lbl_8015292C

.global switchdataD_8022ef00
switchdataD_8022ef00:

	# ROM: 0x22BF00
	.4byte lbl_80152D94
	.4byte lbl_80152D94
	.4byte lbl_80152CE8
	.4byte lbl_80152CF4
	.4byte lbl_80152D00
	.4byte lbl_80152D0C
	.4byte lbl_80152D18
	.4byte lbl_80152D18
	.4byte lbl_80152D28
	.4byte lbl_80152D34
	.4byte lbl_80152D40
	.4byte lbl_80152D4C
	.4byte lbl_80152D58
	.4byte lbl_80152D70
	.4byte lbl_80152D94
	.4byte lbl_80152D7C
	.4byte lbl_80152D64

.global lbl_8022EF44
lbl_8022EF44:

	# ROM: 0x22BF44
	.4byte lbl_8065AB58
	.4byte 0
	.4byte 0

.global lbl_8022EF50
lbl_8022EF50:

	# ROM: 0x22BF50
	.4byte lbl_8065AB60
	.4byte 0
	.4byte FormationOffensive____dt_void__N29
	.4byte GetOneTimerLeadGroundContactAnims_void__N4

.global lbl_8022EF60
lbl_8022EF60:

	# ROM: 0x22BF60
	.4byte 0
	.4byte 0x0A800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_805C9BE0
	.4byte 0x00000100
	.4byte lbl_805C9BE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __TRK_write_console_N2
	.4byte __write_console
	.4byte __close_file
	.4byte 0
	.4byte lbl_8022EFB0

.global lbl_8022EFB0
lbl_8022EFB0:

	# ROM: 0x22BFB0
	.4byte 0x00000001
	.4byte 0x12800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_805C9AE0
	.4byte 0x00000100
	.4byte lbl_805C9AE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __TRK_write_console_N2
	.4byte __write_console
	.4byte __close_file
	.4byte 0
	.4byte lbl_8022F000

.global lbl_8022F000
lbl_8022F000:

	# ROM: 0x22C000
	.4byte 0x00000002
	.4byte 0x10800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_805C99E0
	.4byte 0x00000100
	.4byte lbl_805C99E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __TRK_write_console_N2
	.4byte __write_console
	.4byte __close_file
	.4byte 0
	.4byte lbl_8022F050

.global lbl_8022F050
lbl_8022F050:

	# ROM: 0x22C050
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global switchdataD_8022f0a0
switchdataD_8022f0a0:

	# ROM: 0x22C0A0
	.4byte lbl_80153E00
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_80153EFC
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_80153FF8
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_801540F4
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_8015529C
	.4byte lbl_801541F0
	.4byte lbl_801542EC
	.4byte lbl_801543E8
	.4byte lbl_801544E4
	.4byte lbl_801545E0
	.4byte lbl_801546DC
	.4byte lbl_801547D8
	.4byte lbl_801548D4
	.4byte lbl_801549D0
	.4byte lbl_80154AC8
	.4byte lbl_80154BC0
	.4byte lbl_80154CB8
	.4byte lbl_80154DB0
	.4byte lbl_80154EAC
	.4byte lbl_80154FA8
	.4byte lbl_801550A4
	.4byte lbl_801551A0
	.4byte 0x30303030

.global lbl_8022F1C8
lbl_8022F1C8:

	# ROM: 0x22C1C8
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01020202
	.4byte 0x02020101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x04080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30300808
	.4byte 0x08080808
	.4byte 0x08A0A0A0
	.4byte 0xA0A0A080
	.4byte 0x80808080
	.4byte 0x80808080
	.4byte 0x80808080
	.4byte 0x80808080
	.4byte 0x80808008
	.4byte 0x08080808
	.4byte 0x08606060
	.4byte 0x60606040
	.4byte 0x40404040
	.4byte 0x40404040
	.4byte 0x40404040
	.4byte 0x40404040
	.4byte 0x40404008
	.4byte 0x08080801
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022F2C8
lbl_8022F2C8:

	# ROM: 0x22C2C8
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x28292A2B
	.4byte 0x2C2D2E2F
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38393A3B
	.4byte 0x3C3D3E3F
	.4byte 0x40616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A5B
	.4byte 0x5C5D5E5F
	.4byte 0x60616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A7B
	.4byte 0x7C7D7E7F
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959697
	.4byte 0x98999A9B
	.4byte 0x9C9D9E9F
	.4byte 0xA0A1A2A3
	.4byte 0xA4A5A6A7
	.4byte 0xA8A9AAAB
	.4byte 0xACADAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4C5C6C7
	.4byte 0xC8C9CACB
	.4byte 0xCCCDCECF
	.4byte 0xD0D1D2D3
	.4byte 0xD4D5D6D7
	.4byte 0xD8D9DADB
	.4byte 0xDCDDDEDF
	.4byte 0xE0E1E2E3
	.4byte 0xE4E5E6E7
	.4byte 0xE8E9EAEB
	.4byte 0xECEDEEEF
	.4byte 0xF0F1F2F3
	.4byte 0xF4F5F6F7
	.4byte 0xF8F9FAFB
	.4byte 0xFCFDFEFF

.global lbl_8022F3C8
lbl_8022F3C8:

	# ROM: 0x22C3C8
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x28292A2B
	.4byte 0x2C2D2E2F
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38393A3B
	.4byte 0x3C3D3E3F
	.4byte 0x40414243
	.4byte 0x44454647
	.4byte 0x48494A4B
	.4byte 0x4C4D4E4F
	.4byte 0x50515253
	.4byte 0x54555657
	.4byte 0x58595A5B
	.4byte 0x5C5D5E5F
	.4byte 0x60414243
	.4byte 0x44454647
	.4byte 0x48494A4B
	.4byte 0x4C4D4E4F
	.4byte 0x50515253
	.4byte 0x54555657
	.4byte 0x58595A7B
	.4byte 0x7C7D7E7F
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959697
	.4byte 0x98999A9B
	.4byte 0x9C9D9E9F
	.4byte 0xA0A1A2A3
	.4byte 0xA4A5A6A7
	.4byte 0xA8A9AAAB
	.4byte 0xACADAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4C5C6C7
	.4byte 0xC8C9CACB
	.4byte 0xCCCDCECF
	.4byte 0xD0D1D2D3
	.4byte 0xD4D5D6D7
	.4byte 0xD8D9DADB
	.4byte 0xDCDDDEDF
	.4byte 0xE0E1E2E3
	.4byte 0xE4E5E6E7
	.4byte 0xE8E9EAEB
	.4byte 0xECEDEEEF
	.4byte 0xF0F1F2F3
	.4byte 0xF4F5F6F7
	.4byte 0xF8F9FAFB
	.4byte 0xFCFDFEFF

.global switchdataD_8022f4c8
switchdataD_8022f4c8:

	# ROM: 0x22C4C8
	.4byte lbl_80157F28
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte lbl_80157EC8
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte lbl_80157EC8
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte lbl_80157F00
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte lbl_80157F14
	.4byte func_80157F38
	.4byte func_80157F38
	.4byte lbl_80157F28

.global switchdataD_8022f54c
switchdataD_8022f54c:

	# ROM: 0x22C54C
	.4byte lbl_801581EC
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte lbl_801581B4
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte lbl_801581B4
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte lbl_801581CC
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte lbl_801581DC
	.4byte func_801581F8
	.4byte func_801581F8
	.4byte lbl_801581EC

.global switchdataD_8022f5d0
switchdataD_8022f5d0:

	# ROM: 0x22C5D0
	.4byte lbl_80158728
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158778
	.4byte lbl_801586F0
	.4byte lbl_80158764
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_801586A8
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158728
	.4byte lbl_80158858
	.4byte lbl_801587DC
	.4byte lbl_801586A8
	.4byte lbl_80158778
	.4byte lbl_801586F0
	.4byte lbl_80158764
	.4byte lbl_80158858
	.4byte lbl_801586A8
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158840
	.4byte lbl_801586A8
	.4byte lbl_801587B8
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_80158814
	.4byte lbl_80158858
	.4byte lbl_801586A8
	.4byte lbl_80158858
	.4byte lbl_80158858
	.4byte lbl_801586A8

.global switchdataD_8022f6b0
switchdataD_8022f6b0:

	# ROM: 0x22C6B0
	.4byte lbl_80158458
	.4byte lbl_80158494
	.4byte lbl_80158494
	.4byte lbl_80158470
	.4byte lbl_80158494
	.4byte lbl_80158494
	.4byte lbl_80158494
	.4byte lbl_80158494
	.4byte lbl_80158494
	.4byte lbl_80158494
	.4byte lbl_80158494
	.4byte lbl_8015844C
	.4byte lbl_80158494
	.4byte lbl_80158440
	.4byte lbl_80158494
	.4byte lbl_80158494
	.4byte lbl_8015847C
	.4byte 0x30303030

.global switchdataD_8022f6f8
switchdataD_8022f6f8:

	# ROM: 0x22C6F8
	.4byte func_80159340
	.4byte lbl_801590F4
	.4byte lbl_80159194
	.4byte func_80159340
	.4byte lbl_801591DC
	.4byte func_80159340
	.4byte func_80159340
	.4byte func_80159340
	.4byte lbl_8015922C
	.4byte func_80159340
	.4byte func_80159340
	.4byte func_80159340
	.4byte func_80159340
	.4byte func_80159340
	.4byte func_80159340
	.4byte func_80159340
	.4byte lbl_8015922C
	.4byte 0x30303030

.global lbl_8022F740
lbl_8022F740:

	# ROM: 0x22C740
	.asciz "<< Dolphin SDK - EXI\trelease build: Apr  5 2004 04:14:14 (0x2301) >>"
	.balign 4
	.asciz "Memory Card 59"
	.balign 4
	.asciz "Memory Card 123"
	.asciz "Memory Card 251"
	.asciz "Memory Card 507"
	.asciz "Memory Card 1019"
	.balign 4
	.asciz "Memory Card 2043"
	.balign 4
	.asciz "USB Adapter"
	.asciz "Net Card"
	.balign 4
	.asciz "Artist Ether"
	.balign 4
	.asciz "Broadband Adapter"
	.balign 4
	.asciz "Stream Hanger"
	.balign 4
	.asciz "IS-DOL-VIEWER"
	.byte 0x30, 0x30
	.4byte 0x30303030

.global lbl_8022F850
lbl_8022F850:

	# ROM: 0x22C850
	.asciz "<< Dolphin SDK - SI\trelease build: Apr  5 2004 04:14:16 (0x2301) >>"

.global lbl_8022F894
lbl_8022F894:

	# ROM: 0x22C894
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8022F8A8
lbl_8022F8A8:

	# ROM: 0x22C8A8
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.asciz "No response"
	.asciz "N64 controller"
	.balign 4
	.asciz "N64 microphone"
	.balign 4
	.asciz "N64 keyboard"
	.balign 4
	.asciz "N64 mouse"
	.balign 4
	.asciz "GameBoy Advance"
	.asciz "Standard controller"
	.asciz "Wireless receiver"
	.balign 4
	.asciz "WaveBird controller"
	.asciz "Keyboard"
	.balign 4
	.asciz "Steering"
	.byte 0x30, 0x30, 0x30
	.4byte 0x30303030

.global lbl_8022F968
lbl_8022F968:

	# ROM: 0x22C968
	.4byte 0x00F60200
	.4byte 0x000E1300
	.4byte 0x001E0900
	.4byte 0x002C0600
	.4byte 0x00340500
	.4byte 0x00410400
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x01280200
	.4byte 0x000F1500
	.4byte 0x001D0B00
	.4byte 0x002D0700
	.4byte 0x00340600
	.4byte 0x003F0500
	.4byte 0x004E0400
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x009C0200
	.asciz "SISetSamplingRate: unknown TV format. Use default."
	.byte 0x30
	.4byte 0x30303030

.global s_DBExceptionDestination_8022fa00
s_DBExceptionDestination_8022fa00:

	# ROM: 0x22CA00
	.asciz "DBExceptionDestination\n"

.global lbl_8022FA18
lbl_8022FA18:

	# ROM: 0x22CA18
	.asciz "<< Dolphin SDK - OS\trelease build: Nov 10 2004 06:26:41 (0x2301) >>"
	.asciz "\nDolphin OS\n"
	.balign 4
	.asciz "Kernel built : %s %s\n"
	.balign 4
	.asciz "Nov 10 2004"
	.asciz "06:26:41"
	.balign 4
	.asciz "Console Type : "
	.asciz "Retail %d\n"
	.balign 4
	.asciz "Mac Emulator\n"
	.balign 4
	.asciz "PC Emulator\n"
	.balign 4
	.asciz "EPPC Arthur\n"
	.balign 4
	.asciz "EPPC Minnow\n"
	.balign 4
	.asciz "Development HW%d (%08x)\n"
	.balign 4
	.asciz "Memory %d MB\n"
	.balign 4
	.asciz "Arena : 0x%x - 0x%x\n"
	.balign 4
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.asciz "Installing OSDBIntegrator\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d commandeered by TRK\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d vectored to debugger\n"
	.balign 4
	.asciz "Exceptions initialized...\n"
	.byte 0x30

.global lbl_8022FC10
lbl_8022FC10:

	# ROM: 0x22CC10
	.4byte lbl_80162554
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0

.global s_OSCheckHeap__Failed_HeapArray_in_8022fc20
s_OSCheckHeap__Failed_HeapArray_in_8022fc20:

	# ROM: 0x22CC20
	.asciz "OSCheckHeap: Failed HeapArray in %d"
	.asciz "OSCheckHeap: Failed 0 <= heap && heap < NumHeaps in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed 0 <= hd->size in %d"
	.asciz "OSCheckHeap: Failed hd->allocated == NULL || hd->allocated->prev == NULL in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed InRange(cell, ArenaStart, ArenaEnd) in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed OFFSET(cell, ALIGNMENT) == 0 in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed cell->next == NULL || cell->next->prev == cell in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed MINOBJSIZE <= cell->size in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed OFFSET(cell->size, ALIGNMENT) == 0 in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed 0 < total && total <= hd->size in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed hd->free == NULL || hd->free->prev == NULL in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed cell->next == NULL || (char*) cell + cell->size < (char*) cell->next in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed total == hd->size in %d"
	.asciz "\nOSDumpHeap(%d):\n"
	.balign 4
	.asciz "--------Inactive\n"
	.balign 4
	.asciz "addr\tsize\t\tend\tprev\tnext\n"
	.balign 4
	.asciz "--------Allocated\n"
	.balign 4
	.asciz "%x\t%d\t%x\t%x\t%x\n"
	.asciz "--------Free\n"
	.byte 0x30, 0x30
	.4byte 0x30303030

.global lbl_8022FFB8
lbl_8022FFB8:

	# ROM: 0x22CFB8
	.4byte 0x029F0010
	.4byte 0x029F0033
	.4byte 0x029F0034
	.4byte 0x029F0035
	.4byte 0x029F0036
	.4byte 0x029F0037
	.4byte 0x029F0038
	.4byte 0x029F0039
	.4byte 0x12061203
	.4byte 0x12041205
	.4byte 0x00808000
	.4byte 0x0088FFFF
	.4byte 0x00841000
	.4byte 0x0064001D
	.4byte 0x02180000
	.4byte 0x81001C1E
	.4byte 0x00441B1E
	.4byte 0x00840800

.global lbl_80230000
lbl_80230000:

	# ROM: 0x22D000
	.4byte 0x00640027

.global lbl_80230004
lbl_80230004:

	# ROM: 0x22D004
	.4byte 0x191E0000

.global lbl_80230008
lbl_80230008:

	# ROM: 0x22D008
	.4byte 0x00DEFFFC

.global lbl_8023000C
lbl_8023000C:

	# ROM: 0x22D00C
	.4byte 0x02A08000

.global lbl_80230010
lbl_80230010:

	# ROM: 0x22D010
	.4byte 0x029C0028

.global lbl_80230014
lbl_80230014:

	# ROM: 0x22D014
	.4byte 0x16FC0054

.global lbl_80230018
lbl_80230018:

	# ROM: 0x22D018
	.4byte 0x16FD4348

.global lbl_8023001C
lbl_8023001C:

	# ROM: 0x22D01C
	.4byte 0x002102FF

.global lbl_80230020
lbl_80230020:

	# ROM: 0x22D020
	.4byte 0x02FF02FF

.global lbl_80230024
lbl_80230024:

	# ROM: 0x22D024
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0
	.4byte 0
	.4byte 0

.global s_____L2_INVALIDATE___SHOULD_NEVER_80230038
s_____L2_INVALIDATE___SHOULD_NEVER_80230038:

	# ROM: 0x22D038
	.asciz ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"
	.balign 4
	.asciz "Machine check received\n"
	.asciz "HID2 = 0x%x   SRR1 = 0x%x\n"
	.balign 4
	.asciz "Machine check was not DMA/locked cache related\n"
	.asciz "DMAErrorHandler(): An error occurred while processing DMA.\n"
	.asciz "The following errors have been detected and cleared :\n"
	.balign 4
	.asciz "\t- Requested a locked cache tag that was already in the cache\n"
	.balign 4
	.asciz "\t- DMA attempted to access normal cache\n"
	.balign 4
	.asciz "\t- DMA missed in data cache\n"
	.balign 4
	.asciz "\t- DMA queue overflowed\n"
	.balign 4
	.asciz "L1 i-caches initialized\n"
	.balign 4
	.asciz "L1 d-caches initialized\n"
	.balign 4
	.asciz "L2 cache initialized\n"
	.balign 4
	.asciz "Locked cache machine check handler installed\n"
	.byte 0x30, 0x30
	.4byte 0x30303030

.global s___________________________Contex_80230268
s___________________________Contex_80230268:

	# ROM: 0x22D268
	.asciz "------------------------- Context 0x%08x -------------------------\n"
	.asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
	.balign 4
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.balign 4
	.asciz "\nGQRs----------\n"
	.balign 4
	.asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
	.balign 4
	.asciz "\n\nFPRs----------\n"
	.balign 4
	.asciz "fr%d \t= %d \t fr%d \t= %d\n"
	.balign 4
	.asciz "\n\nPSFs----------\n"
	.balign 4
	.asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"

.global s_FPU_unavailable_handler_installe_8023041c
s_FPU_unavailable_handler_installe_8023041c:

	# ROM: 0x22D41C
	.asciz "FPU-unavailable handler installed\n"
	.byte 0x30

.global s__in___s__on_line__d__80230440
s__in___s__on_line__d__80230440:

	# ROM: 0x22D440
	.asciz " in \"%s\" on line %d.\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"
	.asciz "Non-recoverable Exception %d"
	.balign 4
	.asciz "Unhandled Exception %d"
	.balign 4
	.asciz "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"
	.balign 4
	.asciz "TB = 0x%016llx\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
	.asciz "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"
	.balign 4
	.asciz "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"
	.asciz "AI DMA Address =   0x%04x%04x\n"
	.balign 4
	.asciz "ARAM DMA Address = 0x%04x%04x\n"
	.balign 4
	.asciz "DI DMA Address =   0x%08x\n"
	.balign 4
	.asciz "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"
	.balign 4

.global switchdataD_8023071c
switchdataD_8023071c:

	# ROM: 0x22D71C
	.4byte func_80164578
	.4byte func_80164578
	.4byte lbl_801644D0
	.4byte lbl_801644E8
	.4byte func_80164578
	.4byte lbl_801644FC
	.4byte lbl_80164514
	.4byte func_80164578
	.4byte func_80164578
	.4byte func_80164578
	.4byte func_80164578
	.4byte func_80164578
	.4byte func_80164578
	.4byte func_80164578
	.4byte func_80164578
	.4byte lbl_8016452C
	.4byte 0x30303030

.global s_2004_02_01_80230760
s_2004_02_01_80230760:

	# ROM: 0x22D760
	.asciz "2004/02/01"
	.byte 0x30
	.4byte 0x30303030

.global lbl_80230770
lbl_80230770:

	# ROM: 0x22D770
	.4byte 0x020C020D
	.4byte 0x020E020F
	.4byte 0x02100211
	.4byte 0x02120213
	.4byte 0x02140215
	.4byte 0x02160217
	.4byte 0x02180219
	.4byte 0x021A021B
	.4byte 0x021C021D
	.4byte 0x021E021F
	.4byte 0x02200221
	.4byte 0x02220223
	.4byte 0x02240225
	.4byte 0x02260227
	.4byte 0x02280229
	.4byte 0x022A022B
	.4byte 0x022C022D
	.4byte 0x022E022F
	.4byte 0x02300231
	.4byte 0x02320233
	.4byte 0x02340235
	.4byte 0x02360237
	.4byte 0x02380239
	.4byte 0x023A023B
	.4byte 0x023C023D
	.4byte 0x023E023F
	.4byte 0x02400241
	.4byte 0x02420243
	.4byte 0x02440245
	.4byte 0x02460247
	.4byte 0x02480249
	.4byte 0x024A024B
	.4byte 0x024C024D
	.4byte 0x024E024F
	.4byte 0x02500251
	.4byte 0x02520253
	.4byte 0x02540255
	.4byte 0x02560257
	.4byte 0x02580259
	.4byte 0x025A025B
	.4byte 0x025C025D
	.4byte 0x025E025F
	.4byte 0x02600261
	.4byte 0x02620263
	.4byte 0x02640265
	.4byte 0x02660267
	.4byte 0x02680269
	.4byte 0x026A020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C026B
	.4byte 0x026C026D
	.4byte 0x026E026F
	.4byte 0x02700271
	.4byte 0x02720273
	.4byte 0x02740275
	.4byte 0x02760277
	.4byte 0x02780279
	.4byte 0x027A027B
	.4byte 0x027C027D
	.4byte 0x027E027F
	.4byte 0x02800281
	.4byte 0x02820283
	.4byte 0x02840285
	.4byte 0x02860287
	.4byte 0x02880289
	.4byte 0x028A028B
	.4byte 0x028C028D
	.4byte 0x028E028F
	.4byte 0x02900291
	.4byte 0x02920293
	.4byte 0x02940295
	.4byte 0x02960297
	.4byte 0x02980299
	.4byte 0x029A029B
	.4byte 0x029C029D
	.4byte 0x029E029F
	.4byte 0x02A002A1
	.4byte 0x02A202A3
	.4byte 0x02A402A5
	.4byte 0x02A602A7
	.4byte 0x02A802A9

.global lbl_802308F0
lbl_802308F0:

	# ROM: 0x22D8F0
	.4byte 0x00000001
	.4byte 0x00020003
	.4byte 0x00040005
	.4byte 0x00060007
	.4byte 0x00080009
	.4byte 0x000A000B
	.4byte 0x000C000D
	.4byte 0x000E000F
	.4byte 0x00100011
	.4byte 0x00120013
	.4byte 0x00140015
	.4byte 0x00160017
	.4byte 0x00180019
	.4byte 0x001A001B
	.4byte 0x001C001D
	.4byte 0x001E001F
	.4byte 0x00200021
	.4byte 0x00220023
	.4byte 0x00240025
	.4byte 0x00260027
	.4byte 0x00280029
	.4byte 0x002A002B
	.4byte 0x002C002D
	.4byte 0x002E002F
	.4byte 0x00300031
	.4byte 0x00320033
	.4byte 0x00340035
	.4byte 0x00360037
	.4byte 0x00380039
	.4byte 0x003A003B
	.4byte 0x003C003D
	.4byte 0x003E003F
	.4byte 0x00400041
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460047
	.4byte 0x00480049
	.4byte 0x004A004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620063
	.4byte 0x00640065
	.4byte 0x00660067
	.4byte 0x00680069
	.4byte 0x006A006B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000006C
	.4byte 0x006D006E
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00730000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000074
	.4byte 0x00750076
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000007B
	.4byte 0x007C007D
	.4byte 0x007E007F
	.4byte 0x00800081
	.4byte 0x00820083
	.4byte 0x00840085
	.4byte 0x00860087
	.4byte 0x00880089
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000008A
	.4byte 0x008B008C
	.4byte 0x008D008E
	.4byte 0x008F0090
	.4byte 0x00910000
	.4byte 0
	.4byte 0x00000092
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000093
	.4byte 0x00940095
	.4byte 0x00960097
	.4byte 0x00980099
	.4byte 0x009A009B
	.4byte 0x009C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x009D009E
	.4byte 0x009F00A0
	.4byte 0x00A100A2
	.4byte 0x00A300A4
	.4byte 0x00A500A6
	.4byte 0x00A700A8
	.4byte 0x00A900AA
	.4byte 0x00AB00AC
	.4byte 0x00AD00AE
	.4byte 0x00AF00B0
	.4byte 0x00B100B2
	.4byte 0x00B300B4
	.4byte 0x00B500B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00B700B8
	.4byte 0x00B900BA
	.4byte 0x00BB00BC
	.4byte 0x00BD00BE
	.4byte 0x00BF00C0
	.4byte 0x00C100C2
	.4byte 0x00C300C4
	.4byte 0x00C500C6
	.4byte 0x00C700C8
	.4byte 0x00C900CA
	.4byte 0x00CB00CC
	.4byte 0x00CD00CE
	.4byte 0x00CF00D0
	.4byte 0
	.4byte 0
	.4byte 0x00D100D2
	.4byte 0x00D300D4
	.4byte 0x00D500D6
	.4byte 0x00D700D8
	.4byte 0x00D900DA
	.4byte 0x00DB00DC
	.4byte 0x00DD00DE
	.4byte 0x00DF00E0
	.4byte 0x00E100E2
	.4byte 0x00E300E4
	.4byte 0x00E500E6
	.4byte 0x00E700E8
	.4byte 0x00E900EA
	.4byte 0x00EB00EC
	.4byte 0x00ED00EE
	.4byte 0x00EF00F0
	.4byte 0x00F100F2
	.4byte 0x00F300F4
	.4byte 0x00F500F6
	.4byte 0x00F700F8
	.4byte 0x00F900FA
	.4byte 0x00FB00FC
	.4byte 0x00FD00FE
	.4byte 0x00FF0100
	.4byte 0x01010102
	.4byte 0x01030104
	.4byte 0x01050106
	.4byte 0x01070108
	.4byte 0x0109010A
	.4byte 0x010B010C
	.4byte 0x010D010E
	.4byte 0x010F0110
	.4byte 0x01110112
	.4byte 0x01130114
	.4byte 0x01150116
	.4byte 0x01170118
	.4byte 0x0119011A
	.4byte 0x011B011C
	.4byte 0x011D011E
	.4byte 0x011F0120
	.4byte 0x01210122
	.4byte 0x01230000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01240125
	.4byte 0x01260127
	.4byte 0x01280129
	.4byte 0x012A012B
	.4byte 0x012C012D
	.4byte 0x012E012F
	.4byte 0x01300131
	.4byte 0x01320133
	.4byte 0x01340135
	.4byte 0x01360137
	.4byte 0x01380139
	.4byte 0x013A013B
	.4byte 0x013C013D
	.4byte 0x013E013F
	.4byte 0x01400141
	.4byte 0x01420143
	.4byte 0x01440145
	.4byte 0x01460147
	.4byte 0x01480149
	.4byte 0x014A014B
	.4byte 0x014C014D
	.4byte 0x014E014F
	.4byte 0x01500151
	.4byte 0x01520153
	.4byte 0x01540155
	.4byte 0x01560157
	.4byte 0x01580159
	.4byte 0x015A015B
	.4byte 0x015C015D
	.4byte 0x015E015F
	.4byte 0x01600161
	.4byte 0x01620163
	.4byte 0x01640165
	.4byte 0x01660167
	.4byte 0x01680169
	.4byte 0x016A016B
	.4byte 0x016C016D
	.4byte 0x016E016F
	.4byte 0x01700171
	.4byte 0x01720173
	.4byte 0x01740175
	.4byte 0x01760177
	.4byte 0x01780179
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x017A017B
	.4byte 0x017C017D
	.4byte 0x017E017F
	.4byte 0x01800181
	.4byte 0x01820183
	.4byte 0x01840185
	.4byte 0x01860187
	.4byte 0x01880189
	.4byte 0x018A018B
	.4byte 0x018C018D
	.4byte 0x018E018F
	.4byte 0x01900191
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01920193
	.4byte 0x01940195
	.4byte 0x01960197
	.4byte 0x01980199
	.4byte 0x019A019B
	.4byte 0x019C019D
	.4byte 0x019E019F
	.4byte 0x01A001A1
	.4byte 0x01A201A3
	.4byte 0x01A401A5
	.4byte 0x01A601A7
	.4byte 0x01A801A9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01AA01AB
	.4byte 0x01AC01AD
	.4byte 0x01AE01AF
	.4byte 0x01B001B1
	.4byte 0x01B201B3
	.4byte 0x01B401B5
	.4byte 0x01B601B7
	.4byte 0x01B801B9
	.4byte 0x01BA01BB
	.4byte 0x01BC01BD
	.4byte 0x01BE01BF
	.4byte 0x01C001C1
	.4byte 0x01C201C3
	.4byte 0x01C401C5
	.4byte 0x01C601C7
	.4byte 0x01C801C9
	.4byte 0x01CA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01CB01CC
	.4byte 0x01CD01CE
	.4byte 0x01CF01D0
	.4byte 0x01D101D2
	.4byte 0x01D301D4
	.4byte 0x01D501D6
	.4byte 0x01D701D8
	.4byte 0x01D901DA
	.4byte 0x01DB01DC
	.4byte 0x01DD01DE
	.4byte 0x01DF01E0
	.4byte 0x01E101E2
	.4byte 0x01E301E4
	.4byte 0x01E501E6
	.4byte 0x01E701E8
	.4byte 0x01E901EA
	.4byte 0x01EB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01EC01ED
	.4byte 0x01EE01EF
	.4byte 0x01F001F1
	.4byte 0x01F201F3
	.4byte 0x01F401F5
	.4byte 0x01F601F7
	.4byte 0x01F801F9
	.4byte 0x01FA01FB
	.4byte 0x01FC01FD
	.4byte 0x01FE01FF
	.4byte 0x02000201
	.4byte 0x02020203
	.4byte 0x02040205
	.4byte 0x02060207
	.4byte 0x02080209
	.4byte 0x020A020B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000020C
	.4byte 0x020D020E
	.4byte 0x020F0210
	.4byte 0x02110212
	.4byte 0x02130214
	.4byte 0x02150216
	.4byte 0x02170218
	.4byte 0x0219021A
	.4byte 0x021B021C
	.4byte 0x021D021E
	.4byte 0x021F0220
	.4byte 0x02210222
	.4byte 0x02230224
	.4byte 0x02250226
	.4byte 0x02270228
	.4byte 0x0229022A
	.4byte 0x022B022C
	.4byte 0x022D022E
	.4byte 0x022F0230
	.4byte 0x02310232
	.4byte 0x02330234
	.4byte 0x02350236
	.4byte 0x02370238
	.4byte 0x0239023A
	.4byte 0x023B023C
	.4byte 0x023D023E
	.4byte 0x023F0240
	.4byte 0x02410242
	.4byte 0x02430244
	.4byte 0x02450246
	.4byte 0x02470248
	.4byte 0x0249024A
	.4byte 0x024B024C
	.4byte 0x024D024E
	.4byte 0x024F0250
	.4byte 0x02510252
	.4byte 0x02530254
	.4byte 0x02550256
	.4byte 0x02570258
	.4byte 0x0259025A
	.4byte 0x025B025C
	.4byte 0x025D025E
	.4byte 0x025F0260
	.4byte 0x02610262
	.4byte 0x02630264
	.4byte 0x02650266
	.4byte 0x02670268
	.4byte 0x0269026A
	.4byte 0x026B026C
	.4byte 0x026D026E
	.4byte 0x026F0270
	.4byte 0x02710272
	.4byte 0x02730274
	.4byte 0x02750276
	.4byte 0x02770278
	.4byte 0x0279027A
	.4byte 0x027B027C
	.4byte 0x027D027E
	.4byte 0x027F0280
	.4byte 0x02810282
	.4byte 0x02830284
	.4byte 0x02850286
	.4byte 0x02870288
	.4byte 0x0289028A
	.4byte 0x028B028C
	.4byte 0x028D028E
	.4byte 0x028F0290
	.4byte 0x02910292
	.4byte 0x02930294
	.4byte 0x02950296
	.4byte 0x02970298
	.4byte 0x0299029A
	.4byte 0x029B029C
	.4byte 0x029D029E
	.4byte 0x029F02A0
	.4byte 0x02A102A2
	.4byte 0x02A302A4
	.4byte 0x02A502A6
	.4byte 0x02A702A8
	.4byte 0x02A902AA
	.4byte 0x02AB02AC
	.4byte 0x02AD02AE
	.4byte 0x02AF02B0
	.4byte 0x02B102B2
	.4byte 0x02B302B4
	.4byte 0x02B502B6
	.4byte 0x02B702B8
	.4byte 0x02B902BA
	.4byte 0x02BB02BC
	.4byte 0x02BD02BE
	.4byte 0x02BF02C0
	.4byte 0x02C102C2
	.4byte 0x02C302C4
	.4byte 0x02C502C6
	.4byte 0x02C702C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02C902CA
	.4byte 0x02CB02CC
	.4byte 0x02CD02CE
	.4byte 0x02CF02D0
	.4byte 0x02D102D2
	.4byte 0x02D302D4
	.4byte 0x02D502D6
	.4byte 0x02D702D8
	.4byte 0x02D902DA
	.4byte 0x02DB02DC
	.4byte 0x02DD02DE
	.4byte 0x02DF02E0
	.4byte 0x02E102E2
	.4byte 0x02E302E4
	.4byte 0x02E502E6
	.4byte 0x000002E7
	.4byte 0x02E802E9
	.4byte 0x02EA02EB
	.4byte 0x02EC02ED
	.4byte 0x02EE02EF
	.4byte 0x02F002F1
	.4byte 0x02F202F3
	.4byte 0x02F402F5
	.4byte 0x02F602F7
	.4byte 0x02F802F9
	.4byte 0x02FA02FB
	.4byte 0x02FC02FD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02FE02FF
	.4byte 0x03000301
	.4byte 0x03020303
	.4byte 0x03040305
	.4byte 0x03060307
	.4byte 0x03080309
	.4byte 0x030A030B
	.4byte 0x030C030D
	.4byte 0x030E030F
	.4byte 0x03100311
	.4byte 0x03120313
	.4byte 0x03140315
	.4byte 0x03160317
	.4byte 0x03180319
	.4byte 0x031A031B
	.4byte 0x00003030
	.4byte 0x30303030

.global lbl_80231280
lbl_80231280:

	# ROM: 0x22E280
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF
	.4byte 0x30303030

.global s_OSLink__unknown_relocation_type___802312b0
s_OSLink__unknown_relocation_type___802312b0:

	# ROM: 0x22E2B0
	.asciz "OSLink: unknown relocation type %3d\n"
	.byte 0x30, 0x30, 0x30

.global s_OSUnlink__unknown_relocation_typ_802312d8
s_OSUnlink__unknown_relocation_typ_802312d8:

	# ROM: 0x22E2D8
	.asciz "OSUnlink: unknown relocation type %3d\n"
	.byte 0x30

.global lbl_80231300
lbl_80231300:

	# ROM: 0x22E300
	.4byte OnReset
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.global s_OSResetSystem____You_can_t_speci_80231310
s_OSResetSystem____You_can_t_speci_80231310:

	# ROM: 0x22E310
	.asciz "OSResetSystem(): You can't specify TRUE to forceMenu if you restart. Ignored\n"
	.byte 0x30, 0x30

.global lbl_80231360
lbl_80231360:

	# ROM: 0x22E360
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003B
	.4byte 0x0000005A
	.4byte 0x00000078
	.4byte 0x00000097
	.4byte 0x000000B5
	.4byte 0x000000D4
	.4byte 0x000000F3
	.4byte 0x00000111
	.4byte 0x00000130
	.4byte 0x0000014E

.global lbl_80231390
lbl_80231390:

	# ROM: 0x22E390
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003C
	.4byte 0x0000005B
	.4byte 0x00000079
	.4byte 0x00000098
	.4byte 0x000000B6
	.4byte 0x000000D5
	.4byte 0x000000F4
	.4byte 0x00000112
	.4byte 0x00000131
	.4byte 0x0000014F

.global s_DVDConvertEntrynumToPath_possibl_802313c0
s_DVDConvertEntrynumToPath_possibl_802313c0:

	# ROM: 0x22E3C0
	.asciz "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"

.global s_DVDReadAsync____specified_area_i_80231488
s_DVDReadAsync____specified_area_i_80231488:

	# ROM: 0x22E488
	.asciz "DVDReadAsync(): specified area is out of the file  "
	.4byte 0x30303030

.global lbl_802314C0
lbl_802314C0:

	# ROM: 0x22E4C0
	.asciz "<< Dolphin SDK - DVD\trelease build: Apr  5 2004 04:14:51 (0x2301) >>"
	.balign 4

.global s_load_fst_80231508
s_load_fst_80231508:

	# ROM: 0x22E508
	.asciz "load fst\n"
	.balign 4

.global s_DVDChangeDisk____FST_in_the_new_d_80231514
s_DVDChangeDisk____FST_in_the_new_d_80231514:

	# ROM: 0x22E514
	.asciz "DVDChangeDisk(): FST in the new disc is too big.   "

.global switchdataD_80231548
switchdataD_80231548:

	# ROM: 0x22E548
	.4byte lbl_8016F21C
	.4byte lbl_8016EF70
	.4byte lbl_8016F010
	.4byte lbl_8016F034
	.4byte lbl_8016EF70
	.4byte lbl_8016EF44
	.4byte lbl_8016F054
	.4byte lbl_8016F0B8
	.4byte lbl_8016F0E4
	.4byte lbl_8016F118
	.4byte lbl_8016F13C
	.4byte lbl_8016F160
	.4byte lbl_8016F184
	.4byte lbl_8016F1A8
	.4byte lbl_8016F1D0
	.4byte lbl_8016F044
	.4byte lbl_8016F1FC

.global lbl_8023158C
lbl_8023158C:

	# ROM: 0x22E58C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.asciz "DVDChangeDiskAsync(): You can't specify NULL to company name.  \n"
	.balign 4

.global switchdataD_802315dc
switchdataD_802315dc:

	# ROM: 0x22E5DC
	.4byte lbl_8016FE94
	.4byte lbl_8016FE94
	.4byte lbl_8016FEB4
	.4byte lbl_8016FEF8
	.4byte lbl_8016FF44
	.4byte lbl_8016FFC0
	.4byte lbl_8016FFC0
	.4byte lbl_8016FFC0
	.4byte lbl_8016FFC0
	.4byte func_80170098
	.4byte func_80170098
	.4byte lbl_8016FE94
	.4byte lbl_8016FFC0

.global switchdataD_80231610
switchdataD_80231610:

	# ROM: 0x22E610
	.4byte lbl_80170230
	.4byte lbl_80170238
	.4byte lbl_80170228
	.4byte lbl_80170228
	.4byte lbl_80170230
	.4byte lbl_80170230
	.4byte lbl_80170230
	.4byte lbl_80170230
	.4byte lbl_80170230
	.4byte lbl_80170238
	.4byte lbl_80170228
	.4byte lbl_80170228
	.4byte lbl_80170230
	.4byte 0x30303030

.global lbl_80231648
lbl_80231648:

	# ROM: 0x22E648
	.4byte 0
	.4byte 0x00023A00
	.4byte 0x00062800
	.4byte 0x00030200
	.4byte 0x00031100
	.4byte 0x00052000
	.4byte 0x00052001
	.4byte 0x00052100
	.4byte 0x00052400
	.4byte 0x00052401
	.4byte 0x00052402
	.4byte 0x000B5A01
	.4byte 0x00056300
	.4byte 0x00020401
	.4byte 0x00020400
	.4byte 0x00040800
	.4byte 0x00100007
	.4byte 0

.global lbl_80231690
lbl_80231690:

	# ROM: 0x22E690
	.4byte 0x0A0A0A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A96
	.4byte 0x7B91CC82
	.4byte 0xCC837083
	.4byte 0x8F815B83
	.4byte 0x7B835E83
	.4byte 0x9382F089
	.4byte 0x9F82B582
	.4byte 0xC493648C
	.4byte 0xB982F04F
	.4byte 0x464682C9
	.4byte 0x82B58141
	.4byte 0x0A967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC8E
	.4byte 0x778EA682
	.4byte 0xC98F5D82
	.4byte 0xC182C482
	.4byte 0xAD82BE82
	.4byte 0xB382A281
	.4byte 0x42000000

.global s__An_error_has_occurred__Turn_the_80231700
s__An_error_has_occurred__Turn_the_80231700:

	# ROM: 0x22E700
	.asciz "\n\n\nAn error has occurred.\nTurn the power off and refer to the\nNintendo GameCube Instruction Booklet\nfor further instructions."
	.balign 4

.global s__Ein_Fehler_ist_aufgetreten__Bit_80231780
s__Ein_Fehler_ist_aufgetreten__Bit_80231780:

	# ROM: 0x22E780
	.asciz "\n\n\nEin Fehler ist aufgetreten.\nBitte schalten Sie den Nintendo GameCube\naus und lesen Sie die Bedienungsanleitung,\num weitere Informationen zu erhalten."
	.balign 4

.global lbl_8023181C
lbl_8023181C:

	# ROM: 0x22E81C
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652E0A
	.4byte 0x45746569
	.4byte 0x676E657A
	.4byte 0x206C6120
	.4byte 0x636F6E73
	.4byte 0x6F6C6520
	.4byte 0x65742072
	.4byte 0xE966E972
	.asciz "ez-vous au\nmanuel d'instructions Nintendo GameCube\npour de plus amples informations."
	.balign 4

.global lbl_802318AC
lbl_802318AC:

	# ROM: 0x22E8AC
	.4byte 0x0A0A0A53
	.4byte 0x65206861
	.4byte 0x2070726F
	.4byte 0x64756369
	.4byte 0x646F2075
	.4byte 0x6E206572
	.4byte 0x726F722E
	.4byte 0x0A417061
	.4byte 0x6761206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61207920
	.4byte 0x636F6E73
	.4byte 0x756C7461
	.4byte 0x20656C20
	.4byte 0x6D616E75
	.4byte 0x616C0A64
	.4byte 0x6520696E
	.4byte 0x73747275
	.4byte 0x6363696F
	.4byte 0x6E657320
	.4byte 0x6465204E
	.4byte 0x696E7465
	.4byte 0x6E646F20
	.4byte 0x47616D65
	.4byte 0x43756265
	.4byte 0x0A706172
	.4byte 0x61206F62
	.4byte 0x74656E65
	.4byte 0x72206DE1
	.4byte 0x7320696E
	.4byte 0x666F726D
	.4byte 0x616369F3
	.4byte 0x6E2E0000

.global lbl_80231934
lbl_80231934:

	# ROM: 0x22E934
	.4byte 0x0A0A0A53
	.4byte 0x6920E820
	.asciz "verificato un errore.\nSpegni (OFF) e controlla il manuale\nd'istruzioni del Nintendo GameCube\nper ulteriori indicazioni."

.global s__Er_is_een_fout_opgetreden__Zet_d_802319b4
s__Er_is_een_fout_opgetreden__Zet_d_802319b4:

	# ROM: 0x22E9B4
	.asciz "\n\n\nEr is een fout opgetreden.\nZet de Nintendo GameCube uit en\nraadpleeg de handleiding van de\nNintendo GameCube voor nadere\ninstructies."
	.byte 0x30, 0x30, 0x30

.global s__Game_Name______c_c_c_c_80231a40
s__Game_Name______c_c_c_c_80231a40:

	# ROM: 0x22EA40
	.asciz "  Game Name ... %c%c%c%c\n"
	.balign 4
	.asciz "  Company ..... %c%c\n"
	.balign 4
	.asciz "  Disk # ...... %d\n"
	.asciz "  Game ver .... %d\n"
	.asciz "  Streaming ... %s\n"

.global lbl_80231AB0
lbl_80231AB0:

	# ROM: 0x22EAB0
	.asciz "<< Dolphin SDK - VI\trelease build: Apr  7 2004 04:13:59 (0x2301) >>"
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x00040C0C
	.4byte 0x0C0C0208
	.4byte 0x02080208
	.4byte 0x0208020E
	.4byte 0x01AD4047
	.4byte 0x69A20175
	.4byte 0x7A00019C
	.4byte 0x0500011F
	.4byte 0x00230024
	.4byte 0x00010000
	.4byte 0x0D0C0B0A
	.4byte 0x026B026A
	.4byte 0x0269026C
	.4byte 0x027101B0
	.4byte 0x404B6AAC
	.4byte 0x017C8500
	.4byte 0x01A40500
	.4byte 0x011F0021
	.4byte 0x00210002
	.4byte 0x00020D0B
	.4byte 0x0D0B026B
	.4byte 0x026D026B
	.4byte 0x026D0270
	.4byte 0x01B0404B
	.4byte 0x6AAC017C
	.4byte 0x850001A4
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x100F0E0D
	.4byte 0x02060205
	.4byte 0x02040207
	.4byte 0x020D01AD
	.4byte 0x404E70A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x0004100E
	.4byte 0x100E0206
	.4byte 0x02080206
	.4byte 0x0208020E
	.4byte 0x01AD404E
	.4byte 0x70A20175
	.4byte 0x7A00019C
	.4byte 0x0C0001E0
	.4byte 0x00300030
	.4byte 0x00060006
	.4byte 0x18181818
	.4byte 0x040E040E
	.4byte 0x040E040E
	.4byte 0x041A01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0C00
	.4byte 0x01E0002C
	.4byte 0x002C000A
	.4byte 0x000A1818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69A8017B
	.4byte 0x7A00019C
	.4byte 0x060000F1
	.4byte 0x00180019
	.4byte 0x00010000
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x4047699F
	.4byte 0x01727A00
	.4byte 0x019C0C00
	.4byte 0x01E00030
	.4byte 0x00300006
	.4byte 0x00061818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69B40187
	.4byte 0x7A00019C
	.4byte 0x01F001DC
	.4byte 0x01AE0174
	.4byte 0x012900DB
	.4byte 0x008E0046
	.4byte 0x000C00E2
	.4byte 0x00CB00C0
	.4byte 0x00C400CF
	.4byte 0x00DE00EC
	.4byte 0x00FC0008
	.4byte 0x000F0013
	.4byte 0x0013000F
	.4byte 0x000C0008
	.4byte 0x00010000

.global switchdataD_80231ca4
switchdataD_80231ca4:

	# ROM: 0x22ECA4
	.4byte lbl_80170EFC
	.4byte lbl_80170F04
	.4byte lbl_80170F3C
	.4byte lbl_80170F44
	.4byte lbl_80170F0C
	.4byte lbl_80170F14
	.4byte lbl_80170F74
	.4byte lbl_80170F74
	.4byte lbl_80170F2C
	.4byte lbl_80170F34
	.4byte lbl_80170F74
	.4byte lbl_80170F74
	.4byte lbl_80170F74
	.4byte lbl_80170F74
	.4byte lbl_80170F74
	.4byte lbl_80170F74
	.4byte lbl_80170F4C
	.4byte lbl_80170F54
	.4byte lbl_80170F74
	.4byte lbl_80170F74
	.4byte lbl_80170F1C
	.4byte lbl_80170F24
	.4byte lbl_80170F74
	.4byte lbl_80170F74
	.4byte lbl_80170F5C
	.4byte lbl_80170F74
	.4byte lbl_80170F64
	.4byte lbl_80170F74
	.4byte lbl_80170F6C
	.4byte lbl_80170F6C
	.4byte lbl_80170F6C
	.asciz "***************************************\n"
	.balign 4
	.asciz " ! ! ! C A U T I O N ! ! !             \n"
	.balign 4
	.asciz "This TV format \"DEBUG_PAL\" is only for \n"
	.balign 4
	.asciz "temporary solution until PAL DAC board \n"
	.balign 4
	.asciz "is available. Please do NOT use this   \n"
	.balign 4
	.asciz "mode in real games!!!                  \n"
	.balign 4
	.asciz "VIConfigure(): Tried to change mode from (%d) to (%d), which is forbidden\n"
	.balign 4

.global switchdataD_80231e74
switchdataD_80231e74:

	# ROM: 0x22EE74
	.4byte lbl_80172AC4
	.4byte lbl_80172ACC
	.4byte lbl_80172AD4
	.4byte lbl_80172AC4
	.4byte lbl_80172ACC
	.4byte lbl_80172AD4
	.4byte lbl_80172AC4
	.4byte lbl_80172AC4
	.4byte 0x30303030

.global lbl_80231E98
lbl_80231E98:

	# ROM: 0x22EE98
	.asciz "<< Dolphin SDK - PAD\trelease build: Apr  5 2004 04:14:49 (0x2301) >>"
	.balign 4

.global lbl_80231EE0
lbl_80231EE0:

	# ROM: 0x22EEE0
	.4byte OnReset_N2
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.global lbl_80231EF0
lbl_80231EF0:

	# ROM: 0x22EEF0
	.asciz "<< Dolphin SDK - AI\trelease build: Apr  5 2004 04:15:02 (0x2301) >>"
	.4byte 0x30303030

.global lbl_80231F38
lbl_80231F38:

	# ROM: 0x22EF38
	.asciz "<< Dolphin SDK - AR\trelease build: Apr  5 2004 04:15:03 (0x2301) >>"
	.4byte 0x30303030

.global lbl_80231F80
lbl_80231F80:

	# ROM: 0x22EF80
	.asciz "<< Dolphin SDK - ARQ\trelease build: Apr  5 2004 04:15:04 (0x2301) >>"
	.byte 0x30, 0x30, 0x30

.global lbl_80231FC8
lbl_80231FC8:

	# ROM: 0x22EFC8
	.asciz "<< Dolphin SDK - AX\trelease build: Apr  5 2004 04:15:05 (0x2301) >>"
	.4byte 0x30303030

.global lbl_80232010
lbl_80232010:

	# ROM: 0x22F010
	.4byte 0x00000DF8
	.4byte 0x00000F78
	.4byte 0x000014B8
	.4byte 0x000019F8
	.4byte 0x000019F8
	.4byte 0
	.4byte 0x000002F8
	.4byte 0x000002F8
	.4byte 0x000005BE
	.4byte 0x000002F8
	.4byte 0x000005F0
	.4byte 0x000005F0
	.4byte 0x000008B6
	.4byte 0
	.4byte 0x000004F1
	.4byte 0x000004F1
	.4byte 0x000009A6
	.4byte 0x000004F1
	.4byte 0x000009E2
	.4byte 0x000009E2
	.4byte 0x00000E97
	.4byte 0
	.4byte 0x000002F8
	.4byte 0x000002F8
	.4byte 0x000005BE
	.4byte 0
	.4byte 0x000004F1
	.4byte 0x000004F1
	.4byte 0x000009A6
	.4byte 0x000002F8
	.4byte 0x000005F0
	.4byte 0x000005F0
	.4byte 0x000008B6
	.4byte 0x000002F8
	.4byte 0x000007E9
	.4byte 0x000007E9
	.4byte 0x00000C9E
	.4byte 0
	.4byte 0x000002F8
	.4byte 0x000002F8
	.4byte 0x000005BE
	.4byte 0
	.4byte 0x000004F1
	.4byte 0x000004F1
	.4byte 0x000009A6
	.4byte 0x000004F1
	.4byte 0x000007E9
	.4byte 0x000007E9
	.4byte 0x00000AAF
	.4byte 0x000004F1
	.4byte 0x000009E2
	.4byte 0x000009E2
	.4byte 0x00000E97
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030

.global lbl_80232100
lbl_80232100:

	# ROM: 0x22F100
	.4byte 0x7FA17F43
	.4byte 0x7EE67E88
	.4byte 0x7E2B7DCE
	.4byte 0x7D727D16
	.4byte 0x7CBA7C5E
	.4byte 0x7C027BA7
	.4byte 0x7B4C7AF1
	.4byte 0x7A977A3D
	.4byte 0x79E37989
	.4byte 0x793078D6
	.4byte 0x787E7825
	.4byte 0x77CD7774
	.4byte 0x771C76C5
	.4byte 0x766D7616
	.4byte 0x75BF7569
	.4byte 0x751274BC
	.4byte 0x74667411
	.4byte 0x73BB7366
	.4byte 0x731172BD
	.4byte 0x72687214
	.4byte 0x71C0716C
	.4byte 0x711970C6
	.4byte 0x70737020
	.4byte 0x6FCD6F7B
	.4byte 0x6F296ED7
	.4byte 0x6E866E35
	.4byte 0x6DE36D93
	.4byte 0x6D426CF2
	.4byte 0x6CA16C52
	.4byte 0x6C026BB2
	.4byte 0x6B636B14
	.4byte 0x6AC56A77
	.4byte 0x6A2869DA
	.4byte 0x698C693F
	.4byte 0x68F168A4
	.4byte 0x6857680A
	.4byte 0x67BE6771
	.4byte 0x672566D9
	.4byte 0x668E6642
	.4byte 0x65F765AC
	.4byte 0x65616517
	.4byte 0x64CC6482
	.4byte 0x643863EE
	.4byte 0x63A5635C
	.4byte 0x631262CA
	.4byte 0x62816238
	.4byte 0x61F061A8
	.4byte 0x61606119
	.4byte 0x60D1608A
	.4byte 0x60435FFC
	.4byte 0x5FB55F6F
	.4byte 0x5F295EE3
	.4byte 0x5E9D5E57
	.4byte 0x5E125DCD
	.4byte 0x5D885D43
	.4byte 0x5CFE5CBA
	.4byte 0x5C765C32
	.4byte 0x5BEE5BAA
	.4byte 0x5B675B23
	.4byte 0x5AE05A9D
	.4byte 0x5A5B5A18
	.4byte 0x59D65994
	.4byte 0x59525910
	.4byte 0x58CF588D
	.4byte 0x584C580B
	.4byte 0x57CB578A
	.4byte 0x574A5709
	.4byte 0x56C95689
	.4byte 0x564A560A
	.4byte 0x55CB558C
	.4byte 0x554D550E
	.4byte 0x54D05491
	.4byte 0x54535415
	.4byte 0x53D75399
	.4byte 0x535C531E
	.4byte 0x52E152A4
	.4byte 0x5267522B
	.4byte 0x51EE51B2
	.4byte 0x5176513A
	.4byte 0x50FE50C3
	.4byte 0x79EC799B
	.4byte 0x794A78FA
	.4byte 0x78AA785A
	.4byte 0x780A77BB
	.4byte 0x776C771C
	.4byte 0x76CE767F
	.4byte 0x763075E2
	.4byte 0x75947546
	.4byte 0x74F974AB
	.4byte 0x745E7411
	.4byte 0x73C47377
	.4byte 0x732B72DE
	.4byte 0x72927246
	.4byte 0x71FB71AF
	.4byte 0x71647119
	.4byte 0x70CE7083
	.4byte 0x70396FEE
	.4byte 0x6FA46F5A
	.4byte 0x6F116EC7
	.4byte 0x6E7E6E35
	.4byte 0x6DEC6DA3
	.4byte 0x6D5A6D12
	.4byte 0x6CC96C81
	.4byte 0x6C3A6BF2
	.4byte 0x6BAA6B63
	.4byte 0x6B1C6AD5
	.4byte 0x6A8E6A48
	.4byte 0x6A0169BB
	.4byte 0x6975692F
	.4byte 0x68EA68A4
	.4byte 0x685F681A
	.4byte 0x67D56790
	.4byte 0x674B6707
	.4byte 0x66C3667F
	.4byte 0x663B65F7
	.4byte 0x65B46570
	.4byte 0x652D64EA
	.4byte 0x64A76464
	.4byte 0x642263E0
	.4byte 0x639E635C
	.4byte 0x631A62D8
	.4byte 0x62976255
	.4byte 0x621461D3
	.4byte 0x61926152
	.4byte 0x611160D1
	.4byte 0x60916051
	.4byte 0x60115FD2
	.4byte 0x5F925F53
	.4byte 0x5F145ED5
	.4byte 0x5E965E57
	.4byte 0x5E195DDB
	.4byte 0x5D9C5D5E
	.4byte 0x5D215CE3
	.4byte 0x5CA55C68
	.4byte 0x5C2B5BEE
	.4byte 0x5BB15B74
	.4byte 0x5B385AFB
	.4byte 0x5ABF5A83
	.4byte 0x5A475A0B
	.4byte 0x59CF5994
	.4byte 0x5959591D
	.4byte 0x58E258A8
	.4byte 0x586D5832
	.4byte 0x57F857BE
	.4byte 0x5783574A
	.4byte 0x571056D6
	.4byte 0x569D5663
	.4byte 0x562A55F1
	.4byte 0x55B8557F
	.4byte 0x5547550E
	.4byte 0x54D6549E
	.4byte 0x5466542E
	.4byte 0x53F653BE
	.4byte 0x5387534F
	.4byte 0x531852E1
	.4byte 0x52AA5274
	.4byte 0x523D5207
	.4byte 0x51D0519A
	.4byte 0x5164512E
	.4byte 0x50F850C3
	.4byte 0x74787433
	.4byte 0x73EF73AA
	.4byte 0x73667322
	.4byte 0x72DE729B
	.4byte 0x72577214
	.4byte 0x71D1718E
	.4byte 0x714B7108
	.4byte 0x70C67083
	.4byte 0x70416FFF
	.4byte 0x6FBD6F7B
	.4byte 0x6F3A6EF8
	.4byte 0x6EB76E76
	.4byte 0x6E356DF4
	.4byte 0x6DB36D72
	.4byte 0x6D326CF2
	.4byte 0x6CB16C71
	.4byte 0x6C326BF2
	.4byte 0x6BB26B73
	.4byte 0x6B346AF5
	.4byte 0x6AB66A77
	.4byte 0x6A3869FA
	.4byte 0x69BB697D
	.4byte 0x693F6901
	.4byte 0x68C36885
	.4byte 0x6848680A
	.4byte 0x67CD6790
	.4byte 0x67536716
	.4byte 0x66D9669D
	.4byte 0x66606624
	.4byte 0x65E865AC
	.4byte 0x65706534
	.4byte 0x64F964BD
	.4byte 0x64826447
	.4byte 0x640C63D1
	.4byte 0x6396635C
	.4byte 0x632162E7
	.4byte 0x62AC6272
	.4byte 0x623861FF
	.4byte 0x61C5618B
	.4byte 0x61526119
	.4byte 0x60DF60A6
	.4byte 0x606D6035
	.4byte 0x5FFC5FC4
	.4byte 0x5F8B5F53
	.4byte 0x5F1B5EE3
	.4byte 0x5EAB5E73
	.4byte 0x5E3C5E04
	.4byte 0x5DCD5D95
	.4byte 0x5D5E5D27
	.4byte 0x5CF15CBA
	.4byte 0x5C835C4D
	.4byte 0x5C165BE0
	.4byte 0x5BAA5B74
	.4byte 0x5B3E5B09
	.4byte 0x5AD35A9D
	.4byte 0x5A685A33
	.4byte 0x59FE59C9
	.4byte 0x5994595F
	.4byte 0x592B58F6
	.4byte 0x58C2588D
	.4byte 0x58595825
	.4byte 0x57F157BE
	.4byte 0x578A5756
	.4byte 0x572356F0
	.4byte 0x56BC5689
	.4byte 0x56565624
	.4byte 0x55F155BE
	.4byte 0x558C5559
	.4byte 0x552754F5
	.4byte 0x54C35491
	.4byte 0x545F542E
	.4byte 0x53FC53CB
	.4byte 0x53995368
	.4byte 0x53375306
	.4byte 0x52D552A4
	.4byte 0x52745243
	.4byte 0x521351E2
	.4byte 0x51B25182
	.4byte 0x51525122
	.4byte 0x50F250C3
	.4byte 0x6F426F08
	.4byte 0x6ECF6E96
	.4byte 0x6E5D6E24
	.4byte 0x6DEC6DB3
	.4byte 0x6D7A6D42
	.4byte 0x6D0A6CD2
	.4byte 0x6C996C61
	.4byte 0x6C2A6BF2
	.4byte 0x6BBA6B83
	.4byte 0x6B4B6B14
	.4byte 0x6ADD6AA6
	.4byte 0x6A6F6A38
	.4byte 0x6A0169CB
	.4byte 0x6994695E
	.4byte 0x692768F1
	.4byte 0x68BB6885
	.4byte 0x684F681A
	.4byte 0x67E467AE
	.4byte 0x67796744
	.4byte 0x670F66D9
	.4byte 0x66A46670
	.4byte 0x663B6606
	.4byte 0x65D2659D
	.asciz "eie4e"
	.byte 0x64, 0xCC
	.4byte 0x64986464
	.4byte 0x643163FD
	.4byte 0x63CA6396
	.4byte 0x63636330
	.4byte 0x62FD62CA
	.4byte 0x62976264
	.4byte 0x623161FF
	.4byte 0x61CC619A
	.4byte 0x61676135
	.4byte 0x610360D1
	.4byte 0x609F606D
	.4byte 0x603C600A
	.4byte 0x5FD95FA7
	.4byte 0x5F765F45
	.4byte 0x5F145EE3
	.4byte 0x5EB25E81
	.4byte 0x5E505E20
	.4byte 0x5DEF5DBF
	.4byte 0x5D8F5D5E
	.4byte 0x5D2E5CFE
	.4byte 0x5CCE5C9F
	.4byte 0x5C6F5C3F
	.4byte 0x5C105BE0
	.4byte 0x5BB15B82
	.4byte 0x5B525B23
	.4byte 0x5AF45AC6
	.4byte 0x5A975A68
	.4byte 0x5A3A5A0B
	.4byte 0x59DD59AE
	.4byte 0x59805952
	.4byte 0x592458F6
	.4byte 0x58C8589A
	.4byte 0x586D583F
	.4byte 0x581257E4
	.4byte 0x57B7578A
	.4byte 0x575D5730
	.4byte 0x570356D6
	.4byte 0x56A9567D
	.4byte 0x56505624
	.4byte 0x55F755CB
	.4byte 0x559F5573
	.4byte 0x5547551B
	.4byte 0x54EF54C3
	.4byte 0x5497546C
	.4byte 0x54405415
	.4byte 0x53EA53BE
	.4byte 0x53935368
	.4byte 0x533D5312
	.4byte 0x52E752BD
	.4byte 0x52925267
	.4byte 0x523D5213
	.4byte 0x51E851BE
	.4byte 0x5194516A
	.4byte 0x51405116
	.4byte 0x50EC50C3
	.4byte 0x6A486A19
	.4byte 0x69EA69BB
	.4byte 0x698C695E
	.4byte 0x692F6901
	.4byte 0x68D268A4
	.4byte 0x68766848
	.4byte 0x681A67EC
	.4byte 0x67BE6790
	.4byte 0x67626735
	.4byte 0x670766D9
	.4byte 0x66AC667F
	.4byte 0x66516624
	.4byte 0x65F765CA
	.4byte 0x659D6570
	.4byte 0x65436517
	.4byte 0x64EA64BD
	.4byte 0x64916464
	.4byte 0x6438640C
	.4byte 0x63E063B4
	.4byte 0x6388635C
	.4byte 0x63306304
	.4byte 0x62D862AC
	.4byte 0x62816255
	.4byte 0x622A61FF
	.4byte 0x61D361A8
	.4byte 0x617D6152
	.4byte 0x612760FC
	.4byte 0x60D160A6
	.4byte 0x607C6051
	.4byte 0x60275FFC
	.4byte 0x5FD25FA7
	.4byte 0x5F7D5F53
	.4byte 0x5F295EFF
	.4byte 0x5ED55EAB
	.4byte 0x5E815E57
	.4byte 0x5E2E5E04
	.4byte 0x5DDB5DB1
	.4byte 0x5D885D5E
	.4byte 0x5D355D0C
	.4byte 0x5CE35CBA
	.4byte 0x5C915C68
	.4byte 0x5C3F5C16
	.4byte 0x5BEE5BC5
	.4byte 0x5B9D5B74
	.4byte 0x5B4C5B23
	.4byte 0x5AFB5AD3
	.4byte 0x5AAB5A83
	.4byte 0x5A5B5A33
	.4byte 0x5A0B59E3
	.4byte 0x59BC5994
	.4byte 0x596C5945
	.4byte 0x591D58F6
	.4byte 0x58CF58A8
	.4byte 0x58805859
	.4byte 0x5832580B
	.4byte 0x57E457BE
	.4byte 0x57975770
	.4byte 0x574A5723
	.4byte 0x56FC56D6
	.4byte 0x56B05689
	.4byte 0x5663563D
	.4byte 0x561755F1
	.4byte 0x55CB55A5
	.4byte 0x557F5559
	.4byte 0x5534550E
	.4byte 0x54E954C3
	.4byte 0x549E5478
	.4byte 0x5453542E
	.4byte 0x540853E3
	.4byte 0x53BE5399
	.4byte 0x5374534F
	.4byte 0x532B5306
	.4byte 0x52E152BD
	.4byte 0x52985274
	.4byte 0x524F522B
	.4byte 0x520751E2
	.4byte 0x51BE519A
	.4byte 0x51765152
	.4byte 0x512E510A
	.4byte 0x50E650C3
	.4byte 0x65876561
	.4byte 0x653C6517
	.4byte 0x64F164CC
	.4byte 0x64A76482
	.4byte 0x645D6438
	.4byte 0x641363EE
	.4byte 0x63CA63A5
	.4byte 0x6380635C
	.4byte 0x63376312
	.4byte 0x62EE62CA
	.4byte 0x62A56281
	.4byte 0x625D6238
	.4byte 0x621461F0
	.4byte 0x61CC61A8
	.4byte 0x61846160
	.4byte 0x613C6119
	.4byte 0x60F560D1
	.4byte 0x60AD608A
	.4byte 0x60666043
	.4byte 0x601F5FFC
	.4byte 0x5FD95FB5
	.4byte 0x5F925F6F
	.4byte 0x5F4C5F29
	.4byte 0x5F065EE3
	.4byte 0x5EC05E9D
	.4byte 0x5E7A5E57
	.4byte 0x5E355E12
	.4byte 0x5DEF5DCD
	.4byte 0x5DAA5D88
	.4byte 0x5D655D43
	.4byte 0x5D215CFE
	.4byte 0x5CDC5CBA
	.4byte 0x5C985C76
	.4byte 0x5C545C32
	.4byte 0x5C105BEE
	.4byte 0x5BCC5BAA
	.4byte 0x5B885B67
	.4byte 0x5B455B23
	.4byte 0x5B025AE0
	.4byte 0x5ABF5A9D
	.4byte 0x5A7C5A5B
	.4byte 0x5A3A5A18
	.4byte 0x59F759D6
	.4byte 0x59B55994
	.4byte 0x59735952
	.4byte 0x59315910
	.4byte 0x58F058CF
	.4byte 0x58AE588D
	.4byte 0x586D584C
	.4byte 0x582C580B
	.4byte 0x57EB57CB
	.4byte 0x57AA578A
	.4byte 0x576A574A
	.4byte 0x57295709
	.4byte 0x56E956C9
	.4byte 0x56A95689
	.4byte 0x566A564A
	.4byte 0x562A560A
	.4byte 0x55EB55CB
	.4byte 0x55AB558C
	.4byte 0x556C554D
	.4byte 0x552D550E
	.4byte 0x54EF54D0
	.4byte 0x54B05491
	.4byte 0x54725453
	.4byte 0x54345415
	.4byte 0x53F653D7
	.4byte 0x53B85399
	.4byte 0x537B535C
	.4byte 0x533D531E
	.4byte 0x530052E1
	.4byte 0x52C352A4
	.4byte 0x52865267
	.4byte 0x5249522B
	.4byte 0x520D51EE
	.4byte 0x51D051B2
	.4byte 0x51945176
	.4byte 0x5158513A
	.4byte 0x511C50FE
	.4byte 0x50E050C3
	.4byte 0x60FC60DF
	.4byte 0x60C360A6
	.4byte 0x608A606D
	.4byte 0x60516035
	.4byte 0x60185FFC
	.4byte 0x5FE05FC4
	.4byte 0x5FA75F8B
	.4byte 0x5F6F5F53
	.4byte 0x5F375F1B
	.4byte 0x5EFF5EE3
	.4byte 0x5EC75EAB
	.4byte 0x5E8F5E73
	.4byte 0x5E575E3C
	.4byte 0x5E205E04
	.4byte 0x5DE85DCD
	.4byte 0x5DB15D95
	.4byte 0x5D7A5D5E
	.4byte 0x5D435D27
	.4byte 0x5D0C5CF1
	.4byte 0x5CD55CBA
	.4byte 0x5C9F5C83
	.4byte 0x5C685C4D
	.4byte 0x5C325C16
	.4byte 0x5BFB5BE0
	.4byte 0x5BC55BAA
	.4byte 0x5B8F5B74
	.4byte 0x5B595B3E
	.4byte 0x5B235B09
	.4byte 0x5AEE5AD3
	.4byte 0x5AB85A9D
	.4byte 0x5A835A68
	.4byte 0x5A4D5A33
	.4byte 0x5A1859FE
	.4byte 0x59E359C9
	.4byte 0x59AE5994
	.4byte 0x597A595F
	.4byte 0x5945592B
	.4byte 0x591058F6
	.4byte 0x58DC58C2
	.4byte 0x58A8588D
	.4byte 0x58735859
	.4byte 0x583F5825
	.4byte 0x580B57F1
	.4byte 0x57D757BE
	.4byte 0x57A4578A
	.4byte 0x57705756
	.4byte 0x573D5723
	.4byte 0x570956F0
	.4byte 0x56D656BC
	.4byte 0x56A35689
	.4byte 0x56705656
	.4byte 0x563D5624
	.4byte 0x560A55F1
	.4byte 0x55D855BE
	.4byte 0x55A5558C
	.4byte 0x55735559
	.4byte 0x55405527
	.4byte 0x550E54F5
	.4byte 0x54DC54C3
	.4byte 0x54AA5491
	.4byte 0x5478545F
	.4byte 0x5446542E
	.4byte 0x541553FC
	.4byte 0x53E353CB
	.4byte 0x53B25399
	.4byte 0x53815368
	.4byte 0x534F5337
	.4byte 0x531E5306
	.4byte 0x52ED52D5
	.4byte 0x52BD52A4
	.4byte 0x528C5274
	.4byte 0x525B5243
	.4byte 0x522B5213
	.4byte 0x51FA51E2
	.4byte 0x51CA51B2
	.4byte 0x519A5182
	.4byte 0x516A5152
	.4byte 0x513A5122
	.4byte 0x510A50F2
	.4byte 0x50DB50C3
	.4byte 0x5CA55C91
	.4byte 0x5C7C5C68
	.4byte 0x5C545C3F
	.4byte 0x5C2B5C16
	.4byte 0x5C025BEE
	.4byte 0x5BD95BC5
	.4byte 0x5BB15B9D
	.4byte 0x5B885B74
	.4byte 0x5B605B4C
	.4byte 0x5B385B23
	.4byte 0x5B0F5AFB
	.4byte 0x5AE75AD3
	.4byte 0x5ABF5AAB
	.4byte 0x5A975A83
	.4byte 0x5A6F5A5B
	.4byte 0x5A475A33
	.4byte 0x5A1F5A0B
	.4byte 0x59F759E3
	.4byte 0x59CF59BC
	.4byte 0x59A85994
	.4byte 0x5980596C
	.4byte 0x59595945
	.4byte 0x5931591D
	.4byte 0x590A58F6
	.4byte 0x58E258CF
	.4byte 0x58BB58A8
	.4byte 0x58945880
	.4byte 0x586D5859
	.4byte 0x58465832
	.4byte 0x581F580B
	.4byte 0x57F857E4
	.4byte 0x57D157BE
	.4byte 0x57AA5797
	.4byte 0x57835770
	.4byte 0x575D574A
	.4byte 0x57365723
	.4byte 0x571056FC
	.4byte 0x56E956D6
	.4byte 0x56C356B0
	.4byte 0x569D5689
	.4byte 0x56765663
	.4byte 0x5650563D
	.4byte 0x562A5617
	.4byte 0x560455F1
	.4byte 0x55DE55CB
	.4byte 0x55B855A5
	.4byte 0x5592557F
	.4byte 0x556C5559
	.4byte 0x55475534
	.4byte 0x5521550E
	.4byte 0x54FB54E9
	.4byte 0x54D654C3
	.4byte 0x54B0549E
	.4byte 0x548B5478
	.4byte 0x54665453
	.4byte 0x5440542E
	.4byte 0x541B5408
	.4byte 0x53F653E3
	.4byte 0x53D153BE
	.4byte 0x53AC5399
	.4byte 0x53875374
	.4byte 0x5362534F
	.4byte 0x533D532B
	.4byte 0x53185306
	.4byte 0x52F452E1
	.4byte 0x52CF52BD
	.4byte 0x52AA5298
	.4byte 0x52865274
	.4byte 0x5261524F
	.4byte 0x523D522B
	.4byte 0x52195207
	.4byte 0x51F451E2
	.4byte 0x51D051BE
	.4byte 0x51AC519A
	.4byte 0x51885176
	.4byte 0x51645152
	.4byte 0x5140512E
	.4byte 0x511C510A
	.4byte 0x50F850E6
	.4byte 0x50D550C3
	.4byte 0x58805873
	.4byte 0x58665859
	.4byte 0x584C583F
	.4byte 0x58325825
	.4byte 0x5818580B
	.4byte 0x57FE57F1
	.4byte 0x57E457D7
	.4byte 0x57CB57BE
	.4byte 0x57B157A4
	.4byte 0x5797578A
	.4byte 0x577D5770
	.4byte 0x57635756
	.4byte 0x574A573D
	.4byte 0x57305723
	.4byte 0x57165709
	.4byte 0x56FC56F0
	.4byte 0x56E356D6
	.4byte 0x56C956BC
	.4byte 0x56B056A3
	.4byte 0x56965689
	.4byte 0x567D5670
	.4byte 0x56635656
	.4byte 0x564A563D
	.4byte 0x56305624
	.4byte 0x5617560A
	.4byte 0x55FE55F1
	.4byte 0x55E455D8
	.4byte 0x55CB55BE
	.4byte 0x55B255A5
	.4byte 0x5598558C
	.4byte 0x557F5573
	.4byte 0x55665559
	.4byte 0x554D5540
	.4byte 0x55345527
	.4byte 0x551B550E
	.4byte 0x550254F5
	.4byte 0x54E954DC
	.4byte 0x54D054C3
	.4byte 0x54B754AA
	.4byte 0x549E5491
	.4byte 0x54855478
	.4byte 0x546C545F
	.4byte 0x54535446
	.4byte 0x543A542E
	.4byte 0x54215415
	.4byte 0x540853FC
	.4byte 0x53F053E3
	.4byte 0x53D753CB
	.4byte 0x53BE53B2
	.4byte 0x53A65399
	.4byte 0x538D5381
	.4byte 0x53745368
	.4byte 0x535C534F
	.4byte 0x53435337
	.4byte 0x532B531E
	.4byte 0x53125306
	.4byte 0x52FA52ED
	.4byte 0x52E152D5
	.4byte 0x52C952BD
	.4byte 0x52B052A4
	.4byte 0x5298528C
	.4byte 0x52805274
	.4byte 0x5267525B
	.4byte 0x524F5243
	.4byte 0x5237522B
	.4byte 0x521F5213
	.4byte 0x520751FA
	.4byte 0x51EE51E2
	.4byte 0x51D651CA
	.4byte 0x51BE51B2
	.4byte 0x51A6519A
	.4byte 0x518E5182
	.4byte 0x5176516A
	.4byte 0x515E5152
	.4byte 0x5146513A
	.4byte 0x512E5122
	.4byte 0x5116510A
	.4byte 0x50FE50F2
	.4byte 0x50E650DB
	.4byte 0x50CF50C3
	.4byte 0x548B5485
	.4byte 0x547E5478
	.4byte 0x5472546C
	.4byte 0x5466545F
	.4byte 0x54595453
	.4byte 0x544D5446
	.4byte 0x5440543A
	.4byte 0x5434542E
	.4byte 0x54275421
	.4byte 0x541B5415
	.4byte 0x540F5408
	.4byte 0x540253FC
	.4byte 0x53F653F0
	.4byte 0x53EA53E3
	.4byte 0x53DD53D7
	.4byte 0x53D153CB
	.4byte 0x53C453BE
	.4byte 0x53B853B2
	.4byte 0x53AC53A6
	.4byte 0x539F5399
	.4byte 0x5393538D
	.4byte 0x53875381
	.4byte 0x537B5374
	.4byte 0x536E5368
	.4byte 0x5362535C
	.4byte 0x5356534F
	.4byte 0x53495343
	.4byte 0x533D5337
	.4byte 0x5331532B
	.4byte 0x5325531E
	.4byte 0x53185312
	.4byte 0x530C5306
	.4byte 0x530052FA
	.4byte 0x52F452ED
	.4byte 0x52E752E1
	.4byte 0x52DB52D5
	.4byte 0x52CF52C9
	.4byte 0x52C352BD
	.4byte 0x52B752B0
	.4byte 0x52AA52A4
	.4byte 0x529E5298
	.4byte 0x5292528C
	.4byte 0x52865280
	.4byte 0x527A5274
	.4byte 0x526E5267
	.4byte 0x5261525B
	.4byte 0x5255524F
	.4byte 0x52495243
	.4byte 0x523D5237
	.4byte 0x5231522B
	.4byte 0x5225521F
	.4byte 0x52195213
	.4byte 0x520D5207
	.4byte 0x520151FA
	.4byte 0x51F451EE
	.4byte 0x51E851E2
	.4byte 0x51DC51D6
	.4byte 0x51D051CA
	.4byte 0x51C451BE
	.4byte 0x51B851B2
	.4byte 0x51AC51A6
	.4byte 0x51A0519A
	.4byte 0x5194518E
	.4byte 0x51885182
	.4byte 0x517C5176
	.4byte 0x5170516A
	.4byte 0x5164515E
	.4byte 0x51585152
	.4byte 0x514C5146
	.4byte 0x5140513A
	.4byte 0x5134512E
	.4byte 0x51285122
	.4byte 0x511C5116
	.4byte 0x5110510A
	.4byte 0x510450FE
	.4byte 0x50F850F2
	.4byte 0x50EC50E6
	.4byte 0x50E050DB
	.4byte 0x50D550CF
	.4byte 0x50C950C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x7A467A4F
	.4byte 0x7A587A61
	.4byte 0x7A6A7A73
	.4byte 0x7A7C7A85
	.4byte 0x7A8E7A97
	.4byte 0x7AA07AA9
	.4byte 0x7AB27ABB
	.4byte 0x7AC47ACD
	.4byte 0x7AD67ADF
	.4byte 0x7AE87AF1
	.4byte 0x7AFA7B03
	.4byte 0x7B0D7B16
	.4byte 0x7B1F7B28
	.4byte 0x7B317B3A
	.4byte 0x7B437B4C
	.4byte 0x7B557B5E
	.4byte 0x7B677B70
	.4byte 0x7B7A7B83
	.4byte 0x7B8C7B95
	.4byte 0x7B9E7BA7
	.4byte 0x7BB07BB9
	.4byte 0x7BC27BCC
	.4byte 0x7BD57BDE
	.4byte 0x7BE77BF0
	.4byte 0x7BF97C02
	.4byte 0x7C0B7C15
	.4byte 0x7C1E7C27
	.4byte 0x7C307C39
	.4byte 0x7C427C4B
	.4byte 0x7C557C5E
	.4byte 0x7C677C70
	.4byte 0x7C797C82
	.4byte 0x7C8C7C95
	.4byte 0x7C9E7CA7
	.4byte 0x7CB07CBA
	.4byte 0x7CC37CCC
	.4byte 0x7CD57CDE
	.4byte 0x7CE87CF1
	.4byte 0x7CFA7D03
	.4byte 0x7D0C7D16
	.4byte 0x7D1F7D28
	.4byte 0x7D317D3A
	.4byte 0x7D447D4D
	.4byte 0x7D567D5F
	.4byte 0x7D697D72
	.4byte 0x7D7B7D84
	.4byte 0x7D8E7D97
	.4byte 0x7DA07DA9
	.4byte 0x7DB37DBC
	.4byte 0x7DC57DCE
	.4byte 0x7DD87DE1
	.4byte 0x7DEA7DF4
	.4byte 0x7DFD7E06
	.4byte 0x7E0F7E19
	.4byte 0x7E227E2B
	.4byte 0x7E357E3E
	.4byte 0x7E477E51
	.4byte 0x7E5A7E63
	.4byte 0x7E6C7E76
	.4byte 0x7E7F7E88
	.4byte 0x7E927E9B
	.4byte 0x7EA47EAE
	.4byte 0x7EB77EC0
	.4byte 0x7ECA7ED3
	.4byte 0x7EDC7EE6
	.4byte 0x7EEF7EF8
	.4byte 0x7F027F0B
	.4byte 0x7F157F1E
	.4byte 0x7F277F31
	.4byte 0x7F3A7F43
	.4byte 0x7F4D7F56
	.4byte 0x7F607F69
	.4byte 0x7F727F7C
	.4byte 0x7F857F8F
	.4byte 0x7F987FA1
	.4byte 0x7FAB7FB4
	.4byte 0x7FBE7FC7
	.4byte 0x7FD07FDA
	.4byte 0x7FE37FED
	.4byte 0x7FF68000
	.4byte 0x74C574CD
	.4byte 0x74D674DF
	.4byte 0x74E774F0
	.4byte 0x74F97501
	.4byte 0x750A7512
	.4byte 0x751B7524
	.4byte 0x752C7535
	.4byte 0x753E7546
	.4byte 0x754F7558
	.4byte 0x75607569
	.4byte 0x7571757A
	.4byte 0x7583758B
	.4byte 0x7594759D
	.4byte 0x75A575AE
	.4byte 0x75B775BF
	.4byte 0x75C875D1
	.4byte 0x75D975E2
	.4byte 0x75EB75F4
	.4byte 0x75FC7605
	.4byte 0x760E7616
	.4byte 0x761F7628
	.4byte 0x76307639
	.4byte 0x7642764B
	.4byte 0x7653765C
	.4byte 0x7665766D
	.4byte 0x7676767F
	.4byte 0x76887690
	.4byte 0x769976A2
	.4byte 0x76AB76B3
	.4byte 0x76BC76C5
	.4byte 0x76CE76D6
	.4byte 0x76DF76E8
	.4byte 0x76F176F9
	.4byte 0x7702770B
	.4byte 0x7714771C
	.4byte 0x7725772E
	.4byte 0x77377740
	.4byte 0x77487751
	.4byte 0x775A7763
	.4byte 0x776C7774
	.4byte 0x777D7786
	.4byte 0x778F7798
	.4byte 0x77A077A9
	.4byte 0x77B277BB
	.4byte 0x77C477CD
	.4byte 0x77D577DE
	.4byte 0x77E777F0
	.4byte 0x77F97802
	.4byte 0x780A7813
	.4byte 0x781C7825
	.4byte 0x782E7837
	.4byte 0x783F7848
	.4byte 0x7851785A
	.4byte 0x7863786C
	.4byte 0x7875787E
	.4byte 0x7886788F
	.4byte 0x789878A1
	.4byte 0x78AA78B3
	.4byte 0x78BC78C5
	.4byte 0x78CE78D6
	.4byte 0x78DF78E8
	.4byte 0x78F178FA
	.4byte 0x7903790C
	.4byte 0x7915791E
	.4byte 0x79277930
	.4byte 0x79397942
	.4byte 0x794A7953
	.4byte 0x795C7965
	.4byte 0x796E7977
	.4byte 0x79807989
	.4byte 0x7992799B
	.4byte 0x79A479AD
	.4byte 0x79B679BF
	.4byte 0x79C879D1
	.4byte 0x79DA79E3
	.4byte 0x79EC79F5
	.4byte 0x79FE7A07
	.4byte 0x7A107A19
	.4byte 0x7A227A2B
	.4byte 0x7A347A3D
	.4byte 0x6F836F8C
	.4byte 0x6F946F9C
	.4byte 0x6FA46FAD
	.4byte 0x6FB56FBD
	.4byte 0x6FC56FCD
	.4byte 0x6FD66FDE
	.4byte 0x6FE66FEE
	.4byte 0x6FF76FFF
	.4byte 0x7007700F
	.4byte 0x70187020
	.4byte 0x70287031
	.4byte 0x70397041
	.4byte 0x70497052
	.4byte 0x705A7062
	.4byte 0x706A7073
	.4byte 0x707B7083
	.4byte 0x708C7094
	.4byte 0x709C70A4
	.4byte 0x70AD70B5
	.4byte 0x70BD70C6
	.4byte 0x70CE70D6
	.4byte 0x70DF70E7
	.4byte 0x70EF70F8
	.4byte 0x71007108
	.4byte 0x71117119
	.4byte 0x7121712A
	.4byte 0x7132713A
	.4byte 0x7143714B
	.4byte 0x7153715C
	.4byte 0x7164716C
	.4byte 0x7175717D
	.4byte 0x7185718E
	.4byte 0x7196719F
	.4byte 0x71A771AF
	.4byte 0x71B871C0
	.4byte 0x71C871D1
	.4byte 0x71D971E2
	.4byte 0x71EA71F2
	.4byte 0x71FB7203
	.4byte 0x720C7214
	.4byte 0x721C7225
	.4byte 0x722D7236
	.4byte 0x723E7246
	.4byte 0x724F7257
	.4byte 0x72607268
	.4byte 0x72717279
	.4byte 0x7281728A
	.4byte 0x7292729B
	.4byte 0x72A372AC
	.4byte 0x72B472BD
	.4byte 0x72C572CE
	.4byte 0x72D672DE
	.4byte 0x72E772EF
	.4byte 0x72F87300
	.4byte 0x73097311
	.4byte 0x731A7322
	.4byte 0x732B7333
	.4byte 0x733C7344
	.4byte 0x734D7355
	.4byte 0x735E7366
	.4byte 0x736F7377
	.4byte 0x73807388
	.4byte 0x73917399
	.4byte 0x73A273AA
	.4byte 0x73B373BB
	.4byte 0x73C473CC
	.4byte 0x73D573DD
	.4byte 0x73E673EF
	.4byte 0x73F77400
	.4byte 0x74087411
	.4byte 0x74197422
	.4byte 0x742A7433
	.4byte 0x743C7444
	.4byte 0x744D7455
	.4byte 0x745E7466
	.4byte 0x746F7478
	.4byte 0x74807489
	.4byte 0x7491749A
	.4byte 0x74A274AB
	.4byte 0x74B474BC
	.4byte 0x6A7F6A86
	.4byte 0x6A8E6A96
	.4byte 0x6A9E6AA6
	.4byte 0x6AAE6AB6
	.4byte 0x6ABD6AC5
	.4byte 0x6ACD6AD5
	.4byte 0x6ADD6AE5
	.4byte 0x6AED6AF5
	.4byte 0x6AFC6B04
	.4byte 0x6B0C6B14
	.4byte 0x6B1C6B24
	.4byte 0x6B2C6B34
	.4byte 0x6B3C6B43
	.4byte 0x6B4B6B53
	.4byte 0x6B5B6B63
	.4byte 0x6B6B6B73
	.4byte 0x6B7B6B83
	.4byte 0x6B8B6B93
	.4byte 0x6B9B6BA2
	.4byte 0x6BAA6BB2
	.4byte 0x6BBA6BC2
	.4byte 0x6BCA6BD2
	.4byte 0x6BDA6BE2
	.4byte 0x6BEA6BF2
	.4byte 0x6BFA6C02
	.4byte 0x6C0A6C12
	.4byte 0x6C1A6C22
	.4byte 0x6C2A6C32
	.4byte 0x6C3A6C42
	.4byte 0x6C4A6C52
	.4byte 0x6C596C61
	.4byte 0x6C696C71
	.4byte 0x6C796C81
	.4byte 0x6C896C91
	.4byte 0x6C996CA1
	.4byte 0x6CA96CB1
	.4byte 0x6CB96CC1
	.4byte 0x6CC96CD2
	.4byte 0x6CDA6CE2
	.4byte 0x6CEA6CF2
	.4byte 0x6CFA6D02
	.4byte 0x6D0A6D12
	.4byte 0x6D1A6D22
	.4byte 0x6D2A6D32
	.4byte 0x6D3A6D42
	.4byte 0x6D4A6D52
	.4byte 0x6D5A6D62
	.4byte 0x6D6A6D72
	.4byte 0x6D7A6D82
	.4byte 0x6D8B6D93
	.4byte 0x6D9B6DA3
	.4byte 0x6DAB6DB3
	.4byte 0x6DBB6DC3
	.4byte 0x6DCB6DD3
	.4byte 0x6DDB6DE3
	.4byte 0x6DEC6DF4
	.4byte 0x6DFC6E04
	.4byte 0x6E0C6E14
	.4byte 0x6E1C6E24
	.4byte 0x6E2C6E35
	.4byte 0x6E3D6E45
	.4byte 0x6E4D6E55
	.4byte 0x6E5D6E65
	.4byte 0x6E6D6E76
	.4byte 0x6E7E6E86
	.4byte 0x6E8E6E96
	.4byte 0x6E9E6EA6
	.4byte 0x6EAF6EB7
	.4byte 0x6EBF6EC7
	.4byte 0x6ECF6ED7
	.4byte 0x6EE06EE8
	.4byte 0x6EF06EF8
	.4byte 0x6F006F08
	.4byte 0x6F116F19
	.4byte 0x6F216F29
	.4byte 0x6F316F3A
	.4byte 0x6F426F4A
	.4byte 0x6F526F5A
	.4byte 0x6F636F6B
	.4byte 0x6F736F7B
	.4byte 0x65B465BB
	.4byte 0x65C365CA
	.4byte 0x65D265D9
	.4byte 0x65E165E8
	.4byte 0x65F065F7
	.4byte 0x65FF6606
	.4byte 0x660E6615
	.4byte 0x661D6624
	.4byte 0x662C6633
	.4byte 0x663B6642
	.4byte 0x664A6651
	.4byte 0x66596660
	.4byte 0x66686670
	.4byte 0x6677667F
	.4byte 0x6686668E
	.4byte 0x6695669D
	.4byte 0x66A466AC
	.4byte 0x66B466BB
	.4byte 0x66C366CA
	.4byte 0x66D266D9
	.4byte 0x66E166E9
	.4byte 0x66F066F8
	.4byte 0x66FF6707
	.4byte 0x670F6716
	.4byte 0x671E6725
	.4byte 0x672D6735
	.4byte 0x673C6744
	.4byte 0x674B6753
	.4byte 0x675B6762
	.4byte 0x676A6771
	.4byte 0x67796781
	.4byte 0x67886790
	.4byte 0x6798679F
	.4byte 0x67A767AE
	.4byte 0x67B667BE
	.4byte 0x67C567CD
	.4byte 0x67D567DC
	.4byte 0x67E467EC
	.4byte 0x67F367FB
	.4byte 0x6803680A
	.4byte 0x6812681A
	.4byte 0x68216829
	.4byte 0x68316838
	.4byte 0x68406848
	.4byte 0x684F6857
	.4byte 0x685F6866
	.4byte 0x686E6876
	.4byte 0x687E6885
	.4byte 0x688D6895
	.4byte 0x689C68A4
	.4byte 0x68AC68B4
	.4byte 0x68BB68C3
	.4byte 0x68CB68D2
	.4byte 0x68DA68E2
	.4byte 0x68EA68F1
	.4byte 0x68F96901
	.4byte 0x69096910
	.4byte 0x69186920
	.4byte 0x6927692F
	.4byte 0x6937693F
	.4byte 0x6947694E
	.4byte 0x6956695E
	.4byte 0x6966696D
	.4byte 0x6975697D
	.4byte 0x6985698C
	.4byte 0x6994699C
	.4byte 0x69A469AC
	.4byte 0x69B369BB
	.4byte 0x69C369CB
	.4byte 0x69D269DA
	.4byte 0x69E269EA
	.4byte 0x69F269FA
	.4byte 0x6A016A09
	.4byte 0x6A116A19
	.4byte 0x6A216A28
	.4byte 0x6A306A38
	.4byte 0x6A406A48
	.4byte 0x6A506A57
	.4byte 0x6A5F6A67
	.4byte 0x6A6F6A77
	.4byte 0x61206127
	.4byte 0x612E6135
	.4byte 0x613C6144
	.4byte 0x614B6152
	.4byte 0x61596160
	.4byte 0x6167616F
	.4byte 0x6176617D
	.4byte 0x6184618B
	.4byte 0x6192619A
	.4byte 0x61A161A8
	.4byte 0x61AF61B6
	.4byte 0x61BE61C5
	.4byte 0x61CC61D3
	.4byte 0x61DA61E2
	.4byte 0x61E961F0
	.4byte 0x61F761FF
	.4byte 0x6206620D
	.4byte 0x6214621B
	.4byte 0x6223622A
	.4byte 0x62316238
	.4byte 0x62406247
	.4byte 0x624E6255
	.4byte 0x625D6264
	.4byte 0x626B6272
	.4byte 0x627A6281
	.4byte 0x6288628F
	.4byte 0x6297629E
	.4byte 0x62A562AC
	.4byte 0x62B462BB
	.4byte 0x62C262CA
	.4byte 0x62D162D8
	.4byte 0x62DF62E7
	.4byte 0x62EE62F5
	.4byte 0x62FD6304
	.4byte 0x630B6312
	.4byte 0x631A6321
	.4byte 0x63286330
	.4byte 0x6337633E
	.4byte 0x6346634D
	.4byte 0x6354635C
	.4byte 0x6363636A
	.4byte 0x63726379
	.4byte 0x63806388
	.4byte 0x638F6396
	.4byte 0x639E63A5
	.4byte 0x63AC63B4
	.4byte 0x63BB63C2
	.4byte 0x63CA63D1
	.4byte 0x63D863E0
	.4byte 0x63E763EE
	.4byte 0x63F663FD
	.4byte 0x6405640C
	.4byte 0x6413641B
	.4byte 0x64226429
	.4byte 0x64316438
	.4byte 0x64406447
	.4byte 0x644E6456
	.4byte 0x645D6464
	.4byte 0x646C6473
	.4byte 0x647B6482
	.4byte 0x648A6491
	.4byte 0x649864A0
	.4byte 0x64A764AF
	.4byte 0x64B664BD
	.4byte 0x64C564CC
	.4byte 0x64D464DB
	.4byte 0x64E364EA
	.4byte 0x64F164F9
	.4byte 0x65006508
	.4byte 0x650F6517
	.4byte 0x651E6526
	.4byte 0x652D6534
	.4byte 0x653C6543
	.4byte 0x654B6552
	.4byte 0x655A6561
	.4byte 0x65696570
	.4byte 0x6578657F
	.4byte 0x6587658E
	.4byte 0x6596659D
	.4byte 0x65A565AC
	.4byte 0x5CC15CC7
	.4byte 0x5CCE5CD5
	.4byte 0x5CDC5CE3
	.4byte 0x5CEA5CF1
	.4byte 0x5CF75CFE
	.4byte 0x5D055D0C
	.4byte 0x5D135D1A
	.4byte 0x5D215D27
	.4byte 0x5D2E5D35
	.4byte 0x5D3C5D43
	.4byte 0x5D4A5D51
	.4byte 0x5D575D5E
	.4byte 0x5D655D6C
	.4byte 0x5D735D7A
	.4byte 0x5D815D88
	.4byte 0x5D8F5D95
	.4byte 0x5D9C5DA3
	.4byte 0x5DAA5DB1
	.4byte 0x5DB85DBF
	.4byte 0x5DC65DCD
	.4byte 0x5DD45DDB
	.4byte 0x5DE15DE8
	.4byte 0x5DEF5DF6
	.4byte 0x5DFD5E04
	.4byte 0x5E0B5E12
	.4byte 0x5E195E20
	.4byte 0x5E275E2E
	.4byte 0x5E355E3C
	.4byte 0x5E425E49
	.4byte 0x5E505E57
	.4byte 0x5E5E5E65
	.4byte 0x5E6C5E73
	.4byte 0x5E7A5E81
	.4byte 0x5E885E8F
	.4byte 0x5E965E9D
	.4byte 0x5EA45EAB
	.4byte 0x5EB25EB9
	.4byte 0x5EC05EC7
	.4byte 0x5ECE5ED5
	.4byte 0x5EDC5EE3
	.4byte 0x5EEA5EF1
	.4byte 0x5EF85EFF
	.4byte 0x5F065F0D
	.4byte 0x5F145F1B
	.4byte 0x5F225F29
	.4byte 0x5F305F37
	.4byte 0x5F3E5F45
	.4byte 0x5F4C5F53
	.4byte 0x5F5A5F61
	.4byte 0x5F685F6F
	.4byte 0x5F765F7D
	.4byte 0x5F845F8B
	.4byte 0x5F925F99
	.4byte 0x5FA05FA7
	.4byte 0x5FAE5FB5
	.4byte 0x5FBC5FC4
	.4byte 0x5FCB5FD2
	.4byte 0x5FD95FE0
	.4byte 0x5FE75FEE
	.4byte 0x5FF55FFC
	.4byte 0x6003600A
	.4byte 0x60116018
	.4byte 0x601F6027
	.4byte 0x602E6035
	.4byte 0x603C6043
	.4byte 0x604A6051
	.4byte 0x6058605F
	.4byte 0x6066606D
	.4byte 0x6075607C
	.4byte 0x6083608A
	.4byte 0x60916098
	.4byte 0x609F60A6
	.4byte 0x60AD60B5
	.4byte 0x60BC60C3
	.4byte 0x60CA60D1
	.4byte 0x60D860DF
	.4byte 0x60E760EE
	.4byte 0x60F560FC
	.4byte 0x6103610A
	.4byte 0x61116119
	.4byte 0x5894589A
	.4byte 0x58A158A8
	.4byte 0x58AE58B5
	.4byte 0x58BB58C2
	.4byte 0x58C858CF
	.4byte 0x58D558DC
	.4byte 0x58E258E9
	.4byte 0x58F058F6
	.4byte 0x58FD5903
	.4byte 0x590A5910
	.4byte 0x5917591D
	.4byte 0x5924592B
	.4byte 0x59315938
	.4byte 0x593E5945
	.4byte 0x594B5952
	.4byte 0x5959595F
	.4byte 0x5966596C
	.4byte 0x5973597A
	.4byte 0x59805987
	.4byte 0x598D5994
	.4byte 0x599B59A1
	.4byte 0x59A859AE
	.4byte 0x59B559BC
	.4byte 0x59C259C9
	.4byte 0x59CF59D6
	.4byte 0x59DD59E3
	.4byte 0x59EA59F1
	.4byte 0x59F759FE
	.4byte 0x5A045A0B
	.4byte 0x5A125A18
	.4byte 0x5A1F5A26
	.4byte 0x5A2C5A33
	.4byte 0x5A3A5A40
	.4byte 0x5A475A4D
	.4byte 0x5A545A5B
	.4byte 0x5A615A68
	.4byte 0x5A6F5A75
	.4byte 0x5A7C5A83
	.4byte 0x5A895A90
	.4byte 0x5A975A9D
	.4byte 0x5AA45AAB
	.4byte 0x5AB25AB8
	.4byte 0x5ABF5AC6
	.4byte 0x5ACC5AD3
	.4byte 0x5ADA5AE0
	.4byte 0x5AE75AEE
	.4byte 0x5AF45AFB
	.4byte 0x5B025B09
	.4byte 0x5B0F5B16
	.4byte 0x5B1D5B23
	.4byte 0x5B2A5B31
	.4byte 0x5B385B3E
	.4byte 0x5B455B4C
	.4byte 0x5B525B59
	.4byte 0x5B605B67
	.4byte 0x5B6D5B74
	.4byte 0x5B7B5B82
	.4byte 0x5B885B8F
	.4byte 0x5B965B9D
	.4byte 0x5BA35BAA
	.4byte 0x5BB15BB8
	.4byte 0x5BBE5BC5
	.4byte 0x5BCC5BD3
	.4byte 0x5BD95BE0
	.4byte 0x5BE75BEE
	.4byte 0x5BF55BFB
	.4byte 0x5C025C09
	.4byte 0x5C105C16
	.4byte 0x5C1D5C24
	.4byte 0x5C2B5C32
	.4byte 0x5C385C3F
	.4byte 0x5C465C4D
	.4byte 0x5C545C5A
	.4byte 0x5C615C68
	.4byte 0x5C6F5C76
	.4byte 0x5C7C5C83
	.4byte 0x5C8A5C91
	.4byte 0x5C985C9F
	.4byte 0x5CA55CAC
	.4byte 0x5CB35CBA
	.4byte 0x5497549E
	.4byte 0x54A454AA
	.4byte 0x54B054B7
	.4byte 0x54BD54C3
	.4byte 0x54C954D0
	.4byte 0x54D654DC
	.4byte 0x54E254E9
	.4byte 0x54EF54F5
	.4byte 0x54FB5502
	.4byte 0x5508550E
	.4byte 0x5514551B
	.4byte 0x55215527
	.4byte 0x552D5534
	.4byte 0x553A5540
	.4byte 0x5547554D
	.4byte 0x55535559
	.4byte 0x55605566
	.4byte 0x556C5573
	.4byte 0x5579557F
	.4byte 0x5585558C
	.4byte 0x55925598
	.4byte 0x559F55A5
	.4byte 0x55AB55B2
	.4byte 0x55B855BE
	.4byte 0x55C555CB
	.4byte 0x55D155D8
	.4byte 0x55DE55E4
	.4byte 0x55EB55F1
	.4byte 0x55F755FE
	.4byte 0x5604560A
	.4byte 0x56115617
	.4byte 0x561D5624
	.4byte 0x562A5630
	.4byte 0x5637563D
	.4byte 0x5643564A
	.4byte 0x56505656
	.4byte 0x565D5663
	.4byte 0x566A5670
	.4byte 0x5676567D
	.4byte 0x56835689
	.4byte 0x56905696
	.4byte 0x569D56A3
	.4byte 0x56A956B0
	.4byte 0x56B656BC
	.4byte 0x56C356C9
	.4byte 0x56D056D6
	.4byte 0x56DC56E3
	.4byte 0x56E956F0
	.4byte 0x56F656FC
	.4byte 0x57035709
	.4byte 0x57105716
	.4byte 0x571D5723
	.4byte 0x57295730
	.4byte 0x5736573D
	.4byte 0x5743574A
	.4byte 0x57505756
	.4byte 0x575D5763
	.4byte 0x576A5770
	.4byte 0x5777577D
	.4byte 0x5783578A
	.4byte 0x57905797
	.4byte 0x579D57A4
	.4byte 0x57AA57B1
	.4byte 0x57B757BE
	.4byte 0x57C457CB
	.4byte 0x57D157D7
	.4byte 0x57DE57E4
	.4byte 0x57EB57F1
	.4byte 0x57F857FE
	.4byte 0x5805580B
	.4byte 0x58125818
	.4byte 0x581F5825
	.4byte 0x582C5832
	.4byte 0x5839583F
	.4byte 0x5846584C
	.4byte 0x58535859
	.4byte 0x58605866
	.4byte 0x586D5873
	.4byte 0x587A5880
	.4byte 0x5887588D
	.4byte 0x50C950CF
	.4byte 0x50D550DB
	.4byte 0x50E050E6
	.4byte 0x50EC50F2
	.4byte 0x50F850FE
	.4byte 0x5104510A
	.4byte 0x51105116
	.4byte 0x511C5122
	.4byte 0x5128512E
	.4byte 0x5134513A
	.4byte 0x51405146
	.4byte 0x514C5152
	.4byte 0x5158515E
	.4byte 0x5164516A
	.4byte 0x51705176
	.4byte 0x517C5182
	.4byte 0x5188518E
	.4byte 0x5194519A
	.4byte 0x51A051A6
	.4byte 0x51AC51B2
	.4byte 0x51B851BE
	.4byte 0x51C451CA
	.4byte 0x51D051D6
	.4byte 0x51DC51E2
	.4byte 0x51E851EE
	.4byte 0x51F451FA
	.4byte 0x52015207
	.4byte 0x520D5213
	.4byte 0x5219521F
	.4byte 0x5225522B
	.4byte 0x52315237
	.4byte 0x523D5243
	.4byte 0x5249524F
	.4byte 0x5255525B
	.4byte 0x52615267
	.4byte 0x526E5274
	.4byte 0x527A5280
	.4byte 0x5286528C
	.4byte 0x52925298
	.4byte 0x529E52A4
	.4byte 0x52AA52B0
	.4byte 0x52B752BD
	.4byte 0x52C352C9
	.4byte 0x52CF52D5
	.4byte 0x52DB52E1
	.4byte 0x52E752ED
	.4byte 0x52F452FA
	.4byte 0x53005306
	.4byte 0x530C5312
	.4byte 0x5318531E
	.4byte 0x5325532B
	.4byte 0x53315337
	.4byte 0x533D5343
	.4byte 0x5349534F
	.4byte 0x5356535C
	.4byte 0x53625368
	.4byte 0x536E5374
	.4byte 0x537B5381
	.4byte 0x5387538D
	.4byte 0x53935399
	.4byte 0x539F53A6
	.4byte 0x53AC53B2
	.4byte 0x53B853BE
	.4byte 0x53C453CB
	.4byte 0x53D153D7
	.4byte 0x53DD53E3
	.4byte 0x53EA53F0
	.4byte 0x53F653FC
	.4byte 0x54025408
	.4byte 0x540F5415
	.4byte 0x541B5421
	.4byte 0x5427542E
	.4byte 0x5434543A
	.4byte 0x54405446
	.4byte 0x544D5453
	.4byte 0x5459545F
	.4byte 0x5466546C
	.4byte 0x54725478
	.4byte 0x547E5485
	.4byte 0x548B5491

.global lbl_80233B40
lbl_80233B40:

	# ROM: 0x230B40
	.4byte 0
	.4byte 0x029F0E88
	.4byte 0x029F0E97
	.4byte 0x029F0EB3
	.4byte 0x029F0ED3
	.4byte 0x029F0ED9
	.4byte 0x029F0F0B
	.4byte 0x029F0F11
	.4byte 0x13021303
	.4byte 0x12041305
	.4byte 0x13068E00
	.4byte 0x8C008B00
	.4byte 0x009200FF
	.4byte 0x81008900
	.4byte 0x009E0E80
	.4byte 0x00FE0E1B
	.4byte 0x810000FE
	.4byte 0x0E3116FC
	.4byte 0xDCD116FD
	.4byte 0x000016FB
	.4byte 0x000126FC
	.4byte 0x02A08000
	.4byte 0x029C0029
	.4byte 0x029F0045
	.4byte 0x13021303
	.4byte 0x12041305
	.4byte 0x13068E00
	.4byte 0x8C008B00
	.4byte 0x009200FF
	.4byte 0x16FCDCD1
	.4byte 0x16FD0001
	.4byte 0x16FB0001
	.4byte 0x26FC02A0
	.4byte 0x8000029C
	.4byte 0x00408E00
	.4byte 0x81008900
	.4byte 0x009FBABE
	.4byte 0x26FE02C0
	.4byte 0x8000029C
	.4byte 0x004A8200
	.4byte 0x0294004A
	.4byte 0x23FF8100
	.4byte 0x26FE02C0
	.4byte 0x8000029C
	.4byte 0x005427FF
	.4byte 0x02407FFF
	.4byte 0x2ECE2FCF
	.4byte 0x16CD0C00
	.4byte 0x81002EC9
	.4byte 0x1FFB2FCB
	.4byte 0x02BF0652
	.4byte 0x00800C00
	.4byte 0x8E008100
	.4byte 0x8970B100
	.4byte 0x0291007E
	.4byte 0x0A13C100
	.4byte 0x0292007E
	.4byte 0x009F0C9D
	.4byte 0x4C001C7E
	.4byte 0x02131C7E
	.4byte 0x176F16FC
	.4byte 0xFBAD16FD
	.4byte 0x80800021
	.4byte 0x16FCBAAD
	.4byte 0x2EFD0021
	.4byte 0x8D008F00
	.4byte 0x8A008900
	.4byte 0x81680098
	.4byte 0x00000099
	.4byte 0x00010081
	.4byte 0x0000193E
	.4byte 0x193C11A0
	.4byte 0x009AA100
	.4byte 0x82710277
	.4byte 0x1F19193C
	.4byte 0xA1008271
	.4byte 0x02771F19
	.4byte 0x193C1FD8
	.4byte 0xB1000294
	.4byte 0x00CB00DE
	.4byte 0x0E44B100
	.4byte 0x029400AB
	.4byte 0x191C191C
	.4byte 0x191C00E0
	.4byte 0x0E45029F
	.4byte 0x01148B00
	.4byte 0x7A0000FE
	.4byte 0x0E448400
	.4byte 0x00990140
	.4byte 0x1F1EA000
	.4byte 0x191E191E
	.4byte 0x191C00E0
	.4byte 0x0E45009A
	.4byte 0x00000098
	.4byte 0x0DC04E00
	.4byte 0x48002ECE
	.4byte 0x2CCF009E
	.4byte 0x0E482ECD
	.4byte 0x0E002EC9
	.4byte 0x009E0140
	.4byte 0x2ECB029F
	.4byte 0x00E38B00
	.4byte 0x00D80E44
	.4byte 0x00990140
	.4byte 0xA000191E
	.4byte 0x00FE0E44
	.4byte 0x191E191C
	.4byte 0x00E00E45
	.4byte 0x4E002ECE
	.4byte 0x2CCF009E
	.4byte 0x0E482ECD
	.4byte 0x0E002EC9
	.4byte 0x009E0140
	.4byte 0x2ECB02BF
	.4byte 0x06528A48
	.4byte 0x00830E48
	.4byte 0x00800000
	.4byte 0x00810000
	.4byte 0x1979193A
	.4byte 0xB041A64B
	.4byte 0xF051B441
	.4byte 0x91001150
	.4byte 0x00FCA792
	.4byte 0xF151B520
	.4byte 0x9941A693
	.4byte 0xF051B428
	.4byte 0x91410083
	.4byte 0x0E480080
	.4byte 0x01400081
	.4byte 0x01401979
	.4byte 0x193AB041
	.4byte 0xA64BF051
	.4byte 0xB4419100
	.4byte 0x11500113
	.4byte 0xA792F151
	.4byte 0xB5209941
	.4byte 0xA693F051
	.4byte 0xB4289141
	.4byte 0x00C00E45
	.4byte 0x029F0068
	.4byte 0x81008970
	.4byte 0x8E782ECE
	.4byte 0x2FCF009E
	.4byte 0x0E482ECD
	.4byte 0x0E002EC9
	.4byte 0x009E0040
	.4byte 0x2ECB0081
	.4byte 0x0E480082
	.4byte 0x0000009B
	.4byte 0x009F009A
	.4byte 0x01408100
	.4byte 0x89008F00
	.4byte 0x02BF0652
	.4byte 0x193E193C
	.4byte 0xB100193F
	.4byte 0x0294013C
	.4byte 0x005A1B5E
	.4byte 0x029F0144
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01434C00
	.4byte 0x1B5E1B5C
	.4byte 0x193E193C
	.4byte 0xB100193F
	.4byte 0x0294014E
	.4byte 0x005A1B5E
	.4byte 0x029F0156
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01554C00
	.4byte 0x1B5E1B5C
	.4byte 0x193E193C
	.4byte 0xB100193F
	.4byte 0x02940160
	.4byte 0x005A1B5E
	.4byte 0x029F0168
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01674C00
	.4byte 0x1B5E1B5C
	.4byte 0x00820400
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x0173005A
	.4byte 0x1B5E029F
	.4byte 0x017B9900
	.4byte 0x1B5E1B5C
	.4byte 0x007B017A
	.4byte 0x4C001B5E
	.4byte 0x1B5C193E
	.4byte 0x193CB179
	.4byte 0x02940184
	.4byte 0x005A1B5E
	.4byte 0x029F018C
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x018B4C00
	.4byte 0x1B5E1B5C
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x0195005A
	.4byte 0x1B5E029F
	.4byte 0x019D9900
	.4byte 0x1B5E1B5C
	.4byte 0x007B019C
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x07C0193E
	.4byte 0x193CB179
	.4byte 0x029401A8
	.4byte 0x005A1B5E
	.4byte 0x029F01B0
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01AF4C00
	.4byte 0x1B5E1B5C
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x01B9005A
	.4byte 0x1B5E029F
	.4byte 0x01C19900
	.4byte 0x1B5E1B5C
	.4byte 0x007B01C0
	.4byte 0x4C001B5E
	.4byte 0x1B5C193E
	.4byte 0x193CB179
	.4byte 0x029401CA
	.4byte 0x005A1B5E
	.4byte 0x029F01D2
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01D14C00
	.4byte 0x1B5E1B5C
	.4byte 0x029F0068
	.4byte 0x0085FFFF
	.4byte 0x81508940
	.4byte 0x8E4800FA
	.4byte 0x0E1700F8
	.4byte 0x0E180081
	.4byte 0x000002BF
	.4byte 0x05E700DA
	.4byte 0x0E1700D8
	.4byte 0x0E188948
	.4byte 0x00810400
	.4byte 0x02BF05E7
	.4byte 0x00DA0E17
	.4byte 0x00D80E18
	.4byte 0x89480081
	.4byte 0x07C002BF
	.4byte 0x05E7029F
	.4byte 0x00680086
	.4byte 0x07C002BF
	.4byte 0x057A029F
	.4byte 0x00688100
	.4byte 0x8E00191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x000016C9
	.4byte 0x000116CB
	.4byte 0x078002BF
	.4byte 0x0652029F
	.4byte 0x00688100
	.4byte 0x89708E60
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E48
	.4byte 0x16C90000
	.4byte 0x89000D20
	.4byte 0x2DCB4C00
	.4byte 0x1C800080
	.4byte 0x02800081
	.4byte 0x00000082
	.4byte 0x01400083
	.4byte 0x0E480A00
	.4byte 0x27C903A0
	.4byte 0x0004029C
	.4byte 0x02222ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E5816C9
	.4byte 0x000016CB
	.4byte 0x0260009F
	.4byte 0x00A08F00
	.4byte 0x007F023B
	.4byte 0x197E1B1A
	.4byte 0x197C1B1A
	.4byte 0x1B5E7C22
	.4byte 0x1B3E1B3C
	.4byte 0x1C04029F
	.4byte 0x00688E70
	.4byte 0x8960191F
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0C00
	.4byte 0x16C90000
	.4byte 0x05030340
	.4byte 0xFFF02FCB
	.4byte 0x02BF0652
	.4byte 0x00800C00
	.4byte 0x029F0068
	.4byte 0x81008970
	.4byte 0x8E782ECE
	.4byte 0x2FCF16CD
	.4byte 0x0B8016C9
	.4byte 0x000016CB
	.4byte 0x00C40082
	.4byte 0x0E08009F
	.4byte 0x00001B5F
	.4byte 0x009F0140
	.4byte 0x1B5F009F
	.4byte 0x02801B5F
	.4byte 0x009F0400
	.4byte 0x1B5F009F
	.4byte 0x05401B5F
	.4byte 0x009F0680
	.4byte 0x1B5F009F
	.4byte 0x07C01B5F
	.4byte 0x009F0900
	.4byte 0x1B5F009F
	.4byte 0x0A401B5F
	.4byte 0x02BF0652
	.4byte 0x00DE0BA7
	.4byte 0x00DF0BA8
	.4byte 0x2ECE2FCF
	.4byte 0x16CD03C0
	.4byte 0x16C90000
	.4byte 0x16CB0080
	.4byte 0x81008900
	.4byte 0x00DE0B84
	.4byte 0x009F0D21
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E1500DE
	.4byte 0x0B85009F
	.4byte 0x0D244C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E16
	.4byte 0x00DE0B86
	.4byte 0x009A000F
	.4byte 0x009F0CB1
	.4byte 0x34004C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E14
	.4byte 0x00DE0B86
	.4byte 0x009A001F
	.4byte 0x009F0CC1
	.4byte 0x14FC3400
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E4600DE
	.4byte 0x0B86009F
	.4byte 0x0CE114F7
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E478100
	.4byte 0x00DE0B9B
	.4byte 0xB1000295
	.4byte 0x02EA8900
	.4byte 0x00DF0B9E
	.4byte 0x03000CC0
	.4byte 0x00FF0E40
	.4byte 0x00DF0B9F
	.4byte 0x03000CC0
	.4byte 0x00FF0E41
	.4byte 0x009F0CE0
	.4byte 0x00FF0E42
	.4byte 0x00FF0E43
	.4byte 0x02BF0652
	.4byte 0x00DE0B9C
	.4byte 0x2ECE00DE
	.4byte 0x0B9D2ECF
	.4byte 0x16CD0CC0
	.4byte 0x16C90000
	.4byte 0x16CB0040
	.4byte 0x02BF0652
	.4byte 0x029F0068
	.4byte 0x009F0CE0
	.4byte 0x00FF0E42
	.4byte 0x00FF0E40
	.4byte 0x00FF0E41
	.4byte 0x00FF0E43
	.4byte 0x02BF0652
	.4byte 0x029F0068
	.4byte 0x8E0000E0
	.4byte 0x0E070080
	.4byte 0x0BA20081
	.4byte 0x03C00E05
	.4byte 0x00FE0E04
	.4byte 0x89008150
	.4byte 0x009F0B80
	.4byte 0x007A030B
	.4byte 0x193E4C49
	.4byte 0x1C5E1A59
	.4byte 0x00830E05
	.4byte 0x1B611B60
	.4byte 0x00DE0B87
	.4byte 0x06010295
	.4byte 0x0317029F
	.4byte 0x040E00DE
	.4byte 0x0E4200FE
	.4byte 0x0E1C00C3
	.4byte 0x0E15177F
	.4byte 0x8E008A00
	.4byte 0x81008900
	.4byte 0x00DE0BB3
	.4byte 0x00DF0BB2
	.4byte 0x1F1F4D00
	.4byte 0x14818D1E
	.4byte 0x1FD80098
	.4byte 0x80000080
	.4byte 0x0E48A830
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC3800FE
	.4byte 0x0BB28F00
	.4byte 0x00800E48
	.4byte 0x00C10E43
	.4byte 0x1C61193A
	.4byte 0x19189059
	.4byte 0x19199E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E00
	.4byte 0x6F331B7F
	.4byte 0x810000DE
	.4byte 0x0BDDB100
	.4byte 0x029503C0
	.4byte 0x8D008F00
	.4byte 0x8A0000C0
	.4byte 0x0E4300C1
	.4byte 0x0E430083
	.4byte 0x0BDF0087
	.4byte 0xFFFF00DE
	.4byte 0x0BDE80E1
	.4byte 0xB04F1F5E
	.4byte 0xE2E1B64F
	.4byte 0x1F5EE2E1
	.4byte 0x110F03BB
	.4byte 0xB79A1F5F
	.4byte 0xE2E1B69B
	.4byte 0x1F5EE2E1
	.4byte 0xB79A1B1F
	.4byte 0x00FF0BDE
	.4byte 0x00C30E14
	.4byte 0x8A00177F
	.4byte 0x00C30E46
	.4byte 0x8A00177F
	.4byte 0x00C30E47
	.4byte 0x8A00177F
	.4byte 0x810000DE
	.4byte 0x0B9BB100
	.4byte 0x02950406
	.4byte 0x00DE0E42
	.4byte 0x00FE0E43
	.4byte 0x81008900
	.4byte 0x00DE0B9E
	.4byte 0x00DF0BA0
	.4byte 0x82000293
	.4byte 0x03E27800
	.4byte 0x029F03E5
	.4byte 0x029503E5
	.4byte 0x740000FE
	.4byte 0x0B9E00DF
	.4byte 0x0E4305E0
	.4byte 0x4C0000FE
	.4byte 0x0E408100
	.4byte 0x890000DE
	.4byte 0x0B9F00DF
	.4byte 0x0BA18200
	.4byte 0x029303F9
	.4byte 0x7800029F
	.4byte 0x03FC0295
	.4byte 0x03FC7400
	.4byte 0x00FE0B9F
	.4byte 0x00DF0E43
	.4byte 0x05E04C00
	.4byte 0x00FE0E41
	.4byte 0x029F040E
	.4byte 0x00DE0E42
	.4byte 0x00FE0E40
	.4byte 0x00FE0E41
	.4byte 0x00FE0E43
	.4byte 0x81008E00
	.4byte 0x84008900
	.4byte 0x1EFE0E40
	.4byte 0x1EBE0083
	.4byte 0x0E081C03
	.4byte 0x1FF5191A
	.4byte 0xF858FBA0
	.4byte 0xF8B1FBA0
	.4byte 0xF8B1FBA0
	.4byte 0xF8B1FBA0
	.4byte 0xF83B1B7E
	.4byte 0x00830E04
	.4byte 0x81008973
	.4byte 0x19611960
	.4byte 0x780000FE
	.4byte 0x0E040294
	.4byte 0x03038E00
	.4byte 0x810000DE
	.4byte 0x0B9BB100
	.4byte 0x02950446
	.4byte 0x00DE0B9C
	.4byte 0x00DC0B9D
	.4byte 0x2ECE2CCF
	.4byte 0x810000DE
	.4byte 0x0E1C2ECD
	.4byte 0x16C90001
	.4byte 0x16CB0040
	.4byte 0x02BF0652
	.4byte 0x81008900
	.4byte 0x00DE0B82
	.4byte 0x00DF0B83
	.4byte 0x2ECE2FCF
	.4byte 0x16CD0B80
	.4byte 0x16C90001
	.4byte 0x16CB00C4
	.4byte 0x02BF0652
	.4byte 0x810000DE
	.4byte 0x0B8000DC
	.4byte 0x0B81B100
	.4byte 0x02940462
	.4byte 0x00C00E07
	.4byte 0x029F0068
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0B80
	.4byte 0x16C90000
	.4byte 0x16CB00C4
	.4byte 0x00820E08
	.4byte 0x009F0000
	.4byte 0x1B5F009F
	.4byte 0x01401B5F
	.4byte 0x009F0280
	.4byte 0x1B5F009F
	.4byte 0x04001B5F
	.4byte 0x009F0540
	.4byte 0x1B5F009F
	.4byte 0x06801B5F
	.4byte 0x009F07C0
	.4byte 0x1B5F009F
	.4byte 0x09001B5F
	.4byte 0x009F0A40
	.4byte 0x1B5F02BF
	.4byte 0x065200DE
	.4byte 0x0BA700DF
	.4byte 0x0BA82ECE
	.4byte 0x2FCF16CD
	.4byte 0x03C016C9
	.4byte 0x000016CB
	.4byte 0x00808100
	.4byte 0x890000DE
	.4byte 0x0B84009F
	.4byte 0x0D214C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E15
	.4byte 0x00DE0B85
	.4byte 0x009F0D24
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E1600DE
	.4byte 0x0B86009A
	.4byte 0x000F009F
	.4byte 0x0CB13400
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E1400DE
	.4byte 0x0B86009A
	.4byte 0x001F009F
	.4byte 0x0CC114FC
	.4byte 0x34004C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E46
	.4byte 0x00DE0B86
	.4byte 0x009F0CE1
	.4byte 0x14F74C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E47
	.4byte 0x810000DE
	.4byte 0x0B9BB100
	.4byte 0x029504F9
	.4byte 0x890000DF
	.4byte 0x0B9E0300
	.4byte 0x0CC000FF
	.4byte 0x0E4000DF
	.4byte 0x0B9F0300
	.4byte 0x0CC000FF
	.4byte 0x0E41009F
	.4byte 0x0CE000FF
	.4byte 0x0E4200FF
	.4byte 0x0E4302BF
	.4byte 0x065200DE
	.4byte 0x0B9C2ECE
	.4byte 0x00DE0B9D
	.4byte 0x2ECF16CD
	.4byte 0x0CC016C9
	.4byte 0x000016CB
	.4byte 0x004002BF
	.4byte 0x065200C0
	.4byte 0x0E07029F
	.4byte 0x02F8009F
	.4byte 0x0CE000FF
	.4byte 0x0E4200FF
	.4byte 0x0E4000FF
	.4byte 0x0E4100FF
	.4byte 0x0E4302BF
	.4byte 0x065200C0
	.4byte 0x0E07029F
	.4byte 0x02F88E00
	.4byte 0x00860400
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF1FC6
	.4byte 0x2ECD16C9
	.4byte 0x000116CB
	.4byte 0x078002BF
	.4byte 0x065202BF
	.4byte 0x057A029F
	.4byte 0x00688E00
	.4byte 0x008607C0
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF1FC6
	.4byte 0x2ECD16C9
	.4byte 0x000116CB
	.4byte 0x078002BF
	.4byte 0x065202BF
	.4byte 0x057A029F
	.4byte 0x00688C00
	.4byte 0x8A008100
	.4byte 0x8970191F
	.4byte 0x2ECE2FCF
	.4byte 0x16CD0280
	.4byte 0x16C90001
	.4byte 0x16CB0280
	.4byte 0x8F508140
	.4byte 0x00810400
	.4byte 0x00830000
	.4byte 0x00820140
	.4byte 0x00990080
	.4byte 0x02BF0652
	.4byte 0x11050562
	.4byte 0x1F611120
	.4byte 0x05548972
	.4byte 0x195CF07B
	.4byte 0x197DF131
	.4byte 0x81398900
	.4byte 0x68002ECE
	.4byte 0x2CCF1FFB
	.4byte 0x2FCD0F01
	.4byte 0x2FC91FF9
	.4byte 0x2FCB7200
	.4byte 0x1F5E1F1C
	.4byte 0x810026C9
	.4byte 0x02A00004
	.4byte 0x029C0563
	.4byte 0x029F0068
	.4byte 0x029F0068
	.4byte 0x029F0068
	.4byte 0x029F0068
	.4byte 0x16FCDCD1
	.4byte 0x16FD0002
	.4byte 0x16FB0001
	.4byte 0x029F0F1A
	.4byte 0x029F0045
	.4byte 0x8E00191F
	.4byte 0x191D1F5F
	.4byte 0x1F1D2FCE
	.4byte 0x2DCF8900
	.4byte 0x1FA62DCD
	.4byte 0x0E002EC9
	.4byte 0x8100009C
	.4byte 0x00C02CCB
	.4byte 0x1CA00081
	.4byte 0x0E484800
	.4byte 0x1B3E1B3C
	.4byte 0x0B000099
	.4byte 0x00604B00
	.4byte 0x1B3D0081
	.4byte 0x0E481C06
	.4byte 0x00830000
	.4byte 0x1C4327C9
	.4byte 0x03A00004
	.4byte 0x029C059B
	.4byte 0x110905D0
	.4byte 0x8E00193A
	.4byte 0x19386900
	.4byte 0x2FCE2DCF
	.4byte 0x8900193D
	.4byte 0x2DCD16C9
	.4byte 0x00008100
	.4byte 0x009C00C0
	.4byte 0x2CCB0081
	.4byte 0x0E484800
	.4byte 0x1B3E1B3C
	.4byte 0x0B000960
	.4byte 0x4B001B3D
	.4byte 0x00810E48
	.4byte 0x8F0080F0
	.4byte 0x80C06A00
	.4byte 0x48001117
	.4byte 0x05CA80F0
	.4byte 0x80C06B32
	.4byte 0x492280F0
	.4byte 0x80C06A3A
	.4byte 0x482A80F0
	.4byte 0x80C06B32
	.4byte 0x49221B5F
	.4byte 0x1B5D80F0
	.4byte 0x80C06A00
	.4byte 0x48001117
	.4byte 0x05DE80F0
	.4byte 0x80C06B32
	.4byte 0x492280F0
	.4byte 0x80C06A3A
	.4byte 0x482A80F0
	.4byte 0x80C06B32
	.4byte 0x49221B5F
	.4byte 0x1B5D1C05
	.4byte 0x02DF8E00
	.4byte 0x009B0E48
	.4byte 0x009D00C0
	.4byte 0x02BF0637
	.4byte 0x490000FF
	.4byte 0x0E1D00FD
	.4byte 0x0E1E8900
	.4byte 0x02BF0652
	.4byte 0x11040622
	.4byte 0x00DA0E1D
	.4byte 0x00D80E1E
	.4byte 0x009B0EA8
	.4byte 0x009D00C0
	.4byte 0x02BF0637
	.4byte 0x490000FF
	.4byte 0x0E1D00FD
	.4byte 0x0E1E0083
	.4byte 0x0E4802BF
	.4byte 0x06428900
	.4byte 0x00DA0E1D
	.4byte 0x00D80E1E
	.4byte 0x009B0E48
	.4byte 0x009D00C0
	.4byte 0x02BF0637
	.4byte 0x490000FF
	.4byte 0x0E1D00FD
	.4byte 0x0E1E0083
	.4byte 0x0EA802BF
	.4byte 0x06420000
	.4byte 0x00008E00
	.4byte 0x890000DA
	.4byte 0x0E1D00D8
	.4byte 0x0E1E009B
	.4byte 0x0EA8009D
	.4byte 0x00C002BF
	.4byte 0x06374900
	.4byte 0x00830E48
	.4byte 0x02BF0642
	.4byte 0x00830EA8
	.4byte 0x02BF0642
	.4byte 0x02DF8E00
	.4byte 0x00FAFFCE
	.4byte 0x00F8FFCF
	.4byte 0x00FBFFCD
	.4byte 0x16C90000
	.4byte 0x2DCB02DF
	.4byte 0x8F008D00
	.4byte 0x8A00197A
	.4byte 0x1978A000
	.4byte 0xB6001130
	.4byte 0x06509179
	.4byte 0x4E6D197A
	.4byte 0x4D43A039
	.4byte 0xB62902DF
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x065202DF
	.4byte 0x26FE02C0
	.4byte 0x8000029C
	.4byte 0x065802DF
	.4byte 0x26FC02A0
	.4byte 0x8000029C
	.4byte 0x065E02DF
	.4byte 0x26FC02A0
	.4byte 0x8000029C
	.4byte 0x066402DF
	.4byte 0x81008970
	.4byte 0x8E602ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E4816C9
	.4byte 0x00008900
	.4byte 0x0D202DCB
	.4byte 0x4C001C80
	.4byte 0x00800280
	.4byte 0x00810000
	.4byte 0x00820140
	.4byte 0x00830E48
	.4byte 0x0A0027C9
	.4byte 0x03A00004
	.4byte 0x029C0681
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E58
	.4byte 0x16C90000
	.4byte 0x16CB0260
	.4byte 0x009F00A0
	.4byte 0x8F00007F
	.4byte 0x069A197E
	.4byte 0x1B1A197C
	.4byte 0x1B1A1B5E
	.4byte 0x1B5C1B3E
	.4byte 0x1B3C1C04
	.4byte 0x029F0068
	.4byte 0x00820BB8
	.4byte 0x195E2ED1
	.4byte 0x195E2ED4
	.4byte 0x195E2ED5
	.4byte 0x195E2ED6
	.4byte 0x195E2ED7
	.4byte 0x195E2ED8
	.4byte 0x195E2ED9
	.4byte 0x195E2EA0
	.4byte 0x195E2EA1
	.4byte 0x195E2EA2
	.4byte 0x195E2EA3
	.4byte 0x195E2EA4
	.4byte 0x195E2EA5
	.4byte 0x195E2EA6
	.4byte 0x195E2EA7
	.4byte 0x195E2EA8
	.4byte 0x195E2EA9
	.4byte 0x195E2EAA
	.4byte 0x195E2EAB
	.4byte 0x195E2EAC
	.4byte 0x195E2EAD
	.4byte 0x195E2EAE
	.4byte 0x195E2EAF
	.4byte 0x195E2EDE
	.4byte 0x195E2EDA
	.4byte 0x195E2EDB
	.4byte 0x195E2EDC
	.4byte 0x8C008A00
	.4byte 0x8E0000D8
	.4byte 0x0E16195B
	.4byte 0x19598100
	.4byte 0x195C0080
	.4byte 0x0E48195F
	.4byte 0x1B1F195F
	.4byte 0x1B1F195F
	.4byte 0x1B1F185F
	.4byte 0x1B1F6B00
	.4byte 0x15054D00
	.4byte 0x157E1C9F
	.4byte 0x1CBD05E0
	.4byte 0x99007D00
	.4byte 0x1CDD8900
	.4byte 0x1FA51502
	.4byte 0x1CBF009A
	.4byte 0x01FC009E
	.4byte 0x0E480081
	.4byte 0xFFDD0083
	.4byte 0x0D800064
	.4byte 0x07101827
	.4byte 0x1B074A00
	.4byte 0x1FFC1827
	.4byte 0x1B071579
	.4byte 0x35001827
	.4byte 0x1B074100
	.4byte 0x1B7E1827
	.4byte 0x1B071B7F
	.4byte 0x00000065
	.4byte 0x07161827
	.4byte 0x1B070000
	.4byte 0x00000007
	.4byte 0x187F0066
	.4byte 0x071F4A3B
	.4byte 0x1FFC1579
	.4byte 0x35334100
	.4byte 0x1B7F0004
	.4byte 0x189F1ADF
	.4byte 0x189F1ADF
	.4byte 0x189F1ADF
	.4byte 0x189F1ADF
	.4byte 0x1ADC0082
	.4byte 0x0BD227DC
	.4byte 0x1ADF27DB
	.4byte 0x1ADF27DA
	.4byte 0x1ADF0082
	.4byte 0x0BBE27D9
	.4byte 0x1ADF27D8
	.4byte 0x1ADF8F00
	.4byte 0x00C10E42
	.4byte 0x00820D80
	.4byte 0x19401943
	.4byte 0x80F0B8C0
	.4byte 0x111F074A
	.4byte 0xA6F0BCF0
	.4byte 0x19401943
	.4byte 0xBCF04EC0
	.4byte 0xB831A6F0
	.4byte 0xBCF0BC00
	.4byte 0x4E001B3E
	.4byte 0x00E10E42
	.4byte 0x02DF0082
	.4byte 0x0BB8195E
	.4byte 0x2ED1195E
	.4byte 0x2ED4195E
	.4byte 0x2ED5195E
	.4byte 0x2ED6195E
	.4byte 0x2ED7195E
	.4byte 0x2ED8195E
	.4byte 0x2ED9195E
	.4byte 0x2EA0195E
	.4byte 0x2EA1195E
	.4byte 0x2EA2195E
	.4byte 0x2EA3195E
	.4byte 0x2EA4195E
	.4byte 0x2EA5195E
	.4byte 0x2EA6195E
	.4byte 0x2EA7195E
	.4byte 0x2EA8195E
	.4byte 0x2EA9195E
	.4byte 0x2EAA195E
	.4byte 0x2EAB195E
	.4byte 0x2EAC195E
	.4byte 0x2EAD195E
	.4byte 0x2EAE195E
	.4byte 0x2EAF195E
	.4byte 0x2EDE195E
	.4byte 0x2EDA195E
	.4byte 0x2EDB195E
	.4byte 0x2EDC8C00
	.4byte 0x8A008F00
	.4byte 0x195B1959
	.4byte 0x19580080
	.4byte 0x0E48195F
	.4byte 0x1B1F195F
	.4byte 0x1B1F195F
	.4byte 0x1B1F185F
	.4byte 0x1B1F6B00
	.4byte 0x15057100
	.4byte 0x157E03A0
	.4byte 0xFFFF029C
	.4byte 0x07AB0085
	.4byte 0x00001502
	.4byte 0x1C9F0086
	.4byte 0x0020029F
	.4byte 0x07B77900
	.4byte 0x1CBF1C9D
	.4byte 0x05E09900
	.4byte 0x7D001CDD
	.4byte 0x89001FA4
	.4byte 0x15020504
	.4byte 0x1C9F009E
	.4byte 0x0E4A7000
	.4byte 0x0081FFDD
	.4byte 0x00830D80
	.4byte 0x1F420064
	.4byte 0x07C41827
	.4byte 0x1B070000
	.4byte 0x00000065
	.4byte 0x07D61827
	.4byte 0x1B074A00
	.4byte 0x1C5E1827
	.4byte 0x1B071958
	.4byte 0x195F1827
	.4byte 0x1B075100
	.4byte 0x1B7F1827
	.4byte 0x1B071B7C
	.4byte 0x1B780066
	.4byte 0x07E04A00
	.4byte 0x1C5E1958
	.4byte 0x195F5100
	.4byte 0x1B7F1B7C
	.4byte 0x1B780004
	.4byte 0x1C5A189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF1ADC
	.4byte 0x00820BD2
	.4byte 0x27DC1ADF
	.4byte 0x27DB1ADF
	.4byte 0x27DA1ADF
	.4byte 0x00820BBE
	.4byte 0x27D91ADF
	.4byte 0x27D81ADF
	.4byte 0x8D008B00
	.4byte 0x8F000080
	.4byte 0x0D8000C3
	.4byte 0x0E42191A
	.4byte 0x1919B058
	.4byte 0xFB501919
	.4byte 0x110F080D
	.4byte 0xB058FAA1
	.4byte 0x1919B058
	.4byte 0xFBA01919
	.4byte 0xB058FA3B
	.4byte 0x1B7E00E3
	.4byte 0x0E4202DF
	.4byte 0x00820BB8
	.4byte 0x195E2ED1
	.4byte 0x195E2ED4
	.4byte 0x195E2ED5
	.4byte 0x195E2ED6
	.4byte 0x195E2ED7
	.4byte 0x195E2ED8
	.4byte 0x195E2ED9
	.4byte 0x195E2EA0
	.4byte 0x195E2EA1
	.4byte 0x195E2EA2
	.4byte 0x195E2EA3
	.4byte 0x195E2EA4
	.4byte 0x195E2EA5
	.4byte 0x195E2EA6
	.4byte 0x195E2EA7
	.4byte 0x195E2EA8
	.4byte 0x195E2EA9
	.4byte 0x195E2EAA
	.4byte 0x195E2EAB
	.4byte 0x195E2EAC
	.4byte 0x195E2EAD
	.4byte 0x195E2EAE
	.4byte 0x195E2EAF
	.4byte 0x195E2EDE
	.4byte 0x195E2EDA
	.4byte 0x195E2EDB
	.4byte 0x195E2EDC
	.4byte 0x00C00E42
	.4byte 0x0081FFDD
	.4byte 0x11200855
	.4byte 0x18241B04
	.4byte 0
	.4byte 0x00E00E42
	.4byte 0x00820BD9
	.4byte 0x0004189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF8900
	.4byte 0x1ADC27DC
	.4byte 0x00FF0BD2
	.4byte 0x27DB00FF
	.4byte 0x0BD127DA
	.4byte 0x00FF0BD0
	.4byte 0x27D900FF
	.4byte 0x0BBE27D8
	.4byte 0x00FF0BBD
	.4byte 0x02DF02DF
	.4byte 0x00C00E40
	.4byte 0x00810B89
	.4byte 0x00C20E08
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BA902DF
	.4byte 0x00C00E41
	.4byte 0x00810B8B
	.4byte 0x00C20E09
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAC02DF
	.4byte 0x00C00E40
	.4byte 0x00810B89
	.4byte 0x00C20E08
	.4byte 0x1C6200C4
	.4byte 0x0E4100C5
	.4byte 0x0E0902BF
	.4byte 0x80E700F8
	.4byte 0x0BA900FB
	.4byte 0x0BAC02DF
	.4byte 0x00C00E43
	.4byte 0x00810B97
	.4byte 0x00C20E0A
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAF02DF
	.4byte 0x00C00E40
	.4byte 0x00810B89
	.4byte 0x00C20E08
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BA900C0
	.4byte 0x0E430081
	.4byte 0x0B9700C2
	.4byte 0x0E0A1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BAF
	.4byte 0x02DF00C0
	.4byte 0x0E410081
	.4byte 0x0B8B00C2
	.4byte 0x0E091C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BAC
	.4byte 0x00C00E43
	.4byte 0x00810B97
	.4byte 0x00C20E0A
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAF02DF
	.4byte 0x00C00E40
	.4byte 0x00810B89
	.4byte 0x00C20E08
	.4byte 0x1C6200C4
	.4byte 0x0E4100C5
	.4byte 0x0E0902BF
	.4byte 0x80E700F8
	.4byte 0x0BA900FB
	.4byte 0x0BAC00C0
	.4byte 0x0E430081
	.4byte 0x0B9700C2
	.4byte 0x0E0A1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BAF
	.4byte 0x02DF00C0
	.4byte 0x0E400081
	.4byte 0x0B8900C2
	.4byte 0x0E080083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BA902DF
	.4byte 0x00C00E41
	.4byte 0x00810B8B
	.4byte 0x00C20E09
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAC
	.4byte 0x02DF00C0
	.4byte 0x0E400081
	.4byte 0x0B8900C2
	.4byte 0x0E080083
	.4byte 0x0E4800C4
	.4byte 0x0E4100C5
	.4byte 0x0E0902BF
	.4byte 0x828200F8
	.4byte 0x0BA900FB
	.4byte 0x0BAC02DF
	.4byte 0x00C00E43
	.4byte 0x00810B97
	.4byte 0x00C20E0A
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAF
	.4byte 0x02DF00C0
	.4byte 0x0E400081
	.4byte 0x0B8900C2
	.4byte 0x0E080083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BA900C0
	.4byte 0x0E430081
	.4byte 0x0B9700C2
	.4byte 0x0E0A0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAF02DF
	.4byte 0x00C00E41
	.4byte 0x00810B8B
	.4byte 0x00C20E09
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAC
	.4byte 0x00C00E43
	.4byte 0x00810B97
	.4byte 0x00C20E0A
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAF
	.4byte 0x02DF00C0
	.4byte 0x0E400081
	.4byte 0x0B8900C2
	.4byte 0x0E080083
	.4byte 0x0E4800C4
	.4byte 0x0E4100C5
	.4byte 0x0E0902BF
	.4byte 0x828200F8
	.4byte 0x0BA900FB
	.4byte 0x0BAC00C0
	.4byte 0x0E430081
	.4byte 0x0B9700C2
	.4byte 0x0E0A0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAF02DF
	.4byte 0x00C00E40
	.4byte 0x00810B8D
	.4byte 0x00C20E0B
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAA02DF
	.4byte 0x00C00E41
	.4byte 0x00810B8F
	.4byte 0x00C20E0C
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAD02DF
	.4byte 0x00C00E40
	.4byte 0x00810B8D
	.4byte 0x00C20E0B
	.4byte 0x1C6200C4
	.4byte 0x0E4100C5
	.4byte 0x0E0C02BF
	.4byte 0x80E700F8
	.4byte 0x0BAA00FB
	.4byte 0x0BAD02DF
	.4byte 0x00C00E40
	.4byte 0x00810B8D
	.4byte 0x00C20E0B
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAA
	.4byte 0x02DF00C0
	.4byte 0x0E410081
	.4byte 0x0B8F00C2
	.4byte 0x0E0C0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAD02DF
	.4byte 0x00C00E40
	.4byte 0x00810B8D
	.4byte 0x00C20E0B
	.4byte 0x00830E48
	.4byte 0x00C40E41
	.4byte 0x00C50E0C
	.4byte 0x02BF8282
	.4byte 0x00F80BAA
	.4byte 0x00FB0BAD
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB0
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB0
	.4byte 0x029F0982
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB0029F
	.4byte 0x098E00C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB0
	.4byte 0x029F099A
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB0029F
	.4byte 0x09AC00C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB0
	.4byte 0x029F09B9
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB0029F
	.4byte 0x09C600C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB002DF
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F0982
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F098E
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F099A
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F09AC
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F09B9
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F09C6
	.4byte 0x00C00E40
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAB02DF
	.4byte 0x00C00E41
	.4byte 0x00810B93
	.4byte 0x00C20E0F
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAE02DF
	.4byte 0x00C00E40
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x1C6200C4
	.4byte 0x0E4100C5
	.4byte 0x0E0F02BF
	.4byte 0x80E700F8
	.4byte 0x0BAB00FB
	.4byte 0x0BAE02DF
	.4byte 0x00C00E40
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAB
	.4byte 0x02DF00C0
	.4byte 0x0E410081
	.4byte 0x0B9300C2
	.4byte 0x0E0F0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAE02DF
	.4byte 0x00C00E40
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x00830E48
	.4byte 0x00C40E41
	.4byte 0x00C50E0F
	.4byte 0x02BF8282
	.4byte 0x00F80BAB
	.4byte 0x00FB0BAE
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0A94
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0AA000C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0AAC
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0ABE00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0ACB
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0AD800C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D02DF
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0A94
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0AA0
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0AAC
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0ABE
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0ACB
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0AD8
	.4byte 0x00C00E43
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAB02DF
	.4byte 0x00C00E43
	.4byte 0x00810B93
	.4byte 0x00C20E0F
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAE02DF
	.4byte 0x00C00E43
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x1C6200C4
	.4byte 0x0E4300C5
	.4byte 0x0E0F02BF
	.4byte 0x80E700F8
	.4byte 0x0BAB00FB
	.4byte 0x0BAE02DF
	.4byte 0x00C00E43
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAB
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9300C2
	.4byte 0x0E0F0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAE02DF
	.4byte 0x00C00E43
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x00830E48
	.4byte 0x00C40E43
	.4byte 0x00C50E0F
	.4byte 0x02BF8282
	.4byte 0x00F80BAB
	.4byte 0x00FB0BAE
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0BA4
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0BB000C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0BBC
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0BCE00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0BDB
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0BE800C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BA400C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BB000C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BBC00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BCE00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BDB00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BE80118
	.4byte 0x01D40252
	.4byte 0x02F80509
	.4byte 0x051D01FB
	.4byte 0x066A0D27
	.4byte 0x01F5056E
	.4byte 0x056A056C
	.4byte 0x023F0531
	.4byte 0x05700DA1
	.4byte 0x020B0082
	.4byte 0x0E170875
	.4byte 0x08760882
	.4byte 0x088E08A0
	.4byte 0x08AC08C3
	.4byte 0x08DA0875
	.4byte 0x08F70904
	.4byte 0x09110924
	.4byte 0x0931094A
	.4byte 0x09630875
	.4byte 0x0982098E
	.4byte 0x099A0875
	.4byte 0x09AC09B9
	.4byte 0x09C609D9
	.4byte 0x09E509F2
	.4byte 0x09FF09D9
	.4byte 0x0A0C0A19
	.4byte 0x0A260875
	.4byte 0x0982098E
	.4byte 0x099A0875
	.4byte 0x09AC09B9
	.4byte 0x09C60A33
	.4byte 0x0A400A4E
	.4byte 0x0A5C0A33
	.4byte 0x0A6A0A78
	.4byte 0x0A860875
	.4byte 0x0A940AA0
	.4byte 0x0AAC0875
	.4byte 0x0ABE0ACB
	.4byte 0x0AD80AEB
	.4byte 0x0AF70B04
	.4byte 0x0B110AEB
	.4byte 0x0B1E0B2B
	.4byte 0x0B380875
	.4byte 0x0A940AA0
	.4byte 0x0AAC0875
	.4byte 0x0ABE0ACB
	.4byte 0x0AD80B45
	.4byte 0x0B500B5E
	.4byte 0x0B6C0B45
	.4byte 0x0B7A0B88
	.4byte 0x0B960875
	.4byte 0x0BA40BB0
	.4byte 0x0BBC0875
	.4byte 0x0BCE0BDB
	.4byte 0x0BE80AEB
	.4byte 0x0BFB0C08
	.4byte 0x0C150AEB
	.4byte 0x0C220C2F
	.4byte 0x0C3C0875
	.4byte 0x0BA40BB0
	.4byte 0x0BBC0875
	.4byte 0x0BCE0BDB
	.4byte 0x0BE80B45
	.4byte 0x0C490C57
	.4byte 0x0C650B45
	.4byte 0x0C730C81
	.4byte 0x0C8F069E
	.4byte 0x07530814
	.4byte 0x10001200
	.4byte 0x14008E00
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E8016C9
	.4byte 0x000016CB
	.4byte 0x01001F7E
	.4byte 0x1F3C8100
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x0D36191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x028016C9
	.4byte 0x000016CB
	.4byte 0x02801C80
	.4byte 0x00800280
	.4byte 0x00C10E1B
	.4byte 0x00850000
	.4byte 0x0089007F
	.4byte 0x00820F00
	.4byte 0x008316B4
	.4byte 0x1CE38100
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x0D548F00
	.4byte 0x8A788C68
	.4byte 0xF1001A3F
	.4byte 0x84E3107E
	.4byte 0xF2E3F2E7
	.4byte 0xF2786E68
	.4byte 0xF1321A3F
	.4byte 0x119E0D70
	.4byte 0x1C6784E3
	.4byte 0x107EF2E3
	.4byte 0xF2E7F278
	.4byte 0x6E68F132
	.4byte 0x1A3F1C67
	.4byte 0x84E3107E
	.4byte 0xF2E3F2E7
	.4byte 0xF2006E00
	.4byte 0x1B5E00E1
	.4byte 0x0E1B0080
	.4byte 0x02800083
	.4byte 0x0F000081
	.4byte 0x00000082
	.4byte 0x01400089
	.4byte 0xFFFF8900
	.4byte 0x81008F00
	.4byte 0x11A00D90
	.4byte 0x197F9930
	.4byte 0x1B1E1B3F
	.4byte 0x7D291B5F
	.4byte 0x1B5D8E00
	.4byte 0x1FDB1F99
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E80
	.4byte 0x16C90001
	.4byte 0x16CB0100
	.4byte 0x02BF0652
	.4byte 0x1C04029F
	.4byte 0x00688E00
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x07C016C9
	.4byte 0x000116CB
	.4byte 0x050002BF
	.4byte 0x06528100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x16CD07C0
	.4byte 0x16C90000
	.4byte 0x89000D20
	.4byte 0x2DCB4C00
	.4byte 0x1C800080
	.4byte 0x07C00083
	.4byte 0x00001C43
	.4byte 0x0A0027C9
	.4byte 0x03A00004
	.4byte 0x029C0DC3
	.4byte 0x2ECE2CCF
	.4byte 0x16CD07D0
	.4byte 0x16C90000
	.4byte 0x16CB04E0
	.4byte 0x8F0080F0
	.4byte 0x80C06A00
	.4byte 0x4800114F
	.4byte 0x0DDE80F0
	.4byte 0x80C06B32
	.4byte 0x492280F0
	.4byte 0x80C06A3A
	.4byte 0x482A80F0
	.4byte 0x80C06B32
	.4byte 0x49221B5F
	.4byte 0x1B5D80F0
	.4byte 0x80C06800
	.4byte 0x7C004A00
	.4byte 0x114F0DF5
	.4byte 0x80F080C0
	.4byte 0x69327D00
	.4byte 0x4B2280F0
	.4byte 0x80C0683A
	.4byte 0x7C004A2A
	.4byte 0x80F080C0
	.4byte 0x69327D00
	.4byte 0x4B221B5F
	.4byte 0x1B5D1C04
	.4byte 0x029F0068
	.4byte 0x8F0080F1
	.4byte 0x80C16A00
	.4byte 0x4800114F
	.4byte 0x0E0E80F1
	.4byte 0x80C16B32
	.4byte 0x492280F1
	.4byte 0x80C16A3A
	.4byte 0x482A80F1
	.4byte 0x80C16B32
	.4byte 0x49221B5F
	.4byte 0x1B5D8E00
	.4byte 0x02DF8E00
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x040016C9
	.4byte 0x000116CB
	.4byte 0x078002BF
	.4byte 0x06528100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0A40
	.4byte 0x16C90001
	.4byte 0x16CB0280
	.4byte 0x02BF0652
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E4816C9
	.4byte 0x000016CB
	.4byte 0x02800081
	.4byte 0x0E480082
	.4byte 0x00000083
	.4byte 0x000002BF
	.4byte 0x065202BF
	.4byte 0x0E008100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E48
	.4byte 0x16C90000
	.4byte 0x16CB0280
	.4byte 0x00810E48
	.4byte 0x00820140
	.4byte 0x00830140
	.4byte 0x02BF0652
	.4byte 0x02BF0E00
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E4816C9
	.4byte 0x000016CB
	.4byte 0x02800081
	.4byte 0x0E480082
	.4byte 0x07C00083
	.4byte 0x07C002BF
	.4byte 0x065202BF
	.4byte 0x0E008100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E48
	.4byte 0x16C90000
	.4byte 0x16CB0280
	.4byte 0x00810E48
	.4byte 0x00820900
	.4byte 0x00830900
	.4byte 0x02BF0652
	.4byte 0x02BF0E00
	.4byte 0x029F0068
	.4byte 0x8E0016FC
	.4byte 0xECC01FCC
	.4byte 0x1D9E2EFD
	.4byte 0x26FC02A0
	.4byte 0x8000029C
	.4byte 0x0E8E0000
	.4byte 0
	.4byte 0x02FF8E00
	.4byte 0x00F00E17
	.4byte 0x00FE0E18
	.4byte 0x00FC0E19
	.4byte 0x1FCC1D9E
	.4byte 0x16FCFEED
	.4byte 0x2EFD26FC
	.4byte 0x02A08000
	.4byte 0x029C0EA3
	.4byte 0x00D00E17
	.4byte 0x00DE0E18
	.4byte 0x00DC0E19
	.4byte 0
	.4byte 0
	.4byte 0x02FF8E00
	.4byte 0x1DBC1DBE
	.4byte 0x810000DE
	.4byte 0x0BB70601
	.4byte 0x02950EBF
	.4byte 0x0E0000FE
	.4byte 0x0B878100
	.4byte 0x00DE0B88
	.4byte 0x06010295
	.4byte 0x0EC98100
	.4byte 0x1FCD1F8D
	.4byte 0x02FF8100
	.4byte 0x00DC0BE1
	.4byte 0x760000FC
	.4byte 0x0BE18100
	.4byte 0x1FCD1F8D
	.4byte 0x02FF0000
	.4byte 0
	.4byte 0
	.4byte 0x02FF8E00
	.4byte 0x1DBC1DBE
	.4byte 0x810000DE
	.4byte 0x0BB70601
	.4byte 0x02950EE8
	.4byte 0x0E0000FE
	.4byte 0x0B871FCD
	.4byte 0x1F8D02FF
	.4byte 0x810000DE
	.4byte 0x0B880601
	.4byte 0x02950EFA
	.4byte 0x00DE0BDA
	.4byte 0x2EDA00DE
	.4byte 0x0BDB2EDB
	.4byte 0x00DE0BDC
	.4byte 0x2EDC1FCD
	.4byte 0x1F8D02FF
	.4byte 0x00DE0BDA
	.4byte 0x2EDA26DB
	.4byte 0x2EDB26DC
	.4byte 0x2EDC8100
	.4byte 0x00DC0BE1
	.4byte 0x760000FC
	.4byte 0x0BE18100
	.4byte 0x1FCD1F8D
	.4byte 0x02FF0000
	.4byte 0
	.4byte 0
	.4byte 0x02FF0000
	.4byte 0
	.4byte 0x000002FF
	.4byte 0x0F280F2B
	.4byte 0x0F630F66
	.4byte 0x8E008100
	.4byte 0x890002BF
	.4byte 0x0F6927FF
	.4byte 0x009E0F16
	.4byte 0x4C001C7E
	.4byte 0x03131C7F
	.4byte 0x176F0021
	.4byte 0x029F0030
	.4byte 0x00218100
	.4byte 0x890002BF
	.4byte 0x0F6924FF
	.4byte 0x02BF0F6F
	.4byte 0x25FF02BF
	.4byte 0x0F6F27FF
	.4byte 0x2ECE2CCF
	.4byte 0x16C90001
	.4byte 0x2FCD2DCB
	.4byte 0x81008900
	.4byte 0x02BF0F69
	.4byte 0x24FF1C9E
	.4byte 0x1CBC02BF
	.4byte 0x0F6F25FF
	.4byte 0x02BF0F6F
	.4byte 0x27FF1CDF
	.4byte 0x1CFD8100
	.4byte 0x02BF0F69
	.4byte 0x26FF1C1E
	.4byte 0x890002BF
	.4byte 0x0F6F20FF
	.4byte 0x1F5F02BF
	.4byte 0x0F6921FF
	.4byte 0x02BF0F69
	.4byte 0x23FF26C9
	.4byte 0x02A00004
	.4byte 0x029C0F5B
	.4byte 0x029F80B5
	.4byte 0x0021029F
	.4byte 0x80000021
	.4byte 0x029F0045
	.4byte 0x002126FE
	.4byte 0x02C08000
	.4byte 0x029C0F69
	.4byte 0x02DF27FE
	.4byte 0x03C08000
	.4byte 0x029C0F6F
	.4byte 0x02DF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80235A40
lbl_80235A40:

	# ROM: 0x232A40
	.4byte 0x000006FD
	.4byte 0x000007CF
	.4byte 0x0000091D
	.4byte 0x000001B1
	.4byte 0x00000095
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043

.global lbl_80235A60
lbl_80235A60:

	# ROM: 0x232A60
	.4byte 0x000006FD
	.4byte 0x000007CF
	.4byte 0x000001B1
	.4byte 0x00000095

.global lbl_80235A70
lbl_80235A70:

	# ROM: 0x232A70
	.4byte 0x3DC7B000
	.4byte 0x3F4D5E00
	.4byte 0x3DD01000
	.4byte 0xBA800000
	.4byte 0x3DBF8000
	.4byte 0x3F4D5200
	.4byte 0x3DD8B000
	.4byte 0xBA880000
	.4byte 0x3DB78000
	.4byte 0x3F4D3C00
	.4byte 0x3DE18000
	.4byte 0xBA980000
	.4byte 0x3DAFB000
	.4byte 0x3F4D1A00
	.4byte 0x3DEA7000
	.4byte 0xBAA80000
	.4byte 0x3DA80000
	.4byte 0x3F4CEC00
	.4byte 0x3DF39000
	.4byte 0xBAB80000
	.4byte 0x3DA08000
	.4byte 0x3F4CB400
	.4byte 0x3DFCE000
	.4byte 0xBAC80000
	.4byte 0x3D993000
	.4byte 0x3F4C7200
	.4byte 0x3E033800
	.4byte 0xBAD80000
	.4byte 0x3D922000
	.4byte 0x3F4C2400
	.4byte 0x3E081000
	.4byte 0xBAE80000
	.4byte 0x3D8B3000
	.4byte 0x3F4BCA00
	.4byte 0x3E0D0000
	.4byte 0xBAFC0000
	.4byte 0x3D848000
	.4byte 0x3F4B6600
	.4byte 0x3E120800
	.4byte 0xBB060000
	.4byte 0x3D7BE000
	.4byte 0x3F4AF800
	.4byte 0x3E172800
	.4byte 0xBB100000
	.4byte 0x3D6F0000
	.4byte 0x3F4A7E00
	.4byte 0x3E1C6000
	.4byte 0xBB180000
	.4byte 0x3D62A000
	.4byte 0x3F49F800
	.4byte 0x3E21B000
	.4byte 0xBB220000
	.4byte 0x3D568000
	.4byte 0x3F496800
	.4byte 0x3E271800
	.4byte 0xBB2E0000
	.4byte 0x3D4AC000
	.4byte 0x3F48D000
	.4byte 0x3E2C9000
	.4byte 0xBB380000
	.4byte 0x3D3F6000
	.4byte 0x3F482A00
	.4byte 0x3E322800
	.4byte 0xBB440000
	.4byte 0x3D344000
	.4byte 0x3F477A00
	.4byte 0x3E37D000
	.4byte 0xBB4E0000
	.4byte 0x3D29A000
	.4byte 0x3F46C000
	.4byte 0x3E3D9000
	.4byte 0xBB5A0000
	.4byte 0x3D1F4000
	.4byte 0x3F45FC00
	.4byte 0x3E436800
	.4byte 0xBB660000
	.4byte 0x3D152000
	.4byte 0x3F452E00
	.4byte 0x3E495000
	.4byte 0xBB720000
	.4byte 0x3D0B6000
	.4byte 0x3F445600
	.4byte 0x3E4F5800
	.4byte 0xBB7E0000
	.4byte 0x3D020000
	.4byte 0x3F437400
	.4byte 0x3E557000
	.4byte 0xBB850000
	.4byte 0x3CF1C000
	.4byte 0x3F428600
	.4byte 0x3E5B9800
	.4byte 0xBB8C0000
	.4byte 0x3CE04000
	.4byte 0x3F419000
	.4byte 0x3E61D800
	.4byte 0xBB920000
	.4byte 0x3CCF4000
	.4byte 0x3F409000
	.4byte 0x3E683000
	.4byte 0xBB990000
	.4byte 0x3CBF0000
	.4byte 0x3F3F8800
	.4byte 0x3E6E9800
	.4byte 0xBB9F0000
	.4byte 0x3CAF4000
	.4byte 0x3F3E7600
	.4byte 0x3E751000
	.4byte 0xBBA60000
	.4byte 0x3CA04000
	.4byte 0x3F3D5A00
	.4byte 0x3E7BA000
	.4byte 0xBBAE0000
	.4byte 0x3C91C000
	.4byte 0x3F3C3600
	.4byte 0x3E812000
	.4byte 0xBBB50000
	.4byte 0x3C838000
	.4byte 0x3F3B0800
	.4byte 0x3E847800
	.4byte 0xBBBB0000
	.4byte 0x3C6C0000
	.4byte 0x3F39D200
	.4byte 0x3E87DC00
	.4byte 0xBBC20000
	.4byte 0x3C520000
	.4byte 0x3F389400
	.4byte 0x3E8B4800
	.4byte 0xBBCA0000
	.4byte 0x3C398000
	.4byte 0x3F374C00
	.4byte 0x3E8EBC00
	.4byte 0xBBD10000
	.4byte 0x3C220000
	.4byte 0x3F35FE00
	.4byte 0x3E923800
	.4byte 0xBBD70000
	.4byte 0x3C0B8000
	.4byte 0x3F34A600
	.4byte 0x3E95BC00
	.4byte 0xBBDE0000
	.4byte 0x3BEC0000
	.4byte 0x3F334800
	.4byte 0x3E994400
	.4byte 0xBBE60000
	.4byte 0x3BC20000
	.4byte 0x3F31E200
	.4byte 0x3E9CD800
	.4byte 0xBBED0000
	.4byte 0x3B9A0000
	.4byte 0x3F307400
	.4byte 0x3EA07400
	.4byte 0xBBF30000
	.4byte 0x3B6A0000
	.4byte 0x3F2EFE00
	.4byte 0x3EA41400
	.4byte 0xBBFA0000
	.4byte 0x3B220000
	.4byte 0x3F2D8000
	.4byte 0x3EA7BC00
	.4byte 0xBC010000
	.4byte 0x3ABC0000
	.4byte 0x3F2BFE00
	.4byte 0x3EAB6800
	.4byte 0xBC048000
	.4byte 0x39F00000
	.4byte 0x3F2A7400
	.4byte 0x3EAF1800
	.4byte 0xBC078000
	.4byte 0xBA000000
	.4byte 0x3F28E400
	.4byte 0x3EB2D000
	.4byte 0xBC0A8000
	.4byte 0xBAB00000
	.4byte 0x3F274E00
	.4byte 0x3EB69000
	.4byte 0xBC0D8000
	.4byte 0xBB0E0000
	.4byte 0x3F25B000
	.4byte 0x3EBA5000
	.4byte 0xBC110000
	.4byte 0xBB420000
	.4byte 0x3F240E00
	.4byte 0x3EBE1800
	.4byte 0xBC140000
	.4byte 0xBB720000
	.4byte 0x3F226400
	.4byte 0x3EC1E400
	.4byte 0xBC170000
	.4byte 0xBB8F0000
	.4byte 0x3F20B600
	.4byte 0x3EC5B400
	.4byte 0xBC190000
	.4byte 0xBBA30000
	.4byte 0x3F1F0400
	.4byte 0x3EC98800
	.4byte 0xBC1B8000
	.4byte 0xBBB70000
	.4byte 0x3F1D4C00
	.4byte 0x3ECD5C00
	.4byte 0xBC1E0000
	.4byte 0xBBC90000
	.4byte 0x3F1B8E00
	.4byte 0x3ED13400
	.4byte 0xBC208000
	.4byte 0xBBDA0000
	.4byte 0x3F19CC00
	.4byte 0x3ED50C00
	.4byte 0xBC228000
	.4byte 0xBBEA0000
	.4byte 0x3F180600
	.4byte 0x3ED8E800
	.4byte 0xBC240000
	.4byte 0xBBF80000
	.4byte 0x3F163C00
	.4byte 0x3EDCC800
	.4byte 0xBC260000
	.4byte 0xBC028000
	.4byte 0x3F146C00
	.4byte 0x3EE0A400
	.4byte 0xBC278000
	.4byte 0xBC088000
	.4byte 0x3F129A00
	.4byte 0x3EE48400
	.4byte 0xBC288000
	.4byte 0xBC0E0000
	.4byte 0x3F10C600
	.4byte 0x3EE86400
	.4byte 0xBC298000
	.4byte 0xBC130000
	.4byte 0x3F0EEE00
	.4byte 0x3EEC4400
	.4byte 0xBC2A8000
	.4byte 0xBC170000
	.4byte 0x3F0D1200
	.4byte 0x3EF02400
	.4byte 0xBC2A8000
	.4byte 0xBC1B0000
	.4byte 0x3F0B3200
	.4byte 0x3EF40400
	.4byte 0xBC2A8000
	.4byte 0xBC1E8000
	.4byte 0x3F095200
	.4byte 0x3EF7E000
	.4byte 0xBC2A0000
	.4byte 0xBC218000
	.4byte 0x3F076E00
	.4byte 0x3EFBBC00
	.4byte 0xBC2A0000
	.4byte 0xBC240000
	.4byte 0x3F058800
	.4byte 0x3EFF9400
	.4byte 0xBC290000
	.4byte 0xBC260000
	.4byte 0x3F03A000
	.4byte 0x3F01B600
	.4byte 0xBC280000
	.4byte 0xBC280000
	.4byte 0x3F01B600
	.4byte 0x3F03A000
	.4byte 0xBC260000
	.4byte 0xBC290000
	.4byte 0x3EFF9400
	.4byte 0x3F058800
	.4byte 0xBC240000
	.4byte 0xBC2A0000
	.4byte 0x3EFBBC00
	.4byte 0x3F076E00
	.4byte 0xBC218000
	.4byte 0xBC2A0000
	.4byte 0x3EF7E000
	.4byte 0x3F095200
	.4byte 0xBC1E8000
	.4byte 0xBC2A8000
	.4byte 0x3EF40400
	.4byte 0x3F0B3200
	.4byte 0xBC1B0000
	.4byte 0xBC2A8000
	.4byte 0x3EF02400
	.4byte 0x3F0D1200
	.4byte 0xBC170000
	.4byte 0xBC2A8000
	.4byte 0x3EEC4400
	.4byte 0x3F0EEE00
	.4byte 0xBC130000
	.4byte 0xBC298000
	.4byte 0x3EE86400
	.4byte 0x3F10C600
	.4byte 0xBC0E0000
	.4byte 0xBC288000
	.4byte 0x3EE48400
	.4byte 0x3F129A00
	.4byte 0xBC088000
	.4byte 0xBC278000
	.4byte 0x3EE0A400
	.4byte 0x3F146C00
	.4byte 0xBC028000
	.4byte 0xBC260000
	.4byte 0x3EDCC800
	.4byte 0x3F163C00
	.4byte 0xBBF80000
	.4byte 0xBC240000
	.4byte 0x3ED8E800
	.4byte 0x3F180600
	.4byte 0xBBEA0000
	.4byte 0xBC228000
	.4byte 0x3ED50C00
	.4byte 0x3F19CC00
	.4byte 0xBBDA0000
	.4byte 0xBC208000
	.4byte 0x3ED13400
	.4byte 0x3F1B8E00
	.4byte 0xBBC90000
	.4byte 0xBC1E0000
	.4byte 0x3ECD5C00
	.4byte 0x3F1D4C00
	.4byte 0xBBB70000
	.4byte 0xBC1B8000
	.4byte 0x3EC98800
	.4byte 0x3F1F0400
	.4byte 0xBBA30000
	.4byte 0xBC190000
	.4byte 0x3EC5B400
	.4byte 0x3F20B600
	.4byte 0xBB8F0000
	.4byte 0xBC170000
	.4byte 0x3EC1E400
	.4byte 0x3F226400
	.4byte 0xBB720000
	.4byte 0xBC140000
	.4byte 0x3EBE1800
	.4byte 0x3F240E00
	.4byte 0xBB420000
	.4byte 0xBC110000
	.4byte 0x3EBA5000
	.4byte 0x3F25B000
	.4byte 0xBB0E0000
	.4byte 0xBC0D8000
	.4byte 0x3EB69000
	.4byte 0x3F274E00
	.4byte 0xBAB00000
	.4byte 0xBC0A8000
	.4byte 0x3EB2D000
	.4byte 0x3F28E400
	.4byte 0xBA000000
	.4byte 0xBC078000
	.4byte 0x3EAF1800
	.4byte 0x3F2A7400
	.4byte 0x39F00000
	.4byte 0xBC048000
	.4byte 0x3EAB6800
	.4byte 0x3F2BFE00
	.4byte 0x3ABC0000
	.4byte 0xBC010000
	.4byte 0x3EA7BC00
	.4byte 0x3F2D8000
	.4byte 0x3B220000
	.4byte 0xBBFA0000
	.4byte 0x3EA41400
	.4byte 0x3F2EFE00
	.4byte 0x3B6A0000
	.4byte 0xBBF30000
	.4byte 0x3EA07400
	.4byte 0x3F307400
	.4byte 0x3B9A0000
	.4byte 0xBBED0000
	.4byte 0x3E9CD800
	.4byte 0x3F31E200
	.4byte 0x3BC20000
	.4byte 0xBBE60000
	.4byte 0x3E994400
	.4byte 0x3F334800
	.4byte 0x3BEC0000
	.4byte 0xBBDE0000
	.4byte 0x3E95BC00
	.4byte 0x3F34A600
	.4byte 0x3C0B8000
	.4byte 0xBBD70000
	.4byte 0x3E923800
	.4byte 0x3F35FE00
	.4byte 0x3C220000
	.4byte 0xBBD10000
	.4byte 0x3E8EBC00
	.4byte 0x3F374C00
	.4byte 0x3C398000
	.4byte 0xBBCA0000
	.4byte 0x3E8B4800
	.4byte 0x3F389400
	.4byte 0x3C520000
	.4byte 0xBBC20000
	.4byte 0x3E87DC00
	.4byte 0x3F39D200
	.4byte 0x3C6C0000
	.4byte 0xBBBB0000
	.4byte 0x3E847800
	.4byte 0x3F3B0800
	.4byte 0x3C838000
	.4byte 0xBBB50000
	.4byte 0x3E812000
	.4byte 0x3F3C3600
	.4byte 0x3C91C000
	.4byte 0xBBAE0000
	.4byte 0x3E7BA000
	.4byte 0x3F3D5A00
	.4byte 0x3CA04000
	.4byte 0xBBA60000
	.4byte 0x3E751000
	.4byte 0x3F3E7600
	.4byte 0x3CAF4000
	.4byte 0xBB9F0000
	.4byte 0x3E6E9800
	.4byte 0x3F3F8800
	.4byte 0x3CBF0000
	.4byte 0xBB990000
	.4byte 0x3E683000
	.4byte 0x3F409000
	.4byte 0x3CCF4000
	.4byte 0xBB920000
	.4byte 0x3E61D800
	.4byte 0x3F419000
	.4byte 0x3CE04000
	.4byte 0xBB8C0000
	.4byte 0x3E5B9800
	.4byte 0x3F428600
	.4byte 0x3CF1C000
	.4byte 0xBB850000
	.4byte 0x3E557000
	.4byte 0x3F437400
	.4byte 0x3D020000
	.4byte 0xBB7E0000
	.4byte 0x3E4F5800
	.4byte 0x3F445600
	.4byte 0x3D0B6000
	.4byte 0xBB720000
	.4byte 0x3E495000
	.4byte 0x3F452E00
	.4byte 0x3D152000
	.4byte 0xBB660000
	.4byte 0x3E436800
	.4byte 0x3F45FC00
	.4byte 0x3D1F4000
	.4byte 0xBB5A0000
	.4byte 0x3E3D9000
	.4byte 0x3F46C000
	.4byte 0x3D29A000
	.4byte 0xBB4E0000
	.4byte 0x3E37D000
	.4byte 0x3F477A00
	.4byte 0x3D344000
	.4byte 0xBB440000
	.4byte 0x3E322800
	.4byte 0x3F482A00
	.4byte 0x3D3F6000
	.4byte 0xBB380000
	.4byte 0x3E2C9000
	.4byte 0x3F48D000
	.4byte 0x3D4AC000
	.4byte 0xBB2E0000
	.4byte 0x3E271800
	.4byte 0x3F496800
	.4byte 0x3D568000
	.4byte 0xBB220000
	.4byte 0x3E21B000
	.4byte 0x3F49F800
	.4byte 0x3D62A000
	.4byte 0xBB180000
	.4byte 0x3E1C6000
	.4byte 0x3F4A7E00
	.4byte 0x3D6F0000
	.4byte 0xBB100000
	.4byte 0x3E172800
	.4byte 0x3F4AF800
	.4byte 0x3D7BE000
	.4byte 0xBB060000
	.4byte 0x3E120800
	.4byte 0x3F4B6600
	.4byte 0x3D848000
	.4byte 0xBAFC0000
	.4byte 0x3E0D0000
	.4byte 0x3F4BCA00
	.4byte 0x3D8B3000
	.4byte 0xBAE80000
	.4byte 0x3E081000
	.4byte 0x3F4C2400
	.4byte 0x3D922000
	.4byte 0xBAD80000
	.4byte 0x3E033800
	.4byte 0x3F4C7200
	.4byte 0x3D993000
	.4byte 0xBAC80000
	.4byte 0x3DFCE000
	.4byte 0x3F4CB400
	.4byte 0x3DA08000
	.4byte 0xBAB80000
	.4byte 0x3DF39000
	.4byte 0x3F4CEC00
	.4byte 0x3DA80000
	.4byte 0xBAA80000
	.4byte 0x3DEA7000
	.4byte 0x3F4D1A00
	.4byte 0x3DAFB000
	.4byte 0xBA980000
	.4byte 0x3DE18000
	.4byte 0x3F4D3C00
	.4byte 0x3DB78000
	.4byte 0xBA880000
	.4byte 0x3DD8B000
	.4byte 0x3F4D5200
	.4byte 0x3DBF8000
	.4byte 0xBA800000
	.4byte 0x3DD01000
	.4byte 0x3F4D5E00
	.4byte 0x3DC7B000

.global lbl_80236270
lbl_80236270:

	# ROM: 0x233270
	.asciz "<< Dolphin SDK - DSP\trelease build: Apr  5 2004 04:15:32 (0x2301) >>"
	.balign 4
	.asciz "DSPInit(): Build Date: %s %s\n"
	.balign 4
	.asciz "Apr  5 2004"
	.asciz "04:15:32"
	.byte 0x30, 0x30, 0x30

.global s_DSP_is_booting_task__0x_08X_802362f0
s_DSP_is_booting_task__0x_08X_802362f0:

	# ROM: 0x2332F0
	.asciz "DSP is booting task: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : Start Vector  : 0x%08X\n"
	.balign 4
	.asciz "__DSP_add_task() : Added task    : 0x%08X\n"
	.byte 0x30
	.4byte 0x30303030

.global lbl_80236430
lbl_80236430:

	# ROM: 0x233430
	.asciz "<< Dolphin SDK - CARD\trelease build: Apr  5 2004 04:15:35 (0x2301) >>"
	.balign 4

.global lbl_80236478
lbl_80236478:

	# ROM: 0x233478
	.4byte OnReset_N3
	.4byte 0x0000007F
	.4byte 0
	.4byte 0
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030

.global lbl_802364A0
lbl_802364A0:

	# ROM: 0x2334A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000021
	.4byte 0x02FF0021
	.4byte 0x13061203
	.4byte 0x12041305
	.4byte 0x009200FF
	.4byte 0x0088FFFF
	.4byte 0x0089FFFF
	.4byte 0x008AFFFF
	.4byte 0x008BFFFF
	.4byte 0x8F0002BF
	.4byte 0x008816FC
	.4byte 0xDCD116FD
	.4byte 0x000016FB
	.4byte 0x000102BF
	.4byte 0x008E25FF
	.4byte 0x0380FF00
	.4byte 0x02940027
	.4byte 0x02BF008E
	.4byte 0x1FDF24FF
	.4byte 0x02400FFF
	.4byte 0x00980400
	.4byte 0x009A0010
	.4byte 0x00990000
	.4byte 0x8E0002BF
	.4byte 0x009402BF
	.4byte 0x864402BF
	.4byte 0x008816FC
	.4byte 0xDCD116FD
	.4byte 0x000316FB
	.4byte 0x00018F00
	.4byte 0x02BF008E
	.4byte 0x0380CDD1
	.4byte 0x02940048
	.4byte 0x27FF0380
	.4byte 0x00010295
	.4byte 0x005A0380
	.4byte 0x00020295
	.4byte 0x8000029F
	.4byte 0x00480021
	.4byte 0x8E0002BF
	.4byte 0x008E25FF
	.4byte 0x02BF008E
	.4byte 0x25FF02BF
	.4byte 0x008E25FF
	.4byte 0x02BF008E
	.4byte 0x00C5FFFF
	.4byte 0x03400FFF
	.4byte 0x1C9F02BF
	.4byte 0x008E00C7
	.4byte 0xFFFF02BF
	.4byte 0x008E00C6
	.4byte 0xFFFF02BF
	.4byte 0x008E00C0
	.4byte 0xFFFF02BF
	.4byte 0x008E20FF
	.4byte 0x03400FFF
	.4byte 0x1F5F02BF
	.4byte 0x008E21FF
	.4byte 0x02BF008E
	.4byte 0x23FF1205
	.4byte 0x1206029F
	.4byte 0x80B50021
	.4byte 0x27FC03C0
	.4byte 0x8000029D
	.4byte 0x008802DF
	.4byte 0x27FE03C0
	.4byte 0x8000029C
	.4byte 0x008E02DF
	.4byte 0x2ECE2CCF
	.4byte 0x00F8FFCD
	.4byte 0x00F9FFC9
	.4byte 0x00FAFFCB
	.4byte 0x26C902C0
	.4byte 0x0004029D
	.4byte 0x009C02DF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80236600
lbl_80236600:

	# ROM: 0x233600
	.4byte 0x00002000
	.4byte 0x00004000
	.4byte 0x00008000
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00040000
	.4byte 0
	.4byte 0

.global lbl_80236620
lbl_80236620:

	# ROM: 0x233620
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000040
	.4byte 0x00000080
	.4byte 0x00000100
	.4byte 0x00000200

.global lbl_80236640
lbl_80236640:

	# ROM: 0x233640
	.asciz "<< Dolphin SDK - GX\trelease build: Nov 10 2004 06:27:12 (0x2301) >>"
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000011
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000012
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000013
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xBF800000
	.4byte 0xC0000000
	.4byte 0

.global lbl_802367AC
lbl_802367AC:

	# ROM: 0x2337AC
	.4byte 0
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00030000
	.4byte 0x00040000
	.4byte 0x00050000
	.4byte 0x00060000
	.4byte 0x00070000
	.4byte 0x00008000
	.4byte 0x00018000
	.4byte 0x00028000
	.4byte 0x00038000
	.4byte 0x00048000
	.4byte 0x00058000
	.4byte 0x00068000
	.4byte 0x00078000
	.4byte 0
	.4byte 0x00090000
	.4byte 0x00020000
	.4byte 0x000B0000
	.4byte 0x00040000
	.4byte 0x00098000
	.4byte 0x00060000
	.4byte 0x000B8000
	.4byte 0x00080000
	.4byte 0x00010000
	.4byte 0x000A0000
	.4byte 0x00030000
	.4byte 0x00088000
	.4byte 0x00050000
	.4byte 0x000A8000
	.4byte 0x00070000
	.4byte 0
	.4byte 0x00090000
	.4byte 0x00020000
	.4byte 0x000B0000
	.4byte 0x00040000
	.4byte 0x00090000
	.4byte 0x00060000
	.4byte 0x000B0000
	.4byte 0x00080000
	.4byte 0x00010000
	.4byte 0x000A0000
	.4byte 0x00030000
	.4byte 0x00080000
	.4byte 0x00050000
	.4byte 0x000A0000
	.4byte 0x00070000

.global lbl_8023686C
lbl_8023686C:

	# ROM: 0x23386C
	.4byte __GXShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0
	.4byte 0x30303030

.global switchdataD_80236880
switchdataD_80236880:

	# ROM: 0x233880
	.4byte lbl_80185F88
	.4byte lbl_80185F9C
	.4byte lbl_80185FB0
	.4byte lbl_80185FC4
	.4byte lbl_80185FD8
	.4byte lbl_80185FEC
	.4byte lbl_80186000
	.4byte lbl_80186014
	.4byte lbl_80186028
	.4byte lbl_8018603C
	.4byte lbl_80186050
	.4byte lbl_801860B8
	.4byte lbl_801860CC
	.4byte lbl_801860E0
	.4byte lbl_801860F4
	.4byte lbl_80186108
	.4byte lbl_8018611C
	.4byte lbl_80186130
	.4byte lbl_80186144
	.4byte lbl_80186158
	.4byte lbl_8018616C
	.4byte func_8018617C
	.4byte func_8018617C
	.4byte func_8018617C
	.4byte func_8018617C
	.4byte lbl_80186084

.global switchdataD_802368e8
switchdataD_802368e8:

	# ROM: 0x2338E8
	.4byte lbl_80186200
	.4byte lbl_80186214
	.4byte lbl_80186228
	.4byte lbl_8018623C
	.4byte lbl_80186250
	.4byte lbl_80186264
	.4byte lbl_80186278
	.4byte lbl_8018628C
	.4byte lbl_801862A0
	.4byte lbl_801862B4
	.4byte lbl_801862C8
	.4byte lbl_80186330
	.4byte lbl_80186344
	.4byte lbl_80186358
	.4byte lbl_8018636C
	.4byte lbl_80186380
	.4byte lbl_80186394
	.4byte lbl_801863A8
	.4byte lbl_801863BC
	.4byte lbl_801863D0
	.4byte lbl_801863E4
	.4byte func_801863F4
	.4byte func_801863F4
	.4byte func_801863F4
	.4byte func_801863F4
	.4byte lbl_801862FC

.global switchdataD_80236950
switchdataD_80236950:

	# ROM: 0x233950
	.4byte lbl_8018665C
	.4byte lbl_8018666C
	.4byte lbl_8018667C
	.4byte lbl_8018668C
	.4byte lbl_8018669C
	.4byte lbl_801866AC
	.4byte lbl_801866BC
	.4byte lbl_801866CC
	.4byte lbl_801866DC
	.4byte lbl_801866EC
	.4byte lbl_801866FC
	.4byte lbl_80186744
	.4byte lbl_80186754
	.4byte lbl_80186764
	.4byte lbl_80186774
	.4byte lbl_80186784
	.4byte lbl_80186794
	.4byte lbl_801867A4
	.4byte lbl_801867B4
	.4byte lbl_801867C4
	.4byte lbl_801867D4
	.4byte lbl_801867E4
	.4byte lbl_801867E4
	.4byte lbl_801867E4
	.4byte lbl_801867E4
	.4byte lbl_80186720

.global switchdataD_802369b8
switchdataD_802369b8:

	# ROM: 0x2339B8
	.4byte lbl_801868F4
	.4byte lbl_8018691C
	.4byte lbl_80186970
	.4byte lbl_8018698C
	.4byte lbl_801869A8
	.4byte lbl_801869D0
	.4byte lbl_801869F8
	.4byte lbl_80186A20
	.4byte lbl_80186A48
	.4byte lbl_80186A70
	.4byte lbl_80186A98
	.4byte lbl_80186AC0
	.4byte func_80186AE4
	.4byte func_80186AE4
	.4byte func_80186AE4
	.4byte func_80186AE4
	.4byte lbl_8018691C

.global switchdataD_802369fc
switchdataD_802369fc:

	# ROM: 0x2339FC
	.4byte lbl_80186B64
	.4byte lbl_80186B8C
	.4byte lbl_80186BE0
	.4byte lbl_80186BFC
	.4byte lbl_80186C18
	.4byte lbl_80186C40
	.4byte lbl_80186C68
	.4byte lbl_80186C90
	.4byte lbl_80186CB8
	.4byte lbl_80186CE0
	.4byte lbl_80186D08
	.4byte lbl_80186D30
	.4byte func_80186D54
	.4byte func_80186D54
	.4byte func_80186D54
	.4byte func_80186D54
	.4byte lbl_80186B8C

.global switchdataD_80236a40
switchdataD_80236a40:

	# ROM: 0x233A40
	.4byte lbl_80186E58
	.4byte lbl_80186E80
	.4byte lbl_80186EFC
	.4byte lbl_80186F20
	.4byte lbl_80186F44
	.4byte lbl_80186F6C
	.4byte lbl_80186F94
	.4byte lbl_80186FBC
	.4byte lbl_80186FE4
	.4byte lbl_8018700C
	.4byte lbl_80187034
	.4byte lbl_8018705C
	.4byte lbl_80187084
	.4byte lbl_80187084
	.4byte lbl_80187084
	.4byte lbl_80187084
	.4byte lbl_80186E80

.global switchdataD_80236a84
switchdataD_80236a84:

	# ROM: 0x233A84
	.4byte lbl_80187330
	.4byte lbl_80187344
	.4byte lbl_80187358
	.4byte lbl_8018736C
	.4byte lbl_80187380
	.4byte lbl_80187394
	.4byte lbl_801873A8

.global switchdataD_80236aa0
switchdataD_80236aa0:

	# ROM: 0x233AA0
	.4byte lbl_8018719C
	.4byte lbl_801871A8
	.4byte lbl_801871B4
	.4byte lbl_801871C0
	.4byte lbl_801871DC
	.4byte lbl_801871E4
	.4byte lbl_801871EC
	.4byte lbl_801871F4
	.4byte lbl_801871FC
	.4byte lbl_80187204
	.4byte lbl_8018720C
	.4byte lbl_80187214
	.4byte func_80187218
	.4byte func_80187218
	.4byte func_80187218
	.4byte func_80187218
	.4byte func_80187218
	.4byte func_80187218
	.4byte func_80187218
	.4byte lbl_801871CC
	.4byte lbl_801871D4
	.4byte 0x30303030

.global lbl_80236AF8
lbl_80236AF8:

	# ROM: 0x233AF8
	.4byte 0x00000001
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236B34
lbl_80236B34:

	# ROM: 0x233B34
	.4byte 0x00000001
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236B70
lbl_80236B70:

	# ROM: 0x233B70
	.4byte 0
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x01000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236BAC
lbl_80236BAC:

	# ROM: 0x233BAC
	.4byte 0
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x01010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236BE8
lbl_80236BE8:

	# ROM: 0x233BE8
	.4byte 0
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_80236C24
lbl_80236C24:

	# ROM: 0x233C24
	.4byte 0
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236C60
lbl_80236C60:

	# ROM: 0x233C60
	.4byte 0
	.4byte 0x028000F2
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0408
	.4byte 0x0C100C08
	.4byte 0x04000000

.global lbl_80236C9C
lbl_80236C9C:

	# ROM: 0x233C9C
	.4byte 0x00000002
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236CD8
lbl_80236CD8:

	# ROM: 0x233CD8
	.4byte 0x00000002
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_80236D14
lbl_80236D14:

	# ROM: 0x233D14
	.4byte 0x00000002
	.4byte 0x028000F2
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0408
	.4byte 0x0C100C08
	.4byte 0x04000000

.global lbl_80236D50
lbl_80236D50:

	# ROM: 0x233D50
	.4byte 0x00000009
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236D8C
lbl_80236D8C:

	# ROM: 0x233D8C
	.4byte 0x00000009
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236DC8
lbl_80236DC8:

	# ROM: 0x233DC8
	.4byte 0x00000008
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x01000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236E04
lbl_80236E04:

	# ROM: 0x233E04
	.4byte 0x00000008
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x01010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236E40
lbl_80236E40:

	# ROM: 0x233E40
	.4byte 0x00000008
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_80236E7C
lbl_80236E7C:

	# ROM: 0x233E7C
	.4byte 0x00000008
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236EB8
lbl_80236EB8:

	# ROM: 0x233EB8
	.4byte 0x00000008
	.4byte 0x028000F2
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0408
	.4byte 0x0C100C08
	.4byte 0x04000000

.global lbl_80236EF4
lbl_80236EF4:

	# ROM: 0x233EF4
	.4byte 0x00000005
	.4byte 0x02800108
	.4byte 0x01080028
	.4byte 0x000B0280
	.4byte 0x02100000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236F30
lbl_80236F30:

	# ROM: 0x233F30
	.4byte 0x00000005
	.4byte 0x02800108
	.4byte 0x01080028
	.4byte 0x000B0280
	.4byte 0x02100000
	.4byte 0
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236F6C
lbl_80236F6C:

	# ROM: 0x233F6C
	.4byte 0x00000004
	.4byte 0x02800108
	.4byte 0x01080028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0
	.4byte 0x01000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236FA8
lbl_80236FA8:

	# ROM: 0x233FA8
	.4byte 0x00000004
	.4byte 0x02800108
	.4byte 0x01080028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0
	.4byte 0x01010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0000
	.4byte 0x15161500
	.4byte 0

.global lbl_80236FE4
lbl_80236FE4:

	# ROM: 0x233FE4
	.4byte 0x00000004
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_80237020
lbl_80237020:

	# ROM: 0x234020
	.4byte 0x00000004
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8023705C
lbl_8023705C:

	# ROM: 0x23405C
	.4byte 0x00000004
	.4byte 0x02800108
	.4byte 0x020C0028
	.4byte 0x00170280
	.4byte 0x020C0000
	.4byte 0x00000001
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0408
	.4byte 0x0C100C08
	.4byte 0x04000000

.global lbl_80237098
lbl_80237098:

	# ROM: 0x234098
	.4byte 0x00000015
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_802370D4
lbl_802370D4:

	# ROM: 0x2340D4
	.4byte 0x00000015
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0000
	.4byte 0x15161500
	.4byte 0

.global lbl_80237110
lbl_80237110:

	# ROM: 0x234110
	.4byte 0x00000014
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x01000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8023714C
lbl_8023714C:

	# ROM: 0x23414C
	.4byte 0x00000014
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x01010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0000
	.4byte 0x15161500
	.4byte 0

.global lbl_80237188
lbl_80237188:

	# ROM: 0x234188
	.4byte 0x00000014
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_802371C4
lbl_802371C4:

	# ROM: 0x2341C4
	.4byte 0x00000014
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_80237200
lbl_80237200:

	# ROM: 0x234200
	.4byte 0x00000014
	.4byte 0x028000F2
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0408
	.4byte 0x0C100C08
	.4byte 0x04000000
	.4byte 0x30303030

.global switchdataD_80237240
switchdataD_80237240:

	# ROM: 0x234240
	.4byte lbl_80188C38
	.4byte lbl_80188B48
	.4byte lbl_80188B5C
	.4byte lbl_80188B7C
	.4byte lbl_80188B9C
	.4byte lbl_80188BC8
	.4byte lbl_80188BFC
	.4byte 0x30303030

.global switchdataD_80237260
switchdataD_80237260:

	# ROM: 0x234260
	.4byte lbl_801890D0
	.4byte lbl_801890DC
	.4byte lbl_801890DC
	.4byte lbl_801890E8
	.4byte lbl_801890E8
	.4byte lbl_801890E8
	.4byte lbl_801890E8
	.4byte lbl_801890F4
	.4byte lbl_801890D0
	.4byte lbl_801890DC
	.4byte lbl_801890E8
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890D0
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890DC
	.4byte lbl_801890F4
	.4byte lbl_801890E8
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890E8
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890D0
	.4byte lbl_801890F4
	.4byte lbl_801890DC
	.4byte lbl_801890E8
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890DC
	.4byte lbl_801890DC
	.4byte lbl_801890DC
	.4byte lbl_801890DC
	.4byte lbl_801890E8
	.4byte lbl_801890E8
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890D0
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890F4
	.4byte lbl_801890DC
	.4byte lbl_801890DC
	.4byte lbl_801890F4
	.4byte lbl_801890E8

.global switchdataD_80237354
switchdataD_80237354:

	# ROM: 0x234354
	.4byte lbl_80189224
	.4byte lbl_80189230
	.4byte lbl_80189230
	.4byte lbl_8018923C
	.4byte lbl_8018923C
	.4byte lbl_8018923C
	.4byte lbl_8018923C
	.4byte lbl_80189248
	.4byte lbl_80189224
	.4byte lbl_80189230
	.4byte lbl_8018923C
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189224
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189230
	.4byte lbl_80189248
	.4byte lbl_8018923C
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_8018923C
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189224
	.4byte lbl_80189248
	.4byte lbl_80189230
	.4byte lbl_8018923C
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189230
	.4byte lbl_80189230
	.4byte lbl_80189230
	.4byte lbl_80189230
	.4byte lbl_8018923C
	.4byte lbl_8018923C
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189224
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189248
	.4byte lbl_80189230
	.4byte lbl_80189230
	.4byte lbl_80189248
	.4byte lbl_8018923C

.global switchdataD_80237448
switchdataD_80237448:

	# ROM: 0x234448
	.4byte lbl_8018944C
	.4byte lbl_80189460
	.4byte lbl_80189460
	.4byte lbl_80189474
	.4byte lbl_80189474
	.4byte lbl_80189474
	.4byte lbl_80189488
	.4byte lbl_801894B0
	.4byte lbl_8018944C
	.4byte lbl_80189460
	.4byte lbl_80189474
	.4byte lbl_801894B0
	.4byte lbl_801894B0
	.4byte lbl_801894B0
	.4byte lbl_8018949C
	.4byte 0x30303030

.global lbl_80237488
lbl_80237488:

	# ROM: 0x234488
	.4byte 0xC008F8AF
	.4byte 0xC008A89F
	.4byte 0xC008AC8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFFA
	.4byte 0xC008F80F
	.4byte 0xC008089F
	.4byte 0xC0080C8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFF0
	.4byte 0xC108F2F0
	.4byte 0xC108FFD0
	.4byte 0xC108F2F0
	.4byte 0xC108FFC0
	.4byte 0xC108FFD0
	.4byte 0xC108F070
	.4byte 0xC108FF80
	.4byte 0xC108F070
	.4byte 0xC108FFC0
	.4byte 0xC108FF80

.global lbl_802374D8
lbl_802374D8:

	# ROM: 0x2344D8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x30303030

.global lbl_80237500
lbl_80237500:

	# ROM: 0x234500
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005

.global switchdataD_80237520
switchdataD_80237520:

	# ROM: 0x234520
	.4byte lbl_8018CDE0
	.4byte lbl_8018CDFC
	.4byte lbl_8018CE18
	.4byte lbl_8018CE34
	.4byte lbl_8018CE88
	.4byte lbl_8018CEA4
	.4byte lbl_8018CEC0
	.4byte lbl_8018CEDC
	.4byte lbl_8018CE50
	.4byte lbl_8018CEF8
	.4byte lbl_8018CF28
	.4byte lbl_8018CF58
	.4byte lbl_8018CF88
	.4byte lbl_8018CFB8
	.4byte lbl_8018CFE8
	.4byte lbl_8018D018
	.4byte lbl_8018D048
	.4byte lbl_8018D074
	.4byte lbl_8018D084
	.4byte lbl_8018D094
	.4byte lbl_8018D0A4
	.4byte lbl_8018CE6C
	.4byte func_8018D0B0

.global switchdataD_8023757c
switchdataD_8023757c:

	# ROM: 0x23457C
	.4byte lbl_8018C9B4
	.4byte lbl_8018C9D4
	.4byte lbl_8018C9F4
	.4byte lbl_8018CA14
	.4byte lbl_8018CA34
	.4byte lbl_8018CA54
	.4byte lbl_8018CA74
	.4byte lbl_8018CA94
	.4byte lbl_8018CAB4
	.4byte lbl_8018CAD4
	.4byte lbl_8018CB14
	.4byte lbl_8018CB34
	.4byte lbl_8018CB50
	.4byte lbl_8018CB6C
	.4byte lbl_8018CB88
	.4byte lbl_8018CBA4
	.4byte lbl_8018CBC0
	.4byte lbl_8018CBDC
	.4byte lbl_8018CBF8
	.4byte lbl_8018CC14
	.4byte lbl_8018CC30
	.4byte lbl_8018CC4C
	.4byte lbl_8018CC68
	.4byte lbl_8018CC84
	.4byte lbl_8018CCA0
	.4byte lbl_8018CCBC
	.4byte lbl_8018CCD8
	.4byte lbl_8018CCF4
	.4byte lbl_8018CD10
	.4byte lbl_8018CD2C
	.4byte lbl_8018CD48
	.4byte lbl_8018CD64
	.4byte lbl_8018CD80
	.4byte lbl_8018CD9C
	.4byte lbl_8018CAF4
	.4byte func_8018CDB4
	.4byte 0x30303030

.global s_ARCInitHandle__bad_archive_forma_80237610
s_ARCInitHandle__bad_archive_forma_80237610:

	# ROM: 0x234610
	.asciz "ARCInitHandle: bad archive format"
	.byte 0x30, 0x30
	.4byte 0x30303030

.global lbl_80237638
lbl_80237638:

	# ROM: 0x234638
	.4byte lbl_8065AD20
	.4byte 0
	.4byte 0

.global lbl_80237644
lbl_80237644:

	# ROM: 0x234644
	.4byte lbl_8065AD28
	.4byte 0
	.4byte SceneCamera__dt
	.4byte zz_80193468_
	.4byte zz_801932f4_
	.4byte zz_80193190_
	.4byte zz_80192fa0_
	.4byte zz_80192dcc_
	.4byte zz_80192cc0_
	.4byte zz_80028330_
	.4byte zz_80192c1c_
	.4byte zz_80192ad0_
	.4byte cPlayer__PostPhysicsUpdate_void__N2
	.4byte cPlayer__PostPhysicsUpdate_void__N37
	.4byte cPlayer__PostPhysicsUpdate_void__N36
	.4byte zz_80192a8c_
	.4byte cPlayer__PostPhysicsUpdate_void_
	.4byte cPlayer__PostPhysicsUpdate_void__N38
	.4byte dGeomSphereSetRadius
	.4byte zz_80015120_
	.4byte dGeomSphereSetRadius_N3
	.4byte dGeomSphereSetRadius_N2
	.4byte nlVector3__Set_float__N2
	.4byte nlVector3__Set_float_
	.4byte nlVector3__Set_float__N6
	.4byte nlVector3__Set_float__N10
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float_
	.4byte zz_800150d8_
	.4byte set_triple_position
	.4byte zz_80087c88_
	.4byte zz_801922f0_
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N3
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N2
	.4byte nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N16
	.4byte zz_8001d29c_
	.4byte zz_80015060_
	.4byte zz_80192340_
	.4byte zz_801929ac_
	.4byte zz_801928c4_
	.4byte zz_8019265c_
	.4byte zz_801925d0_
	.4byte zz_80192598_
	.4byte 0x30303030

.global lbl_802376F0
lbl_802376F0:

	# ROM: 0x2346F0
	.4byte lbl_8065AD30
	.4byte 0
	.4byte 0

.global lbl_802376FC
lbl_802376FC:

	# ROM: 0x2346FC
	.4byte lbl_8065AD38
	.4byte 0
	.4byte GetSceneLighting
	.4byte zz_801936c0_
	.4byte zz_800282f8_
	.4byte zz_80193670_
	.4byte setPositionOfObject
	.4byte zz_801935c4_
	.4byte zz_8001d1a0_
	.4byte zz_801935fc_
	.4byte 0x30303030

.global lbl_80237728
lbl_80237728:

	# ROM: 0x234728
	.4byte lbl_80236AF8
	.4byte lbl_80236B34
	.4byte lbl_80236B70
	.4byte lbl_80236BAC
	.4byte lbl_80236BE8
	.4byte lbl_80236C24
	.4byte lbl_80236C60
	.4byte lbl_80236C9C
	.4byte lbl_80236CD8
	.4byte lbl_80236D14
	.4byte lbl_80236D50
	.4byte lbl_80236D8C
	.4byte lbl_80236DC8
	.4byte lbl_80236E04
	.4byte lbl_80236E40
	.4byte lbl_80236E7C
	.4byte lbl_80236EB8
	.4byte lbl_80236EF4
	.4byte lbl_80236F30
	.4byte lbl_80236F6C
	.4byte lbl_80236FA8
	.4byte lbl_80236FE4
	.4byte lbl_80237020
	.4byte lbl_8023705C
	.4byte lbl_80237098
	.4byte lbl_802370D4
	.4byte lbl_80237110
	.4byte lbl_8023714C
	.4byte lbl_80237188
	.4byte lbl_802371C4
	.4byte lbl_80237200

.global lbl_802377A4
lbl_802377A4:

	# ROM: 0x2347A4
	.4byte 0x00606066
	.4byte 0x66060600
	.4byte 0xFF000000
	.4byte 0x003036FF
	.4byte 0
	.4byte 0
	.4byte 0x00000060
	.4byte 0x60636303
	.4byte 0x03060666
	.4byte 0xFF000000
	.4byte 0x60606666
	.4byte 0x061363FF
	.4byte 0
	.4byte 0x00030363
	.4byte 0x4046FF00
	.4byte 0
	.4byte 0x00600000
	.4byte 0x03036363
	.4byte 0x666606FF
	.4byte 0x00000006
	.4byte 0x06666663
	.4byte 0x6303FF00
	.4byte 0
	.4byte 0x60606262
	.4byte 0x434346FF
	.4byte 0
	.4byte 0x00606066
	.4byte 0x66060600
	.4byte 0x0363FF00
	.4byte 0x00630303
	.4byte 0x00006060
	.4byte 0x66FF0000
	.4byte 0x00000630
	.4byte 0x30661454
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x40406161
	.4byte 0x66660606
	.4byte 0x000363FF
	.4byte 0x60202003
	.4byte 0x03262666
	.4byte 0xFF000000
	.4byte 0x00003030
	.4byte 0x63633636
	.4byte 0x061016FF
	.4byte 0x00006000
	.4byte 0x00060666
	.4byte 0x0353FF00
	.4byte 0x00000060
	.4byte 0x00000602
	.4byte 0x42FF0000
	.4byte 0
	.4byte 0x60303002
	.4byte 0x02060666
	.4byte 0x66636333
	.4byte 0xFF000660
	.4byte 0x660363FF
	.4byte 0
	.4byte 0x00001050
	.4byte 0x16563036
	.4byte 0xFF000000
	.4byte 0x00000050
	.4byte 0x56561616
	.4byte 0x14FF0000
	.4byte 0
	.4byte 0x00066003
	.4byte 0x0366FF00
	.4byte 0
	.4byte 0x00000606
	.4byte 0x66FF0000
	.4byte 0
	.4byte 0x00000600
	.4byte 0x00333360
	.4byte 0x6066FF00
	.4byte 0x00000006
	.4byte 0x00006666
	.4byte 0x60FF0000
	.4byte 0
	.4byte 0x30636336
	.4byte 0x36030330
	.4byte 0xFF000000
	.4byte 0x00060000
	.4byte 0x50506161
	.4byte 0x62625353
	.4byte 0x03FF0602
	.4byte 0x02606064
	.4byte 0x64062446
	.4byte 0x4666FF06
	.4byte 0x00006060
	.4byte 0x62620232
	.4byte 0x66FF0000
	.4byte 0x60000066
	.4byte 0x6606FF00
	.4byte 0
	.4byte 0x00006030
	.4byte 0x36FF0000
	.4byte 0
	.4byte 0x00000006
	.4byte 0x06666660
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x02023636
	.4byte 0x626260FF
	.4byte 0
	.4byte 0x00161656
	.4byte 0x56603236
	.4byte 0xFF000000
	.4byte 0x00006660
	.4byte 0x06FF0000
	.4byte 0
	.4byte 0x00000032
	.4byte 0x32603236
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x60600606
	.4byte 0x66FF0000
	.4byte 0
	.4byte 0x0363FF00
	.4byte 0
	.4byte 0
	.4byte 0x000666FF
	.4byte 0
	.4byte 0
	.4byte 0x00000322
	.4byte 0x22444463
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x636306FF
	.4byte 0
	.4byte 0
	.4byte 0x5016FF00
	.4byte 0
	.4byte 0
	.4byte 0x00402222
	.4byte 0x242446FF
	.4byte 0
	.4byte 0x00002042
	.4byte 0x42444426
	.4byte 0xFF000000
	.4byte 0x00000044
	.4byte 0x26FF0000
	.4byte 0
	.4byte 0
	.4byte 0x60030366
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00303603
	.4byte 0x63FF0000
	.4byte 0
	.4byte 0x00006101
	.4byte 0x01656505
	.4byte 0x3036FF00
	.4byte 0x00000030

.global lbl_80237A08
lbl_80237A08:

	# ROM: 0x234A08
	.4byte lbl_8065AD40
	.4byte 0
	.4byte 0

.global lbl_80237A14
lbl_80237A14:

	# ROM: 0x234A14
	.4byte lbl_8065AD48
	.4byte 0
	.4byte FormationOffensive____dt_void__N16
	.4byte zz_8019bb04_

.global lbl_80237A24
lbl_80237A24:

	# ROM: 0x234A24
	.4byte lbl_8065AD40
	.4byte 0
	.4byte 0

.global lbl_80237A30
lbl_80237A30:

	# ROM: 0x234A30
	.4byte lbl_8065AD50
	.4byte 0
	.4byte FormationOffensive____dt_void__N20
	.4byte zz_8019c100_

.global lbl_80237A40
lbl_80237A40:

	# ROM: 0x234A40
	.4byte lbl_8065AD40
	.4byte 0
	.4byte 0

.global lbl_80237A4C
lbl_80237A4C:

	# ROM: 0x234A4C
	.4byte lbl_8065AD58
	.4byte 0
	.4byte FormationOffensive____dt_void__N21
	.4byte zz_8019c74c_

.global lbl_80237A5C
lbl_80237A5C:

	# ROM: 0x234A5C
	.4byte lbl_8065AD40
	.4byte 0
	.4byte cHeadTrack____dt_void__N31
	.4byte zz_8019e2a8_
	.4byte 0x30303030

.global lbl_80237A70
lbl_80237A70:

	# ROM: 0x234A70
	.4byte lbl_8065AD60
	.4byte 0
	.4byte cHeadTrack____dt_void__N3
	.4byte zz_8019e8bc_
	.4byte zz_8019e864_
	.4byte zz_8019e5dc_
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030

.global s__80237aa0
s__80237aa0:

	# ROM: 0x234AA0
	.4byte 0x00000020
	.4byte 0x00FF0020
	.4byte 0x00180000
	.4byte 0x0018001C
	.4byte 0x00180018
	.4byte 0x00020000
	.4byte 0x00000015
	.4byte 0x000B0200
	.4byte 0x02000030
	.4byte 0x00000120
	.4byte 0x00020000
	.4byte 0x0055AAFF

.global lbl_80237AD0
lbl_80237AD0:

	# ROM: 0x234AD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000C
	.4byte 0x00000018
	.4byte 0
	.4byte 0x00000006
	.4byte 0x00000030
	.4byte 0
	.4byte 0x0000000B
	.4byte 0x00000048
	.4byte 0
	.4byte 0x00000012
	.4byte 0x00000060
	.4byte 0
	.4byte 0x00000010
	.4byte 0x00000078
	.4byte 0
	.4byte 0x00000016
	.4byte 0x00000090
	.4byte 0
	.4byte 0x00000013
	.4byte 0x000000A8
	.4byte 0
	.4byte 0x00000006
	.4byte 0x000000C0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x000000D8
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x000000F0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000108
	.4byte 0
	.4byte 0x00000013
	.4byte 0x00000120
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000138
	.4byte 0
	.4byte 0x00000011
	.4byte 0x00000150
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000168
	.4byte 0
	.4byte 0x00000017
	.4byte 0x00000180
	.4byte 0
	.4byte 0x00000012
	.4byte 0x00000198
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x000001B0
	.4byte 0
	.4byte 0x00000011
	.4byte 0x000001C8
	.4byte 0
	.4byte 0x00000011
	.4byte 0x000001E0
	.4byte 0
	.4byte 0x00000013
	.4byte 0
	.4byte 0x00000018
	.4byte 0x00000012
	.4byte 0x00000018
	.4byte 0x00000018
	.4byte 0x00000012
	.4byte 0x00000030
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000048
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000060
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000078
	.4byte 0x00000018
	.4byte 0x00000007
	.4byte 0x00000090
	.4byte 0x00000018
	.4byte 0x00000007
	.4byte 0x000000A8
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x000000C0
	.4byte 0x00000018
	.4byte 0x00000013
	.4byte 0x000000D8
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x000000F0
	.4byte 0x00000018
	.4byte 0x0000000F
	.4byte 0x00000108
	.4byte 0x00000018
	.4byte 0x00000014
	.4byte 0x00000120
	.4byte 0x00000018
	.4byte 0x00000012
	.4byte 0x00000138
	.4byte 0x00000018
	.4byte 0x00000010
	.4byte 0x00000150
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000168
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000180
	.4byte 0x00000018
	.4byte 0x0000000E
	.4byte 0x00000198
	.4byte 0x00000018
	.4byte 0x0000000E
	.4byte 0x000001B0
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x000001C8
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x000001E0
	.4byte 0x00000018
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000030
	.4byte 0x0000000B
	.4byte 0x00000018
	.4byte 0x00000030
	.4byte 0x00000010
	.4byte 0x00000030
	.4byte 0x00000030
	.4byte 0x0000000E
	.4byte 0x00000048
	.4byte 0x00000030
	.4byte 0x00000013
	.4byte 0x00000060
	.4byte 0x00000030
	.4byte 0x00000010
	.4byte 0x00000078
	.4byte 0x00000030
	.4byte 0x00000012
	.4byte 0x00000090
	.4byte 0x00000030
	.4byte 0x0000000F
	.4byte 0x000000A8
	.4byte 0x00000030
	.4byte 0x00000012
	.4byte 0x000000C0
	.4byte 0x00000030
	.4byte 0x00000011
	.4byte 0x000000D8
	.4byte 0x00000030
	.4byte 0x00000010
	.4byte 0x000000F0
	.4byte 0x00000030
	.4byte 0x00000010
	.4byte 0x00000108
	.4byte 0x00000030
	.4byte 0x00000010
	.4byte 0x00000120
	.4byte 0x00000030
	.4byte 0x00000011
	.4byte 0x00000138
	.4byte 0x00000030
	.4byte 0x00000016
	.4byte 0x00000150
	.4byte 0x00000030
	.4byte 0x00000011
	.4byte 0x00000168
	.4byte 0x00000030
	.4byte 0x00000011
	.4byte 0x00000180
	.4byte 0x00000030
	.4byte 0x0000000F
	.4byte 0x00000198
	.4byte 0x00000030
	.4byte 0x0000000A
	.4byte 0x000001B0
	.4byte 0x00000030
	.4byte 0x00000017
	.4byte 0x000001C8
	.4byte 0x00000030
	.4byte 0x00000009
	.4byte 0x000001E0
	.4byte 0x00000030
	.4byte 0x0000000D
	.4byte 0
	.4byte 0x00000048
	.4byte 0x00000018
	.4byte 0x00000018
	.4byte 0x00000048
	.4byte 0x00000007
	.4byte 0x00000030
	.4byte 0x00000048
	.4byte 0x0000000F
	.4byte 0x00000048
	.4byte 0x00000048
	.4byte 0x0000000F
	.4byte 0x00000060
	.4byte 0x00000048
	.4byte 0x0000000E
	.4byte 0x00000078
	.4byte 0x00000048
	.4byte 0x0000000F
	.4byte 0x00000090
	.4byte 0x00000048
	.4byte 0x0000000F
	.4byte 0x000000A8
	.4byte 0x00000048
	.4byte 0x0000000A
	.4byte 0x000000C0
	.4byte 0x00000048
	.4byte 0x0000000F
	.4byte 0x000000D8
	.4byte 0x00000048
	.4byte 0x0000000E
	.4byte 0x000000F0
	.4byte 0x00000048
	.4byte 0x00000007
	.4byte 0x00000108
	.4byte 0x00000048
	.4byte 0x00000009
	.4byte 0x00000120
	.4byte 0x00000048
	.4byte 0x0000000E
	.4byte 0x00000138
	.4byte 0x00000048
	.4byte 0x00000007
	.4byte 0x00000150
	.4byte 0x00000048
	.4byte 0x00000013
	.4byte 0x00000168
	.4byte 0x00000048
	.4byte 0x0000000E
	.4byte 0x00000180
	.4byte 0x00000048
	.4byte 0x0000000F
	.4byte 0x00000198
	.4byte 0x00000048
	.4byte 0x0000000F
	.4byte 0x000001B0
	.4byte 0x00000048
	.4byte 0x0000000F
	.4byte 0x000001C8
	.4byte 0x00000048
	.4byte 0x0000000A
	.4byte 0x000001E0
	.4byte 0x00000048
	.4byte 0x0000000D
	.4byte 0
	.4byte 0x00000060
	.4byte 0x0000000B
	.4byte 0x00000018
	.4byte 0x00000060
	.4byte 0x0000000E
	.4byte 0x00000030
	.4byte 0x00000060
	.4byte 0x0000000F
	.4byte 0x00000048
	.4byte 0x00000060
	.4byte 0x00000013
	.4byte 0x00000060
	.4byte 0x00000060
	.4byte 0x0000000F
	.4byte 0x00000078
	.4byte 0x00000060
	.4byte 0x0000000E
	.4byte 0x00000090
	.4byte 0x00000060
	.4byte 0x0000000D
	.4byte 0x000000A8
	.4byte 0x00000060
	.4byte 0x0000000A
	.4byte 0x000000C0
	.4byte 0x00000060
	.4byte 0x00000005
	.4byte 0x000000D8
	.4byte 0x00000060
	.4byte 0x0000000A
	.4byte 0x000000F0
	.4byte 0x00000060
	.4byte 0x00000015
	.4byte 0x00000108
	.4byte 0x00000060
	.4byte 0x00000018
	.4byte 0x00000120
	.4byte 0x00000060
	.4byte 0x00000014
	.4byte 0x00000138
	.4byte 0x00000060
	.4byte 0x00000018
	.4byte 0x00000150
	.4byte 0x00000060
	.4byte 0x00000006
	.4byte 0x00000168
	.4byte 0x00000060
	.4byte 0x0000000F
	.4byte 0x00000180
	.4byte 0x00000060
	.4byte 0x0000000B
	.4byte 0x00000198
	.4byte 0x00000060
	.4byte 0x00000015
	.4byte 0x000001B0
	.4byte 0x00000060
	.4byte 0x0000000E
	.4byte 0x000001C8
	.4byte 0x00000060
	.4byte 0x0000000E
	.4byte 0x000001E0
	.4byte 0x00000060
	.4byte 0x0000000D
	.4byte 0
	.4byte 0x00000078
	.4byte 0x00000017
	.4byte 0x00000018
	.4byte 0x00000078
	.4byte 0x0000000F
	.4byte 0x00000030
	.4byte 0x00000078
	.4byte 0x0000000B
	.4byte 0x00000048
	.4byte 0x00000078
	.4byte 0x00000015
	.4byte 0x00000060
	.4byte 0x00000078
	.4byte 0x00000018
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x0000000F
	.4byte 0x00000090
	.4byte 0x00000078
	.4byte 0x00000018
	.4byte 0x000000A8
	.4byte 0x00000078
	.4byte 0x00000018
	.4byte 0x000000C0
	.4byte 0x00000078
	.4byte 0x00000007
	.4byte 0x000000D8
	.4byte 0x00000078
	.4byte 0x00000007
	.4byte 0x000000F0
	.4byte 0x00000078
	.4byte 0x0000000B
	.4byte 0x00000108
	.4byte 0x00000078
	.4byte 0x0000000B
	.4byte 0x00000120
	.4byte 0x00000078
	.4byte 0x0000000A
	.4byte 0x00000138
	.4byte 0x00000078
	.4byte 0x00000015
	.4byte 0x00000150
	.4byte 0x00000078
	.4byte 0x00000018
	.4byte 0x00000168
	.4byte 0x00000078
	.4byte 0x0000000F
	.4byte 0x00000180
	.4byte 0x00000078
	.4byte 0x00000012
	.4byte 0x00000198
	.4byte 0x00000078
	.4byte 0x0000000E
	.4byte 0x000001B0
	.4byte 0x00000078
	.4byte 0x0000000B
	.4byte 0x000001C8
	.4byte 0x00000078
	.4byte 0x00000013
	.4byte 0x000001E0
	.4byte 0x00000078
	.4byte 0x00000018
	.4byte 0
	.4byte 0x00000090
	.4byte 0x0000000D
	.4byte 0x00000018
	.4byte 0x00000090
	.4byte 0x00000011
	.4byte 0x00000030
	.4byte 0x00000090
	.4byte 0x00000018
	.4byte 0x00000048
	.4byte 0x00000090
	.4byte 0x00000006
	.4byte 0x00000060
	.4byte 0x00000090
	.4byte 0x0000000F
	.4byte 0x00000078
	.4byte 0x00000090
	.4byte 0x00000011
	.4byte 0x00000090
	.4byte 0x00000090
	.4byte 0x00000011
	.4byte 0x000000A8
	.4byte 0x00000090
	.4byte 0x00000011
	.4byte 0x000000C0
	.4byte 0x00000090
	.4byte 0x00000006
	.4byte 0x000000D8
	.4byte 0x00000090
	.4byte 0x0000000F
	.4byte 0x000000F0
	.4byte 0x00000090
	.4byte 0x0000000C
	.4byte 0x00000108
	.4byte 0x00000090
	.4byte 0x00000017
	.4byte 0x00000120
	.4byte 0x00000090
	.4byte 0x0000000B
	.4byte 0x00000138
	.4byte 0x00000090
	.4byte 0x0000000E
	.4byte 0x00000150
	.4byte 0x00000090
	.4byte 0x00000012
	.4byte 0x00000168
	.4byte 0x00000090
	.4byte 0x0000000A
	.4byte 0x00000180
	.4byte 0x00000090
	.4byte 0x00000017
	.4byte 0x00000198
	.4byte 0x00000090
	.4byte 0x00000018
	.4byte 0x000001B0
	.4byte 0x00000090
	.4byte 0x0000000B
	.4byte 0x000001C8
	.4byte 0x00000090
	.4byte 0x00000012
	.4byte 0x000001E0
	.4byte 0x00000090
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x000000A8
	.4byte 0x0000000B
	.4byte 0x00000018
	.4byte 0x000000A8
	.4byte 0x0000000A
	.4byte 0x00000030
	.4byte 0x000000A8
	.4byte 0x0000000E
	.4byte 0x00000048
	.4byte 0x000000A8
	.4byte 0x0000000E
	.4byte 0x00000060
	.4byte 0x000000A8
	.4byte 0x00000008
	.4byte 0x00000078
	.4byte 0x000000A8
	.4byte 0x00000008
	.4byte 0x00000090
	.4byte 0x000000A8
	.4byte 0x00000007
	.4byte 0x000000A8
	.4byte 0x000000A8
	.4byte 0x0000000B
	.4byte 0x000000C0
	.4byte 0x000000A8
	.4byte 0x0000000E
	.4byte 0x000000D8
	.4byte 0x000000A8
	.4byte 0x00000014
	.4byte 0x000000F0
	.4byte 0x000000A8
	.4byte 0x00000014
	.4byte 0x00000108
	.4byte 0x000000A8
	.4byte 0x00000015
	.4byte 0x00000120
	.4byte 0x000000A8
	.4byte 0x00000010
	.4byte 0x00000138
	.4byte 0x000000A8
	.4byte 0x00000012
	.4byte 0x00000150
	.4byte 0x000000A8
	.4byte 0x00000012
	.4byte 0x00000168
	.4byte 0x000000A8
	.4byte 0x00000012
	.4byte 0x00000180
	.4byte 0x000000A8
	.4byte 0x00000012
	.4byte 0x00000198
	.4byte 0x000000A8
	.4byte 0x00000013
	.4byte 0x000001B0
	.4byte 0x000000A8
	.4byte 0x00000013
	.4byte 0x000001C8
	.4byte 0x000000A8
	.4byte 0x00000014
	.4byte 0x000001E0
	.4byte 0x000000A8
	.4byte 0x00000010
	.4byte 0
	.4byte 0x000000C0
	.4byte 0x0000000F
	.4byte 0x00000018
	.4byte 0x000000C0
	.4byte 0x0000000F
	.4byte 0x00000030
	.4byte 0x000000C0
	.4byte 0x0000000F
	.4byte 0x00000048
	.4byte 0x000000C0
	.4byte 0x0000000F
	.4byte 0x00000060
	.4byte 0x000000C0
	.4byte 0x00000006
	.4byte 0x00000078
	.4byte 0x000000C0
	.4byte 0x00000006
	.4byte 0x00000090
	.4byte 0x000000C0
	.4byte 0x00000006
	.4byte 0x000000A8
	.4byte 0x000000C0
	.4byte 0x00000006
	.4byte 0x000000C0
	.4byte 0x000000C0
	.4byte 0x00000014
	.4byte 0x000000D8
	.4byte 0x000000C0
	.4byte 0x00000010
	.4byte 0x000000F0
	.4byte 0x000000C0
	.4byte 0x00000011
	.4byte 0x00000108
	.4byte 0x000000C0
	.4byte 0x00000012
	.4byte 0x00000120
	.4byte 0x000000C0
	.4byte 0x00000012
	.4byte 0x00000138
	.4byte 0x000000C0
	.4byte 0x00000012
	.4byte 0x00000150
	.4byte 0x000000C0
	.4byte 0x00000012
	.4byte 0x00000168
	.4byte 0x000000C0
	.4byte 0x00000011
	.4byte 0x00000180
	.4byte 0x000000C0
	.4byte 0x00000012
	.4byte 0x00000198
	.4byte 0x000000C0
	.4byte 0x00000010
	.4byte 0x000001B0
	.4byte 0x000000C0
	.4byte 0x00000010
	.4byte 0x000001C8
	.4byte 0x000000C0
	.4byte 0x00000010
	.4byte 0x000001E0
	.4byte 0x000000C0
	.4byte 0x00000010
	.4byte 0
	.4byte 0x000000D8
	.4byte 0x00000011
	.4byte 0x00000018
	.4byte 0x000000D8
	.4byte 0x0000000F
	.4byte 0x00000030
	.4byte 0x000000D8
	.4byte 0x0000000F
	.4byte 0x00000048
	.4byte 0x000000D8
	.4byte 0x0000000F
	.4byte 0x00000060
	.4byte 0x000000D8
	.4byte 0x0000000F
	.4byte 0x00000078
	.4byte 0x000000D8
	.4byte 0x0000000F
	.4byte 0x00000090
	.4byte 0x000000D8
	.4byte 0x0000000F
	.4byte 0x000000A8
	.4byte 0x000000D8
	.4byte 0x0000000F
	.4byte 0x000000C0
	.4byte 0x000000D8
	.4byte 0x0000000F
	.4byte 0x000000D8
	.4byte 0x000000D8
	.4byte 0x00000013
	.4byte 0x000000F0
	.4byte 0x000000D8
	.4byte 0x0000000E
	.4byte 0x00000108
	.4byte 0x000000D8
	.4byte 0x0000000E
	.4byte 0x00000120
	.4byte 0x000000D8
	.4byte 0x0000000E
	.4byte 0x00000138
	.4byte 0x000000D8
	.4byte 0x0000000E
	.4byte 0x00000150
	.4byte 0x000000D8
	.4byte 0x0000000E
	.4byte 0x00000168
	.4byte 0x000000D8
	.4byte 0x00000006
	.4byte 0x00000180
	.4byte 0x000000D8
	.4byte 0x00000006
	.4byte 0x00000198
	.4byte 0x000000D8
	.4byte 0x00000006
	.4byte 0x000001B0
	.4byte 0x000000D8
	.4byte 0x00000006
	.4byte 0x000001C8
	.4byte 0x000000D8
	.4byte 0x00000010
	.4byte 0x000001E0
	.4byte 0x000000D8
	.4byte 0x0000000E
	.4byte 0
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x00000018
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x00000030
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x00000048
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x00000060
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x00000078
	.4byte 0x000000F0
	.4byte 0x00000013
	.4byte 0x00000090
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x000000A8
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x000000C0
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x000000D8
	.4byte 0x000000F0
	.4byte 0x0000000E
	.4byte 0x000000F0
	.4byte 0x000000F0
	.4byte 0x0000000E
	.4byte 0x00000108
	.4byte 0x000000F0
	.4byte 0x0000000F
	.4byte 0x00000120
	.4byte 0x000000F0
	.4byte 0x00000010
	.4byte 0x00000138
	.4byte 0x000000F0
	.4byte 0x0000000E
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30303030

.global s__802386e0
s__802386e0:

	# ROM: 0x2356E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AA50000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA00AF
	.4byte 0x0FFA00AF
	.4byte 0x0FFA00AF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x000000AF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5005A500
	.4byte 0x500AFA00
	.4byte 0x500AF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x000005AF
	.4byte 0x000AFFFF
	.4byte 0x00FFFAAF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFFF50000
	.4byte 0xAFFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005AFFA0
	.4byte 0x05FFFFFA
	.4byte 0x0AFA00FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x000000AF
	.4byte 0x50000AFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AFF
	.4byte 0x0005FFFF
	.4byte 0x000FFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFF500000
	.4byte 0xAFF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFF0000
	.4byte 0x0FFF0000
	.4byte 0x0FFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005A0
	.4byte 0x00005FF5
	.4byte 0x0000FFA0
	.4byte 0x000AFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00A50000
	.4byte 0x00FF5000
	.4byte 0x005FF000
	.4byte 0x000AFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAA000000
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005A0000
	.4byte 0x05FFA000
	.4byte 0x5FFA0000
	.4byte 0xFFA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005AF
	.4byte 0x0000AFFF
	.4byte 0x000FFFF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFA50000
	.4byte 0xFFFFA000
	.4byte 0x5AFFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000AA5
	.4byte 0x0000AFFA
	.4byte 0x005FFFFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000AAF
	.4byte 0x0005FFFF
	.4byte 0x005FFFA5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFAA50000
	.4byte 0xFFFFA000
	.4byte 0x55FFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AAF
	.4byte 0x000AFFFF
	.4byte 0x00AFFF55
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFA50000
	.4byte 0xFFFFF500
	.4byte 0x55AFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005AA000
	.4byte 0x05FFF500
	.4byte 0x5FFFF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FA000F
	.4byte 0x00F5000F
	.4byte 0x0FA000FA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00AFFFFF
	.4byte 0x00AFFFFF
	.4byte 0x00055FF5
	.4byte 0x00000FF0
	.4byte 0x00005FA0
	.4byte 0x0555AFA5
	.4byte 0x0AFFFFFF
	.4byte 0x000FF000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x55AFA555
	.4byte 0x00FF5000
	.4byte 0x00FF0000
	.4byte 0x55FA5550
	.4byte 0xFFFFFFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF50AF
	.4byte 0x0AFA00AF
	.4byte 0x0AFF50AF
	.4byte 0x05FFFAAF
	.4byte 0x005FFFFF
	.4byte 0x00005AFF
	.4byte 0x000000AF
	.4byte 0x000000AF
	.4byte 0x00AFF000
	.4byte 0x000A0000
	.4byte 0
	.4byte 0
	.4byte 0xFA500000
	.4byte 0xFFFF5000
	.4byte 0x5AFFF000
	.4byte 0x005FF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF500AF
	.4byte 0x0FF500AF
	.4byte 0x0FF500AF
	.4byte 0x0AFF5AFF
	.4byte 0x00AFFFFA
	.4byte 0x0005AA50
	.4byte 0
	.4byte 0x0000000A
	.4byte 0xA0005FF0
	.4byte 0xA005FF50
	.4byte 0xA00AFA00
	.4byte 0x50AFA000
	.4byte 0x05FF0000
	.4byte 0x5FF505FF
	.4byte 0xAFA05FFA
	.4byte 0xFA00FF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFFA00000
	.4byte 0x5FF50000
	.4byte 0x000FF500
	.4byte 0x000FF500
	.4byte 0x000AFF05
	.4byte 0x0000FFAF
	.4byte 0x0000AFFF
	.4byte 0x000AFFFF
	.4byte 0x00AFF5AF
	.4byte 0x00FF500A
	.4byte 0x5FF00000
	.4byte 0x5FF00000
	.4byte 0xFFA00000
	.4byte 0xFA000000
	.4byte 0xA0000000
	.4byte 0x5000AF50
	.4byte 0xF500AF50
	.4byte 0xFF50FF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x00FA0000
	.4byte 0x0FA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF500
	.4byte 0x005FA000
	.4byte 0x00AF5000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FF50
	.4byte 0x0000AFA0
	.4byte 0x00005FF0
	.4byte 0x00000FF0
	.4byte 0x00000AF5
	.4byte 0x00000AF5
	.4byte 0x00000AF5
	.4byte 0x00000FF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005FF
	.4byte 0x005000FF
	.4byte 0x0AFA00FF
	.4byte 0x0FFFF5FF
	.4byte 0x005AFFFF
	.4byte 0x00005FFF
	.4byte 0x005AFFFF
	.4byte 0x0AFFF5FF
	.4byte 0x50000000
	.4byte 0x00050000
	.4byte 0x00AFA000
	.4byte 0x5FFFF000
	.4byte 0xFFA50000
	.4byte 0xF5000000
	.4byte 0xFFA50000
	.4byte 0xAFFFF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0x00000005
	.4byte 0xFF500000
	.4byte 0xFF500000
	.4byte 0xFF500000
	.4byte 0xFF500000
	.4byte 0xFFAAAAAA
	.4byte 0xFFFFFFFF
	.4byte 0xFFAAAAAA
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AAAAAAA
	.4byte 0x5FFFFFFF
	.4byte 0x5AAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAAAAA0
	.4byte 0xFFFFFFF0
	.4byte 0xAAAAAAA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000005F
	.4byte 0x000005FF
	.4byte 0x00005FFA
	.4byte 0x0005FF50
	.4byte 0x005FF500
	.4byte 0x0AFF5000
	.4byte 0xAFF50000
	.4byte 0xFF500000
	.4byte 0xFA000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFFA00
	.4byte 0x00FFF000
	.4byte 0x0AFF5000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF5000
	.4byte 0x000AFFA0
	.4byte 0x0000FFF0
	.4byte 0x0000AFF5
	.4byte 0x00005FFA
	.4byte 0x00000FFA
	.4byte 0x00000FFA
	.4byte 0x00000FFA
	.4byte 0x00005FFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5FFFFFFA
	.4byte 0x0FFA5FFA
	.4byte 0x05005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF500
	.4byte 0x05FFA000
	.4byte 0x005A5000
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x00005FFF
	.4byte 0x0005FFFA
	.4byte 0x000AFF50
	.4byte 0x000AFFA0
	.4byte 0x000AFF50
	.4byte 0x005FFF00
	.4byte 0x5AFFFA00
	.4byte 0xFFFF5000
	.4byte 0xFF500000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFA000
	.4byte 0x00055000
	.4byte 0
	.4byte 0x00000555
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0
	.4byte 0x000AFF50
	.4byte 0x0005FFA0
	.4byte 0x000AFF50
	.4byte 0x55FFFA00
	.4byte 0xFFFFA000
	.4byte 0xFFFFFA00
	.4byte 0x005FFFA0
	.4byte 0x0000FFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000005F
	.4byte 0x000000FF
	.4byte 0x00000AFA
	.4byte 0x0000AFA0
	.4byte 0x000AFF00
	.4byte 0x00AFF500
	.4byte 0x05FFAAAA
	.4byte 0xFFAFF500
	.4byte 0xFA5FF500
	.4byte 0xA05FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0xAAAFFAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AA50000
	.4byte 0
	.4byte 0x0AAA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x0000FF00
	.4byte 0x0005FA00
	.4byte 0x000AFA00
	.4byte 0x000AF500
	.4byte 0x00055000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFA0
	.4byte 0x0FF00000
	.4byte 0x5FF00000
	.4byte 0x5FA00000
	.4byte 0xAF500000
	.4byte 0x55000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05A000AF
	.4byte 0x0FFA00AF
	.4byte 0x0AFFFAAF
	.4byte 0x00AFFFFF
	.4byte 0x0000AFFF
	.4byte 0x000000AF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0x05AFF500
	.4byte 0xFFFFA000
	.4byte 0xFFA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0x000005FF
	.4byte 0x00000FF5
	.4byte 0x0000AFA0
	.4byte 0x0005FF00
	.4byte 0x00055000
	.4byte 0
	.4byte 0
	.4byte 0xF005FF00
	.4byte 0x5005FF00
	.4byte 0x0000FF00
	.4byte 0x0000AFFA
	.4byte 0x00005FFF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0
	.4byte 0x0AF50000
	.4byte 0x0AFA0000
	.4byte 0x0FF50000
	.4byte 0xAFF00000
	.4byte 0xFF500000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0x05FF0000
	.4byte 0x05FF0000
	.4byte 0x00FFA000
	.4byte 0x00AFFFAA
	.4byte 0x000AFFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0xAFFAFF00
	.4byte 0x0AFFFA00
	.4byte 0x05FFFFA0
	.4byte 0xAFFFFFFF
	.4byte 0xFFA00AFF
	.4byte 0x50000005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AF5000
	.4byte 0x00AFA000
	.4byte 0x000FF000
	.4byte 0x000AFA00
	.4byte 0x0000FF50
	.4byte 0x00005FF5
	.4byte 0x000005F5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x0000AFA0
	.4byte 0x0000FF50
	.4byte 0x000AFF00
	.4byte 0x005FF500
	.4byte 0x00FF5000
	.4byte 0x00AA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA00FF
	.4byte 0x005000FF
	.4byte 0x000005FF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFA000
	.4byte 0x00050000
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF500000
	.4byte 0xFF500000
	.4byte 0xFF500000
	.4byte 0xFF500000
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x005FA000
	.4byte 0x000F5000
	.4byte 0x00FA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFA000
	.4byte 0x0AFFA000
	.4byte 0x0AFFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000AF
	.4byte 0x00000AFF
	.4byte 0x0000AFF5
	.4byte 0x000AFF50
	.4byte 0x00AFA000
	.4byte 0x0AFA0000
	.4byte 0x05A00000
	.4byte 0
	.4byte 0xF5000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x00FFF500
	.4byte 0x005FFF50
	.4byte 0x000AFFFA
	.4byte 0x00005FFF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF5
	.4byte 0x0005FFF0
	.4byte 0x005FFF50
	.4byte 0xAFFFF500
	.4byte 0xFFFF5000
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00000550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFF50
	.4byte 0x00FFF500
	.4byte 0x05FFA000
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFFFFF
	.4byte 0x00555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFA0
	.4byte 0xFFFFFFA0
	.asciz "UUUP"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFFA500
	.4byte 0x00AFFFFA
	.4byte 0x000AFFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF0
	.4byte 0x0000FFF0
	.4byte 0x000AFFA0
	.4byte 0xAAFFFF50
	.4byte 0xFFFFA500
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xAAAFFAAA
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x00055000
	.4byte 0
	.4byte 0
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005AAAAA
	.4byte 0x00AFFFFF
	.4byte 0x00AFFAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAAAA00
	.4byte 0xFFFFFF00
	.4byte 0xAAAAAA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005AF
	.4byte 0x0005FFFF
	.4byte 0x005FFFA5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFA50000
	.4byte 0xFFFFF500
	.4byte 0x55AFFF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAAAAA0
	.4byte 0xFFFFFFF0
	.4byte 0xAAAFFFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AAF
	.4byte 0x000AFFFF
	.4byte 0x00AFFA50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFAA50000
	.4byte 0xFFFFF500
	.4byte 0x05AFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AFF
	.4byte 0x005FFFFF
	.4byte 0x05FFFA55
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFAA00000
	.4byte 0xFFFFA000
	.4byte 0x55FFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AF50
	.4byte 0x005FFF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AF50000
	.4byte 0x0AFFF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005AAFF
	.4byte 0x00AFFFFF
	.4byte 0x0AFFF555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAA000000
	.4byte 0xFFFA0000
	.4byte 0xAFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x00005FFF
	.4byte 0x000AFF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAFFAA500
	.4byte 0xAAAAFFF5
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x000000AF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAA000000
	.4byte 0xFFA00000
	.4byte 0xFFF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AAAAAA
	.4byte 0x05FFFFFF
	.4byte 0x05FFAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFFFA0000
	.4byte 0xAFFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005AA
	.4byte 0x0000AFFF
	.4byte 0x000AFFFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFAA5000
	.4byte 0xFFFFFA00
	.4byte 0x55AFFFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AAAAAAA
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55000000
	.4byte 0xFFA50000
	.4byte 0xFFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AAAAAAA
	.4byte 0x0FFFFFFF
	.4byte 0x0FFAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAA0000
	.4byte 0xFFFF0000
	.4byte 0xAAAA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAA50000
	.4byte 0xFFFA0000
	.4byte 0xAAA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005AF
	.4byte 0x0005FFFF
	.4byte 0x005FFFA5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFA50000
	.4byte 0xFFFFF500
	.4byte 0x55AFFF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AA5000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AA50
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AA5000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFF000
	.4byte 0x00FFA000
	.4byte 0x00FFA055
	.4byte 0x05FFAFFF
	.4byte 0x05FFFFFA
	.4byte 0x0AFFF500
	.4byte 0x00555000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAA500000
	.4byte 0xFFFFA000
	.4byte 0xAAFFFF00
	.4byte 0x000AFFA0
	.4byte 0x0000AFF0
	.4byte 0x0000AFF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFF500
	.4byte 0x05FFA000
	.4byte 0x0AFF0000
	.4byte 0x0AFA0AFF
	.4byte 0x0FFAAFFF
	.4byte 0x0FFFFA50
	.4byte 0x0FFFA000
	.4byte 0x0AFF0000
	.4byte 0x0005FFA0
	.4byte 0x00005500
	.4byte 0x50000000
	.4byte 0xFFFA5000
	.4byte 0xFFFFFA00
	.4byte 0x005FFFA0
	.4byte 0x0000FFF0
	.4byte 0x0000AFF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000000F
	.4byte 0x0000005F
	.4byte 0x000000AF
	.4byte 0x00AFFA00
	.4byte 0x05FFA000
	.4byte 0x5FFA0000
	.4byte 0xAFF50000
	.4byte 0xFFA00000
	.4byte 0xFF000000
	.4byte 0xFA000000
	.4byte 0xF5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x05FF5000
	.4byte 0x00FFA000
	.4byte 0x00AFFFAA
	.4byte 0x000AFFFF
	.4byte 0x00AFFFFF
	.4byte 0x0AFFF500
	.4byte 0x0FFF0000
	.4byte 0x0005FF50
	.4byte 0x0000FFA0
	.4byte 0x000AFF50
	.4byte 0xAAFFFA00
	.4byte 0xFFFFA000
	.4byte 0xAFFFFA00
	.4byte 0x005AFFA0
	.4byte 0x0000AFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFF0000
	.4byte 0x0AFFA000
	.4byte 0x00FFFF55
	.4byte 0x005AFFFF
	.4byte 0x00005AAA
	.4byte 0x000AFF00
	.4byte 0x0005FFA0
	.4byte 0x0000AFF0
	.4byte 0x0000FFF0
	.4byte 0x000AFFF0
	.4byte 0x5AFFFFF0
	.4byte 0xFFFAAFF0
	.4byte 0xAA50AFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA5000
	.4byte 0x0AFFA000
	.4byte 0x0AFFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA5000
	.4byte 0x0AFFA000
	.4byte 0x0AFFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x00000AFF
	.4byte 0x000AFFFA
	.4byte 0x05FFFA50
	.4byte 0x0AFFA000
	.4byte 0x05FFFA00
	.4byte 0x000AFFFA
	.4byte 0x5FFFFA00
	.4byte 0xFFFA0000
	.4byte 0xFA000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x00555555
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0xAAAAAAAA
	.4byte 0xFFFFFFFF
	.asciz "UUUU"
	.balign 4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0x00AFFFA5
	.4byte 0x0000AFFF
	.4byte 0x000005AF
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFFA00000
	.4byte 0xAFFFA000
	.4byte 0x05FFFF00
	.4byte 0x000AFF50
	.4byte 0x05AFFF50
	.4byte 0xAFFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0AF50000
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x000000AF
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x05FFA000
	.4byte 0x00FFA000
	.4byte 0x05FFA000
	.4byte 0x5FFF5000
	.4byte 0xFFF50000
	.4byte 0xFA000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFA005
	.4byte 0x00FF00AF
	.4byte 0x0AFA0AFF
	.4byte 0x0AF00FFA
	.4byte 0x0FF05FF0
	.4byte 0x0FF0AFF0
	.4byte 0x0FF0AFF0
	.4byte 0x0AF55FFA
	.4byte 0xAA50005F
	.4byte 0xFFFAFA0A
	.4byte 0xAAFFFA05
	.4byte 0x005FF500
	.4byte 0x005FF000
	.4byte 0x00AFF005
	.4byte 0x00AFA00A
	.4byte 0x55FFF55F
	.4byte 0xF0000000
	.4byte 0xF5000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xF0000000
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00000FFA
	.4byte 0x00005FF5
	.4byte 0x0000FFF0
	.4byte 0x0005FF50
	.4byte 0x000AFFAA
	.4byte 0x000FFFFF
	.4byte 0xAFF50000
	.4byte 0x0FFA0000
	.4byte 0x0AFF0000
	.4byte 0x05FF5000
	.4byte 0x00FFA000
	.4byte 0x00AFF000
	.4byte 0xAAAFFA00
	.4byte 0xFFFFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FFFFFF
	.4byte 0x05FFFFFF
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FFF000
	.4byte 0x00AFF000
	.4byte 0x00AFF000
	.4byte 0x5AFF5000
	.4byte 0xFFF50000
	.4byte 0xFFFFA000
	.4byte 0x05AFF500
	.4byte 0x000FFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFF50
	.4byte 0x00FFF500
	.4byte 0x05FFA000
	.4byte 0x05FF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x05FFA000
	.4byte 0x0000AFA0
	.4byte 0x00000A00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0AFFF500
	.4byte 0x005FFA00
	.4byte 0x000AFF00
	.4byte 0x0005FF50
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0x0005FF50
	.4byte 0x000AFF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFF00000
	.4byte 0xFFF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFFAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x0AFF5555
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAA00000
	.4byte 0xFFF00000
	.4byte 0x55500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF500
	.4byte 0x05FFA000
	.4byte 0x0AFF0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0AFF0000
	.4byte 0x0005FFA0
	.4byte 0x00005500
	.4byte 0
	.4byte 0
	.4byte 0x5AAAAAA0
	.4byte 0xAFFFFFF0
	.4byte 0xAAAAFFF0
	.4byte 0x0000AFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFFFFF
	.4byte 0x05FFFFFF
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0xFFFFFFA0
	.4byte 0xFFFFFFA0
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AF5000
	.4byte 0x0AFFF500
	.4byte 0x00AFFFFA
	.4byte 0x0005FFFF
	.4byte 0x0000055A
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF5
	.4byte 0x0000FFF0
	.4byte 0x000AFFA0
	.4byte 0xAAFFFA00
	.4byte 0xFFFFA000
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x05FFA000
	.4byte 0x00AFFA00
	.4byte 0x000FFFFA
	.4byte 0x0000AFFF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF5
	.4byte 0x0000AFF0
	.4byte 0x000AFFA0
	.4byte 0xAAFFFF50
	.4byte 0xFFFFA500
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFF0000
	.4byte 0x0AFFA000
	.4byte 0x00FFFFAA
	.4byte 0x000AFFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF5
	.4byte 0x0000AFF5
	.4byte 0x000AFFF0
	.4byte 0xAAFFFF50
	.4byte 0xFFFFA500
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AA0000
	.4byte 0x0AFFA000
	.4byte 0x00AFFFAA
	.4byte 0x000AFFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0x0000FFA0
	.4byte 0x000AFF50
	.4byte 0x00AFFA00
	.4byte 0xAFFFF500
	.4byte 0xFFFA0000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA5000
	.4byte 0x0AFFA000
	.4byte 0x0AFFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA5000
	.4byte 0x0AFFA000
	.4byte 0x0AFFA000
	.4byte 0x005F5000
	.4byte 0x000F5000
	.4byte 0x00FA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AFF
	.4byte 0x0000005F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFFF50000
	.4byte 0xAFFFF500
	.4byte 0x00AFFF50
	.4byte 0x0000AF50
	.4byte 0x00000500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000AF
	.4byte 0x0000AFFF
	.4byte 0x005FFFF5
	.4byte 0x0AFFF500
	.4byte 0x0AFA0000
	.4byte 0x05000000
	.4byte 0
	.4byte 0
	.4byte 0xFFA00000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0x000005AA
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FA0AFF
	.4byte 0x00FF50AA
	.4byte 0x005FF500
	.4byte 0x0005FFA5
	.4byte 0x00005AFF
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFA55AAA5
	.4byte 0x0000005F
	.4byte 0x5555AFFF
	.4byte 0xFFFFFFA0
	.4byte 0x5AA55000
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0xF0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFAAA
	.4byte 0x00AFF000
	.4byte 0x00FFA000
	.4byte 0x0AFF5000
	.4byte 0x0FFF0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0xAAAFFF50
	.4byte 0x0000FFA0
	.4byte 0x0000AFF0
	.4byte 0x00005FF5
	.4byte 0x00000FFA
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FFFFFF
	.4byte 0x05FFFFFF
	.4byte 0x00555555
	.4byte 0
	.4byte 0
	.4byte 0x000AFF00
	.4byte 0x000FFF00
	.4byte 0x05AFFA00
	.4byte 0xFFFFA000
	.4byte 0xFFFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x00AFFA00
	.4byte 0x000FFFA0
	.4byte 0x0005FFFF
	.4byte 0x00005AFF
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005F50
	.4byte 0x0005FFF0
	.4byte 0xFAFFFF50
	.4byte 0xFFFFA500
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0005
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x05555550
	.4byte 0
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x00AFFA00
	.4byte 0x5FFFA000
	.4byte 0xFFFA0000
	.4byte 0xFA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x05555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFF5000
	.4byte 0xFFFF5000
	.4byte 0x55550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x00FFF000
	.4byte 0x00AFFF50
	.4byte 0x000AFFFF
	.4byte 0x00005FFF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF0
	.4byte 0x0000AFF0
	.4byte 0x0005FFF0
	.4byte 0xAAFFFF50
	.4byte 0xFFFFA500
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0x0005FFA0
	.4byte 0x00005500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000AA
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005AA500
	.4byte 0x05FFA000
	.4byte 0x5FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AAA5000
	.4byte 0x0FFFF000
	.4byte 0x0FFFF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000AAA
	.4byte 0x00005FFF
	.4byte 0x0000AFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AAA000
	.4byte 0x05FFFA00
	.4byte 0x05FFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005AA00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005AA
	.4byte 0x0000AFFF
	.4byte 0x000AFFFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFA50000
	.4byte 0xFFFFF500
	.4byte 0x55AFFF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFFF50000
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005AF
	.4byte 0x0005FFFF
	.4byte 0x000FFFA5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFA50000
	.4byte 0xFFFFA000
	.4byte 0x55AFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AAAAAA
	.4byte 0x05FFFFFF
	.4byte 0x05FFAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAA500000
	.4byte 0xFFFF5000
	.4byte 0xAFFFF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AFF
	.4byte 0x000AFFFF
	.4byte 0x00AFFA55
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFA500000
	.4byte 0xFFFA0000
	.4byte 0x5FFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAAA500
	.4byte 0xFFFFFA00
	.4byte 0xFAAAA500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AA50000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AA500
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA0000
	.4byte 0x0AFF5000
	.4byte 0x05FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AA0
	.4byte 0x0000FFF0
	.4byte 0x0005FFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AA50000
	.4byte 0x0FFA0000
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5AA50000
	.4byte 0xAFFF0000
	.4byte 0xAFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AA50000
	.4byte 0x5FF50000
	.4byte 0xAFF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AA5000
	.4byte 0x00AFF500
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005AA50
	.4byte 0x000FFF00
	.4byte 0x00AFF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA0000
	.4byte 0x05FFA000
	.4byte 0x00AFF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AA50
	.4byte 0x000AFF50
	.4byte 0x000FFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAA5000
	.4byte 0xFFFFA000
	.4byte 0xAAFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00555550
	.4byte 0x05FFFFFA
	.4byte 0x05FFAAA5
	.4byte 0x05FA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05A00000
	.4byte 0x0AFA0000
	.4byte 0x00AFA000
	.4byte 0x000AFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05555550
	.4byte 0x0AFFFFF0
	.4byte 0x05AAAFF0
	.4byte 0x00000FF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AA5
	.4byte 0x0005FFFF
	.4byte 0x005FFFFF
	.4byte 0x00AFFAAF
	.4byte 0x0AFFA00A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA000000
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF000A
	.4byte 0x0AFF00AF
	.4byte 0x0AFF0AFF
	.4byte 0x0AFFAFFA
	.4byte 0x0AFFFFFA
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFA0AF
	.4byte 0x0AFF005F
	.4byte 0xFFA00000
	.4byte 0xFA000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xF5000000
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFA00
	.4byte 0x0FFAFF00
	.4byte 0x0FFAFF50
	.4byte 0x0FFAAFA0
	.4byte 0x0FFA5FF0
	.4byte 0x0FFA0FFA
	.4byte 0x0FFA0AFF
	.4byte 0x0FFA05FF
	.4byte 0x0000FFFF
	.4byte 0x0005FFFF
	.4byte 0x000AFFAF
	.4byte 0x000FFAAF
	.4byte 0x005FF0AF
	.4byte 0x00AFA0AF
	.4byte 0x00FF50AF
	.4byte 0x55FF00AF
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0x05FFFFA0
	.4byte 0x05FFAFF5
	.4byte 0x05FFAFFA
	.4byte 0x05FF5AFF
	.4byte 0x05FF50FF
	.4byte 0x05FF50AF
	.4byte 0x05FF500F
	.4byte 0x05FF5005
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x500AFF00
	.4byte 0xF00AFF00
	.4byte 0xFA0AFF00
	.4byte 0xFF0AFF00
	.4byte 0xFFAAFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFF00
	.4byte 0x00AFF500
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x05FF5000
	.4byte 0x05FFA000
	.4byte 0x0005FFF0
	.4byte 0x0000AFF5
	.4byte 0x00000FFA
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000FFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFFAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFAAAA
	.4byte 0x0AFFA000
	.4byte 0x00FFF000
	.4byte 0x00AFF000
	.4byte 0x00AFF000
	.4byte 0x05FFA000
	.4byte 0xAFFF5000
	.4byte 0xFFF50000
	.4byte 0xAA000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFFA00
	.4byte 0x05FFA000
	.4byte 0x0AFF5000
	.4byte 0x0AFF0000
	.4byte 0x0AFA0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x05FFA000
	.4byte 0x000AFFA0
	.4byte 0x0000FFF0
	.4byte 0x00005FF5
	.4byte 0x00000FFA
	.4byte 0x00000FFA
	.4byte 0x00000FFA
	.4byte 0x00005FFA
	.4byte 0x0000AFF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA555
	.4byte 0x05FFFFFF
	.4byte 0x05FFFAAA
	.4byte 0x05FFA000
	.4byte 0x00AFF500
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0x00AFF500
	.4byte 0xAAFFF000
	.4byte 0xFFFF5000
	.4byte 0xFFF00000
	.4byte 0xAFF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFA000
	.4byte 0x05FFA000
	.4byte 0x00FFF000
	.4byte 0x00AFFFA5
	.4byte 0x000AFFFF
	.4byte 0x00005AFF
	.4byte 0x00000005
	.4byte 0
	.4byte 0x00AFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0xFA500000
	.4byte 0xFFFA0000
	.4byte 0xAFFFA000
	.4byte 0x00FFF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0x000FFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x00AFF500
	.4byte 0x005FFA00
	.4byte 0x000FFF00
	.4byte 0x0005FF50
	.4byte 0x0000FFA0
	.4byte 0x0000AFF0
	.4byte 0x00005FFA
	.4byte 0x000AFF50
	.4byte 0x000FFF00
	.4byte 0x005FFA00
	.4byte 0x00AFF500
	.4byte 0x00FFF000
	.4byte 0x05FFA000
	.4byte 0x0AFF0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x05FF5005
	.4byte 0x00FFA00A
	.4byte 0x00FFA00A
	.4byte 0x00AFF00F
	.4byte 0x005FF50F
	.4byte 0x000FFA5F
	.4byte 0x000FFAAF
	.4byte 0xFFFF5000
	.4byte 0xFFFFA000
	.4byte 0xFFAFF005
	.4byte 0xFA5FF005
	.4byte 0xFA5FF50A
	.4byte 0xF50FFA0F
	.4byte 0xF00AFA0F
	.4byte 0xA005FF5F
	.4byte 0xAFF00000
	.4byte 0xFFA00000
	.4byte 0xFF500000
	.4byte 0xFF000000
	.4byte 0xFF000000
	.4byte 0xFA000000
	.4byte 0xF5000000
	.4byte 0xF5000000
	.4byte 0x0005FFA0
	.4byte 0x0000AFF5
	.4byte 0x00005FFF
	.4byte 0x00000AFF
	.4byte 0x000000AF
	.4byte 0x000000AF
	.4byte 0x000005FF
	.4byte 0x00000FFF
	.4byte 0x05FFA000
	.4byte 0x0FFF0000
	.4byte 0xAFF50000
	.4byte 0xFFA00000
	.4byte 0xFF000000
	.4byte 0xFF000000
	.4byte 0xFFA00000
	.4byte 0xAFF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FFA00
	.4byte 0x000AFF50
	.4byte 0x0000FFF0
	.4byte 0x0000AFF5
	.4byte 0x00000FFF
	.4byte 0x000005FF
	.4byte 0x000000AF
	.4byte 0x0000005F
	.4byte 0x00AFF500
	.4byte 0x00FFA000
	.4byte 0x0AFF0000
	.4byte 0x5FFA0000
	.4byte 0xAFF00000
	.4byte 0xFFA00000
	.4byte 0xFF000000
	.4byte 0xFA000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000005F
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x0000AFFA
	.4byte 0x0005FFA0
	.4byte 0x5FFF0000
	.4byte 0xAFF50000
	.4byte 0xFFA00000
	.4byte 0xFA000000
	.4byte 0xF0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF5
	.4byte 0x00000AFF
	.4byte 0x000000AF
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xF5000000
	.4byte 0xFF500000
	.4byte 0xAFF50000
	.4byte 0x0AFF5000
	.4byte 0x00AFF500
	.4byte 0x0005FF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05F50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000005FF
	.4byte 0x0AFAAFFF
	.4byte 0x0AFFFFFA
	.4byte 0x005AA500
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0005
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0xFFF00000
	.4byte 0xAFFA0000
	.4byte 0x0AFF5000
	.4byte 0x00FFF500
	.4byte 0x005FFF00
	.4byte 0x00055500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF5555
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFFFFF
	.4byte 0x05555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55550000
	.4byte 0xFFFA0000
	.4byte 0xFFFA0000
	.4byte 0x55550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA00FF
	.4byte 0x0FFA00AF
	.4byte 0x0FFA005F
	.4byte 0x0FFA000F
	.4byte 0x0FFA000A
	.4byte 0x05500000
	.4byte 0
	.4byte 0
	.4byte 0xAFFA00AF
	.4byte 0xFFF500AF
	.4byte 0xFFF000AF
	.4byte 0xFFA000AF
	.4byte 0xFF5000AF
	.4byte 0x55000055
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0xAFFAFF00
	.4byte 0x5FFFFF00
	.4byte 0x0AFFFF00
	.4byte 0x00FFFF00
	.4byte 0x00AFFF00
	.4byte 0x00055500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x00AFFA00
	.4byte 0x000FFFA0
	.4byte 0x0005FFFF
	.4byte 0x00005AFF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0x00005FFA
	.4byte 0x0000FFF5
	.4byte 0x000AFFA0
	.4byte 0xAAFFFA00
	.4byte 0xFFFFA000
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF500
	.4byte 0x005FFF50
	.4byte 0x000AFFFF
	.4byte 0x00005FFF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFA0
	.4byte 0x005FFF50
	.4byte 0xAFFFF500
	.4byte 0xFFFFA000
	.4byte 0xA5AFFF50
	.4byte 0x000AFFF5
	.4byte 0x00005A50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0x0FFF0000
	.4byte 0x0AFFA000
	.4byte 0x00FFF500
	.4byte 0x005FFA00
	.4byte 0x000AFF50
	.4byte 0x00005550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AA0000
	.4byte 0x0AFF5000
	.4byte 0x05FFF500
	.4byte 0x00AFFFFA
	.4byte 0x0005FFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x05FFF000
	.4byte 0xFFFFA000
	.4byte 0xFFFA0000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFF0000
	.4byte 0x0AFFA000
	.4byte 0x00AFFFAA
	.4byte 0x000AFFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0x005FFA00
	.4byte 0x00AFF500
	.4byte 0x05FFF000
	.4byte 0xFFFF5000
	.4byte 0xFFF50000
	.4byte 0x55000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FFF
	.4byte 0x00000AFF
	.4byte 0x000005FF
	.4byte 0x000000FF
	.4byte 0x000000AF
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0x5FF50000
	.4byte 0xAFF00000
	.4byte 0xFFA00000
	.4byte 0xFF500000
	.4byte 0xFF000000
	.4byte 0x55000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFFAF
	.4byte 0x0005FFFF
	.4byte 0x0005FFFF
	.4byte 0x0000FFFF
	.4byte 0x0000AFFA
	.4byte 0x00000550
	.4byte 0
	.4byte 0
	.4byte 0xA005FFAF
	.4byte 0x5000FFFF
	.4byte 0x0000AFFF
	.4byte 0x0000AFFF
	.4byte 0x00005FFF
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF5
	.4byte 0x0005FFA0
	.4byte 0x000FFF00
	.4byte 0x00AFF500
	.4byte 0x05FFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0x0FFF0000
	.4byte 0x0AFFA000
	.4byte 0x00AFF500
	.4byte 0x005FFF00
	.4byte 0x000AFFA0
	.4byte 0x00005550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0x0000005F
	.4byte 0x0000005F
	.4byte 0x0000005F
	.4byte 0x0000005F
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFF00
	.4byte 0x00AFF500
	.4byte 0x0AFFA000
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x05555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFA000
	.4byte 0xFFFFA000
	.4byte 0x55555000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FFAAA5
	.4byte 0x05FFFFFA
	.4byte 0x00555550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005FF5
	.4byte 0x000005FF
	.4byte 0x0000005F
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA000000
	.4byte 0xFFA00000
	.4byte 0x5FFA0000
	.4byte 0x05FFA000
	.4byte 0x005F5000
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x05AAAFF0
	.4byte 0x0AFFFFF0
	.4byte 0x05555550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte 0x00AF5000
	.4byte 0x05F00000
	.4byte 0x05F05000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05A50000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AA5000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AAF5
	.4byte 0x000AFFFA
	.4byte 0x005FFA50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AA50000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AA5000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005A50
	.4byte 0x0000AFA0
	.4byte 0x0000AFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AA0000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA0000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFA000
	.4byte 0x0AFFA000
	.4byte 0x05AA5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005555
	.4byte 0x00AFFFFF
	.4byte 0x0AFFFAAF
	.4byte 0x05F50000
	.4byte 0x00500005
	.4byte 0x00005AFF
	.4byte 0x00AFFFFA
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0xFFF00000
	.4byte 0xFFF00000
	.4byte 0xFFF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA0000
	.4byte 0x0AFA0055
	.4byte 0x0AFAAFFF
	.4byte 0x0AFFFFAF
	.4byte 0x0AFFA000
	.4byte 0x0AFF0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFF500000
	.4byte 0xFFF00000
	.4byte 0x5FFA0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000555
	.4byte 0x0005FFFF
	.4byte 0x00AFFFAA
	.4byte 0x05FFA500
	.4byte 0x0AFF0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFFA00000
	.4byte 0xFFF50000
	.4byte 0x05F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000555
	.4byte 0x0005FFFF
	.4byte 0x00AFFFAA
	.4byte 0x00FFF500
	.4byte 0x0AFF5000
	.4byte 0x0AFF0000
	.4byte 0x0AFA0000
	.4byte 0x05FFA000
	.4byte 0x05FFA000
	.4byte 0xFAFFA000
	.4byte 0xFFFFA000
	.4byte 0x0AFFA000
	.4byte 0x00FFA000
	.4byte 0x00FFA000
	.4byte 0x00FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000055
	.4byte 0x0000AFFF
	.4byte 0x000AFFAA
	.4byte 0x00AFF500
	.4byte 0x00FFA000
	.4byte 0x05FF55AA
	.4byte 0x05FFFFFF
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFFA00000
	.4byte 0xFFFA0000
	.4byte 0x0AFF5000
	.4byte 0x00AFA000
	.4byte 0xAFFFA000
	.4byte 0xFFFAA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x0FFFFFF5
	.4byte 0x0FFFFFF5
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000555
	.4byte 0x0005FFFF
	.4byte 0x00AFFFAA
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x0AFF0000
	.4byte 0x05FFA000
	.4byte 0
	.4byte 0
	.4byte 0xFAAF5000
	.4byte 0xFFFF5000
	.4byte 0x0AFF5000
	.4byte 0x00FF5000
	.4byte 0x00FF5000
	.4byte 0x05FF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0555
	.4byte 0x0FFAFFFF
	.4byte 0x0FFFFFAF
	.4byte 0x0FFF5000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFFA00000
	.4byte 0xAFF50000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550000
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005550
	.4byte 0
	.4byte 0x0000AFA0
	.4byte 0x0000AFA0
	.4byte 0x0000AFA0
	.4byte 0x0000AFA0
	.4byte 0x0000AFA0
	.4byte 0x0000AFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF500A
	.4byte 0x05FF50AF
	.4byte 0x05FF5AFF
	.4byte 0x05FFFFF5
	.4byte 0x05FFFFFA
	.4byte 0
	.4byte 0
	.4byte 0xAFF50000
	.4byte 0xFF500000
	.4byte 0xF5000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000555
	.4byte 0x0AFAFFFF
	.4byte 0x0AFFFAFF
	.4byte 0x0AFF500A
	.4byte 0x0AFA000A
	.4byte 0x0AFA000A
	.4byte 0x0AFA000A
	.4byte 0
	.4byte 0x00005500
	.4byte 0xF5AFFFFA
	.4byte 0xFFFFAFFF
	.4byte 0xFFA005FF
	.4byte 0xFF0000FF
	.4byte 0xFF0000AF
	.4byte 0xFF0000AF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0x00000055
	.4byte 0x05FF5FFF
	.4byte 0x05FFFFAA
	.4byte 0x05FFF500
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFFA00000
	.4byte 0xFFFA0000
	.4byte 0x5FFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000555
	.4byte 0x000AFFFF
	.4byte 0x00AFFFAA
	.4byte 0x05FFA000
	.4byte 0x0AFF0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0xFF500000
	.4byte 0xFFF50000
	.4byte 0x5FFF0000
	.4byte 0x05FF5000
	.4byte 0x00FFA000
	.4byte 0x00FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000055
	.4byte 0x0AFAAFFF
	.4byte 0x0AFFFFAA
	.4byte 0x0AFFA000
	.4byte 0x0AFF0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFF500000
	.4byte 0xFFF50000
	.4byte 0x5FFA0000
	.4byte 0x0AFF0000
	.4byte 0x05FF5000
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000555
	.4byte 0x0005FFFF
	.4byte 0x005FFFAA
	.4byte 0x00FFF500
	.4byte 0x05FFA000
	.4byte 0x0AFF0000
	.4byte 0x05FF5000
	.4byte 0
	.4byte 0
	.4byte 0xFAAFA000
	.4byte 0xFFFFA000
	.4byte 0x0AFFA000
	.4byte 0x00FFA000
	.4byte 0x00FFA000
	.4byte 0x00FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000050
	.4byte 0x0AFAAFFA
	.4byte 0x0AFFFFFA
	.4byte 0x0AFFA000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005555
	.4byte 0x005FFFFF
	.4byte 0x00FFFAAF
	.4byte 0x05FF5000
	.4byte 0x05FFA000
	.4byte 0x00AFFFAA
	.4byte 0x000AFFFF
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFFA00000
	.4byte 0x5F500000
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05555555
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55555555
	.4byte 0xFFFFFFFF
	.4byte 0xAAAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55555500
	.4byte 0xFFFFFFA0
	.4byte 0xAAAAAA50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFA500
	.4byte 0x0FFA0000
	.4byte 0x0FFA0005
	.4byte 0x0FFFAAFF
	.4byte 0x05FFFFFF
	.4byte 0x00055550
	.4byte 0
	.4byte 0
	.4byte 0xAFF00000
	.4byte 0xAFF00000
	.4byte 0xFFF00000
	.4byte 0xFFFA5000
	.4byte 0x5AFF5000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFF5000
	.4byte 0x0AFFFFAA
	.4byte 0x0AFAAFFF
	.4byte 0x05500055
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0AFF0000
	.4byte 0x5FFA0000
	.4byte 0xFFF50000
	.4byte 0xFF500000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0AFF0000
	.4byte 0x05FFA000
	.4byte 0x00AFFFAA
	.4byte 0x000AFFFF
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05F00000
	.4byte 0xFFF50000
	.4byte 0xFFA00000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF5000
	.4byte 0x00FFA000
	.4byte 0x00AFFFAA
	.4byte 0x000AFFFF
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0x00FFA000
	.4byte 0x05FFA000
	.4byte 0x0AFFA000
	.4byte 0xFFFFA000
	.4byte 0xFAAFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFAA55
	.4byte 0x00FFA000
	.4byte 0x00AFF500
	.4byte 0x000FFFAA
	.4byte 0x0000AFFF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x000A0000
	.4byte 0x00AFA000
	.4byte 0xAFFF5000
	.4byte 0xFFA50000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x005FF500
	.4byte 0x00055000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFFA55
	.4byte 0x005FFFFF
	.4byte 0x00005AAA
	.4byte 0
	.4byte 0x00A50000
	.4byte 0x00AFFFFF
	.4byte 0x005FFFFF
	.4byte 0
	.4byte 0xAFFF5000
	.4byte 0xFAFF5000
	.4byte 0x50FF5000
	.4byte 0x05FF5000
	.4byte 0x5FFF0000
	.4byte 0xFFFA0000
	.4byte 0xFA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x05500000
	.4byte 0
	.4byte 0
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x05500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AFA0
	.4byte 0x0000AFA0
	.4byte 0x0000AFA0
	.4byte 0x0000FFA0
	.4byte 0x0055FFA0
	.4byte 0x0FFFFF50
	.4byte 0x0AFFA500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFFAFF
	.4byte 0x05FF50AF
	.4byte 0x05FF500A
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xF5000000
	.4byte 0xFF500000
	.4byte 0xFFF00000
	.4byte 0x5FFA0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA000A
	.4byte 0x0AFA000A
	.4byte 0x0AFA000A
	.4byte 0x0AFA000A
	.4byte 0x0AFA000A
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0xFF0000AF
	.4byte 0xFF0000AF
	.4byte 0xFF0000AF
	.4byte 0xFF0000AF
	.4byte 0xFF0000AF
	.4byte 0x55000055
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0AFF0000
	.4byte 0x05FFA000
	.4byte 0x00AFFFAA
	.4byte 0x000AFFFF
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x5FFF0000
	.4byte 0xFFF50000
	.4byte 0xFF500000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFA000
	.4byte 0x0AFFFFAA
	.4byte 0x0AFFAFFF
	.4byte 0x0AFF0055
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0x5FFA0000
	.4byte 0xFFF50000
	.4byte 0xFF500000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF500
	.4byte 0x005FFFAA
	.4byte 0x0005FFFF
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFA000
	.4byte 0xFFFFA000
	.4byte 0xFAFFA000
	.4byte 0x00FFA000
	.4byte 0x00FFA000
	.4byte 0x00FFA000
	.4byte 0x00FFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000055A
	.4byte 0x00A00000
	.4byte 0x0AFA0000
	.4byte 0x05FFFAAF
	.4byte 0x005FFFFF
	.4byte 0x00005555
	.4byte 0
	.4byte 0
	.4byte 0xFFA00000
	.4byte 0xAFF50000
	.4byte 0xAFF50000
	.4byte 0xFFF00000
	.4byte 0xFA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005AA00
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AA0
	.4byte 0x000AFFF5
	.4byte 0x000FF550
	.4byte 0x000FA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00A55000
	.4byte 0x05FFFA00
	.4byte 0x0055FF00
	.4byte 0x0000AF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x000000AF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AAFFAA5
	.4byte 0xFFFFFFFF
	.4byte 0xFFA55AFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000000F
	.4byte 0x0000005F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5A500000
	.4byte 0xFFFFA000
	.4byte 0xFAAFF000
	.4byte 0xF5005000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000AA0
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000AA0
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AA5
	.4byte 0x0005FFFF
	.4byte 0x000AFFFF
	.4byte 0x00AFFAAF
	.4byte 0x05FFA00A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xF0000000
	.4byte 0xFA000000
	.4byte 0xFFA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x05FFFFFF
	.4byte 0x05FFFFFF
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0x5FFA0000
	.4byte 0x5FFA0000
	.4byte 0x5FFA0000
	.4byte 0x5FFA0000
	.4byte 0x5FFA0000
	.4byte 0x5FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x00FFF000
	.4byte 0x00AFF500
	.4byte 0x000FFA00
	.4byte 0x000AFF00
	.4byte 0x0005FF50
	.4byte 0
	.4byte 0
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x0AFF0000
	.4byte 0x0FFA0000
	.4byte 0x5FF00000
	.4byte 0xFFA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0005
	.4byte 0x0AFF000A
	.4byte 0x05FF500F
	.4byte 0x00FFA00F
	.4byte 0x00AFF05F
	.4byte 0x005FF0AF
	.4byte 0
	.4byte 0
	.4byte 0xFFA0005F
	.4byte 0xFFF000AF
	.4byte 0xFFF500FF
	.4byte 0xFFFA00FF
	.4byte 0xFAFA05FF
	.4byte 0xA5FF0AFA
	.4byte 0
	.4byte 0
	.4byte 0xF5000000
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFF000
	.4byte 0x005FFA00
	.4byte 0x0005FFA5
	.4byte 0x0000AFFF
	.4byte 0x00000FFF
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0xAFF50000
	.4byte 0xFFA00000
	.4byte 0xFA000000
	.4byte 0xF5000000
	.4byte 0xF0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5FF50000
	.4byte 0x0AFF5000
	.4byte 0x00FFA000
	.4byte 0x00AFF505
	.4byte 0x000FFA0A
	.4byte 0x000AFF5F
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0xAFA00000
	.4byte 0xFF500000
	.4byte 0xFF000000
	.4byte 0xFA000000
	.4byte 0xF5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFFFFF
	.4byte 0x0000005F
	.4byte 0x000000AF
	.4byte 0x00000AFF
	.4byte 0x0000AFF5
	.4byte 0
	.4byte 0
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0xFF000000
	.4byte 0xF5000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000AF000
	.4byte 0x000AF500
	.4byte 0x000AF500
	.4byte 0x00AFF000
	.4byte 0x05FFA000
	.4byte 0x00AFF000
	.4byte 0x000AF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x0000FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0005FFA0
	.4byte 0x0000AFF5
	.4byte 0x0000FFA0
	.4byte 0x0005FA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AAA
	.4byte 0x005FFFFF
	.4byte 0x05FFFAAA
	.4byte 0x0AF50000
	.4byte 0x00500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFA500000
	.4byte 0xFFFFA55A
	.4byte 0x0AFFFFFF
	.4byte 0x0005AAA5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05000000
	.4byte 0x5F500000
	.4byte 0xFF500000
	.4byte 0xF5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00AAAFFF
	.4byte 0x05FFFFFF
	.4byte 0x0055AFFA
	.4byte 0x0000AFF5
	.4byte 0x05FFFFFF
	.4byte 0x05FFFFFF
	.4byte 0xF500000A
	.4byte 0x50000000
	.4byte 0xAAAAA000
	.4byte 0xFFFFF500
	.4byte 0x55555000
	.4byte 0
	.4byte 0xFFFFF500
	.4byte 0xFFFFF500
	.4byte 0xFA000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0x000000AF
	.4byte 0x000000AF
	.4byte 0x000000AF
	.4byte 0x00AAAAFF
	.4byte 0x00FFFFFF
	.4byte 0x00AAAAFF
	.4byte 0x000000FF
	.4byte 0xF0000000
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xFAAA5000
	.4byte 0xFFFFA000
	.4byte 0xAAAA5000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05555FF5
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x55500000
	.4byte 0xFFF50000
	.4byte 0xFFF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AAAAFFA
	.4byte 0x0FFFFFFF
	.4byte 0x0AAAAFFA
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0xAAA50000
	.4byte 0xFFF50000
	.4byte 0xAAA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x0005FFFA
	.4byte 0x0000AFFF
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFF5005
	.4byte 0x0AFFFAAF
	.4byte 0x00AFFFFF
	.4byte 0x00005550
	.4byte 0
	.4byte 0
	.4byte 0x5FFA0000
	.4byte 0x5FFA0000
	.4byte 0xAFFA0000
	.4byte 0xFFFA0000
	.4byte 0xAFFA0000
	.4byte 0x05500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FFA5
	.4byte 0x0000AFFA
	.4byte 0x00000FFF
	.4byte 0x00000AFF
	.4byte 0x000005FF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0xFF500000
	.4byte 0xFF000000
	.4byte 0xFA000000
	.4byte 0xF5000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF5FF
	.4byte 0x000AFFFF
	.4byte 0x000AFFFA
	.4byte 0x0005FFFA
	.4byte 0x0000FFF5
	.4byte 0x00005550
	.4byte 0
	.4byte 0
	.4byte 0x50FF5FF5
	.4byte 0x00AFAFF0
	.4byte 0x005FFFA0
	.4byte 0x005FFF50
	.4byte 0x000FFF50
	.4byte 0x00055500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005FFF
	.4byte 0x0000FFAA
	.4byte 0x000AFF50
	.4byte 0x00AFF500
	.4byte 0x05FFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFF500000
	.4byte 0xFFF00000
	.4byte 0x5FFA0000
	.4byte 0x0AFFA000
	.4byte 0x00555000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFAF
	.4byte 0x0000AFFF
	.4byte 0x00005FFF
	.4byte 0x00000FFA
	.4byte 0x0005AFF5
	.4byte 0x0AFFFFA0
	.4byte 0x05FFFA00
	.4byte 0
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFFA0
	.4byte 0x005FFA00
	.4byte 0x05FFA000
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x05555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFF00000
	.4byte 0xFFF00000
	.4byte 0x55500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AF500
	.4byte 0x000AF000
	.4byte 0x000FF000
	.4byte 0x000FA000
	.4byte 0x000FF500
	.4byte 0x000AFFF5
	.4byte 0x00005AA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0x0FA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0000FF00
	.4byte 0x0000AF00
	.4byte 0x0005FF00
	.4byte 0x05FFFA00
	.4byte 0x00AA5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FFF
	.4byte 0x00000AFF
	.4byte 0x000000FF
	.4byte 0x0000005F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000005
	.4byte 0xFA50005F
	.4byte 0xFFFFAFFF
	.4byte 0xAFFFFFFF
	.4byte 0x005AA550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xF5000000
	.4byte 0xFF000000
	.4byte 0xF5000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFF0000
	.4byte 0x0FFF0000
	.4byte 0x0FFF0000
	.4byte 0x00AF0000
	.4byte 0x00FA0000
	.4byte 0x0FA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000005FF
	.4byte 0x005005FF
	.4byte 0x05FFAFFA
	.4byte 0x00AFFFF5
	.4byte 0x00005A00
	.4byte 0
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA00FF
	.4byte 0x0FFA00FF
	.4byte 0x0FFA00FF
	.4byte 0x00FA000F
	.4byte 0x00F5000F
	.4byte 0x0F5000FA
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005A0000
	.4byte 0x05FFF000
	.4byte 0x05FFF000
	.4byte 0x005A5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05A00000
	.4byte 0x5FFA0005
	.4byte 0x5FFF0005
	.4byte 0x05A50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5A000000
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0x5A500000
	.4byte 0
	.4byte 0
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000AA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05555FF5
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000FF5
	.4byte 0x00000AA0
	.4byte 0
	.4byte 0x55500000
	.4byte 0xFFF50000
	.4byte 0xFFF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005AFA50
	.4byte 0x00AFAFF0
	.4byte 0x05F505FA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000A500
	.4byte 0x000AF500
	.4byte 0x005FA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte 0x005FFA00
	.4byte 0x000AFFAA
	.4byte 0x00005FFF
	.4byte 0x000005AA
	.4byte 0x0000AAFF
	.4byte 0
	.4byte 0
	.4byte 0x00500000
	.4byte 0x5FFA0000
	.4byte 0xFFA00000
	.4byte 0xFA000000
	.4byte 0x50000000
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x000000AF
	.4byte 0x000005FF
	.4byte 0x00000FF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AFF
	.4byte 0x0005FFFF
	.4byte 0x000FFF55
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA55AAAAA
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAA500000
	.4byte 0xFFA00000
	.4byte 0xAA500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte 0x005FF500
	.4byte 0x000AFFAA
	.4byte 0x0000AFFF
	.4byte 0x000005AA
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0x00500000
	.4byte 0x5FFA0000
	.4byte 0xFFA00000
	.4byte 0xFA000000
	.4byte 0x50000000
	.4byte 0xAAAA5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte 0x00AF5000
	.4byte 0x05F00000
	.4byte 0x0AF05000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005F0005
	.4byte 0x05F0005F
	.4byte 0x0FF000FF
	.4byte 0x0FA500FA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xF0000000
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA00FF
	.4byte 0x0FFA00FF
	.4byte 0x0FFA00FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005A500
	.4byte 0x00FFFFA0
	.4byte 0x0AFFAFFF
	.4byte 0x0FA005AF
	.4byte 0x0A00000A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000A5000
	.4byte 0x50AFA000
	.4byte 0xFFFF0000
	.4byte 0xFFF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAA5
	.4byte 0x0AFFFFFA
	.4byte 0x000AF500
	.4byte 0x000AF500
	.4byte 0x000AF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAA0005A5
	.4byte 0xFFA00AFA
	.4byte 0xFFF05FFA
	.4byte 0xFFFAFFFA
	.4byte 0xFAFFFAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte 0x00AFA000
	.4byte 0x005FFF5A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05500000
	.4byte 0x5FF50000
	.4byte 0xFFA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00A00000
	.4byte 0x0AFA0000
	.4byte 0x00FF0000
	.4byte 0x00AFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05F505FA
	.4byte 0x05F505FA
	.4byte 0x05F505FA
	.4byte 0x00AFAFF5
	.4byte 0x005AFF5A
	.4byte 0x0000005F
	.4byte 0x000005FA
	.4byte 0x00000AF5
	.4byte 0x00FF0000
	.4byte 0x0AF50000
	.4byte 0x5FA00000
	.4byte 0xFF000000
	.4byte 0xF5000000
	.4byte 0xA0550000
	.4byte 0x5FFFA005
	.4byte 0xAF5AF50F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5A500000
	.4byte 0xFFFA0000
	.4byte 0xF5AF5000
	.4byte 0x005FFFFF
	.4byte 0x00FFA500
	.4byte 0x0AFF0000
	.4byte 0x0AFF5000
	.4byte 0x00FFFA50
	.4byte 0x005FFFFF
	.4byte 0x00005AFF
	.4byte 0x00000005
	.4byte 0xFFFA0000
	.4byte 0x5AFF5000
	.4byte 0x00FA0000
	.4byte 0
	.4byte 0
	.4byte 0xAA000000
	.4byte 0xFFFA0000
	.4byte 0xAFFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AFA0
	.4byte 0x0005FF50
	.4byte 0x000AFA00
	.4byte 0x005FF000
	.4byte 0x00FF5000
	.4byte 0x0AFF0000
	.4byte 0x00FF5000
	.4byte 0x00AFF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFF000
	.4byte 0x00FF5000
	.4byte 0x05FF0000
	.4byte 0x05FA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x0FFF5000
	.4byte 0x05FF5000
	.4byte 0x00FF5000
	.4byte 0x00AF5000
	.4byte 0x00AFFFFF
	.4byte 0x00AFFFFF
	.4byte 0x00AF5000
	.4byte 0x00FF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000005F
	.4byte 0x000005FF
	.4byte 0x00000FFF
	.4byte 0x0000AFF5
	.4byte 0xFFFFA000
	.4byte 0xAFFFA000
	.4byte 0xAFFA0000
	.4byte 0xFFA00000
	.4byte 0xFF000000
	.4byte 0xF5000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFA000
	.4byte 0x0AFFA000
	.4byte 0x05AA5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AF5000
	.4byte 0x00FF0000
	.4byte 0x0FA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA00FF
	.4byte 0x0FFA00FF
	.4byte 0x0AA500AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FA000F
	.4byte 0x00F5000F
	.4byte 0x0F5000FA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05555550
	.4byte 0x0AFFFFF5
	.4byte 0x0AFFFFF5
	.4byte 0x0AFFFFF5
	.4byte 0x0AFFFFF5
	.4byte 0x0AFFFFF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAAAAAA
	.4byte 0xFFFFFFFF
	.4byte 0xAAAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAA00000
	.4byte 0xFFF00000
	.4byte 0xAAA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00555555
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55555555
	.4byte 0xFFFFFFFF
	.4byte 0xAAAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55555550
	.4byte 0xFFFFFFA0
	.4byte 0xAAAAAA50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AF500
	.4byte 0x000AF500
	.4byte 0x000AF500
	.4byte 0x0005A500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFAAFF5AA
	.4byte 0xFA0AA0AA
	.4byte 0xFA0000AA
	.4byte 0xA50000AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFFF
	.4byte 0x0000AFFF
	.4byte 0x00000555
	.4byte 0x0000AAAA
	.4byte 0x005FFFFF
	.4byte 0x00FFA000
	.4byte 0x00FFA500
	.4byte 0x005FFFFA
	.4byte 0xFA000000
	.4byte 0xF0000000
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFFA00000
	.4byte 0x5FF00000
	.4byte 0x00500000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF500
	.4byte 0x0005FF00
	.4byte 0x0000AFA0
	.4byte 0x00005FF5
	.4byte 0x00000AFA
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00000FF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005550
	.4byte 0x000AFFFF
	.4byte 0x00AFFAFF
	.4byte 0x05FF500F
	.4byte 0x0AFA0005
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0
	.4byte 0x00005500
	.4byte 0x50AFFFF5
	.4byte 0xF5FFAAFF
	.4byte 0xFFF500AF
	.4byte 0xFFA0000F
	.4byte 0xFFA5AAFF
	.4byte 0xFFFFFFFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AF50
	.4byte 0x0005FA05
	.4byte 0x000FF000
	.4byte 0x00AF5000
	.4byte 0x05FA0000
	.4byte 0x00500000
	.4byte 0
	.4byte 0
	.4byte 0xFA05FA5F
	.4byte 0xF505FAAF
	.4byte 0xFA05FA5F
	.4byte 0xFF5AF50F
	.4byte 0x5FFFF00A
	.4byte 0x05A50000
	.4byte 0
	.4byte 0
	.4byte 0xA05FA000
	.4byte 0x505FA000
	.4byte 0xA05FA000
	.4byte 0xF5AF5000
	.4byte 0xFFFA0000
	.4byte 0x5A500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AF50000
	.4byte 0x0AFF5000
	.4byte 0x05FFFFAA
	.4byte 0x000AFFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x00AFF000
	.4byte 0x05FFF000
	.4byte 0xAFFF5000
	.4byte 0xFFF50000
	.4byte 0x55000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FFA00
	.4byte 0x0005FF00
	.4byte 0x0000AFA0
	.4byte 0x00000FF5
	.4byte 0x000005FA
	.4byte 0x000000AF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x00AFA000
	.4byte 0x005FF500
	.4byte 0x000AFFAF
	.4byte 0x0000AFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0x0AFF5000
	.4byte 0x5FFF5000
	.4byte 0xFFFFFFFF
	.4byte 0xFAAFFFFF
	.asciz "PUUU"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0x55500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFFA0
	.4byte 0x00AFFA00
	.4byte 0x05FFA000
	.4byte 0x0FFFAAAA
	.4byte 0x0FFFFFFF
	.4byte 0x05555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAAA000
	.4byte 0xFFFFA000
	.4byte 0x55555000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AAAAA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AAFF
	.4byte 0x00000005
	.4byte 0x00AA0000
	.4byte 0x05FFFAAA
	.4byte 0x005AFFFF
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0xFFA00000
	.4byte 0xAFF50000
	.4byte 0x0FFA0000
	.4byte 0xFFF50000
	.4byte 0xFFA00000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AFA0
	.4byte 0x0005FF00
	.4byte 0x000FF500
	.4byte 0x00AFA000
	.4byte 0x00FF5000
	.4byte 0x0AFA0000
	.4byte 0x05A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AF50000
	.4byte 0x0AFA0005
	.4byte 0x05FF500F
	.4byte 0x00AFFAFF
	.4byte 0x000AFFFF
	.4byte 0x00005550
	.4byte 0
	.4byte 0
	.4byte 0xFFAA5500
	.4byte 0xFFA00005
	.4byte 0xFFF5005F
	.4byte 0xF5FFAAFF
	.4byte 0x50AFFFFA
	.4byte 0x00005500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00500000
	.4byte 0x05FF5000
	.4byte 0x00AFF55F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05000000
	.4byte 0xAFA00000
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FFF0
	.4byte 0x0000FFF0
	.4byte 0x0000FFF0
	.4byte 0x00005550
	.4byte 0x05AA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x05550000
	.4byte 0x0000AA50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550000
	.4byte 0x05FA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x00005FFF
	.4byte 0x0000FFFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAA50000
	.4byte 0xFFFFA000
	.4byte 0x55AFF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00500000
	.4byte 0x0AF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000500
	.4byte 0x00005FA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05AA5000
	.4byte 0x00FFA000
	.4byte 0x00AFF500
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AA0
	.4byte 0x0005FFA0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05A00000
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005AA
	.4byte 0x0005FFFF
	.4byte 0x000FFFAA
	.4byte 0x005FF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFFA00000
	.4byte 0xAFF50000
	.4byte 0x0AFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFF00AF
	.4byte 0x0FFF00AF
	.4byte 0x0FFF00AF
	.4byte 0x05550055
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xF5000000
	.4byte 0xF5000000
	.4byte 0xF5000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x00000AFF
	.4byte 0x0000AFA0
	.4byte 0x000AFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05555000
	.4byte 0xFFFFFFA5
	.4byte 0xA5555AFF
	.4byte 0x0000000A
	.4byte 0x00555000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA000000
	.4byte 0xAFA00000
	.4byte 0
	.4byte 0
	.4byte 0x00055500
	.4byte 0x00FFFFA0
	.4byte 0x00A505FA
	.4byte 0x000005FA
	.4byte 0x0005FFFA
	.4byte 0x005F55FA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000A0
	.4byte 0x00000AF0
	.4byte 0x00005FA0
	.4byte 0x0000AF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00500000
	.4byte 0x00FA0000
	.4byte 0x0AF50000
	.4byte 0x0FA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x00000AFF
	.4byte 0x0000AFA0
	.4byte 0x000AFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05555000
	.4byte 0xFFFFFFA5
	.4byte 0xA5555AFF
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA000000
	.4byte 0xAFA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xAAAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFA0
	.4byte 0xAAAAAA50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005AA50
	.4byte 0x05FFFFFF
	.4byte 0x0FF500AF
	.4byte 0x0FF0000F
	.4byte 0x0FF5005F
	.4byte 0x05FFAFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0xF0000000
	.4byte 0xF0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFA000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005AAA50
	.4byte 0x05FFAFF5
	.4byte 0x0FF005FA
	.4byte 0x055005FA
	.4byte 0x0005FFF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFFFF
	.4byte 0x0005FFFF
	.4byte 0x00000555
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x0055555F
	.4byte 0x000000AF
	.4byte 0x00000AFF
	.4byte 0xF5000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0xAA500000
	.4byte 0xFFA00000
	.4byte 0xFF500000
	.4byte 0xF5000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFA000
	.4byte 0x00AFF500
	.4byte 0x000FFF00
	.4byte 0x0005FFA0
	.4byte 0x0000AFF5
	.4byte 0x00000FFA
	.4byte 0x000005FF
	.4byte 0x000000AF
	.4byte 0x000AFF50
	.4byte 0x000FFA00
	.4byte 0x00AFF000
	.4byte 0x05FF5000
	.4byte 0x0FFA0000
	.4byte 0xAFF50000
	.4byte 0xFFA00000
	.4byte 0xFF000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0AAA0000
	.4byte 0
	.4byte 0x0AA50000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x0000AFFF
	.4byte 0x000AFFFA
	.4byte 0x00AFFA00
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x05FF5005
	.4byte 0x05FF500A
	.4byte 0xAAF50000
	.4byte 0xFFFA0000
	.4byte 0xAFFF5000
	.4byte 0xAFAFF000
	.4byte 0xFF0AF000
	.4byte 0xFA000000
	.4byte 0xF5000000
	.4byte 0xF0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FF50
	.4byte 0x0005FF00
	.4byte 0x0000FF50
	.4byte 0x0000AFA0
	.4byte 0x0055AFF5
	.4byte 0x05FFFFFF
	.4byte 0x00AAAFFA
	.4byte 0x00000AFA
	.4byte 0x000AFA00
	.4byte 0x0005F500
	.4byte 0
	.4byte 0
	.4byte 0x55550000
	.4byte 0xFFFA0000
	.4byte 0xAAA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FF505A
	.4byte 0x005FFAFF
	.4byte 0x0005FFA5
	.4byte 0x0005FA00
	.4byte 0x000AF500
	.4byte 0x000AF500
	.4byte 0x000AF500
	.4byte 0x0005FF00
	.4byte 0xA505FF50
	.4byte 0xFFFFF500
	.4byte 0x5AFF5000
	.4byte 0x00AFA000
	.4byte 0x000FA000
	.4byte 0x000FA000
	.4byte 0x000FA000
	.4byte 0x00AFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFF00
	.4byte 0x0005FFA0
	.4byte 0x0000AFF5
	.4byte 0x00000FFF
	.4byte 0x00555AFF
	.4byte 0x00FFFFFF
	.4byte 0x00AAAAAF
	.4byte 0x0000000F
	.4byte 0x00AFF500
	.4byte 0x05FFA000
	.4byte 0x0AFF0000
	.4byte 0xAFF50000
	.4byte 0xFFA55500
	.4byte 0xFFFFFFA0
	.4byte 0xFAAAAA50
	.4byte 0xFA000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0x05A00000
	.4byte 0
	.4byte 0
	.4byte 0x05500000
	.4byte 0x0AF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FF500
	.4byte 0x000AFFA5
	.4byte 0x005AFFFF
	.4byte 0x00FFA55A
	.4byte 0x05FF0000
	.4byte 0x05FF0000
	.4byte 0x00FFF500
	.4byte 0x005FFFFA
	.4byte 0x00500000
	.4byte 0x50000000
	.4byte 0xFFA00000
	.4byte 0xFFFF0000
	.4byte 0x05FFA000
	.4byte 0x00AFA000
	.4byte 0x00AFA000
	.4byte 0xAFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FA000
	.4byte 0x00AF000A
	.4byte 0x00FA00AF
	.4byte 0x05F500AF
	.4byte 0x05F500FF
	.4byte 0x05F500FF
	.4byte 0x05F500AF
	.4byte 0x00FA005F
	.4byte 0xAFFFFFA0
	.4byte 0xFA555FF5
	.4byte 0xA00000A0
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xF00000A5
	.4byte 0x0AF50000
	.4byte 0x00FA0000
	.4byte 0x00AF0000
	.4byte 0x005F5000
	.4byte 0x005F5000
	.4byte 0x005F5000
	.4byte 0x005F5000
	.4byte 0x00AF0000
	.4byte 0x0AF500FA
	.4byte 0x05F50FFF
	.4byte 0x00AFFA5A
	.4byte 0
	.4byte 0x0AAAAAAA
	.4byte 0x0AAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FA00
	.4byte 0x000FF000
	.4byte 0x005F500A
	.4byte 0x00FA005F
	.4byte 0x0AF500FF
	.4byte 0x0FA005F5
	.4byte 0x0AF000FA
	.4byte 0x00FA005F
	.4byte 0xAF500000
	.4byte 0xFA000000
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05555555
	.4byte 0x5FFFFFFF
	.4byte 0x5AAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55555555
	.4byte 0xFFFFFFFF
	.4byte 0xAAAAAAFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAAAAAA
	.4byte 0xFFFFFFFF
	.4byte 0xAAAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FA005
	.4byte 0x00AF000A
	.4byte 0x00FA000A
	.4byte 0x05F5000A
	.4byte 0x05F5000A
	.4byte 0x05F5000A
	.4byte 0x05F5000A
	.4byte 0x00FA000A
	.4byte 0xAAAAA500
	.4byte 0xFAAAFF50
	.4byte 0xF0000FA0
	.4byte 0xF0000FA0
	.4byte 0xFAAAFF50
	.4byte 0xFAAFF500
	.4byte 0xF005FA00
	.4byte 0xF000FF50
	.4byte 0x0AF50000
	.4byte 0x00FA0000
	.4byte 0x00AF0000
	.4byte 0x005F5000
	.4byte 0x005F5000
	.4byte 0x005F5000
	.4byte 0x005F5000
	.4byte 0x00AF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005AAAA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x05AAAAAF
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAF
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFAAAAAA0
	.4byte 0xFFFFFFF5
	.4byte 0xFFAAAAA5
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFA500
	.4byte 0x0AFA0000
	.4byte 0x0FFAAAAA
	.4byte 0x0AAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AFF5
	.4byte 0x000AFF50
	.4byte 0x00AFF500
	.4byte 0x0AFFFAAA
	.4byte 0x0FFFFFFF
	.4byte 0x05555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAA00000
	.4byte 0xFFF00000
	.4byte 0x55500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0x0000005F
	.4byte 0x0000005F
	.4byte 0x0000005F
	.4byte 0x0000005F
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0AAA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF00F
	.4byte 0x00AFFA5F
	.4byte 0x000AFFFF
	.4byte 0x0000AFFF
	.4byte 0x000005FA
	.4byte 0x00000AF0
	.4byte 0x000005A0
	.4byte 0
	.4byte 0xA005F000
	.4byte 0x505FF000
	.4byte 0xAAFFA000
	.4byte 0xFFFA0000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FF5
	.4byte 0x0000AFA0
	.4byte 0x000AFFA5
	.4byte 0x00FFFFFF
	.4byte 0x00AFAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000A50
	.4byte 0xFFAAFFF0
	.4byte 0xFFFFFF50
	.4byte 0x05555000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFF5
	.4byte 0x005FFAFF
	.4byte 0x05FF505A
	.4byte 0x05F50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5AFF5000
	.4byte 0xFFAFF500
	.4byte 0xA505FF50
	.4byte 0x00005F50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AAAAAF
	.4byte 0x00FFFFFF
	.4byte 0x0055555F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0xFAAAAA50
	.4byte 0xFFFFFFA0
	.4byte 0xFA555500
	.4byte 0xFA000000
	.4byte 0xFA000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0x0AF50000
	.4byte 0x0AA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005AFF
	.4byte 0x00000005
	.4byte 0x00055000
	.4byte 0x00AFA000
	.4byte 0x005FFA55
	.4byte 0x0005FFFF
	.4byte 0x000005AA
	.4byte 0
	.4byte 0xFFA50000
	.4byte 0xAFF50000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0xAFFA0000
	.4byte 0xFFF50000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AF000A
	.4byte 0x005FA000
	.4byte 0x000AFA00
	.4byte 0x0000AFA0
	.4byte 0x00000AFF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0
	.4byte 0xFFA5AFF5
	.4byte 0xAFFFFF50
	.4byte 0x00550000
	.4byte 0x0000000A
	.4byte 0xA5555AFF
	.4byte 0xFFFFFFA5
	.4byte 0x05555000
	.4byte 0
	.4byte 0x00FA0000
	.4byte 0x0AF50000
	.4byte 0xAFA00000
	.4byte 0xFA000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AF500A
	.4byte 0x000FA005
	.4byte 0x0005F500
	.4byte 0x0000FF00
	.4byte 0x00005FA0
	.4byte 0x00000AF0
	.4byte 0x000000A0
	.4byte 0
	.4byte 0xF0000000
	.4byte 0xFA000000
	.4byte 0xAF000000
	.4byte 0x0FA00000
	.4byte 0x0AF50000
	.4byte 0x00FA0000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AF000A
	.4byte 0x005FA005
	.4byte 0x000AFA00
	.4byte 0x0000AFA0
	.4byte 0x00000AFF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0
	.4byte 0xF0005FA0
	.4byte 0xA0000AA5
	.4byte 0
	.4byte 0x0000000A
	.4byte 0xA5555AFF
	.4byte 0xFFFFFFA5
	.4byte 0x05555000
	.4byte 0
	.4byte 0x00FA0000
	.4byte 0x0AF50000
	.4byte 0xAFA00000
	.4byte 0xFA000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x05AAAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x05AAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0
	.4byte 0xAAAAAAA0
	.4byte 0xFFFFFFF5
	.4byte 0xAAAAAAA5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005AAA5
	.4byte 0x00AFFAFF
	.4byte 0x00AA005F
	.4byte 0x000055AF
	.4byte 0x000AFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000500
	.4byte 0x0005FFA0
	.4byte 0x00AFFFF5
	.4byte 0x0AFFF500
	.4byte 0x00A50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005AFFF
	.4byte 0x00AFFFFF
	.4byte 0x0AFFFFFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFA0000
	.4byte 0xFFFA0000
	.4byte 0x05FA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00055000
	.4byte 0x05AFA000
	.4byte 0x0FFFA000
	.4byte 0x050AA000
	.4byte 0x000AA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00055500
	.4byte 0x00AFFFF5
	.4byte 0x05FA00AF
	.4byte 0x0AF0005F
	.4byte 0x0AF0005F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005000A0
	.4byte 0x0AF000FA
	.4byte 0x05FA00AF
	.4byte 0x00AF000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFA00
	.4byte 0x05FFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000550
	.4byte 0x00000FF5
	.4byte 0x0000AFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFA00
	.4byte 0x05FFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000550
	.4byte 0x00000FF5
	.4byte 0x0000AFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005500
	.4byte 0x00AFFFFA
	.4byte 0x05FA00AF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x000000AF
	.4byte 0x500005FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000AF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xF0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x000000AF
	.4byte 0x000005FF
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0
	.4byte 0
	.4byte 0xF5000000
	.4byte 0xFFA00000
	.4byte 0xFFFA0000
	.4byte 0x05F50000
	.4byte 0
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x000000AF
	.4byte 0x00000FFF
	.4byte 0x000005A5
	.4byte 0
	.4byte 0x0000005F
	.4byte 0
	.4byte 0
	.4byte 0xFF500000
	.4byte 0xFFF00000
	.4byte 0xF5000000
	.4byte 0
	.4byte 0
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x000000FF
	.4byte 0x00000AFF
	.4byte 0x0000AFFA
	.4byte 0x0000FF50
	.4byte 0
	.4byte 0x0000005F
	.4byte 0
	.4byte 0xAA000000
	.4byte 0xFFA00000
	.4byte 0xFFFA0000
	.4byte 0x0AFFA000
	.4byte 0x00AFA000
	.4byte 0x00050000
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000550
	.4byte 0x0005FFFF
	.4byte 0x000FFFFF
	.4byte 0x005F5005
	.4byte 0x000A0000
	.4byte 0
	.4byte 0x000000AF
	.4byte 0
	.4byte 0
	.4byte 0x50000A00
	.4byte 0xFA00AF50
	.4byte 0xFFFFFF00
	.4byte 0x5AFFF500
	.4byte 0x00550000
	.4byte 0xFF500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00000555
	.4byte 0
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x00AFF000
	.4byte 0x00AFF000
	.4byte 0x00AFF000
	.4byte 0x00555000
	.4byte 0
	.4byte 0xFFF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x000000AF
	.4byte 0x00000AFA
	.4byte 0x00000AF0
	.4byte 0x00000AFA
	.4byte 0x000000AF
	.4byte 0x0000000F
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFFFA0000
	.4byte 0x00AF5000
	.4byte 0x005F5000
	.4byte 0x55FF0000
	.4byte 0xFFF50000
	.4byte 0xFFF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000055
	.4byte 0x0000AFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55000000
	.4byte 0xFFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0x05A5000F
	.4byte 0x05FFAAFF
	.4byte 0x005AFFAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FFA000
	.4byte 0
	.4byte 0x05500000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0xAFF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFFA
	.4byte 0x0FFFFFFA
	.4byte 0x0FFFFFFA
	.4byte 0x0AFFFFFA
	.4byte 0x00AFFFFA
	.4byte 0x0005AFFA
	.4byte 0x00000AFA
	.4byte 0x00000AFA
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFF500
	.4byte 0x05FFF500
	.4byte 0x05FFF500
	.4byte 0x00555000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AA000
	.4byte 0x000AA000
	.4byte 0x000AA000
	.4byte 0x000AA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AF500AF
	.4byte 0x00FFAAFA
	.4byte 0x000AAA50
	.4byte 0
	.4byte 0x0AAAAAAA
	.4byte 0x0AAAAAAA
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FA005
	.4byte 0x000AF500
	.4byte 0x0000FA00
	.4byte 0x00005F50
	.4byte 0x00000FF0
	.4byte 0x000005F5
	.4byte 0x00000AF0
	.4byte 0x00005F50
	.4byte 0xF5000000
	.4byte 0xFF000000
	.4byte 0x5FA00000
	.4byte 0x0AF00000
	.4byte 0x00FA0000
	.4byte 0x00AF0000
	.4byte 0x00FA0000
	.4byte 0x0AF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0055FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0000A50A
	.4byte 0x0000005F
	.4byte 0x000AFA00
	.4byte 0x005FF500
	.4byte 0x00AF5000
	.4byte 0x0AFA0000
	.4byte 0x5FF00000
	.4byte 0xFF5005AA
	.4byte 0xFA005FFA
	.4byte 0xF000FFAA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0055FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0005FA00
	.4byte 0x0000A50A
	.4byte 0x0000005F
	.4byte 0x000AFA00
	.4byte 0x005FF500
	.4byte 0x00AF5000
	.4byte 0x0AFA0000
	.4byte 0x5FF00000
	.4byte 0xFF50AFFF
	.4byte 0xFA0AFA5A
	.4byte 0xF00AA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA000000
	.4byte 0xFF000000
	.4byte 0x000000AF
	.4byte 0x0005AAFA
	.4byte 0x0005AAFF
	.4byte 0x0000005F
	.4byte 0x0AF5005F
	.4byte 0x05FFAAFF
	.4byte 0x0005AA50
	.4byte 0
	.4byte 0x50000FF5
	.4byte 0x0000AFA0
	.4byte 0x5005FF00
	.4byte 0xA00FF500
	.4byte 0xA0AFA000
	.4byte 0x5AFA000A
	.4byte 0x5FF500AF
	.4byte 0xAF5005FA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xF5000000
	.4byte 0xF5000000
	.4byte 0x000000AF
	.4byte 0x000000AF
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x000000AF
	.4byte 0x000000FF
	.4byte 0x00005AFF
	.4byte 0x000AFFFA
	.4byte 0xF0000000
	.4byte 0xF0000000
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000AF
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00000FFA
	.4byte 0x00005FF5
	.4byte 0x0000FFF0
	.4byte 0x0005FF50
	.4byte 0x000AFFAA
	.4byte 0xFFA00000
	.4byte 0xFFF50000
	.4byte 0x5FFA0000
	.4byte 0x0AFF0000
	.4byte 0x05FF5000
	.4byte 0x00FFF000
	.4byte 0x00AFF500
	.4byte 0xAAAFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000AF
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00000FFA
	.4byte 0x0000AFF5
	.4byte 0x0000FFA0
	.4byte 0x0005FF50
	.4byte 0x000AFFAA
	.4byte 0xFFA00000
	.4byte 0xFFF00000
	.4byte 0x5FFA0000
	.4byte 0x0AFF0000
	.4byte 0x05FF5000
	.4byte 0x00FFA000
	.4byte 0x00AFF500
	.4byte 0xAAAFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00000FFA
	.4byte 0x0000AFF5
	.4byte 0x0000FFA0
	.4byte 0x0005FF50
	.4byte 0x000AFFAA
	.4byte 0xFFA00000
	.4byte 0xFFF00000
	.4byte 0x5FFA0000
	.4byte 0x0AFF0000
	.4byte 0x05FF5000
	.4byte 0x00FFA000
	.4byte 0x00AFF500
	.4byte 0xAAAFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00000FFA
	.4byte 0x0000AFF0
	.4byte 0x0000FFA0
	.4byte 0x0005FF50
	.4byte 0x000FFFAA
	.4byte 0xFFA00000
	.4byte 0xFFF00000
	.4byte 0x5FFA0000
	.4byte 0x0FFF0000
	.4byte 0x05FF5000
	.4byte 0x00FFA000
	.4byte 0x00AFF000
	.4byte 0xAAAFFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0x000000AF
	.4byte 0x000000FF
	.4byte 0x000005FF
	.4byte 0x00000FFF
	.4byte 0x00005FF5
	.4byte 0x0000AFF0
	.4byte 0x0000FFFA
	.4byte 0xFFF50000
	.4byte 0xFFFA0000
	.4byte 0xAAFF0000
	.4byte 0x50FFA000
	.4byte 0x00AFF000
	.4byte 0x005FF500
	.4byte 0x000FFF00
	.4byte 0xAAAFFF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0x000000AF
	.4byte 0x000000FF
	.4byte 0x00000AFF
	.4byte 0x00000FFA
	.4byte 0x00005FF5
	.4byte 0x0000AFF0
	.4byte 0x0000FFFA
	.4byte 0xFFF50000
	.4byte 0xFFFA0000
	.4byte 0xAAFF0000
	.4byte 0x55FFA000
	.4byte 0x00AFF000
	.4byte 0x005FF500
	.4byte 0x000FFA00
	.4byte 0xAAAFFF50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x00000FFA
	.4byte 0x0000AFF0
	.4byte 0x0000FFA0
	.4byte 0x0005FF50
	.4byte 0x000FFFAA
	.4byte 0xFFFFFFFF
	.4byte 0xFFA55555
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFA00000
	.4byte 0xF0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFFFA
	.4byte 0x00AFF500
	.4byte 0x05FF5000
	.4byte 0x0AFF0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x05FF0000
	.4byte 0x00FFA000
	.4byte 0xAAFFFA00
	.4byte 0x000AFA00
	.4byte 0x00005000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000AA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FFFAAF
	.4byte 0x05FFFFFF
	.4byte 0x05FFAAA5
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05AA5000
	.4byte 0
	.4byte 0xFFF50000
	.4byte 0xFFF50000
	.4byte 0x5FF50000
	.4byte 0x05500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000AFA
	.4byte 0x00000AFA
	.4byte 0x00000AFA
	.4byte 0x00000AFA
	.4byte 0x00000AFA
	.4byte 0x00000AFA
	.4byte 0x000005A5
	.4byte 0
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x05FA0000
	.4byte 0x00A50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005000
	.4byte 0x000AFA00
	.4byte 0x000AF500
	.4byte 0x000FF000
	.4byte 0x05FFA000
	.4byte 0x0AFA0000
	.4byte 0x05500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x000AF500
	.4byte 0x000FA005
	.4byte 0x00AF500F
	.4byte 0x00FA005F
	.4byte 0x0AF000FA
	.4byte 0x055000A5
	.4byte 0
	.4byte 0x5FA00000
	.4byte 0xAF000000
	.4byte 0xF5000000
	.4byte 0xF0000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000AFA
	.4byte 0x0000AFA0
	.4byte 0x0005FF50
	.4byte 0x000AF500
	.4byte 0x005A5000
	.4byte 0
	.4byte 0
	.4byte 0x500AF5AA
	.4byte 0x00AF50AA
	.4byte 0x05FAAAFF
	.4byte 0x05AAAAFF
	.4byte 0x000000AA
	.4byte 0x000000AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000AFA
	.4byte 0x0000AFA0
	.4byte 0x0005FF50
	.4byte 0x000AF500
	.4byte 0x005A5000
	.4byte 0
	.4byte 0
	.4byte 0x5000000A
	.4byte 0x00000AFF
	.4byte 0x0000AFA0
	.4byte 0x000AF500
	.4byte 0x000FFAAA
	.4byte 0x000AAAAA
	.4byte 0
	.4byte 0
	.4byte 0xFA000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0xAA000000
	.4byte 0xAA000000
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000005F
	.4byte 0x000000FF
	.4byte 0x00000AFA
	.4byte 0x00005FF0
	.4byte 0x00005A50
	.4byte 0
	.4byte 0
	.4byte 0xFA005FA5
	.4byte 0xF005FA05
	.4byte 0x500FFAAA
	.4byte 0x000AAAAA
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0xF5000000
	.4byte 0xF5000000
	.4byte 0xFAA00000
	.4byte 0xFAA00000
	.4byte 0xF5000000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0
	.4byte 0x00AFFA00
	.4byte 0x05FFA000
	.4byte 0x05FF5000
	.4byte 0x05FFA000
	.4byte 0x00FFFA00
	.4byte 0x005FFFFF
	.4byte 0x0000AFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AA500
	.4byte 0x005FF500
	.4byte 0x0AFFF000
	.4byte 0xFFFF5000
	.4byte 0xFFA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FFFFF
	.4byte 0x00AFF555
	.4byte 0x00FFF000
	.4byte 0x05FF5000
	.4byte 0x0AFF0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFF00
	.4byte 0x5555FFA0
	.4byte 0x0000FFF0
	.4byte 0x0000AFF5
	.4byte 0x00000FFA
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FFFFF
	.4byte 0x00AFF555
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x0FFF0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFF00
	.4byte 0x555AFF50
	.4byte 0x0000FFF0
	.4byte 0x0000AFF5
	.4byte 0x00000FFA
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFFFF
	.4byte 0x00AFF555
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x0FFF0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFF00
	.4byte 0x555AFF50
	.4byte 0x0000FFF0
	.4byte 0x0000AFF5
	.4byte 0x00000FFA
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFFFF
	.4byte 0x00AFF555
	.4byte 0x00FFA000
	.4byte 0x0AFF5000
	.4byte 0x0FFF0000
	.4byte 0x05500000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFF00
	.4byte 0x555AFF50
	.4byte 0x0000FFA0
	.4byte 0x0000AFF5
	.4byte 0x00005FFA
	.4byte 0x00000555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFFFF
	.4byte 0x000FFF55
	.4byte 0x005FF500
	.4byte 0x00AFF000
	.4byte 0x05FFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFA0
	.4byte 0x5555AFF0
	.4byte 0x00005FFA
	.4byte 0x00000FFF
	.4byte 0x00000AFF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFFFF
	.4byte 0x000FFA55
	.4byte 0x005FF500
	.4byte 0x00FFF000
	.4byte 0x05FFA000
	.4byte 0x00550000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFA0
	.4byte 0x5555AFF0
	.4byte 0x00005FF5
	.4byte 0x00000FFF
	.4byte 0x00000AFF
	.4byte 0x00000055
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFFFF
	.4byte 0x00AFF555
	.4byte 0x00FFA000
	.4byte 0x0AFF5000
	.4byte 0x0FFA0000
	.4byte 0x05500000
	.4byte 0
	.4byte 0
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0xFFFAAAAA
	.4byte 0xFFFFFFFF
	.asciz "UUUU"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFA000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0
	.4byte 0x005FFF55
	.4byte 0x0005FFFF
	.4byte 0x000005AF
	.4byte 0x0000000F
	.4byte 0x0000005F
	.4byte 0x00000AFF
	.4byte 0x00000AFA
	.4byte 0
	.4byte 0x055FFF00
	.4byte 0xFFFFF500
	.4byte 0xFFA50000
	.4byte 0xF5000000
	.4byte 0xF0000000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000500
	.4byte 0x00005FF5
	.4byte 0x0005FFFF
	.4byte 0x000005FF
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA000000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0xFFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x000005FF
	.4byte 0x0000AFFF
	.4byte 0x000AFFF5
	.4byte 0x0005A500
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xF5000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000AAA
	.4byte 0x0000AFFF
	.4byte 0x000AFFFF
	.4byte 0x00AFFA0A
	.4byte 0x00AF5000
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA000000
	.4byte 0xFFA00000
	.4byte 0x5FA00000
	.4byte 0
	.4byte 0xFFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00AFF50A
	.4byte 0x00AFF50A
	.4byte 0x00AFF50A
	.4byte 0x00555000
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0xFFA00000
	.4byte 0x55000000
	.4byte 0
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05000000
	.4byte 0xAFA50000
	.4byte 0xFFFFA000
	.4byte 0x0AFFFA00
	.4byte 0x0005F000
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05FF5000
	.4byte 0xAFFFF000
	.4byte 0xFFA50000
	.4byte 0xA5000000
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5AAA0000
	.4byte 0xFFFFA000
	.4byte 0xFFFFFA00
	.4byte 0xF50AFFA0
	.4byte 0x5000AFA0
	.4byte 0x00000500
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xF00AFF50
	.4byte 0xF00AFF50
	.4byte 0xF00AFF50
	.4byte 0x50005500
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005FFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFA50
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005A500
	.4byte 0x00AFFFF5
	.4byte 0x05FFAFFF
	.4byte 0x0AF500AF
	.4byte 0x05500005
	.4byte 0
	.4byte 0x0AFFA000
	.4byte 0
	.4byte 0
	.4byte 0x0000A000
	.4byte 0x500AF000
	.4byte 0xFFFFA000
	.4byte 0xFFFA0000
	.4byte 0x05500000
	.4byte 0x000AFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0x00000055
	.4byte 0x0000AFFF
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFF500000
	.4byte 0xFFF50000
	.4byte 0x0AA00000
	.4byte 0x55000000
	.4byte 0xFFFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005F
	.4byte 0x000005FF
	.4byte 0x000000AA
	.4byte 0x00000005
	.4byte 0x00005AFF
	.4byte 0
	.4byte 0x05000000
	.4byte 0xAFA00000
	.4byte 0xFFF50000
	.4byte 0xFA000000
	.4byte 0
	.4byte 0x55500000
	.4byte 0xFFFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x000000AF
	.4byte 0x000005FF
	.4byte 0x00005FFA
	.4byte 0x0000AFA0
	.4byte 0x00000505
	.4byte 0x00005AFF
	.4byte 0
	.4byte 0xAA500000
	.4byte 0xFFF50000
	.4byte 0xFFFF5000
	.4byte 0x55FFF000
	.4byte 0x005FF500
	.4byte 0x55500000
	.4byte 0xFFFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000550
	.4byte 0x0005FFFF
	.4byte 0x000FFFFF
	.4byte 0x005FA005
	.4byte 0x000A0000
	.4byte 0x00000005
	.4byte 0x00005AFF
	.4byte 0
	.4byte 0
	.4byte 0x50000A50
	.4byte 0xFA00AF50
	.4byte 0xFFFFFF00
	.4byte 0x5AFFF500
	.4byte 0xA5550000
	.4byte 0xFFFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00000555
	.4byte 0x00000005
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x00555000
	.4byte 0x55500000
	.4byte 0xFFFFA000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00A50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005A00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00005AFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x55505FFA
	.4byte 0xFFFFFFA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000005FF
	.4byte 0x00000FFF
	.4byte 0x0000005A
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xFA500000
	.4byte 0xFFF00000
	.4byte 0x5AA00000
	.4byte 0
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x00000AFF
	.4byte 0x0000AFFF
	.4byte 0x00000FA0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0
	.4byte 0x50000000
	.4byte 0xFA000000
	.4byte 0xFF500000
	.4byte 0xA0000000
	.4byte 0
	.4byte 0
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000005A
	.4byte 0x00000AFF
	.4byte 0x0000AFFF
	.4byte 0x0005FFA0
	.4byte 0x000AFA00
	.4byte 0x00005000
	.4byte 0x0AFF5000
	.4byte 0
	.4byte 0xA5000000
	.4byte 0xFF500000
	.4byte 0xFFF00000
	.4byte 0x5FFA0000
	.4byte 0x05FF5000
	.4byte 0
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000AFFA0
	.4byte 0x000AFFA0
	.4byte 0x000AFFA0
	.4byte 0x00005500
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0
	.4byte 0
	.4byte 0x5FFA0000
	.4byte 0x5FFA0000
	.4byte 0x5FFA0000
	.4byte 0x05550000
	.4byte 0
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFAAAA
	.4byte 0x0AFF0000
	.4byte 0xFFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFF50000
	.4byte 0xAAA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFAAAA
	.4byte 0x0AFA0000
	.4byte 0xFFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFF50000
	.4byte 0xAAA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFAAAA
	.4byte 0x0AFA0000
	.4byte 0xFFFF5000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFF00000
	.4byte 0xAAA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFFFFFF
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFFFFFF
	.4byte 0x0AFFAAAA
	.4byte 0x0AFA0000
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFF00000
	.4byte 0xAAA00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0x0FFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00005FFF
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00005FFA
	.4byte 0x00AAAFFA
	.4byte 0x05FFFFFF
	.4byte 0x00AAAFFA
	.4byte 0xFFFFFFFA
	.4byte 0x00005FFF
	.4byte 0x000000AF
	.4byte 0x0000005F
	.4byte 0x0000000A
	.4byte 0xAA50000A
	.4byte 0xFFA0000A
	.4byte 0xAA50000A
	.4byte 0
	.4byte 0xA0000000
	.4byte 0xF5000000
	.4byte 0xFA000000
	.4byte 0xFF000000
	.4byte 0xFF000000
	.4byte 0xFF500000
	.4byte 0xFF000000
	.4byte 0x0AFFF500
	.4byte 0x0AFFFF00
	.4byte 0x0AFFFFA0
	.4byte 0x0AFAAFF5
	.4byte 0x0AFA0FFF
	.4byte 0x0AFA0AFF
	.4byte 0x0AFA00FF
	.4byte 0x0AFA005F
	.4byte 0x000AFA00
	.4byte 0x000AFA00
	.4byte 0x000AFA00
	.4byte 0x000AFA00
	.4byte 0x000AFA00
	.4byte 0xA00AFA00
	.4byte 0xF50AFA00
	.4byte 0xFA0AFA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005FFFFA
	.4byte 0x00FFF500
	.4byte 0x0AFF5000
	.4byte 0x0FFF0000
	.4byte 0x5FFA0000
	.4byte 0x5FF50000
	.4byte 0x5FF50000
	.4byte 0x5FFA0000
	.4byte 0xAFFFF500
	.4byte 0x00AFFA00
	.4byte 0x000AFF50
	.4byte 0x0000FFA0
	.4byte 0x0000AFF0
	.4byte 0x0000AFF5
	.4byte 0x0000AFF5
	.4byte 0x0000AFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFFF
	.4byte 0x000FFF50
	.4byte 0x00AFF500
	.4byte 0x00FFA000
	.4byte 0x05FFA000
	.4byte 0x05FF5000
	.4byte 0x0AFF5000
	.4byte 0x05FF5000
	.4byte 0xAAFFFA00
	.4byte 0x000AFFA0
	.4byte 0x0000AFF5
	.4byte 0x00000FFA
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFFF
	.4byte 0x005FFF50
	.4byte 0x00AFF500
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x05FF5000
	.4byte 0xAAFFFA00
	.4byte 0x000AFFA0
	.4byte 0x0000AFF5
	.4byte 0x00000FFA
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFFF
	.4byte 0x005FFF50
	.4byte 0x00AFF500
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x05FF5000
	.4byte 0xAAFFFA00
	.4byte 0x000AFFA0
	.4byte 0x0000AFF5
	.4byte 0x00000FFA
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFFF
	.4byte 0x000FFF50
	.4byte 0x00AFF500
	.4byte 0x00FFF000
	.4byte 0x05FFA000
	.4byte 0x05FF5000
	.4byte 0x05FF5000
	.4byte 0x05FFA000
	.4byte 0xAAFFFF50
	.4byte 0x000AFFF0
	.4byte 0x0000AFFA
	.4byte 0x00000FFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0x00000AFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x50000000
	.4byte 0x50000000
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x05FFF500
	.4byte 0x005FFF50
	.4byte 0x0005FFF5
	.4byte 0x00005FFF
	.4byte 0x000005FF
	.4byte 0x00000AFF
	.4byte 0x0000AFFA
	.4byte 0x0005FFA0
	.4byte 0x005FFA00
	.4byte 0x05FFA000
	.4byte 0x5FFA0000
	.4byte 0xFFA00000
	.4byte 0xFF000000
	.4byte 0xFF500000
	.4byte 0xAFFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0005FFFF
	.4byte 0x005FFF50
	.4byte 0x00AFF500
	.4byte 0x00FFA000
	.4byte 0x05FF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF500A
	.4byte 0x05FF50AF
	.4byte 0xAAFFFF50
	.4byte 0x005FFFA0
	.4byte 0x00FFFFF5
	.4byte 0x0AFF5FFA
	.4byte 0x5FF50AFF
	.4byte 0xFFA00AFF
	.4byte 0xFF000AFF
	.4byte 0xF5000AFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x0AFF5000
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0x000AFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFF0000
	.4byte 0x0AFFAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x05555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAA5000
	.4byte 0xFFFFA000
	.4byte 0x55550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFFAAAA
	.4byte 0x0AFFFFFF
	.4byte 0x05555555
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xAAAA5000
	.4byte 0xFFFFA000
	.4byte 0x55550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFA0000
	.4byte 0x0AFFAAAA
	.4byte 0

