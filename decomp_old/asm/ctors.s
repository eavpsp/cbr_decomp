.include "macros.s"

.section .ctors, "wa"  # 0x801FD660 - 0x801FD6C0 ; 0x00000060


.global __init_cpp_exceptions_reference
__init_cpp_exceptions_reference:

	# ROM: 0x1FA660
	.4byte __init_cpp_exceptions
	.4byte initCGame
	.4byte InitializeData
	.4byte initMenuMain
	.4byte initInfoPointData
	.4byte initStageData
	.4byte initEventFlags
	.4byte InitThreads
	.4byte SetSceneFlags
	.4byte InitCCamerActionLeticker
	.4byte InitCStatus
	.4byte initPointers
	.4byte InitSlideMenu
	.4byte InitMorePointers
	.4byte SetIntroPointers
	.4byte SetEventMSG
	.4byte InitCCamActionAreaEX
	.4byte initCHeadTrack
	.4byte __sinit_GameTweaks_cpp
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
