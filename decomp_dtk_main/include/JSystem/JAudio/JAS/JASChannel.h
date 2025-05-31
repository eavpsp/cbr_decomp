#ifndef _JSYSTEM_JAS_JASCHANNEL_H
#define _JSYSTEM_JAS_JASCHANNEL_H

#include "JSystem/JAudio/JAS/JASDsp.h"
#include "JSystem/JAudio/JAS/JASGenericMemPool.h"
#include "JSystem/JAudio/JAS/JASOscillator.h"
#include "JSystem/JSupport/JSUList.h"
#include "types.h"

struct JASDSPChannel;

struct JASChannel : JSULink<JASChannel>,
                    JASPoolAllocObject<JASChannel, JASCreationPolicy::NewFromRootHeap, JASThreadingModel::SingleThreaded> {
	typedef void Callback(u32, JASChannel*, JASDsp::TChannel*, void*);
	struct EffectOscParam {
	};
	struct PanVector {
		f32 x;
		f32 y;
		f32 z;
	};

	JASChannel(Callback*, void*);

	// virtual void _08() = 0; // _08
	// virtual void _0C() = 0; // _0C
	virtual ~JASChannel(); // _14 (weak)

	void setOscInit(int, const JASOscillator::Data*);
	void setMixConfig(int, u16);
	void directReleaseOsc(u16);
	void copyOsc(int, JASOscillator::Data*);
	void overwriteOsc(int, JASOscillator::Data*);
	void setKeySweepTarget(u8, u32);
	void setPauseFlag(bool);
	void setPanPower(f32, f32, f32);
	BOOL play();
	BOOL playForce();
	void release(u16);
	void updateEffectorParam(JASDsp::TChannel*, u16*, const EffectOscParam&);
	static s32 dspUpdateCallback(u32, JASDsp::TChannel*, void*);
	void initialUpdateDSPChannel(JASDsp::TChannel*);
	s32 updateDSPChannel(JASDsp::TChannel*);
	f32 calcEffect(const PanVector*, const PanVector*, u8);
	f32 calcPan(const PanVector*, const PanVector*, u8);
	void updateAutoMixer(JASDsp::TChannel*, f32, f32, f32, f32);
	void updateMixer(f32, f32, f32, f32, u16*);
	void sweepProc();
	void free();

	// unused/inlined:
	void effectOsc(int, JASChannel::EffectOscParam*);

	// vtable 1: _10
	// vtable 2: _14
	s32 _18;                // _18
	u8 _1C;                 // _1C
	JASDSPChannel* _20;     // _20
	Callback* _24;          // _24
	void* _28;              // _28
	u32 _2C;                // _2C
	JASOscillator _30[4];   // _30
	u16 _B0[1];             // _B0
	u16 _B2;                // _B2
	s16 _B4;                // _B4
	s16 _B6;                // _B6
	s16 _B8;                // _B8
	s16 _BA;                // _BA
	u16 _BC;                // _BC
	f32 _C0;                // _C0
	u32 _C4;                // _C4
	u32 _C8;                // _C8
	f32 _CC;                // _CC
	f32 _D0;                // _D0
	f32 _D4;                // _D4
	f32 _D8;                // _D8
	f32 _DC;                // _DC
	f32 _E0;                // _E0
	u8 _E4;                 // _E4
	const JASWaveInfo* _E8; // _E8
	void* _EC;              // _EC
	f32 _F0;                // _F0
	f32 _F4;                // _F4
	f32 _F8;                // _F8
	f32 _FC;                // _FC
	f32 _100;               // _100
	f32 _104;               // _104
	u8 _108;                // _108
	u8 _109;                // _109
	u8 _10A;                // _10A
	f32 _10C;               // _10C
	f32 _110;               // _110
	f32 _114;               // _114

	static const u8 calc_sw_table[27][3];
};

/**
 * @size = 0x4D
 */
struct JASChannelUpdater {
	JASChannelUpdater();

	void init();
	void initialUpdateChannel(JASChannel*, JASDsp::TChannel*);
	void updateChannel(JASChannel*, JASDsp::TChannel*);

	f32 _00;    // _00
	f32 _04;    // _04
	f32 _08;    // _08
	f32 _0C;    // _0C
	f32 _10;    // _10
	s16 _14;    // _14
	u16 _16[7]; // _16 - unknown
	s16 _24;    // _24
	u16 _26[3]; // _26 - unknown
	u8 _2C[8];  // _2C - unknown
	s16 _34;    // _34 - unknown
	u16 _36[6]; // _36
	u8 _42[6];  // _42 - unknown
	u8 _48;     // _48
	u8 _49;     // _49
	u8 _4A;     // _4A
	u8 _4B;     // _4B
	u8 _4C;     // _4C
};

#endif
