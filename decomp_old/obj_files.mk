INIT_O_FILES :=                                     \
    $(OBJ_DIR)/src/TRK/mem/TRK_memset.o \
    $(OBJ_DIR)/src/TRK/mem/TRK_memcpy.o \
    $(OBJ_DIR)/src/TRK/initTRK.o \
    $(OBJ_DIR)/src/TRK/mem/TRK_memfuncs.o \
    $(OBJ_DIR)/src/Dolphin/pad/initPad.o \
    $(OBJ_DIR)/src/Dolphin/runtime/_startGame.o \
    $(OBJ_DIR)/src/Dolphin/runtime/__ppc_eabi_init.o \
    

EXTAB_O_FILES :=                                    \
    $(OBJ_DIR)/asm/extab_.o

EXTABINDEX_O_FILES :=                               \
    $(OBJ_DIR)/asm/extabindex_.o

TEXT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/CGame/initCGame.o \
    $(OBJ_DIR)/src/TRK/custconn/CircleBuffer.o \
    $(OBJ_DIR)/src/unk_uns/J3DGraphBase/J3DTex.o \
    $(OBJ_DIR)/asm/TRK/TRK_updateData.o \
    $(OBJ_DIR)/asm/dolphin/os/OSExi.o \
    $(OBJ_DIR)/asm/dolphin/dvd/dvd.o \
    $(OBJ_DIR)/asm/CGame/initCGameUI.o \
    $(OBJ_DIR)/asm/CGame/initCGameData.o \
    $(OBJ_DIR)/asm/jsystem/J3D/J3D_Draw0.o \
    $(OBJ_DIR)/asm/render/renderScene.o \
    $(OBJ_DIR)/asm/dolphin/os/OSExi_close.o \
    $(OBJ_DIR)/asm/render/updateWorld.o \
    $(OBJ_DIR)/asm/nsn_msg_scene/demoOverlaySceneCreated.o \
    $(OBJ_DIR)/asm/m/handleFloats.o \
    $(OBJ_DIR)/asm/nw4hbm/TWB_getcharspace.o \
    $(OBJ_DIR)/asm/render/updateRenderSettings.o \
    $(OBJ_DIR)/asm/nsn_msg_scene/sceneCreated.o \
    $(OBJ_DIR)/asm/render/renderSceneLights.o \
    $(OBJ_DIR)/asm/CGame/CGameMain.o \
    $(OBJ_DIR)/asm/mtx/mtx.o \
    $(OBJ_DIR)/asm/CGame/resetGame.o \
    $(OBJ_DIR)/asm/text_0.o \
    $(OBJ_DIR)/asm/text_00.o \
    $(OBJ_DIR)/asm/text_1.o \
    $(OBJ_DIR)/asm/text_2.o \
    

CTORS_O_FILES :=                                    \
    $(OBJ_DIR)/asm/ctors.o

DTORS_O_FILES :=                                    \
    $(OBJ_DIR)/asm/dtors.o

RODATA_O_FILES :=                                   \
    $(OBJ_DIR)/asm/rodata.o

DATA_O_FILES :=                                     \
    $(OBJ_DIR)/asm/data.o

BSS_O_FILES :=                                      \
    $(OBJ_DIR)/asm/bss.o

SBSS_O_FILES :=                                      \
    $(OBJ_DIR)/asm/sbss.o
SBSS2_O_FILES :=                                      \
    $(OBJ_DIR)/asm/sbss2.o

SDATA_O_FILES :=                                    \
    $(OBJ_DIR)/asm/sdata.o

SDATA2_O_FILES :=                                   \
    $(OBJ_DIR)/asm/sdata2.o

       
#GROUP_0_FILES :=\
	$(BUILD_DIR)/asm/ctors.o\
	$(BUILD_DIR)/asm/dtors.o\
	$(BUILD_DIR)/asm/rodata.o\
	$(BUILD_DIR)/asm/bss.o\
	$(BUILD_DIR)/asm/sdata.o\
	$(BUILD_DIR)/asm/sbss.o\
	$(BUILD_DIR)/asm/sdata2.o\
