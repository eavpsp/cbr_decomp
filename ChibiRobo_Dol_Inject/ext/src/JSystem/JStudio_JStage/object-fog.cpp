#include "JSystem/JStage/TObject.h"
#include "JSystem/JStudio/TAdaptor.h"
#include "JSystem/JStudio/TVariableValue.h"
#include "JSystem/JStudio_JStage.h"
#include "types.h"

/*
    Generated from dpostproc

    .section .ctors, "wa"  # 0x80472F00 - 0x804732C0
    .4byte "__sinit_object-fog_cpp"

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global lbl_8049F820
    lbl_8049F820:
        .4byte 0x00000000
        .4byte 0x00000048
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000044
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000050
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x0000004C
        .4byte 0x00000000
    .global __vt__Q214JStudio_JStage12TAdaptor_fog
    __vt__Q214JStudio_JStage12TAdaptor_fog:
        .4byte 0
        .4byte 0
        .4byte __dt__Q214JStudio_JStage12TAdaptor_fogFv
        .4byte
   adaptor_do_prepare__Q214JStudio_JStage12TAdaptor_fogFPCQ27JStudio7TObject
        .4byte
   adaptor_do_begin__Q214JStudio_JStage12TAdaptor_fogFPCQ27JStudio7TObject
        .4byte
   adaptor_do_end__Q214JStudio_JStage12TAdaptor_fogFPCQ27JStudio7TObject .4byte
   adaptor_do_update__Q214JStudio_JStage12TAdaptor_fogFPCQ27JStudio7TObjectUl
        .4byte
   adaptor_do_data__Q214JStudio_JStage12TAdaptor_fogFPCQ27JStudio7TObjectPCvUlPCvUl
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
    .global
   "__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"
    "__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>":
        .4byte 0
        .4byte 0
        .4byte
   "__cl__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>CFfPQ27JStudio8TAdaptor"
        .4byte
   "__dt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>Fv"
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0

    .section .bss  # 0x804EFC20 - 0x8051467C
    .global saoVVOutput___Q214JStudio_JStage12TAdaptor_fog
    saoVVOutput___Q214JStudio_JStage12TAdaptor_fog:
        .skip 0x60
*/

namespace JStudio_JStage {

const TAdaptor_fog::TVVOutput TAdaptor_fog::saoVVOutput_[3]
    = { TVVOutput(4, &JStage::TFog::virtual_48, &JStage::TFog::virtual_44),
	    TVVOutput(5, &JStage::TFog::virtual_50, &JStage::TFog::virtual_4C), TVVOutput(-1, nullptr, nullptr) };

/**
 * @note Address: 0x80014134
 * @note Size: 0xA0
 */
TAdaptor_fog::TAdaptor_fog(const JStage::TSystem* system, JStage::TFog* fog)
    : JStudio::TAdaptor_fog()
    , mSystem(system)
    , mObject(fog)
{
}

/**
 * @note Address: 0x800141D4
 * @note Size: 0x78
 * __dt
 */
TAdaptor_fog::~TAdaptor_fog() { adaptor_do_end(nullptr); }

/**
 * @note Address: 0x8001424C
 * @note Size: 0x48
 */
void TAdaptor_fog::adaptor_do_prepare(const JStudio::TObject*)
{
	for (const TVVOutput* output = saoVVOutput_; output->mValueIndex != -1; output++) {
		_04[output->mValueIndex].setOutput(output);
	}
}

/**
 * @note Address: 0x80014294
 * @note Size: 0xF4
 */
void TAdaptor_fog::adaptor_do_begin(const JStudio::TObject*)
{
	mObject->setFlagOn(1);
	adaptor_setVariableValue_GXColor(sauVariableValue_4_COLOR_RGBA, mObject->JSGGetColor());
	for (const TVVOutput* output = saoVVOutput_; output->mValueIndex != -1; output++) {
		_04[output->mValueIndex].set(JStudio::TVariableValue::update_immediate_, 0, (mObject->*(output->mGetter))());
	}
}

/**
 * @note Address: 0x80014388
 * @note Size: 0x54
 */
void TAdaptor_fog::adaptor_do_end(const JStudio::TObject*) { mObject->setFlagOff(1); }

/**
 * @note Address: 0x800143DC
 * @note Size: 0x6C
 */
void TAdaptor_fog::adaptor_do_update(const JStudio::TObject*, u32)
{
	_GXColor color;
	adaptor_getVariableValue_GXColor(&color, sauVariableValue_4_COLOR_RGBA);
	mObject->JSGSetColor(color);
	mObject->JSGUpdate();
}

/**
 * @note Address: 0x80014448
 * @note Size: 0x34
 */
void TAdaptor_fog::adaptor_do_data(const JStudio::TObject* object, const void* p2, u32 p3, const void* p4, u32 p5)
{
	TAdaptor_object_::adaptor_data_(mObject, p2, p3, p4, p5);
}

/**
 * @note Address: 0x8001447C
 * @note Size: 0x228
 * sinit
 */
// void __sinit_object - fog_cpp()
// {
// 	/*
// 	stwu     r1, -0x80(r1)
// 	mflr     r0
// 	lis      r3, lbl_8049F820@ha
// 	lis      r4, __vt__Q37JStudio14TVariableValue7TOutput@ha
// 	stw      r0, 0x84(r1)
// 	lis      r5,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@ha
// 	lis      r12, lbl_804EFE68@ha
// 	li       r11, 4
// 	stw      r31, 0x7c(r1)
// 	addi     r31, r3, lbl_8049F820@l
// 	lis      r3, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@ha
// 	stw      r30, 0x78(r1)
// 	addi     r30, r12, lbl_804EFE68@l
// 	addi     r12, r5,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@l
// 	stw      r29, 0x74(r1)
// 	addi     r29, r4, __vt__Q37JStudio14TVariableValue7TOutput@l
// 	lis      r4,
// 	"__dt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>Fv"@ha
// 	addi     r5, r30, 0
// 	stwu     r29, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@l(r3)
// 	addi     r4, r4,
// 	"__dt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>Fv"@l
// 	lwz      r10, 0(r31)
// 	lwz      r9, 4(r31)
// 	lwz      r8, 8(r31)
// 	lwz      r7, 0xc(r31)
// 	lwz      r6, 0x10(r31)
// 	lwz      r0, 0x14(r31)
// 	stw      r29, 0x48(r1)
// 	stw      r12, 0x48(r1)
// 	stw      r11, 0x4c(r1)
// 	stw      r10, 0x50(r1)
// 	stw      r9, 0x54(r1)
// 	stw      r8, 0x58(r1)
// 	stw      r7, 0x5c(r1)
// 	stw      r6, 0x60(r1)
// 	stw      r0, 0x64(r1)
// 	stw      r12, 0(r3)
// 	stw      r11, 4(r3)
// 	stw      r10, 8(r3)
// 	stw      r9, 0xc(r3)
// 	stw      r8, 0x10(r3)
// 	stw      r7, 0x14(r3)
// 	stw      r6, 0x18(r3)
// 	stw      r0, 0x1c(r3)
// 	bl       __register_global_object
// 	lis      r4,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@ha
// 	addi     r3, r1, 0x48
// 	addi     r0, r4,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@l
// 	li       r4, 0
// 	stw      r0, 0x48(r1)
// 	bl       __dt__Q37JStudio14TVariableValue7TOutputFv
// 	lis      r4, __vt__Q37JStudio14TVariableValue7TOutput@ha
// 	lis      r3, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@ha
// 	addi     r29, r4, __vt__Q37JStudio14TVariableValue7TOutput@l
// 	lwz      r10, 0x18(r31)
// 	addi     r3, r3, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@l
// 	lwz      r9, 0x1c(r31)
// 	stwu     r29, 0x20(r3)
// 	li       r11, 5
// 	lwz      r8, 0x20(r31)
// 	lis      r5,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@ha
// 	lwz      r7, 0x24(r31)
// 	addi     r12, r5,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@l
// 	lwz      r6, 0x28(r31)
// 	lis      r4,
// 	"__dt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>Fv"@ha
// 	lwz      r0, 0x2c(r31)
// 	addi     r4, r4,
// 	"__dt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>Fv"@l
// 	stw      r29, 0x28(r1)
// 	addi     r5, r30, 0xc
// 	stw      r12, 0x28(r1)
// 	stw      r11, 0x2c(r1)
// 	stw      r10, 0x30(r1)
// 	stw      r9, 0x34(r1)
// 	stw      r8, 0x38(r1)
// 	stw      r7, 0x3c(r1)
// 	stw      r6, 0x40(r1)
// 	stw      r0, 0x44(r1)
// 	stw      r12, 0(r3)
// 	stw      r11, 4(r3)
// 	stw      r10, 8(r3)
// 	stw      r9, 0xc(r3)
// 	stw      r8, 0x10(r3)
// 	stw      r7, 0x14(r3)
// 	stw      r6, 0x18(r3)
// 	stw      r0, 0x1c(r3)
// 	bl       __register_global_object
// 	lis      r4,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@ha
// 	addi     r3, r1, 0x28
// 	addi     r0, r4,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@l
// 	li       r4, 0
// 	stw      r0, 0x28(r1)
// 	bl       __dt__Q37JStudio14TVariableValue7TOutputFv
// 	lis      r4, __vt__Q37JStudio14TVariableValue7TOutput@ha
// 	lis      r3,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@ha
// 	addi     r11, r4, __vt__Q37JStudio14TVariableValue7TOutput@l
// 	li       r9, -1
// 	stw      r11, 8(r1)
// 	addi     r10, r3,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@l
// 	lis      r4, __ptmf_null@ha
// 	lis      r3, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@ha
// 	stw      r10, 8(r1)
// 	addi     r8, r4, __ptmf_null@l
// 	lis      r4,
// 	"__dt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>Fv"@ha
// 	lwz      r7, 0(r8)
// 	stw      r9, 0xc(r1)
// 	addi     r3, r3, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@l
// 	addi     r4, r4,
// 	"__dt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>Fv"@l
// 	addi     r5, r30, 0x18
// 	lwz      r6, 4(r8)
// 	stw      r7, 0x10(r1)
// 	stw      r6, 0x14(r1)
// 	lwz      r0, 8(r8)
// 	stwu     r11, 0x40(r3)
// 	stw      r0, 0x18(r1)
// 	stw      r7, 0x1c(r1)
// 	stw      r6, 0x20(r1)
// 	stw      r0, 0x24(r1)
// 	stw      r10, 0(r3)
// 	stw      r9, 4(r3)
// 	stw      r7, 8(r3)
// 	stw      r6, 0xc(r3)
// 	stw      r0, 0x10(r3)
// 	stw      r7, 0x14(r3)
// 	stw      r6, 0x18(r3)
// 	stw      r0, 0x1c(r3)
// 	bl       __register_global_object
// 	lis      r4,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@ha
// 	addi     r3, r1, 8
// 	addi     r0, r4,
// 	"__vt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>"@l
// 	li       r4, 0
// 	stw      r0, 8(r1)
// 	bl       __dt__Q37JStudio14TVariableValue7TOutputFv
// 	lwz      r0, 0x84(r1)
// 	lwz      r31, 0x7c(r1)
// 	lwz      r30, 0x78(r1)
// 	lwz      r29, 0x74(r1)
// 	mtlr     r0
// 	addi     r1, r1, 0x80
// 	blr
// 	*/
// }

/**
 * @note Address: 0x800146A4
 * @note Size: 0x60
 * __dt__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>Fv
 */
// void TVariableValueOutput_object_<TAdaptor_fog, JStage::TFog>::~TVariableValueOutput_object_() { }

/**
 * @note Address: 0x80014704
 * @note Size: 0x30
 * __cl__Q214JStudio_JStage77TVariableValueOutput_object_<Q214JStudio_JStage12TAdaptor_fog,Q26JStage4TFog>CFfPQ27JStudio8TAdaptor
 */
// void TVariableValueOutput_object_<TAdaptor_fog, JStage::TFog>::operator()(f32, JStudio::TAdaptor*) const { }

} // namespace JStudio_JStage
