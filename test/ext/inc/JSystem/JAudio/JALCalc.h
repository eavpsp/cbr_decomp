#ifndef _JSYSTEM_JAL_JALCALC_H
#define _JSYSTEM_JAL_JALCALC_H

#include "Dolphin/vec.h"
#include "JSystem/JMath.h"
#include "types.h"

namespace JALCalc {
enum CurveSign {
	CS_0 = 0,
	CS_1 = 1,
};

extern const f32 cEqualCSlope;
extern const f32 cEqualPSlope;

f32 linearTransform(f32 x, f32 xStart, f32 xEnd, f32 yStart, f32 yEnd, bool doQuickCalc);
f32 getParamByExp(f32 x, f32 xStart, f32 xEnd, f32 y, f32 yStart, f32 yEnd, CurveSign curve);
f32 getRandom(f32, f32, f32);
f32 getRandom_0_1();
// {
// 	static JMath::TRandom_fast_ oRandom(0);
// 	u32 next = (oRandom.next() >> 9) | 0x3F800000;
// 	return *(f32*)(void*)&next - 1.0f;
// }

// Unused/inlined:
f32 getParamByExp_0_1(f32, f32, f32, f32, CurveSign);
f32 getRandom_Sign();
f32 pow2(f32);
int getRint(f32);
f32 getDist(Vec*, Vec*);
f32 getDistPow(Vec*, Vec*);
} // namespace JALCalc

#endif
