.include "macros.s"

.section .sdata, "wa"  # 0x80659EC0 - 0x8065B140 ; 0x00001280


.global lbl_80659EC0
lbl_80659EC0:

	# ROM: 0x259200
	.4byte 0x00000080

.global lbl_80659EC4
lbl_80659EC4:

	# ROM: 0x259204
	.4byte 0x00000004

.global lbl_80659EC8
lbl_80659EC8:

	# ROM: 0x259208
	.4byte 0x00000080

.global lbl_80659ECC
lbl_80659ECC:

	# ROM: 0x25920C
	.4byte 0xFFFFFFFF

.global lbl_80659ED0
lbl_80659ED0:

	# ROM: 0x259210
	.4byte s_CBase_8065bd50
	.4byte 0

.global lbl_80659ED8
lbl_80659ED8:

	# ROM: 0x259218
	.4byte s_CGame_8065bd48
	.4byte lbl_8020FC74

.global lbl_80659EE0
lbl_80659EE0:

	# ROM: 0x259220
	.4byte s_CInterfaceInterpolation_801fdb48
	.4byte 0

.global lbl_80659EE8
lbl_80659EE8:

	# ROM: 0x259228
	.4byte s_CInterpolationNone_801fdb34
	.4byte lbl_8020FD40

.global lbl_80659EF0
lbl_80659EF0:

	# ROM: 0x259230
	.4byte s_CInterfaceVectorInterpolation_801fdb7c
	.4byte 0

.global lbl_80659EF8
lbl_80659EF8:

	# ROM: 0x259238
	.4byte s_CVectorNoneInterpolation_801fdb60
	.4byte lbl_8020FD68

.global lbl_80659F00
lbl_80659F00:

	# ROM: 0x259240
	.4byte s_CInterfaceCameraAction_801fdbb4
	.4byte 0

.global lbl_80659F08
lbl_80659F08:

	# ROM: 0x259248
	.4byte s_CCameraActionAreaExM_801fdb9c
	.4byte lbl_8020FD90

.global lbl_80659F10
lbl_80659F10:

	# ROM: 0x259250
	.4byte s_CamAreaInfo_801fdbcc
	.4byte 0

.global lbl_80659F18
lbl_80659F18:

	# ROM: 0x259258
	.4byte s_CVectorLinearInterpolation_801fdbd8
	.4byte lbl_8020FE28

.global lbl_80659F20
lbl_80659F20:

	# ROM: 0x259260
	.4byte s_CVectorEaseInOutInterpolation_801fdbf4
	.4byte lbl_8020FE50

.global lbl_80659F28
lbl_80659F28:

	# ROM: 0x259268
	.4byte s_CVectorEaseOutInterpolation_801fdc14
	.4byte lbl_8020FE78

.global lbl_80659F30
lbl_80659F30:

	# ROM: 0x259270
	.4byte s_CVectorEaseOutDivideInterpolatio_801fdc30
	.4byte lbl_8020FEBC

.global lbl_80659F38
lbl_80659F38:

	# ROM: 0x259278
	.4byte s_CInterpolationLinear_801fdc54
	.4byte lbl_8020FEE4

.global lbl_80659F40
lbl_80659F40:

	# ROM: 0x259280
	.4byte s_CInterpolationEaseOutDivide_801fdc6c
	.4byte lbl_8020FF8C

.global lbl_80659F48
lbl_80659F48:

	# ROM: 0x259288
	.4byte s_CCameraActions_801fdc88
	.4byte 0

.global lbl_80659F50
lbl_80659F50:

	# ROM: 0x259290
	.4byte s_CCameraMemento_801fdc98
	.4byte 0

.global lbl_80659F58
lbl_80659F58:

	# ROM: 0x259298
	.4byte s_CMotionControlCamera_801fdca8
	.4byte 0

.global lbl_80659F60
lbl_80659F60:

	# ROM: 0x2592A0
	.4byte s_CMsgData_801fdcc0
	.4byte 0

.global lbl_80659F68
lbl_80659F68:

	# ROM: 0x2592A8
	.4byte s_CMsgFont_801fdccc
	.4byte 0

.global lbl_80659F70
lbl_80659F70:

	# ROM: 0x2592B0
	.4byte lbl_8065BEAC
	.4byte 0

.global lbl_80659F78
lbl_80659F78:

	# ROM: 0x2592B8
	.4byte lbl_801FDCE4
	.4byte 0

.global lbl_80659F80
lbl_80659F80:

	# ROM: 0x2592C0
	.4byte s_CObjArchive_801fdcd8
	.4byte lbl_8020FFFC

.global lbl_80659F88
lbl_80659F88:

	# ROM: 0x2592C8
	.4byte s_CGenerator_801fdcf0
	.4byte 0

.global lbl_80659F90
lbl_80659F90:

	# ROM: 0x2592D0
	.4byte s_MenuEx_8065beb4
	.4byte 0

.global lbl_80659F98
lbl_80659F98:

	# ROM: 0x2592D8
	.4byte lbl_8065BEC4
	.4byte 0

.global lbl_80659FA0
lbl_80659FA0:

	# ROM: 0x2592E0
	.4byte lbl_8065BEC8
	.4byte lbl_8021002C

.global lbl_80659FA8
lbl_80659FA8:

	# ROM: 0x2592E8
	.4byte s_CObjVec_8065bebc
	.4byte lbl_80210038

.global lbl_80659FB0
lbl_80659FB0:

	# ROM: 0x2592F0
	.4byte s_CJObj_8065bed0
	.4byte 0

.global lbl_80659FB8
lbl_80659FB8:

	# ROM: 0x2592F8
	.4byte s_CoordInfo_801fdd30
	.4byte 0

.global lbl_80659FC0
lbl_80659FC0:

	# ROM: 0x259300
	.4byte s_AttrInfo_801fdd3c
	.4byte 0

.global lbl_80659FC8
lbl_80659FC8:

	# ROM: 0x259308
	.4byte s_CAnmQueue_801fdd48
	.4byte 0

.global lbl_80659FD0
lbl_80659FD0:

	# ROM: 0x259310
	.4byte s_Title_8065bee8
	.4byte 0

.global lbl_80659FD8
lbl_80659FD8:

	# ROM: 0x259318
	.4byte lbl_801FDD60
	.4byte 0

.global lbl_80659FE0
lbl_80659FE0:

	# ROM: 0x259320
	.4byte s_CStopwatch_801fdd54
	.4byte lbl_802100D4

.global lbl_80659FE8
lbl_80659FE8:

	# ROM: 0x259328
	.4byte lbl_801FDD6C
	.4byte 0

.global lbl_80659FF0
lbl_80659FF0:

	# ROM: 0x259330
	.4byte s_CColor_8065bef0
	.4byte lbl_802100EC

.global lbl_80659FF8
lbl_80659FF8:

	# ROM: 0x259338
	.4byte s_CShadow_8065bef8
	.4byte 0

.global lbl_8065A000
lbl_8065A000:

	# ROM: 0x259340
	.4byte lbl_801FDD84
	.4byte 0

.global lbl_8065A008
lbl_8065A008:

	# ROM: 0x259348
	.4byte s_CGsChannel_801fdd78
	.4byte lbl_80210110

.global lbl_8065A010
lbl_8065A010:

	# ROM: 0x259350
	.4byte lbl_801FDD9C
	.4byte 0

.global lbl_8065A018
lbl_8065A018:

	# ROM: 0x259358
	.4byte s_CGsTevStage_801fdd90
	.4byte lbl_80210128

.global lbl_8065A020
lbl_8065A020:

	# ROM: 0x259360
	.4byte lbl_801FDDB8
	.4byte 0

.global lbl_8065A028
lbl_8065A028:

	# ROM: 0x259368
	.4byte s_CGsScreen_801fddac
	.4byte lbl_80210140

.global lbl_8065A030
lbl_8065A030:

	# ROM: 0x259370
	.4byte lbl_801FDDDC
	.4byte 0

.global lbl_8065A038
lbl_8065A038:

	# ROM: 0x259378
	.4byte s_CGsRenderMode_801fddcc
	.4byte lbl_80210158

.global lbl_8065A040
lbl_8065A040:

	# ROM: 0x259380
	.4byte lbl_801FDDE8
	.4byte 0

.global lbl_8065A048
lbl_8065A048:

	# ROM: 0x259388
	.4byte s_CLine_8065bf00
	.4byte lbl_80210170

.global lbl_8065A050
lbl_8065A050:

	# ROM: 0x259390
	.4byte s_CTriangle_801fddf4
	.4byte lbl_8021018C

.global lbl_8065A058
lbl_8065A058:

	# ROM: 0x259398
	.4byte s_CCube_8065bf08
	.4byte lbl_802101A8

.global lbl_8065A060
lbl_8065A060:

	# ROM: 0x2593A0
	.4byte s_COctahedron_801fde00
	.4byte lbl_802101C4

.global lbl_8065A068
lbl_8065A068:

	# ROM: 0x2593A8
	.4byte s_CDodeca_8065bf10
	.4byte lbl_802101E0

.global lbl_8065A070
lbl_8065A070:

	# ROM: 0x2593B0
	.4byte s_CIcosahedron_801fde0c
	.4byte lbl_802101FC

.global lbl_8065A078
lbl_8065A078:

	# ROM: 0x2593B8
	.4byte s_CSphere_8065bf18
	.4byte lbl_80210218

.global lbl_8065A080
lbl_8065A080:

	# ROM: 0x2593C0
	.4byte s_CCylinder_801fde1c
	.4byte lbl_80210234

.global lbl_8065A088
lbl_8065A088:

	# ROM: 0x2593C8
	.4byte s_CTorus_8065bf20
	.4byte lbl_80210250

.global lbl_8065A090
lbl_8065A090:

	# ROM: 0x2593D0
	.4byte lbl_8065BF28
	.4byte 0

.global lbl_8065A098
lbl_8065A098:

	# ROM: 0x2593D8
	.4byte s_CFont_8065bf2c
	.4byte 0

.global lbl_8065A0A0
lbl_8065A0A0:

	# ROM: 0x2593E0
	.4byte s_CPadEx_8065bf34
	.4byte 0

.global lbl_8065A0A8
lbl_8065A0A8:

	# ROM: 0x2593E8
	.4byte s_CStatus64_801fde28
	.4byte 0

.global lbl_8065A0B0
lbl_8065A0B0:

	# ROM: 0x2593F0
	.4byte s_CScrnColor_801fde44
	.4byte 0

.global lbl_8065A0B8
lbl_8065A0B8:

	# ROM: 0x2593F8
	.4byte lbl_801FDE50
	.4byte lbl_8021029C

.global lbl_8065A0C0
lbl_8065A0C0:

	# ROM: 0x259400
	.4byte s_CScrnWipeCircle_801fde34
	.4byte lbl_802102A8

.global lbl_8065A0C8
lbl_8065A0C8:

	# ROM: 0x259408
	.4byte s_CFbOutline_801fde5c
	.4byte 0

.global lbl_8065A0D0
lbl_8065A0D0:

	# ROM: 0x259410
	.4byte s_CFbBlur_8065bf3c
	.4byte 0

.global lbl_8065A0D8
lbl_8065A0D8:

	# ROM: 0x259418
	.4byte s_CFbTexEff_801fde68
	.4byte 0

.global lbl_8065A0E0
lbl_8065A0E0:

	# ROM: 0x259420
	.4byte s_CStatus_8065bf44
	.4byte 0

.global lbl_8065A0E8
lbl_8065A0E8:

	# ROM: 0x259428
	.4byte lbl_801FDE74
	.4byte 0

.global lbl_8065A0F0
lbl_8065A0F0:

	# ROM: 0x259430
	.4byte s_CTexObj_8065bf4c
	.4byte lbl_80210320

.global lbl_8065A0F8
lbl_8065A0F8:

	# ROM: 0x259438
	.4byte lbl_8065BF54
	.4byte 0

.global lbl_8065A100
lbl_8065A100:

	# ROM: 0x259440
	.4byte s_CScrnFade_801fde80
	.4byte lbl_80210344

.global lbl_8065A108
lbl_8065A108:

	# ROM: 0x259448
	.4byte s_InfoScrn_801fde8c
	.4byte 0

.global lbl_8065A110
lbl_8065A110:

	# ROM: 0x259450
	.4byte s_CParticle_801fde98
	.4byte 0

.global lbl_8065A118
lbl_8065A118:

	# ROM: 0x259458
	.4byte s_CScrnQuake_801fdea4
	.4byte 0

.global lbl_8065A120
lbl_8065A120:

	# ROM: 0x259460
	.4byte s_XOBJS_8065bf5c
	.4byte 0

.global lbl_8065A128
lbl_8065A128:

	# ROM: 0x259468
	.4byte s_CEvtData_801fdeb0
	.4byte 0

.global lbl_8065A130
lbl_8065A130:

	# ROM: 0x259470
	.4byte s_CStack_8065bf64
	.4byte 0

.global lbl_8065A138
lbl_8065A138:

	# ROM: 0x259478
	.4byte lbl_8065BF6C
	.4byte 0

.global lbl_8065A140
lbl_8065A140:

	# ROM: 0x259480
	.4byte s_CSound_8065bf74
	.4byte 0

.global lbl_8065A148
lbl_8065A148:

	# ROM: 0x259488
	.4byte s_XSound_8065bf7c
	.4byte lbl_802103CC

.global lbl_8065A150
lbl_8065A150:

	# ROM: 0x259490
	.4byte s_CCard_8065bf84
	.4byte 0

.global lbl_8065A158
lbl_8065A158:

	# ROM: 0x259498
	.4byte s_Memcard_8065bf8c
	.4byte 0

.global lbl_8065A160
lbl_8065A160:

	# ROM: 0x2594A0
	.4byte s_CMovie_8065bf94
	.4byte 0

.global lbl_8065A168
lbl_8065A168:

	# ROM: 0x2594A8
	.4byte s_FbSubwin_801fdebc
	.4byte lbl_80210408

.global lbl_8065A170
lbl_8065A170:

	# ROM: 0x2594B0
	.4byte s_FbMirror_801fdec8
	.4byte lbl_80210430

.global lbl_8065A178
lbl_8065A178:

	# ROM: 0x2594B8
	.4byte s_CThread_8065bf9c
	.4byte 0

.global lbl_8065A180
lbl_8065A180:

	# ROM: 0x2594C0
	.4byte s_FbMirrorEx_801fdee0
	.4byte lbl_802104B4

.global lbl_8065A188
lbl_8065A188:

	# ROM: 0x2594C8
	.4byte s_ARPreCache_801fdeec
	.4byte 0

.global lbl_8065A190
lbl_8065A190:

	# ROM: 0x2594D0
	.4byte s_ARCacheInfo_801fdef8
	.4byte 0

.global lbl_8065A198
lbl_8065A198:

	# ROM: 0x2594D8
	.4byte lbl_801FE2A0
	.4byte 0

.global lbl_8065A1A0
lbl_8065A1A0:

	# ROM: 0x2594E0
	.4byte lbl_8065C070
	.4byte lbl_80210748

.global lbl_8065A1A8
lbl_8065A1A8:

	# ROM: 0x2594E8
	.4byte s_CFileText_801fe294
	.4byte lbl_80210754

.global lbl_8065A1B0
lbl_8065A1B0:

	# ROM: 0x2594F0
	.4byte lbl_8065C078
	.4byte 0

.global lbl_8065A1B8
lbl_8065A1B8:

	# ROM: 0x2594F8
	.asciz "Read"
	.byte 0x30, 0x30, 0x30

.global lbl_8065A1C0
lbl_8065A1C0:

	# ROM: 0x259500
	.4byte 0x0000009C
	.4byte 0x0000009D

.global lbl_8065A1C8
lbl_8065A1C8:

	# ROM: 0x259508
	.4byte s_AnimSfx_8065c080
	.4byte 0

.global FLOAT_8065a1d0
FLOAT_8065a1d0:

	# ROM: 0x259510
	.4byte 0x43160000
	.4byte 0x43160000

.global FLOAT_8065a1d8
FLOAT_8065a1d8:

	# ROM: 0x259518
	.4byte 0
	.4byte 0

.global FLOAT_8065a1e0
FLOAT_8065a1e0:

	# ROM: 0x259520
	.4byte 0
	.4byte 0

.global FLOAT_8065a1e8
FLOAT_8065a1e8:

	# ROM: 0x259528
	.4byte 0
	.4byte 0

.global FLOAT_8065a1f0
FLOAT_8065a1f0:

	# ROM: 0x259530
	.4byte 0
	.4byte 0

.global FLOAT_8065a1f8
FLOAT_8065a1f8:

	# ROM: 0x259538
	.4byte 0
	.4byte 0

.global lbl_8065A200
lbl_8065A200:

	# ROM: 0x259540
	.4byte s_CScrnColor_801ff1e8
	.4byte 0

.global lbl_8065A208
lbl_8065A208:

	# ROM: 0x259548
	.4byte s_CScrnWipe_801ff1f4
	.4byte lbl_80211350

.global lbl_8065A210
lbl_8065A210:

	# ROM: 0x259550
	.4byte s_CScrnRoboeyes_801ff1d8
	.4byte lbl_8021135C

.global lbl_8065A218
lbl_8065A218:

	# ROM: 0x259558
	.4byte s_CScrnWipeCustom_801ff20c
	.4byte lbl_80211388

.global lbl_8065A220
lbl_8065A220:

	# ROM: 0x259560
	.4byte s_CScrnWipeTex_801ff21c
	.4byte lbl_802113B4

.global lbl_8065A228
lbl_8065A228:

	# ROM: 0x259568
	.4byte s_CScrnWipeTile_801ff22c
	.4byte lbl_802113E0

.global lbl_8065A230
lbl_8065A230:

	# ROM: 0x259570
	.4byte s_CPtclOne_801ff2e8
	.4byte 0

.global lbl_8065A238
lbl_8065A238:

	# ROM: 0x259578
	.4byte s_CPtclDust3_801ff2dc
	.4byte lbl_80211428

.global lbl_8065A240
lbl_8065A240:

	# ROM: 0x259580
	.4byte s_CPtclDust2_801ff2f4
	.4byte lbl_80211464

.global lbl_8065A248
lbl_8065A248:

	# ROM: 0x259588
	.4byte s_CJObj_8065c1f8
	.4byte 0

.global lbl_8065A250
lbl_8065A250:

	# ROM: 0x259590
	.4byte s_CXObj_8065c200
	.4byte lbl_80211488

.global lbl_8065A258
lbl_8065A258:

	# ROM: 0x259598
	.4byte s_CXObjIntp_801ff310
	.4byte lbl_80211494

.global lbl_8065A260
lbl_8065A260:

	# ROM: 0x2595A0
	.4byte lbl_8065C208
	.4byte lbl_802114A8

.global lbl_8065A268
lbl_8065A268:

	# ROM: 0x2595A8
	.4byte s_Cursor_8065c1f0
	.4byte lbl_802114C4

.global lbl_8065A270
lbl_8065A270:

	# ROM: 0x2595B0
	.4byte 0x00000003

.global lbl_8065A274
lbl_8065A274:

	# ROM: 0x2595B4
	.4byte 0x00000001

.global FLOAT_8065a278
FLOAT_8065a278:

	# ROM: 0x2595B8
	.4byte 0x41200000

.global lbl_8065A27C
lbl_8065A27C:

	# ROM: 0x2595BC
	.4byte s_CJObj_8065c2a4
	.4byte 0

.global lbl_8065A284
lbl_8065A284:

	# ROM: 0x2595C4
	.4byte s_CXObj_8065c2ac
	.4byte lbl_8021199C

.global lbl_8065A28C
lbl_8065A28C:

	# ROM: 0x2595CC
	.4byte s_CXObjIntp_801ff414
	.4byte lbl_802119A8

.global lbl_8065A294
lbl_8065A294:

	# ROM: 0x2595D4
	.4byte lbl_8065C2B4
	.4byte lbl_802119BC

.global lbl_8065A29C
lbl_8065A29C:

	# ROM: 0x2595DC
	.4byte s_XObjDemo_801ff408
	.4byte lbl_802119D8

.global lbl_8065A2A4
lbl_8065A2A4:

	# ROM: 0x2595E4
	.4byte lbl_801FF464
	.4byte 0

.global lbl_8065A2AC
lbl_8065A2AC:

	# ROM: 0x2595EC
	.4byte lbl_801FF470
	.4byte 0

.global lbl_8065A2B4
lbl_8065A2B4:

	# ROM: 0x2595F4
	.4byte lbl_8065C434
	.4byte 0

.global lbl_8065A2BC
lbl_8065A2BC:

	# ROM: 0x2595FC
	.4byte lbl_8065C438
	.4byte lbl_80211CC4
	.4byte 0x30303030

.global FLOAT_8065a2c8
FLOAT_8065a2c8:

	# ROM: 0x259608
	.4byte 0x41200000

.global lbl_8065A2CC
lbl_8065A2CC:

	# ROM: 0x25960C
	.4byte s_CMenu_8065c460
	.4byte 0

.global lbl_8065A2D4
lbl_8065A2D4:

	# ROM: 0x259614
	.4byte lbl_8065C468
	.4byte lbl_80212470

.global lbl_8065A2DC
lbl_8065A2DC:

	# ROM: 0x25961C
	.4byte s_MenuMCTestSub_80201388
	.4byte lbl_8021247C

.global lbl_8065A2E4
lbl_8065A2E4:

	# ROM: 0x259624
	.4byte lbl_8065C880
	.4byte 0

.global lbl_8065A2EC
lbl_8065A2EC:

	# ROM: 0x25962C
	.4byte lbl_8065C878
	.4byte lbl_802127CC

.global lbl_8065A2F4
lbl_8065A2F4:

	# ROM: 0x259634
	.4byte lbl_80201500
	.4byte 0

.global lbl_8065A2FC
lbl_8065A2FC:

	# ROM: 0x25963C
	.4byte s_MenuMCTest_80201518
	.4byte lbl_80212820

.global lbl_8065A304
lbl_8065A304:

	# ROM: 0x259644
	.4byte s_MenuStageSelect_80201524
	.4byte lbl_80212864

.global lbl_8065A30C
lbl_8065A30C:

	# ROM: 0x25964C
	.4byte s_MenuSave_80201534
	.4byte lbl_802128A8

.global lbl_8065A314
lbl_8065A314:

	# ROM: 0x259654
	.4byte s_MenuPC_8065c884
	.4byte lbl_802128EC

.global lbl_8065A31C
lbl_8065A31C:

	# ROM: 0x25965C
	.4byte s_MenuStatus_80201540
	.4byte lbl_80212930

.global lbl_8065A324
lbl_8065A324:

	# ROM: 0x259664
	.4byte s_MenuItem_8020154c
	.4byte lbl_80212974

.global lbl_8065A32C
lbl_8065A32C:

	# ROM: 0x25966C
	.4byte s_MenuMain_80201558
	.4byte lbl_802129B8

.global lbl_8065A334
lbl_8065A334:

	# ROM: 0x259674
	.4byte s_CJObj_8065c88c
	.4byte 0

.global lbl_8065A33C
lbl_8065A33C:

	# ROM: 0x25967C
	.4byte s_CXObj_8065c894
	.4byte lbl_80212A2C

.global lbl_8065A344
lbl_8065A344:

	# ROM: 0x259684
	.4byte s_CXObjIntp_80201570
	.4byte lbl_80212A38

.global lbl_8065A34C
lbl_8065A34C:

	# ROM: 0x25968C
	.4byte lbl_8065C89C
	.4byte lbl_80212A4C

.global lbl_8065A354
lbl_8065A354:

	# ROM: 0x259694
	.4byte s_Cursor_8065c8a4
	.4byte lbl_80212A68

.global lbl_8065A35C
lbl_8065A35C:

	# ROM: 0x25969C
	.4byte s_MenuCursor_80201564
	.4byte lbl_80212A8C
	.4byte 0x30303030

.global FLOAT_8065a368
FLOAT_8065a368:

	# ROM: 0x2596A8
	.4byte 0x3F800000

.global lbl_8065A36C
lbl_8065A36C:

	# ROM: 0x2596AC
	.4byte 0x03020100
	.4byte 0x030102FF

.global lbl_8065A374
lbl_8065A374:

	# ROM: 0x2596B4
	.4byte 0x00010203
	.4byte 0xFF303030

.global lbl_8065A37C
lbl_8065A37C:

	# ROM: 0x2596BC
	.4byte lbl_80201730

.global lbl_8065A380
lbl_8065A380:

	# ROM: 0x2596C0
	.4byte lbl_80201790

.global lbl_8065A384
lbl_8065A384:

	# ROM: 0x2596C4
	.4byte s_InfoPoint_80201ae0
	.4byte 0
	.4byte 0x30303030

.global lbl_8065A390
lbl_8065A390:

	# ROM: 0x2596D0
	.4byte lbl_80207F4C

.global lbl_8065A394
lbl_8065A394:

	# ROM: 0x2596D4
	.4byte s_Globals_8065cdec
	.4byte 0

.global lbl_8065A39C
lbl_8065A39C:

	# ROM: 0x2596DC
	.4byte lbl_80207F90
	.4byte 0

.global lbl_8065A3A4
lbl_8065A3A4:

	# ROM: 0x2596E4
	.4byte s_CModule_8065cdf4
	.4byte lbl_80224714

.global lbl_8065A3AC
lbl_8065A3AC:

	# ROM: 0x2596EC
	.4byte s_EnvInfo_8065cdfc
	.4byte 0

.global lbl_8065A3B4
lbl_8065A3B4:

	# ROM: 0x2596F4
	.4byte s_Stage_8065ce04
	.4byte 0
	.4byte 0x30303030

.global lbl_8065A3C0
lbl_8065A3C0:

	# ROM: 0x259700
	.4byte 0x00000080

.global s_Update_8065a3c4
s_Update_8065a3c4:

	# ROM: 0x259704
	.asciz "Update"
	.byte 0x30

.global s_EvalSet_8065a3cc
s_EvalSet_8065a3cc:

	# ROM: 0x25970C
	.asciz "EvalSet"

.global s_EvalCmp_8065a3d4
s_EvalCmp_8065a3d4:

	# ROM: 0x259714
	.asciz "EvalCmp"

.global lbl_8065A3DC
lbl_8065A3DC:

	# ROM: 0x25971C
	.4byte lbl_8065D028
	.4byte 0

.global lbl_8065A3E4
lbl_8065A3E4:

	# ROM: 0x259724
	.4byte lbl_8065D020
	.4byte lbl_80225318

.global lbl_8065A3EC
lbl_8065A3EC:

	# ROM: 0x25972C
	.4byte s_CEvtTimer_80208df0
	.4byte 0

.global lbl_8065A3F4
lbl_8065A3F4:

	# ROM: 0x259734
	.4byte s_CEvtQueue_80208e48
	.4byte 0

.global lbl_8065A3FC
lbl_8065A3FC:

	# ROM: 0x25973C
	.4byte s_CEvtQueueEx_80208e3c
	.4byte lbl_802253FC

.global lbl_8065A404
lbl_8065A404:

	# ROM: 0x259744
	.4byte lbl_80208E60
	.4byte 0

.global lbl_8065A40C
lbl_8065A40C:

	# ROM: 0x25974C
	.4byte s_CEvtVars_80208e54
	.4byte lbl_80225420

.global lbl_8065A414
lbl_8065A414:

	# ROM: 0x259754
	.4byte lbl_80208E78
	.4byte 0

.global lbl_8065A41C
lbl_8065A41C:

	# ROM: 0x25975C
	.4byte s_CEvtFlags_80208e6c
	.4byte lbl_80225438
	.4byte 0x30303030

.global lbl_8065A428
lbl_8065A428:

	# ROM: 0x259768
	.4byte 0x00000080
	.4byte 0x30303030

.global lbl_8065A430
lbl_8065A430:

	# ROM: 0x259770
	.4byte lbl_80209298
	.4byte 0

.global lbl_8065A438
lbl_8065A438:

	# ROM: 0x259778
	.4byte s_CJAnim_8065d160
	.4byte lbl_80225908

.global lbl_8065A440
lbl_8065A440:

	# ROM: 0x259780
	.4byte lbl_8065D228
	.4byte 0

.global lbl_8065A448
lbl_8065A448:

	# ROM: 0x259788
	.4byte lbl_8065D220
	.4byte lbl_80225930

.global lbl_8065A450
lbl_8065A450:

	# ROM: 0x259790
	.4byte s_CJObj_8065d234
	.4byte 0

.global lbl_8065A458
lbl_8065A458:

	# ROM: 0x259798
	.4byte s_CXObj_8065d23c
	.4byte lbl_80225948

.global lbl_8065A460
lbl_8065A460:

	# ROM: 0x2597A0
	.4byte s_CXObjIntp_802092d8
	.4byte lbl_80225954

.global lbl_8065A468
lbl_8065A468:

	# ROM: 0x2597A8
	.4byte lbl_8065D22C
	.4byte lbl_80225968

.global lbl_8065A470
lbl_8065A470:

	# ROM: 0x2597B0
	.4byte s_CJObj_8065d248
	.4byte 0

.global lbl_8065A478
lbl_8065A478:

	# ROM: 0x2597B8
	.4byte s_CXObj_8065d250
	.4byte lbl_80225B90

.global lbl_8065A480
lbl_8065A480:

	# ROM: 0x2597C0
	.4byte s_CXObjIntp_8020932c
	.4byte lbl_80225B9C

.global lbl_8065A488
lbl_8065A488:

	# ROM: 0x2597C8
	.4byte lbl_8065D258
	.4byte lbl_80225BB0

.global lbl_8065A490
lbl_8065A490:

	# ROM: 0x2597D0
	.4byte s_XObjCamera_80209320
	.4byte lbl_80225BCC

.global lbl_8065A498
lbl_8065A498:

	# ROM: 0x2597D8
	.4byte s_CJObj_8065d280
	.4byte 0

.global lbl_8065A4A0
lbl_8065A4A0:

	# ROM: 0x2597E0
	.4byte s_CXObj_8065d288
	.4byte lbl_80225D38

.global lbl_8065A4A8
lbl_8065A4A8:

	# ROM: 0x2597E8
	.4byte s_CXObjIntp_80209344
	.4byte lbl_80225D44

.global lbl_8065A4B0
lbl_8065A4B0:

	# ROM: 0x2597F0
	.4byte lbl_8065D290
	.4byte lbl_80225D58

.global lbl_8065A4B8
lbl_8065A4B8:

	# ROM: 0x2597F8
	.4byte s_XObjLight_80209338
	.4byte lbl_80225D74

.global lbl_8065A4C0
lbl_8065A4C0:

	# ROM: 0x259800
	.4byte s_CJObj_8065d2b0
	.4byte 0

.global lbl_8065A4C8
lbl_8065A4C8:

	# ROM: 0x259808
	.4byte s_CXObj_8065d2b8
	.4byte lbl_80225F14

.global lbl_8065A4D0
lbl_8065A4D0:

	# ROM: 0x259810
	.4byte s_CXObjIntp_80209350
	.4byte lbl_80225F20

.global lbl_8065A4D8
lbl_8065A4D8:

	# ROM: 0x259818
	.4byte lbl_8065D2C0
	.4byte lbl_80225F34

.global lbl_8065A4E0
lbl_8065A4E0:

	# ROM: 0x259820
	.4byte s_XObjMap_8065d2a8
	.4byte lbl_80225F50

.global lbl_8065A4E8
lbl_8065A4E8:

	# ROM: 0x259828
	.4byte s_CTrigon_8065d2d8
	.4byte 0

.global lbl_8065A4F0
lbl_8065A4F0:

	# ROM: 0x259830
	.4byte 0x008E2300
	.4byte 0xFF000000

.global lbl_8065A4F8
lbl_8065A4F8:

	# ROM: 0x259838
	.4byte s_OctaMenu_8020a2d4
	.4byte 0

.global lbl_8065A500
lbl_8065A500:

	# ROM: 0x259840
	.4byte s_DrsMenu_8065d354
	.4byte lbl_80227B0C

.global lbl_8065A508
lbl_8065A508:

	# ROM: 0x259848
	.4byte s_CJObj_8065d630
	.4byte 0

.global lbl_8065A510
lbl_8065A510:

	# ROM: 0x259850
	.4byte lbl_8020A47C
	.4byte 0

.global lbl_8065A518
lbl_8065A518:

	# ROM: 0x259858
	.4byte lbl_8065D640
	.4byte 0

.global lbl_8065A520
lbl_8065A520:

	# ROM: 0x259860
	.4byte lbl_8065D638
	.4byte lbl_80227E04

.global lbl_8065A528
lbl_8065A528:

	# ROM: 0x259868
	.4byte s_AtcMenu_8065d644
	.4byte lbl_80227E1C

.global lbl_8065A530
lbl_8065A530:

	# ROM: 0x259870
	.4byte s_CXObj_8065d654
	.4byte lbl_80227E88

.global lbl_8065A538
lbl_8065A538:

	# ROM: 0x259878
	.4byte s_CXObjIntp_8020a488
	.4byte lbl_80227E94

.global lbl_8065A540
lbl_8065A540:

	# ROM: 0x259880
	.4byte lbl_8065D65C
	.4byte lbl_80227EA8

.global lbl_8065A548
lbl_8065A548:

	# ROM: 0x259888
	.4byte s_XObjChr_8065d64c
	.4byte lbl_80227EC4

.global lbl_8065A550
lbl_8065A550:

	# ROM: 0x259890
	.4byte s_XAction_8065d664
	.4byte 0

.global lbl_8065A558
lbl_8065A558:

	# ROM: 0x259898
	.4byte s_XActLift_8020a4f4
	.4byte lbl_802280C4

.global lbl_8065A560
lbl_8065A560:

	# ROM: 0x2598A0
	.4byte s_XActHang_8020a500
	.4byte lbl_802280E0

.global lbl_8065A568
lbl_8065A568:

	# ROM: 0x2598A8
	.4byte s_XActJump_8020a50c
	.4byte lbl_802280FC

.global lbl_8065A570
lbl_8065A570:

	# ROM: 0x2598B0
	.4byte s_XActLadder_8020a518
	.4byte lbl_80228118

.global lbl_8065A578
lbl_8065A578:

	# ROM: 0x2598B8
	.4byte s_XActRope_8020a524
	.4byte lbl_80228134

.global lbl_8065A580
lbl_8065A580:

	# ROM: 0x2598C0
	.4byte s_XActPush_8020a530
	.4byte lbl_80228150

.global lbl_8065A588
lbl_8065A588:

	# ROM: 0x2598C8
	.4byte s_XActTumble_8020a53c
	.4byte lbl_8022816C

.global lbl_8065A590
lbl_8065A590:

	# ROM: 0x2598D0
	.4byte s_XActCopter_8020a548
	.4byte lbl_80228188

.global lbl_8065A598
lbl_8065A598:

	# ROM: 0x2598D8
	.4byte s_XActPopper_8020a554
	.4byte lbl_802281A4

.global lbl_8065A5A0
lbl_8065A5A0:

	# ROM: 0x2598E0
	.4byte s_XActRadar_8020a560
	.4byte lbl_802281D0

.global lbl_8065A5A8
lbl_8065A5A8:

	# ROM: 0x2598E8
	.4byte s_CJointRot_8020a56c
	.4byte 0

.global lbl_8065A5B0
lbl_8065A5B0:

	# ROM: 0x2598F0
	.4byte lbl_8020A578
	.4byte 0

.global lbl_8065A5B8
lbl_8065A5B8:

	# ROM: 0x2598F8
	.4byte s_Params_8065d66c
	.4byte lbl_80228218

.global lbl_8065A5C0
lbl_8065A5C0:

	# ROM: 0x259900
	.4byte lbl_8065D67C
	.4byte 0

.global lbl_8065A5C8
lbl_8065A5C8:

	# ROM: 0x259908
	.4byte lbl_8065D674
	.4byte lbl_80228230

.global lbl_8065A5D0
lbl_8065A5D0:

	# ROM: 0x259910
	.4byte s_OXMenu_8065d684
	.4byte 0

.global lbl_8065A5D8
lbl_8065A5D8:

	# ROM: 0x259918
	.4byte s_CPtcl_8065d68c
	.4byte 0

.global lbl_8065A5E0
lbl_8065A5E0:

	# ROM: 0x259920
	.4byte s_CJObj_8065d860
	.4byte 0

.global lbl_8065A5E8
lbl_8065A5E8:

	# ROM: 0x259928
	.4byte s_CXObj_8065d868
	.4byte lbl_80228520

.global lbl_8065A5F0
lbl_8065A5F0:

	# ROM: 0x259930
	.4byte s_CXObjIntp_8020a7f0
	.4byte lbl_8022852C

.global lbl_8065A5F8
lbl_8065A5F8:

	# ROM: 0x259938
	.4byte lbl_8065D870
	.4byte lbl_80228540

.global lbl_8065A600
lbl_8065A600:

	# ROM: 0x259940
	.4byte s_XObjAttachment_8020a7fc
	.4byte lbl_8022855C

.global lbl_8065A608
lbl_8065A608:

	# ROM: 0x259948
	.4byte s_XObjOX_8065d858
	.4byte lbl_80228580

.global lbl_8065A610
lbl_8065A610:

	# ROM: 0x259950
	.4byte s_XObjRadar_8020a87c
	.4byte lbl_80228700

.global lbl_8065A618
lbl_8065A618:

	# ROM: 0x259958
	.4byte s_XObjPopper_8020a888
	.4byte lbl_80228880

.global lbl_8065A620
lbl_8065A620:

	# ROM: 0x259960
	.4byte s_XObjCopter_8020a894
	.4byte lbl_80228A00

.global lbl_8065A628
lbl_8065A628:

	# ROM: 0x259968
	.4byte s_CJObj_8065d8b8
	.4byte 0

.global lbl_8065A630
lbl_8065A630:

	# ROM: 0x259970
	.4byte s_CXObj_8065d8c0
	.4byte lbl_80228CE4

.global lbl_8065A638
lbl_8065A638:

	# ROM: 0x259978
	.4byte s_CXObjIntp_8020a8cc
	.4byte lbl_80228CF0

.global lbl_8065A640
lbl_8065A640:

	# ROM: 0x259980
	.4byte lbl_8065D8C8
	.4byte lbl_80228D04

.global lbl_8065A648
lbl_8065A648:

	# ROM: 0x259988
	.4byte s_XObjWireEff_8020a8c0
	.4byte lbl_80228D20

.global lbl_8065A650
lbl_8065A650:

	# ROM: 0x259990
	.4byte s_XObjPlug_8020a90c
	.4byte lbl_80228E8C

.global lbl_8065A658
lbl_8065A658:

	# ROM: 0x259998
	.4byte s_CJObj_8065d9c0
	.4byte 0

.global lbl_8065A660
lbl_8065A660:

	# ROM: 0x2599A0
	.4byte s_CXObj_8065d9c8
	.4byte lbl_80229040

.global lbl_8065A668
lbl_8065A668:

	# ROM: 0x2599A8
	.4byte s_CXObjIntp_8020a924
	.4byte lbl_8022904C

.global lbl_8065A670
lbl_8065A670:

	# ROM: 0x2599B0
	.4byte lbl_8065D9D0
	.4byte lbl_80229060

.global lbl_8065A678
lbl_8065A678:

	# ROM: 0x2599B8
	.4byte s_XObjSound_8020a918
	.4byte lbl_8022907C

.global lbl_8065A680
lbl_8065A680:

	# ROM: 0x2599C0
	.4byte s_CJObj_8065d9f0
	.4byte 0

.global lbl_8065A688
lbl_8065A688:

	# ROM: 0x2599C8
	.4byte s_CXObj_8065d9f8
	.4byte lbl_802291F0

.global lbl_8065A690
lbl_8065A690:

	# ROM: 0x2599D0
	.4byte s_CXObjIntp_8020a990
	.4byte lbl_802291FC

.global lbl_8065A698
lbl_8065A698:

	# ROM: 0x2599D8
	.4byte lbl_8065DA00
	.4byte lbl_80229210

.global lbl_8065A6A0
lbl_8065A6A0:

	# ROM: 0x2599E0
	.4byte s_XObjFree_8020a984
	.4byte lbl_8022922C

.global lbl_8065A6A8
lbl_8065A6A8:

	# ROM: 0x2599E8
	.4byte s_XObjFlags_8020a9b4
	.4byte lbl_80229398

.global lbl_8065A6B0
lbl_8065A6B0:

	# ROM: 0x2599F0
	.4byte s_XObjDust_8020a9a8
	.4byte lbl_802293BC

.global lbl_8065A6B8
lbl_8065A6B8:

	# ROM: 0x2599F8
	.4byte s_XObjHBox_8020a9c0
	.4byte lbl_80229680

.global lbl_8065A6C0
lbl_8065A6C0:

	# ROM: 0x259A00
	.4byte s_XObjCoin_8020a9cc
	.4byte lbl_802297EC

.global lbl_8065A6C8
lbl_8065A6C8:

	# ROM: 0x259A08
	.4byte s_XObjItem_8020a9d8
	.4byte lbl_80229964

.global lbl_8065A6D0
lbl_8065A6D0:

	# ROM: 0x259A10
	.4byte lbl_80229B48
	.4byte lbl_80229B88

.global lbl_8065A6D8
lbl_8065A6D8:

	# ROM: 0x259A18
	.4byte s_CJObj_8065db20
	.4byte 0

.global lbl_8065A6E0
lbl_8065A6E0:

	# ROM: 0x259A20
	.4byte s_CXObj_8065db28
	.4byte lbl_8022A088

.global lbl_8065A6E8
lbl_8065A6E8:

	# ROM: 0x259A28
	.4byte s_CXObjIntp_8020aa48
	.4byte lbl_8022A094

.global lbl_8065A6F0
lbl_8065A6F0:

	# ROM: 0x259A30
	.4byte lbl_8065DB30
	.4byte lbl_8022A0A8

.global lbl_8065A6F8
lbl_8065A6F8:

	# ROM: 0x259A38
	.4byte s_XObjLeticker_8020aa38
	.4byte lbl_8022A0C4

.global lbl_8065A700
lbl_8065A700:

	# ROM: 0x259A40
	.4byte lbl_8065DC28
	.4byte 0

.global lbl_8065A708
lbl_8065A708:

	# ROM: 0x259A48
	.4byte lbl_8065DC2C
	.4byte lbl_8022A240

.global lbl_8065A710
lbl_8065A710:

	# ROM: 0x259A50
	.4byte lbl_8020AB30
	.4byte 0

.global lbl_8065A718
lbl_8065A718:

	# ROM: 0x259A58
	.4byte lbl_8020AB48
	.4byte lbl_8022A318

.global lbl_8065A720
lbl_8065A720:

	# ROM: 0x259A60
	.4byte s_CCameraActionLeticker_8020ab18
	.4byte lbl_8022A324

.global lbl_8065A728
lbl_8065A728:

	# ROM: 0x259A68
	.4byte s_CJObj_8065dc38
	.4byte 0

.global lbl_8065A730
lbl_8065A730:

	# ROM: 0x259A70
	.4byte s_CXObj_8065dc40
	.4byte lbl_8022A6EC

.global lbl_8065A738
lbl_8065A738:

	# ROM: 0x259A78
	.4byte s_CXObjIntp_8020ab9c
	.4byte lbl_8022A6F8

.global lbl_8065A740
lbl_8065A740:

	# ROM: 0x259A80
	.4byte lbl_8065DC48
	.4byte lbl_8022A70C

.global lbl_8065A748
lbl_8065A748:

	# ROM: 0x259A88
	.4byte s_XObjArmy_8020ab90
	.4byte lbl_8022A728

.global lbl_8065A750
lbl_8065A750:

	# ROM: 0x259A90
	.4byte lbl_8065DD1C
	.4byte 0

.global lbl_8065A758
lbl_8065A758:

	# ROM: 0x259A98
	.4byte lbl_8065DD20
	.4byte lbl_8022A92C

.global lbl_8065A760
lbl_8065A760:

	# ROM: 0x259AA0
	.4byte s_CJObj_8065dd28
	.4byte 0

.global lbl_8065A768
lbl_8065A768:

	# ROM: 0x259AA8
	.4byte s_CXObj_8065dd30
	.4byte lbl_8022ACC8

.global lbl_8065A770
lbl_8065A770:

	# ROM: 0x259AB0
	.4byte s_CXObjIntp_8020ad14
	.4byte lbl_8022ACD4

.global lbl_8065A778
lbl_8065A778:

	# ROM: 0x259AB8
	.4byte lbl_8065DD38
	.4byte lbl_8022ACE8

.global lbl_8065A780
lbl_8065A780:

	# ROM: 0x259AC0
	.4byte s_XObjSpider_8020ad08
	.4byte lbl_8022AD04

.global lbl_8065A788
lbl_8065A788:

	# ROM: 0x259AC8
	.4byte lbl_8065DE8C
	.4byte 0

.global lbl_8065A790
lbl_8065A790:

	# ROM: 0x259AD0
	.4byte lbl_8065DE90
	.4byte lbl_8022AFA4

.global lbl_8065A798
lbl_8065A798:

	# ROM: 0x259AD8
	.4byte lbl_8022B0F0
	.4byte lbl_8022B130

.global lbl_8065A7A0
lbl_8065A7A0:

	# ROM: 0x259AE0
	.4byte s_CJObj_8065de98
	.4byte 0

.global lbl_8065A7A8
lbl_8065A7A8:

	# ROM: 0x259AE8
	.4byte s_CXObj_8065dea0
	.4byte lbl_8022B2A8

.global lbl_8065A7B0
lbl_8065A7B0:

	# ROM: 0x259AF0
	.4byte s_CXObjIntp_8020ae84
	.4byte lbl_8022B2B4

.global lbl_8065A7B8
lbl_8065A7B8:

	# ROM: 0x259AF8
	.4byte lbl_8065DEA8
	.4byte lbl_8022B2C8

.global lbl_8065A7C0
lbl_8065A7C0:

	# ROM: 0x259B00
	.4byte s_XObjSpiderSmall_8020ae74
	.4byte lbl_8022B2E4

.global lbl_8065A7C8
lbl_8065A7C8:

	# ROM: 0x259B08
	.4byte lbl_8065E000
	.4byte 0

.global lbl_8065A7D0
lbl_8065A7D0:

	# ROM: 0x259B10
	.4byte lbl_8065E004
	.4byte lbl_8022B808

.global lbl_8065A7D8
lbl_8065A7D8:

	# ROM: 0x259B18
	.4byte s_CJObj_8065e010
	.4byte 0

.global lbl_8065A7E0
lbl_8065A7E0:

	# ROM: 0x259B20
	.4byte s_CXObj_8065e018
	.4byte lbl_8022BBB8

.global lbl_8065A7E8
lbl_8065A7E8:

	# ROM: 0x259B28
	.4byte s_CXObjIntp_8020b198
	.4byte lbl_8022BBC4

.global lbl_8065A7F0
lbl_8065A7F0:

	# ROM: 0x259B30
	.4byte lbl_8065E020
	.4byte lbl_8022BBD8

.global lbl_8065A7F8
lbl_8065A7F8:

	# ROM: 0x259B38
	.4byte s_XObjSpiderBoss_8020b188
	.4byte lbl_8022BBF4

.global lbl_8065A800
lbl_8065A800:

	# ROM: 0x259B40
	.4byte lbl_8065E0FC
	.4byte 0

.global lbl_8065A808
lbl_8065A808:

	# ROM: 0x259B48
	.4byte lbl_8065E100
	.4byte lbl_8022BE48

.global lbl_8065A810
lbl_8065A810:

	# ROM: 0x259B50
	.4byte s_CJObj_8065e108
	.4byte 0

.global lbl_8065A818
lbl_8065A818:

	# ROM: 0x259B58
	.4byte s_CXObj_8065e110
	.4byte lbl_8022BF30

.global lbl_8065A820
lbl_8065A820:

	# ROM: 0x259B60
	.4byte s_CXObjIntp_8020b320
	.4byte lbl_8022BF3C

.global lbl_8065A828
lbl_8065A828:

	# ROM: 0x259B68
	.4byte lbl_8065E118
	.4byte lbl_8022BF50

.global lbl_8065A830
lbl_8065A830:

	# ROM: 0x259B70
	.4byte s_XObjActor_8020b314
	.4byte lbl_8022BF6C

.global lbl_8065A838
lbl_8065A838:

	# ROM: 0x259B78
	.4byte s_CJObj_8065e1b0
	.4byte 0

.global lbl_8065A840
lbl_8065A840:

	# ROM: 0x259B80
	.4byte s_CXObj_8065e1b8
	.4byte lbl_8022C420

.global lbl_8065A848
lbl_8065A848:

	# ROM: 0x259B88
	.4byte s_CXObjIntp_8020b5f0
	.4byte lbl_8022C42C

.global lbl_8065A850
lbl_8065A850:

	# ROM: 0x259B90
	.4byte lbl_8065E1C0
	.4byte lbl_8022C440

.global lbl_8065A858
lbl_8065A858:

	# ROM: 0x259B98
	.4byte s_XObjActor3_8020b5e4
	.4byte lbl_8022C45C

.global lbl_8065A860
lbl_8065A860:

	# ROM: 0x259BA0
	.4byte lbl_8065E34C
	.4byte 0

.global lbl_8065A868
lbl_8065A868:

	# ROM: 0x259BA8
	.4byte lbl_8065E350
	.4byte lbl_8022C6D4

.global lbl_8065A870
lbl_8065A870:

	# ROM: 0x259BB0
	.4byte lbl_8020B6B8
	.4byte 0

.global lbl_8065A878
lbl_8065A878:

	# ROM: 0x259BB8
	.4byte s_CJObj_8065e420
	.4byte 0

.global lbl_8065A880
lbl_8065A880:

	# ROM: 0x259BC0
	.4byte s_CXObj_8065e428
	.4byte lbl_8022D004

.global lbl_8065A888
lbl_8065A888:

	# ROM: 0x259BC8
	.4byte s_CXObjIntp_8020bb2c
	.4byte lbl_8022D010

.global lbl_8065A890
lbl_8065A890:

	# ROM: 0x259BD0
	.4byte lbl_8065E430
	.4byte lbl_8022D024

.global lbl_8065A898
lbl_8065A898:

	# ROM: 0x259BD8
	.4byte s_XObjActor_8020bb38
	.4byte lbl_8022D040

.global lbl_8065A8A0
lbl_8065A8A0:

	# ROM: 0x259BE0
	.4byte s_XObjActorToy_8020bb1c
	.4byte lbl_8022D064

.global lbl_8065A8A8
lbl_8065A8A8:

	# ROM: 0x259BE8
	.4byte lbl_8065E53C
	.4byte 0

.global lbl_8065A8B0
lbl_8065A8B0:

	# ROM: 0x259BF0
	.4byte lbl_8065E540
	.4byte lbl_8022D288

.global lbl_8065A8B8
lbl_8065A8B8:

	# ROM: 0x259BF8
	.4byte s_CJObj_8065e548
	.4byte 0

.global lbl_8065A8C0
lbl_8065A8C0:

	# ROM: 0x259C00
	.4byte s_CXObj_8065e550
	.4byte lbl_8022D394

.global lbl_8065A8C8
lbl_8065A8C8:

	# ROM: 0x259C08
	.4byte s_CXObjIntp_8020bd80
	.4byte lbl_8022D3A0

.global lbl_8065A8D0
lbl_8065A8D0:

	# ROM: 0x259C10
	.4byte lbl_8065E558
	.4byte lbl_8022D3B4

.global lbl_8065A8D8
lbl_8065A8D8:

	# ROM: 0x259C18
	.4byte s_XObjActor_8020bd8c
	.4byte lbl_8022D3D0

.global lbl_8065A8E0
lbl_8065A8E0:

	# ROM: 0x259C20
	.4byte s_XObjActorJenny_8020bd70
	.4byte lbl_8022D3F4

.global lbl_8065A8E8
lbl_8065A8E8:

	# ROM: 0x259C28
	.4byte s_CJObj_8065e5d8
	.4byte 0

.global lbl_8065A8F0
lbl_8065A8F0:

	# ROM: 0x259C30
	.4byte s_CXObj_8065e5e0
	.4byte lbl_8022D5F4

.global lbl_8065A8F8
lbl_8065A8F8:

	# ROM: 0x259C38
	.4byte s_CXObjIntp_8020bf00
	.4byte lbl_8022D600

.global lbl_8065A900
lbl_8065A900:

	# ROM: 0x259C40
	.4byte lbl_8065E5E8
	.4byte lbl_8022D614

.global lbl_8065A908
lbl_8065A908:

	# ROM: 0x259C48
	.4byte s_XObjActor_8020bf0c
	.4byte lbl_8022D630

.global lbl_8065A910
lbl_8065A910:

	# ROM: 0x259C50
	.4byte s_XObjActorMama_8020bef0
	.4byte lbl_8022D654

.global lbl_8065A918
lbl_8065A918:

	# ROM: 0x259C58
	.4byte s_CJObj_8065e688
	.4byte 0

.global lbl_8065A920
lbl_8065A920:

	# ROM: 0x259C60
	.4byte s_CXObj_8065e690
	.4byte lbl_8022D830

.global lbl_8065A928
lbl_8065A928:

	# ROM: 0x259C68
	.4byte s_CXObjIntp_8020c0f0
	.4byte lbl_8022D83C

.global lbl_8065A930
lbl_8065A930:

	# ROM: 0x259C70
	.4byte lbl_8065E698
	.4byte lbl_8022D850

.global lbl_8065A938
lbl_8065A938:

	# ROM: 0x259C78
	.4byte s_XObjActor_8020c0fc
	.4byte lbl_8022D86C

.global lbl_8065A940
lbl_8065A940:

	# ROM: 0x259C80
	.4byte s_XObjActorPapa_8020c0e0
	.4byte lbl_8022D890

.global lbl_8065A948
lbl_8065A948:

	# ROM: 0x259C88
	.4byte s_CJObj_8065e728
	.4byte 0

.global lbl_8065A950
lbl_8065A950:

	# ROM: 0x259C90
	.4byte s_CXObj_8065e730
	.4byte lbl_8022DA78

.global lbl_8065A958
lbl_8065A958:

	# ROM: 0x259C98
	.4byte s_CXObjIntp_8020c22c
	.4byte lbl_8022DA84

.global lbl_8065A960
lbl_8065A960:

	# ROM: 0x259CA0
	.4byte lbl_8065E738
	.4byte lbl_8022DA98

.global lbl_8065A968
lbl_8065A968:

	# ROM: 0x259CA8
	.4byte s_XObjActor_8020c238
	.4byte lbl_8022DAB4

.global lbl_8065A970
lbl_8065A970:

	# ROM: 0x259CB0
	.4byte s_XObjActorTao_8020c21c
	.4byte lbl_8022DAD8

.global lbl_8065A978
lbl_8065A978:

	# ROM: 0x259CB8
	.4byte s_CJObj_8065e7a8
	.4byte 0

.global lbl_8065A980
lbl_8065A980:

	# ROM: 0x259CC0
	.4byte s_CXObj_8065e7b0
	.4byte lbl_8022DCC4

.global lbl_8065A988
lbl_8065A988:

	# ROM: 0x259CC8
	.4byte s_CXObjIntp_8020c370
	.4byte lbl_8022DCD0

.global lbl_8065A990
lbl_8065A990:

	# ROM: 0x259CD0
	.4byte lbl_8065E7B8
	.4byte lbl_8022DCE4

.global lbl_8065A998
lbl_8065A998:

	# ROM: 0x259CD8
	.4byte s_XObjActor_8020c37c
	.4byte lbl_8022DD00

.global lbl_8065A9A0
lbl_8065A9A0:

	# ROM: 0x259CE0
	.4byte s_XObjActorDeca_8020c360
	.4byte lbl_8022DD24

.global s_ReadAll_8065a9a8
s_ReadAll_8065a9a8:

	# ROM: 0x259CE8
	.asciz "ReadAll"

.global lbl_8065A9B0
lbl_8065A9B0:

	# ROM: 0x259CF0
	.4byte lbl_8065E820
	.4byte 0

.global lbl_8065A9B8
lbl_8065A9B8:

	# ROM: 0x259CF8
	.4byte s_XObjRead_8020c44c
	.4byte lbl_8022DF6C

.global lbl_8065A9C0
lbl_8065A9C0:

	# ROM: 0x259D00
	.4byte s_XObjReadAnm_8020c440
	.4byte lbl_8022DF78

.global lbl_8065A9C8
lbl_8065A9C8:

	# ROM: 0x259D08
	.4byte lbl_8020C510
	.4byte 0

.global lbl_8065A9D0
lbl_8065A9D0:

	# ROM: 0x259D10
	.4byte lbl_8065E89C
	.4byte 0

.global lbl_8065A9D8
lbl_8065A9D8:

	# ROM: 0x259D18
	.4byte lbl_8020C5C4
	.4byte 0

.global lbl_8065A9E0
lbl_8065A9E0:

	# ROM: 0x259D20
	.4byte lbl_8065E8A4
	.4byte 0

.global lbl_8065A9E8
lbl_8065A9E8:

	# ROM: 0x259D28
	.4byte lbl_8065E8AC
	.4byte 0

.global lbl_8065A9F0
lbl_8065A9F0:

	# ROM: 0x259D30
	.4byte lbl_8065E8B0
	.4byte lbl_8022E180

.global lbl_8065A9F8
lbl_8065A9F8:

	# ROM: 0x259D38
	.4byte s_CJObj_8065e8b8
	.4byte 0

.global lbl_8065AA00
lbl_8065AA00:

	# ROM: 0x259D40
	.4byte lbl_8020C634
	.4byte 0

.global lbl_8065AA08
lbl_8065AA08:

	# ROM: 0x259D48
	.4byte s_CXObj_8065e8c0
	.4byte lbl_8022E288

.global lbl_8065AA10
lbl_8065AA10:

	# ROM: 0x259D50
	.4byte s_CXObjIntp_8020c64c
	.4byte lbl_8022E294

.global lbl_8065AA18
lbl_8065AA18:

	# ROM: 0x259D58
	.4byte lbl_8065E8C8
	.4byte lbl_8022E2A8

.global lbl_8065AA20
lbl_8065AA20:

	# ROM: 0x259D60
	.4byte s_CMsgQueue_8020c670
	.4byte 0

.global lbl_8065AA28
lbl_8065AA28:

	# ROM: 0x259D68
	.4byte s_XObjReadOne_8020c67c
	.4byte lbl_8022E46C

.global lbl_8065AA30
lbl_8065AA30:

	# ROM: 0x259D70
	.4byte s_XObjReadAll_8020c688
	.4byte lbl_8022E4A0

.global lbl_8065AA38
lbl_8065AA38:

	# ROM: 0x259D78
	.4byte s_CInterfaceInterpolation_8020c6b0
	.4byte 0

.global lbl_8065AA40
lbl_8065AA40:

	# ROM: 0x259D80
	.4byte s_CInterpolationEaseOut_8020c698
	.4byte lbl_8022E4F8

.global lbl_8065AA48
lbl_8065AA48:

	# ROM: 0x259D88
	.4byte s_CInterpolationEaseInOut_8020c6c8
	.4byte lbl_8022E520

.global lbl_8065AA50
lbl_8065AA50:

	# ROM: 0x259D90
	.4byte s_CamInfo_8065e92c
	.4byte 0

.global lbl_8065AA58
lbl_8065AA58:

	# ROM: 0x259D98
	.4byte s_CCameraActionAreaEx_8020c7d4
	.4byte 0

.global lbl_8065AA60
lbl_8065AA60:

	# ROM: 0x259DA0
	.4byte lbl_8020C7FC
	.4byte 0

.global lbl_8065AA68
lbl_8065AA68:

	# ROM: 0x259DA8
	.4byte lbl_8020C814
	.4byte lbl_8022E56C

.global lbl_8065AA70
lbl_8065AA70:

	# ROM: 0x259DB0
	.4byte s_CCameraActionArea_8020c7e8
	.4byte lbl_8022E578

.global s_Reset_8065aa78
s_Reset_8065aa78:

	# ROM: 0x259DB8
	.asciz "Reset"
	.byte 0x30, 0x30

.global s_Reset2_8065aa80
s_Reset2_8065aa80:

	# ROM: 0x259DC0
	.asciz "Reset2"
	.byte 0x30

.global lbl_8065AA88
lbl_8065AA88:

	# ROM: 0x259DC8
	.4byte 0

.global lbl_8065AA8C
lbl_8065AA8C:

	# ROM: 0x259DCC
	.4byte 0x00000001

.global s_Update_8065aa90
s_Update_8065aa90:

	# ROM: 0x259DD0
	.asciz "Update"
	.byte 0x30

.global lbl_8065AA98
lbl_8065AA98:

	# ROM: 0x259DD8
	.4byte lbl_8020C9B0
	.4byte 0

.global lbl_8065AAA0
lbl_8065AAA0:

	# ROM: 0x259DE0
	.4byte lbl_8020C9C8
	.4byte lbl_8022E648

.global lbl_8065AAA8
lbl_8065AAA8:

	# ROM: 0x259DE8
	.4byte s_CCameraActionMap_8020c99c
	.4byte lbl_8022E654

.global lbl_8065AAB0
lbl_8065AAB0:

	# ROM: 0x259DF0
	.4byte lbl_8020CE04
	.4byte 0

.global lbl_8065AAB8
lbl_8065AAB8:

	# ROM: 0x259DF8
	.4byte s_CCameraActionChase_8020cdf0
	.4byte lbl_8022E6F4

.global lbl_8065AAC0
lbl_8065AAC0:

	# ROM: 0x259E00
	.4byte lbl_8020CE34
	.4byte 0

.global lbl_8065AAC8
lbl_8065AAC8:

	# ROM: 0x259E08
	.4byte s_CCameraActionEvt_8020ce20
	.4byte lbl_8022E768

.global lbl_8065AAD0
lbl_8065AAD0:

	# ROM: 0x259E10
	.4byte lbl_8020CF7C
	.4byte 0

.global lbl_8065AAD8
lbl_8065AAD8:

	# ROM: 0x259E18
	.4byte s_CCameraActionScroll2_8020cf64
	.4byte lbl_8022E9A8

.global lbl_8065AAE0
lbl_8065AAE0:

	# ROM: 0x259E20
	.4byte lbl_8020CFCC
	.4byte 0

.global lbl_8065AAE8
lbl_8065AAE8:

	# ROM: 0x259E28
	.4byte s_CCameraActionEye_8020cfb8
	.4byte lbl_8022EA40

.global lbl_8065AAF0
lbl_8065AAF0:

	# ROM: 0x259E30
	.4byte s_CInterfaceCameraAction_8020cffc
	.4byte 0

.global lbl_8065AAF8
lbl_8065AAF8:

	# ROM: 0x259E38
	.4byte s_CCameraActionAnim_8020cfe8
	.4byte lbl_8022EAB0

.global lbl_8065AB00
lbl_8065AB00:

	# ROM: 0x259E40
	.4byte lbl_8020D02C
	.4byte 0

.global lbl_8065AB08
lbl_8065AB08:

	# ROM: 0x259E48
	.4byte lbl_8020D044
	.4byte lbl_8022EB30

.global lbl_8065AB10
lbl_8065AB10:

	# ROM: 0x259E50
	.4byte s_CCameraActionReset_8020d018
	.4byte lbl_8022EB3C

.global lbl_8065AB18
lbl_8065AB18:

	# ROM: 0x259E58
	.4byte s_CInterfaceCameraAction_8020d0c4
	.4byte 0

.global lbl_8065AB20
lbl_8065AB20:

	# ROM: 0x259E60
	.4byte s_CCameraActionScroll_8020d0b0
	.4byte lbl_8022EBD0

.global lbl_8065AB28
lbl_8065AB28:

	# ROM: 0x259E68
	.4byte s_CCameraActionLadr_8020d0dc
	.4byte lbl_8022EC40

.global lbl_8065AB30
lbl_8065AB30:

	# ROM: 0x259E70
	.4byte s_CCameraActionDefault_8020d0f0
	.4byte lbl_8022ECB4

.global s_Update_8065ab38
s_Update_8065ab38:

	# ROM: 0x259E78
	.asciz "Update"
	.byte 0x30

.global lbl_8065AB40
lbl_8065AB40:

	# ROM: 0x259E80
	.4byte s_std__exception_8020d988
	.4byte 0

.global lbl_8065AB48
lbl_8065AB48:

	# ROM: 0x259E88
	.4byte cPlayer__PostPhysicsUpdate_void__N27

.global lbl_8065AB4C
lbl_8065AB4C:

	# ROM: 0x259E8C
	.4byte zz_801513ec_

.global lbl_8065AB50
lbl_8065AB50:

	# ROM: 0x259E90
	.4byte 0xFFFFFFFE
	.4byte 0x30303030

.global lbl_8065AB58
lbl_8065AB58:

	# ROM: 0x259E98
	.4byte s_std__exception_8020da38
	.4byte 0

.global lbl_8065AB60
lbl_8065AB60:

	# ROM: 0x259EA0
	.4byte s_std__bad_exception_8020da24
	.4byte lbl_8022EF44

.global lbl_8065AB68
lbl_8065AB68:

	# ROM: 0x259EA8
	.4byte 0x00003030
	.4byte 0x30303030

.global lbl_8065AB70
lbl_8065AB70:

	# ROM: 0x259EB0
	.4byte 0x00000001
	.4byte 0x30303030

.global lbl_8065AB78
lbl_8065AB78:

	# ROM: 0x259EB8
	.4byte lbl_8020DC20

.global lbl_8065AB7C
lbl_8065AB7C:

	# ROM: 0x259EBC
	.4byte lbl_8020DC20

.global lbl_8065AB80
lbl_8065AB80:

	# ROM: 0x259EC0
	.4byte 0x7FFFFFFF

.global lbl_8065AB84
lbl_8065AB84:

	# ROM: 0x259EC4
	.4byte 0x00800000

.global lbl_8065AB88
lbl_8065AB88:

	# ROM: 0x259EC8
	.4byte 0x34000000
	.4byte 0x30303030

.global lbl_8065AB90
lbl_8065AB90:

	# ROM: 0x259ED0
	.4byte lbl_80303030
	.4byte 0x30303030

.global lbl_8065AB98
lbl_8065AB98:

	# ROM: 0x259ED8
	.4byte lbl_8022F740
	.4byte 0x30303030

.global lbl_8065ABA0
lbl_8065ABA0:

	# ROM: 0x259EE0
	.4byte lbl_8022F850
	.4byte 0x30303030

.global lbl_8065ABA8
lbl_8065ABA8:

	# ROM: 0x259EE8
	.4byte lbl_8022FA18

.global lbl_8065ABAC
lbl_8065ABAC:

	# ROM: 0x259EEC
	.asciz "%08x\n"
	.byte 0x30, 0x30

.global lbl_8065ABB4
lbl_8065ABB4:

	# ROM: 0x259EF4
	.4byte 0x25730A00

.global lbl_8065ABB8
lbl_8065ABB8:

	# ROM: 0x259EF8
	.4byte 0xFFFFFFFF
	.4byte 0x30303030

.global lbl_8065ABC0
lbl_8065ABC0:

	# ROM: 0x259F00
	.4byte 0xFFFFFFFF
	.4byte 0x30303030

.global lbl_8065ABC8
lbl_8065ABC8:

	# ROM: 0x259F08
	.4byte 0x000000F8

.global lbl_8065ABCC
lbl_8065ABCC:

	# ROM: 0x259F0C
	.4byte 0x0A003030

.global lbl_8065ABD0
lbl_8065ABD0:

	# ROM: 0x259F10
	.4byte 0x25640030
	.4byte 0x30303030

.global lbl_8065ABD8
lbl_8065ABD8:

	# ROM: 0x259F18
	.4byte 0x25730A00
	.4byte 0x30303030

.global lbl_8065ABE0
lbl_8065ABE0:

	# ROM: 0x259F20
	.4byte 0xFFFF3030
	.4byte 0x30303030

.global lbl_8065ABE8
lbl_8065ABE8:

	# ROM: 0x259F28
	.4byte DBClose_N90
	.4byte 0x30303030

.global lbl_8065ABF0
lbl_8065ABF0:

	# ROM: 0x259F30
	.4byte 0
	.4byte 0x3F800000

.global lbl_8065ABF8
lbl_8065ABF8:

	# ROM: 0x259F38
	.4byte 0x00000001
	.4byte 0x30303030

.global lbl_8065AC00
lbl_8065AC00:

	# ROM: 0x259F40
	.asciz "dvdfs.c"

.global lbl_8065AC08
lbl_8065AC08:

	# ROM: 0x259F48
	.4byte lbl_802314C0

.global lbl_8065AC0C
lbl_8065AC0C:

	# ROM: 0x259F4C
	.4byte 0x00000001

.global lbl_8065AC10
lbl_8065AC10:

	# ROM: 0x259F50
	.4byte DBClose_N91

.global lbl_8065AC14
lbl_8065AC14:

	# ROM: 0x259F54
	.asciz "dvd.c"
	.byte 0x30, 0x30

.global lbl_8065AC1C
lbl_8065AC1C:

	# ROM: 0x259F5C
	.4byte 0xFFFFFFFF

.global lbl_8065AC20
lbl_8065AC20:

	# ROM: 0x259F60
	.4byte lbl_80231690

.global lbl_8065AC24
lbl_8065AC24:

	# ROM: 0x259F64
	.4byte s__An_error_has_occurred__Turn_the_80231700

.global lbl_8065AC28
lbl_8065AC28:

	# ROM: 0x259F68
	.4byte 0x0A003030

.global lbl_8065AC2C
lbl_8065AC2C:

	# ROM: 0x259F6C
	.4byte 0x4F464600

.global lbl_8065AC30
lbl_8065AC30:

	# ROM: 0x259F70
	.4byte 0x4F4E0030
	.4byte 0x30303030

.global lbl_8065AC38
lbl_8065AC38:

	# ROM: 0x259F78
	.4byte lbl_80231AB0

.global lbl_8065AC3C
lbl_8065AC3C:

	# ROM: 0x259F7C
	.asciz "vi.c"
	.byte 0x30, 0x30, 0x30
	.4byte 0x30303030

.global lbl_8065AC48
lbl_8065AC48:

	# ROM: 0x259F88
	.4byte lbl_80231E98

.global lbl_8065AC4C
lbl_8065AC4C:

	# ROM: 0x259F8C
	.4byte 0x00000020

.global lbl_8065AC50
lbl_8065AC50:

	# ROM: 0x259F90
	.4byte 0xF0000000

.global lbl_8065AC54
lbl_8065AC54:

	# ROM: 0x259F94
	.4byte 0x00000300

.global lbl_8065AC58
lbl_8065AC58:

	# ROM: 0x259F98
	.4byte 0x00000005

.global lbl_8065AC5C
lbl_8065AC5C:

	# ROM: 0x259F9C
	.4byte SPEC2_MakeStatus

.global lbl_8065AC60
lbl_8065AC60:

	# ROM: 0x259FA0
	.4byte 0x41000000

.global lbl_8065AC64
lbl_8065AC64:

	# ROM: 0x259FA4
	.4byte 0x42000000

.global lbl_8065AC68
lbl_8065AC68:

	# ROM: 0x259FA8
	.4byte lbl_80231EF0
	.4byte 0x30303030

.global lbl_8065AC70
lbl_8065AC70:

	# ROM: 0x259FB0
	.4byte lbl_80231F38
	.4byte 0x30303030

.global lbl_8065AC78
lbl_8065AC78:

	# ROM: 0x259FB8
	.4byte lbl_80231F80
	.4byte 0x30303030

.global lbl_8065AC80
lbl_8065AC80:

	# ROM: 0x259FC0
	.4byte lbl_80231FC8
	.4byte 0x30303030

.global lbl_8065AC88
lbl_8065AC88:

	# ROM: 0x259FC8
	.4byte 0x1F003030
	.4byte 0x30303030

.global lbl_8065AC90
lbl_8065AC90:

	# ROM: 0x259FD0
	.4byte zz_8017cd24_

.global lbl_8065AC94
lbl_8065AC94:

	# ROM: 0x259FD4
	.4byte zz_8017cd4c_

.global lbl_8065AC98
lbl_8065AC98:

	# ROM: 0x259FD8
	.4byte lbl_80236270
	.4byte 0x30303030

.global lbl_8065ACA0
lbl_8065ACA0:

	# ROM: 0x259FE0
	.4byte lbl_80236430
	.4byte 0x30303030

.global lbl_8065ACA8
lbl_8065ACA8:

	# ROM: 0x259FE8
	.4byte 0x00000001
	.4byte 0x30303030

.global lbl_8065ACB0
lbl_8065ACB0:

	# ROM: 0x259FF0
	.2byte 0xFFFF

.global lbl_8065ACB2
lbl_8065ACB2:

	# ROM: 0x259FF2
	.byte 0x1C, 0x30
	.4byte 0x30303030

.global lbl_8065ACB8
lbl_8065ACB8:

	# ROM: 0x259FF8
	.4byte lbl_80236640
	.4byte 0x30303030

.global lbl_8065ACC0
lbl_8065ACC0:

	# ROM: 0x25A000
	.4byte 0x00040102

.global lbl_8065ACC4
lbl_8065ACC4:

	# ROM: 0x25A004
	.4byte 0x00080102

.global lbl_8065ACC8
lbl_8065ACC8:

	# ROM: 0x25A008
	.4byte 0x000C0102
	.4byte 0x30303030

.global lbl_8065ACD0
lbl_8065ACD0:

	# ROM: 0x25A010
	.4byte 0x80818283
	.4byte 0xA0A1A2A3

.global lbl_8065ACD8
lbl_8065ACD8:

	# ROM: 0x25A018
	.4byte 0x84858687
	.4byte 0xA4A5A6A7

.global lbl_8065ACE0
lbl_8065ACE0:

	# ROM: 0x25A020
	.4byte 0x88898A8B
	.4byte 0xA8A9AAAB

.global lbl_8065ACE8
lbl_8065ACE8:

	# ROM: 0x25A028
	.4byte 0x8C8D8E8F
	.4byte 0xACADAEAF

.global lbl_8065ACF0
lbl_8065ACF0:

	# ROM: 0x25A030
	.4byte 0x90919293
	.4byte 0xB0B1B2B3

.global lbl_8065ACF8
lbl_8065ACF8:

	# ROM: 0x25A038
	.4byte 0x94959697
	.4byte 0xB4B5B6B7

.global lbl_8065AD00
lbl_8065AD00:

	# ROM: 0x25A040
	.4byte 0x98999A9B
	.4byte 0xB8B9BABB

.global lbl_8065AD08
lbl_8065AD08:

	# ROM: 0x25A048
	.4byte 0x00040105
	.4byte 0x02063030

.global lbl_8065AD10
lbl_8065AD10:

	# ROM: 0x25A050
	.asciz "arc.c"
	.byte 0x30, 0x30

.global lbl_8065AD18
lbl_8065AD18:

	# ROM: 0x25A058
	.4byte lbl_8020E2F0

.global lbl_8065AD1C
lbl_8065AD1C:

	# ROM: 0x25A05C
	.4byte lbl_8020E390

.global lbl_8065AD20
lbl_8065AD20:

	# ROM: 0x25A060
	.4byte lbl_8020E7E8
	.4byte 0

.global lbl_8065AD28
lbl_8065AD28:

	# ROM: 0x25A068
	.4byte s_CCamera_8065f4f0
	.4byte lbl_80237638

.global lbl_8065AD30
lbl_8065AD30:

	# ROM: 0x25A070
	.4byte lbl_8020E7F8
	.4byte 0

.global lbl_8065AD38
lbl_8065AD38:

	# ROM: 0x25A078
	.4byte s_CLight_8065f558
	.4byte lbl_802376F0

.global lbl_8065AD40
lbl_8065AD40:

	# ROM: 0x25A080
	.4byte s_CPrimitive_8020ec8c
	.4byte 0

.global lbl_8065AD48
lbl_8065AD48:

	# ROM: 0x25A088
	.4byte s_CSprite_8065f638
	.4byte lbl_80237A08

.global lbl_8065AD50
lbl_8065AD50:

	# ROM: 0x25A090
	.4byte s_CTile_8065f660
	.4byte lbl_80237A24

.global lbl_8065AD58
lbl_8065AD58:

	# ROM: 0x25A098
	.4byte s_CCircle_8065f668
	.4byte lbl_80237A40

.global lbl_8065AD60
lbl_8065AD60:

	# ROM: 0x25A0A0
	.4byte s_CPadOne_8065f670
	.4byte 0

.global lbl_8065AD68
lbl_8065AD68:

	# ROM: 0x25A0A8
	.asciz "Init"
	.byte 0x30, 0x30, 0x30

.global s_ReadEx_8065ad70
s_ReadEx_8065ad70:

	# ROM: 0x25A0B0
	.asciz "ReadEx"
	.byte 0x30

.global lbl_8065AD78
lbl_8065AD78:

	# ROM: 0x25A0B8
	.4byte s_DVDFileInfo_8020ee48
	.4byte 0

.global lbl_8065AD80
lbl_8065AD80:

	# ROM: 0x25A0C0
	.4byte s_CFile_8065f6a8
	.4byte lbl_80258708

.global lbl_8065AD88
lbl_8065AD88:

	# ROM: 0x25A0C8
	.4byte s_CFileArchive_8020ee38
	.4byte lbl_80258714

.global lbl_8065AD90
lbl_8065AD90:

	# ROM: 0x25A0D0
	.4byte s_CFileA_8065f6bc
	.4byte lbl_80258750

.global lbl_8065AD98
lbl_8065AD98:

	# ROM: 0x25A0D8
	.4byte lbl_8020F020
	.4byte 0

.global lbl_8065ADA0
lbl_8065ADA0:

	# ROM: 0x25A0E0
	.4byte lbl_8065F6D0
	.4byte lbl_802587B8

.global lbl_8065ADA8
lbl_8065ADA8:

	# ROM: 0x25A0E8
	.4byte lbl_8065F6C8
	.4byte lbl_802587C4

.global s_Parse_8065adb0
s_Parse_8065adb0:

	# ROM: 0x25A0F0
	.asciz "Parse"
	.byte 0x30, 0x30

.global lbl_8065ADB8
lbl_8065ADB8:

	# ROM: 0x25A0F8
	.asciz "Init"
	.byte 0x30, 0x30, 0x30

.global lbl_8065ADC0
lbl_8065ADC0:

	# ROM: 0x25A100
	.4byte lbl_8065F6E8
	.4byte 0

.global lbl_8065ADC8
lbl_8065ADC8:

	# ROM: 0x25A108
	.4byte s_CXObj_8065f6f0
	.4byte lbl_8025886C

.global lbl_8065ADD0
lbl_8065ADD0:

	# ROM: 0x25A110
	.4byte s_CXObjIntp_8020f054
	.4byte lbl_80258878

.global lbl_8065ADD8
lbl_8065ADD8:

	# ROM: 0x25A118
	.4byte s_CJArchive_8020f0f4
	.4byte 0

.global lbl_8065ADE0
lbl_8065ADE0:

	# ROM: 0x25A120
	.4byte lbl_8020F120
	.4byte 0

.global lbl_8065ADE8
lbl_8065ADE8:

	# ROM: 0x25A128
	.4byte s__trigonChecker_8020f110
	.4byte lbl_80258A30

.global lbl_8065ADF0
lbl_8065ADF0:

	# ROM: 0x25A130
	.asciz "Read"
	.byte 0x30, 0x30, 0x30

.global lbl_8065ADF8
lbl_8065ADF8:

	# ROM: 0x25A138
	.4byte 0x000000FF
	.4byte 0x30303030

.global s_0000000_8065ae00
s_0000000_8065ae00:

	# ROM: 0x25A140
	.4byte 0x7B303030
	.4byte 0x30303030

.global s__8065ae08
s__8065ae08:

	# ROM: 0x25A148
	.4byte 0x00000001
	.4byte 0x30303030

.global lbl_8065AE10
lbl_8065AE10:

	# ROM: 0x25A150
	.asciz "dobj.c"
	.byte 0x30

.global lbl_8065AE18
lbl_8065AE18:

	# ROM: 0x25A158
	.4byte 0x00303030

.global lbl_8065AE1C
lbl_8065AE1C:

	# ROM: 0x25A15C
	.asciz "dobj"
	.byte 0x30, 0x30, 0x30
	.4byte 0x30303030

.global s_tev_c_8065ae28
s_tev_c_8065ae28:

	# ROM: 0x25A168
	.asciz "tev.c"
	.byte 0x30, 0x30

.global lbl_8065AE30
lbl_8065AE30:

	# ROM: 0x25A170
	.4byte 0x30003030
	.4byte 0x30303030

.global s_mobj_c_8065ae38
s_mobj_c_8065ae38:

	# ROM: 0x25A178
	.asciz "mobj.c"
	.byte 0x30

.global lbl_8065AE40
lbl_8065AE40:

	# ROM: 0x25A180
	.asciz "mobj"

.global lbl_8065AE45
lbl_8065AE45:

	# ROM: 0x25A185
	.byte 0xFF, 0x30, 0x30

.global lbl_8065AE48
lbl_8065AE48:

	# ROM: 0x25A188
	.asciz "list"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AE50
lbl_8065AE50:

	# ROM: 0x25A190
	.4byte 0x6D617400

.global lbl_8065AE54
lbl_8065AE54:

	# ROM: 0x25A194
	.asciz "tobj"
	.byte 0x30, 0x30, 0x30
	.4byte 0x30303030

.global s_aobj_c_8065ae60
s_aobj_c_8065ae60:

	# ROM: 0x25A1A0
	.asciz "aobj.c"
	.byte 0x30

.global lbl_8065AE68
lbl_8065AE68:

	# ROM: 0x25A1A8
	.4byte 0x6E657700

.global lbl_8065AE6C
lbl_8065AE6C:

	# ROM: 0x25A1AC
	.4byte 0x6F626A00

.global lbl_8065AE70
lbl_8065AE70:

	# ROM: 0x25A1B0
	.asciz "lobj.c"
	.byte 0x30

.global lbl_8065AE78
lbl_8065AE78:

	# ROM: 0x25A1B8
	.4byte 0x30003030

.global lbl_8065AE7C
lbl_8065AE7C:

	# ROM: 0x25A1BC
	.asciz "lobj.h"
	.byte 0x30

.global lbl_8065AE84
lbl_8065AE84:

	# ROM: 0x25A1C4
	.asciz "lobj"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AE8C
lbl_8065AE8C:

	# ROM: 0x25A1CC
	.4byte 0x6E657700

.global lbl_8065AE90
lbl_8065AE90:

	# ROM: 0x25A1D0
	.4byte 0x00303030

.global lbl_8065AE94
lbl_8065AE94:

	# ROM: 0x25A1D4
	.4byte 0x2A700030

.global lbl_8065AE98
lbl_8065AE98:

	# ROM: 0x25A1D8
	.4byte 0x00000280

.global lbl_8065AE9C
lbl_8065AE9C:

	# ROM: 0x25A1DC
	.4byte 0x000001E0

.global lbl_8065AEA0
lbl_8065AEA0:

	# ROM: 0x25A1E0
	.asciz "cobj.c"
	.byte 0x30

.global lbl_8065AEA8
lbl_8065AEA8:

	# ROM: 0x25A1E8
	.asciz "cobj"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AEB0
lbl_8065AEB0:

	# ROM: 0x25A1F0
	.4byte 0x30003030
	.4byte 0x30303030

.global s_fobj_c_8065aeb8
s_fobj_c_8065aeb8:

	# ROM: 0x25A1F8
	.asciz "fobj.c"
	.byte 0x30

.global lbl_8065AEC0
lbl_8065AEC0:

	# ROM: 0x25A200
	.4byte 0x6E657700
	.4byte 0x30303030

.global lbl_8065AEC8
lbl_8065AEC8:

	# ROM: 0x25A208
	.asciz "jobj.h"
	.byte 0x30

.global lbl_8065AED0
lbl_8065AED0:

	# ROM: 0x25A210
	.asciz "jobj"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AED8
lbl_8065AED8:

	# ROM: 0x25A218
	.asciz "jobj.c"
	.byte 0x30

.global lbl_8065AEE0
lbl_8065AEE0:

	# ROM: 0x25A220
	.4byte 0x6A700030

.global lbl_8065AEE4
lbl_8065AEE4:

	# ROM: 0x25A224
	.asciz "prev"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AEEC
lbl_8065AEEC:

	# ROM: 0x25A22C
	.4byte 0x65666600

.global lbl_8065AEF0
lbl_8065AEF0:

	# ROM: 0x25A230
	.asciz "robj"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AEF8
lbl_8065AEF8:

	# ROM: 0x25A238
	.4byte lbl_8065BA04

.global lbl_8065AEFC
lbl_8065AEFC:

	# ROM: 0x25A23C
	.4byte lbl_8065BA08

.global lbl_8065AF00
lbl_8065AF00:

	# ROM: 0x25A240
	.4byte lbl_8065BA10

.global lbl_8065AF04
lbl_8065AF04:

	# ROM: 0x25A244
	.asciz "jobj"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AF0C
lbl_8065AF0C:

	# ROM: 0x25A24C
	.4byte 0x78003030

.global lbl_8065AF10
lbl_8065AF10:

	# ROM: 0x25A250
	.asciz "jobj.h"
	.byte 0x30

.global lbl_8065AF18
lbl_8065AF18:

	# ROM: 0x25A258
	.4byte 0xFFFFFFFF

.global lbl_8065AF1C
lbl_8065AF1C:

	# ROM: 0x25A25C
	.4byte lbl_80236BE8

.global lbl_8065AF20
lbl_8065AF20:

	# ROM: 0x25A260
	.4byte 0x00000002

.global lbl_8065AF24
lbl_8065AF24:

	# ROM: 0x25A264
	.4byte 0x00040000

.global lbl_8065AF28
lbl_8065AF28:

	# ROM: 0x25A268
	.4byte 0x00000002

.global lbl_8065AF2C
lbl_8065AF2C:

	# ROM: 0x25A26C
	.4byte 0

.global lbl_8065AF30
lbl_8065AF30:

	# ROM: 0x25A270
	.asciz "addr"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AF38
lbl_8065AF38:

	# ROM: 0x25A278
	.asciz "video.c"

.global lbl_8065AF40
lbl_8065AF40:

	# ROM: 0x25A280
	.asciz "mtx.c"
	.byte 0x30, 0x30

.global lbl_8065AF48
lbl_8065AF48:

	# ROM: 0x25A288
	.4byte 0x76656300

.global lbl_8065AF4C
lbl_8065AF4C:

	# ROM: 0x25A28C
	.4byte 0x6D747800

.global lbl_8065AF50
lbl_8065AF50:

	# ROM: 0x25A290
	.asciz "util.c"
	.byte 0x30

.global lbl_8065AF58
lbl_8065AF58:

	# ROM: 0x25A298
	.4byte 0x30003030
	.4byte 0x30303030

.global s_data_8065af60
s_data_8065af60:

	# ROM: 0x25A2A0
	.asciz "data"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AF68
lbl_8065AF68:

	# ROM: 0x25A2A8
	.asciz "robj.c"
	.byte 0x30

.global lbl_8065AF70
lbl_8065AF70:

	# ROM: 0x25A2B0
	.asciz "jobj.h"
	.byte 0x30

.global lbl_8065AF78
lbl_8065AF78:

	# ROM: 0x25A2B8
	.asciz "jobj"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AF80
lbl_8065AF80:

	# ROM: 0x25A2C0
	.4byte 0x6F626A00

.global lbl_8065AF84
lbl_8065AF84:

	# ROM: 0x25A2C4
	.4byte 0x6E657700

.global lbl_8065AF88
lbl_8065AF88:

	# ROM: 0x25A2C8
	.4byte 0x00303030

.global s_rvalue_8065af8c
s_rvalue_8065af8c:

	# ROM: 0x25A2CC
	.asciz "rvalue"
	.byte 0x30
	.4byte 0x30303030

.global lbl_8065AF98
lbl_8065AF98:

	# ROM: 0x25A2D8
	.asciz "id.c"
	.byte 0x30, 0x30, 0x30

.global s_entry_8065afa0
s_entry_8065afa0:

	# ROM: 0x25A2E0
	.asciz "entry"
	.byte 0x30, 0x30

.global lbl_8065AFA8
lbl_8065AFA8:

	# ROM: 0x25A2E8
	.asciz "wobj.c"
	.byte 0x30

.global lbl_8065AFB0
lbl_8065AFB0:

	# ROM: 0x25A2F0
	.4byte 0x6A700030

.global lbl_8065AFB4
lbl_8065AFB4:

	# ROM: 0x25A2F4
	.asciz "wobj"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AFBC
lbl_8065AFBC:

	# ROM: 0x25A2FC
	.asciz "jobj.h"
	.byte 0x30

.global lbl_8065AFC4
lbl_8065AFC4:

	# ROM: 0x25A304
	.asciz "jobj"
	.byte 0x30, 0x30, 0x30
	.4byte 0x30303030

.global s_fog_c_8065afd0
s_fog_c_8065afd0:

	# ROM: 0x25A310
	.asciz "fog.c"
	.byte 0x30, 0x30

.global lbl_8065AFD8
lbl_8065AFD8:

	# ROM: 0x25A318
	.asciz "perf.c"
	.byte 0x30

.global lbl_8065AFE0
lbl_8065AFE0:

	# ROM: 0x25A320
	.asciz "n < 32"
	.byte 0x30

.global lbl_8065AFE8
lbl_8065AFE8:

	# ROM: 0x25A328
	.asciz "list.c"
	.byte 0x30

.global lbl_8065AFF0
lbl_8065AFF0:

	# ROM: 0x25A330
	.asciz "list"
	.byte 0x30, 0x30, 0x30

.global lbl_8065AFF8
lbl_8065AFF8:

	# ROM: 0x25A338
	.asciz "next"
	.byte 0x30, 0x30, 0x30

.global lbl_8065B000
lbl_8065B000:

	# ROM: 0x25A340
	.asciz "prev"
	.byte 0x30, 0x30, 0x30

.global lbl_8065B008
lbl_8065B008:

	# ROM: 0x25A348
	.asciz "hsd_obj"

.global lbl_8065B010
lbl_8065B010:

	# ROM: 0x25A350
	.4byte 0x00000001

.global lbl_8065B014
lbl_8065B014:

	# ROM: 0x25A354
	.4byte lbl_8065B010

.global lbl_8065B018
lbl_8065B018:

	# ROM: 0x25A358
	.4byte 0x00303030

.global s_stack_8065b01c
s_stack_8065b01c:

	# ROM: 0x25A35C
	.asciz "stack"
	.byte 0x30, 0x30
	.4byte 0x30303030

.global s_class_c_8065b028
s_class_c_8065b028:

	# ROM: 0x25A368
	.asciz "class.c"

.global lbl_8065B030
lbl_8065B030:

	# ROM: 0x25A370
	.asciz "hash.c"
	.byte 0x30

.global lbl_8065B038
lbl_8065B038:

	# ROM: 0x25A378
	.asciz "texp.c"
	.byte 0x30

.global lbl_8065B040
lbl_8065B040:

	# ROM: 0x25A380
	.asciz "texp"
	.byte 0x30, 0x30, 0x30

.global lbl_8065B048
lbl_8065B048:

	# ROM: 0x25A388
	.4byte 0x30003030

.global lbl_8065B04C
lbl_8065B04C:

	# ROM: 0x25A38C
	.asciz "desc"
	.byte 0x30, 0x30, 0x30

.global lbl_8065B054
lbl_8065B054:

	# ROM: 0x25A394
	.asciz "tevdesc"
	.4byte 0x30303030

.global s_l___num_8065b060
s_l___num_8065b060:

	# ROM: 0x25A3A0
	.asciz "l < num"

.global lbl_8065B068
lbl_8065B068:

	# ROM: 0x25A3A8
	.4byte 0x0007FF00

.global lbl_8065B06C
lbl_8065B06C:

	# ROM: 0x25A3AC
	.4byte 0

.global lbl_8065B070
lbl_8065B070:

	# ROM: 0x25A3B0
	.4byte 0x00303030
	.4byte 0x30303030

.global s_jobj_h_8065b078
s_jobj_h_8065b078:

	# ROM: 0x25A3B8
	.asciz "jobj.h"
	.byte 0x30

.global lbl_8065B080
lbl_8065B080:

	# ROM: 0x25A3C0
	.asciz "jobj"
	.byte 0x30, 0x30, 0x30

.global s_lastPP_8065b088
s_lastPP_8065b088:

	# ROM: 0x25A3C8
	.asciz "lastPP"
	.byte 0x30

.global lbl_8065B090
lbl_8065B090:

	# ROM: 0x25A3D0
	.4byte 0x01003030

.global lbl_8065B094
lbl_8065B094:

	# ROM: 0x25A3D4
	.asciz "jobj.h"
	.byte 0x30

.global lbl_8065B09C
lbl_8065B09C:

	# ROM: 0x25A3DC
	.asciz "jobj"
	.byte 0x30, 0x30, 0x30
	.4byte 0x30303030

.global lbl_8065B0A8
lbl_8065B0A8:

	# ROM: 0x25A3E8
	.4byte 0x00000002

.global lbl_8065B0AC
lbl_8065B0AC:

	# ROM: 0x25A3EC
	.4byte 0x0000001E

.global lbl_8065B0B0
lbl_8065B0B0:

	# ROM: 0x25A3F0
	.4byte 0x00000078

.global lbl_8065B0B4
lbl_8065B0B4:

	# ROM: 0x25A3F4
	.4byte 0x000000F0

.global lbl_8065B0B8
lbl_8065B0B8:

	# ROM: 0x25A3F8
	.4byte 0x0000014A

.global lbl_8065B0BC
lbl_8065B0BC:

	# ROM: 0x25A3FC
	.4byte 0x30003030

.global s_pid___0_8065b0c0
s_pid___0_8065b0c0:

	# ROM: 0x25A400
	.asciz "pid > 0"

.global lbl_8065B0C8
lbl_8065B0C8:

	# ROM: 0x25A408
	.4byte 0x00000001
	.4byte 0x30303030

.global lbl_8065B0D0
lbl_8065B0D0:

	# ROM: 0x25A410
	.4byte 0x00000004

.global lbl_8065B0D4
lbl_8065B0D4:

	# ROM: 0x25A414
	.4byte 0x30003030

.global lbl_8065B0D8
lbl_8065B0D8:

	# ROM: 0x25A418
	.4byte 0x64630030
	.4byte 0x30303030

.global lbl_8065B0E0
lbl_8065B0E0:

	# ROM: 0x25A420
	.4byte 0x00303030
	.4byte 0x30303030

.global s_synth_c_8065b0e8
s_synth_c_8065b0e8:

	# ROM: 0x25A428
	.asciz "synth.c"

.global lbl_8065B0F0
lbl_8065B0F0:

	# ROM: 0x25A430
	.4byte 0x70003030

.global lbl_8065B0F4
lbl_8065B0F4:

	# ROM: 0x25A434
	.4byte 0
	.4byte 0

.global lbl_8065B0FC
lbl_8065B0FC:

	# ROM: 0x25A43C
	.4byte 0x30003030

.global lbl_8065B100
lbl_8065B100:

	# ROM: 0x25A440
	.4byte 0xFC780000

.global lbl_8065B104
lbl_8065B104:

	# ROM: 0x25A444
	.4byte 0xFFFFFFFF

.global lbl_8065B108
lbl_8065B108:

	# ROM: 0x25A448
	.4byte 0x626D6200

.global lbl_8065B10C
lbl_8065B10C:

	# ROM: 0x25A44C
	.asciz "bmbnext"

.global lbl_8065B114
lbl_8065B114:

	# ROM: 0x25A454
	.4byte 0
	.4byte 0

.global FLOAT_8065b11c
FLOAT_8065b11c:

	# ROM: 0x25A45C
	.4byte 0x3F800000

.global s_entry_8065b120
s_entry_8065b120:

	# ROM: 0x25A460
	.asciz "entry"
	.byte 0x30, 0x30

.global lbl_8065B128
lbl_8065B128:

	# ROM: 0x25A468
	.4byte lbl_8025C1B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
