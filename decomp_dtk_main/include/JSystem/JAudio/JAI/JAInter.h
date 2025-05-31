#ifndef _JSYSTEM_JAI_JAINTER_H
#define _JSYSTEM_JAI_JAINTER_H

#include "JSystem/JAudio/JAI/JAInter/MoveParaSet.h"
#include "JSystem/JAudio/JAS/JASPortArgs.h"
#include "JSystem/JAudio/JAS/JASPortCmd.h"
#include "JSystem/JAudio/JAS/JASTrack.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JSupport/JSUList.h"
#include "types.h"
#include "Dolphin/mtx.h"

struct JAISequence;
struct JAISound;

namespace JAInter {
struct Actor;
struct DummyVec;
struct SeqUpdateData;
struct SoundInfo {
	u32 mFlag;     // _00
	u8 mPriority;  // _04
	u8 _05;        // _05
	u16 mOffsetNo; // _06
	u32 mPitch;    // _08
	union volume_t {
		u32 w;
		u8 c;
	} mVolume; // _0C
};

struct LinkSound {
	void init();
	JAISound* getSound();
	void releaseSound(JAISound*);

	// unused/inlined:
	void getFreeStartFirstObject();
	void getUsedEndFirstObject();

	JSUList<JAISound>* _00; // _00
	JSUList<JAISound>* _04; // _04
};

namespace SequenceMgr {
struct CustomHeapInfo {
	u32 _00; // _00, unknown
	u32 _04; // _04, unknown
};

typedef JAInter::SequenceMgr::CustomHeapInfo (*CustomHeapCallback)(u32, u16, JAISequence*);

void init();
void getArchiveName(char*);
void setArchivePointer(JKRArchive*);
JKRArchive* getArchivePointer();
void setCustomHeapCallback(CustomHeapCallback);
void processGFrameSequence();
void checkEntriedSeq();
void checkFadeoutSeq();
void checkStoppedSeq();
void checkPlayingSeq();
void checkStartedSeq();
void checkReadSeq();
void checkSeqWave();
void checkPlayingSeqTrack(u32);
void stopSeq(JAISequence*);
void checkDvdLoadArc(u32, u32);
void checkCustomDvdLoadArc(u32, u32);
void storeSeqBuffer(JAISequence**, JAInter::Actor*, u32, u32, u8, JAInter::SoundInfo*);
void releaseSeqBuffer(JAISequence*, u32);
SeqUpdateData* getPlayTrackInfo(u32);

// unused/inlined:
void checkPlayingSeqUpdateMultiplication(u32, u8, u32, JAInter::MoveParaSet*, u32*, u8, f32*);
void checkPlayingSeqUpdateAddition(u32, u8, u32, JAInter::MoveParaSet*, u32*, u8, f32*, f32);
void checkPlayingSeqUpdateTrack(u32, u32, JAInter::MoveParaSet*, u32*, u8, f32*);
void checkCustomDvdPreloadArc(u32, u32);
void stopPlayingSeq(u32);
void checkPlayingSoundTrack(u32);
void loadArcSeqData(u32, bool);
void loadCustomArcSeqData(u16, bool);

extern SeqUpdateData* seqTrackInfo;
extern JAISequence** FixSeqBufPointer;
extern LinkSound seqControl;
extern JKRArchive* arcPointer;
extern CustomHeapCallback customHeapCallback;

} // namespace SequenceMgr

struct Actor {
	inline Actor(void* vec1, Vec* vec2, Vec* vec3, u32 unk)
	{
		mObj  = vec1;
		mVec2 = vec2;
		mVec3 = vec3;
		mUnk  = unk;
		if (mVec2 == nullptr) {
			mFlag.boolView[0] = true;
		} else {
			mFlag.boolView[0] = true;
		}
	}

	void* mObj; // _00
	Vec* mVec2; // _04
	Vec* mVec3; // _08
	u32 mUnk;   // _0C (might be a pointer?)
	// bool mFlag; // _10
	union {
		bool boolView[4];
		u32 longView;
	} mFlag; // _10
};

struct Camera {
	inline Camera(Vec* vec1 = nullptr, Vec* vec2 = nullptr, Mtx* mtx = nullptr)
	{
		mVec1 = vec1;
		mVec2 = vec2;
		mMtx  = mtx;
	}

	Vec* mVec1; // _00
	Vec* mVec2; // _04
	Mtx* mMtx;  // _08
};

struct DummyObjectMgr {
	struct DummyObject {
		DummyObject* mPrev; // _00
		DummyObject* mNext; // _04
		JAISound* mSound;   // _08
		Vec _0C;            // _0C
		u32 mLifeTime;      // _18
	};

	static void init();
	static DummyObject* getPointer(u32 lifeTime);
	static void check();

	// Unused/inlined:
	void releasePointer(DummyVec*);

	static DummyObject* deadObjectFreePointer;
	static DummyObject* deadObjectUsedPointer;
	static DummyObject* deadObjectObject;
};

struct DummyVec {
};

struct HeapBlock {
	HeapBlock();

	u8 _00;    // _00
	void* _04; // _04
	int _08;   // _08
	u32 _0C;   // _0C
	int _10;   // _10
};

struct MuteBit {
	MuteBit();

	u8 _0 : 1; // JAInter::SystemInterface::outerInit breaks if this is bool.
	u8 _1 : 1;
	u8 _2 : 1;
};

struct PlayerParameter {
	/**  @fabricated */
	union PortArg {
		f32 f32;
		u32 u32;
		s16* ps16;
	};

	PlayerParameter();
	~PlayerParameter();

	JASTrack* _00; // _00
	union {
		PortArg asArray[11];
		JASPortArgs asStruct;
	} mPortArgs;    // _04
	JASPortCmd _30; // _30
};

struct SeParameter {
	SeParameter()
	    : _24()
	    , _124()
	    , _1A4()
	    , _224()
	    , _2A4()
	    , _324()
	    , _3A4()
	{
	}

	u8 _00[0x20];                // _00 - unknown
	s16 _20;                     // _20
	u8 _22[0x2];                 // _22 - possibly padding
	MoveParaSet _24[16];         // _24
	MoveParaSet _124[8];         // _124
	MoveParaSetInitHalf _1A4[8]; // _1A4
	MoveParaSet _224[8];         // _224
	MoveParaSetInitZero _2A4[8]; // _2A4
	MoveParaSetInitZero _324[8]; // _324
	MoveParaSet _3A4[8];         // _3A4
	f32* _424;                   // _424
	f32* _428;                   // _428
	f32* _42C;                   // _42C
	f32* _430;                   // _430
	u32 _434;                    // _434
	f32* _438;                   // _438
};

struct SeqUpdateData {
	SeqUpdateData();

	u8 _00;                 // _00 - unknown
	u8 _01;                 // _01 - unknown
	u8 _02;                 // _02
	u8 _03;                 // _03 - could be padding
	uint _04;               // _04
	int _08;                // _08
	f32 _0C;                // _0C
	f32 _10;                // _10
	f32 _14;                // _14
	f32 _18;                // _18
	f32 _1C;                // _1C
	f32 _20;                // _20
	f32* _24;               // _24
	f32* _28;               // _28
	f32* _2C;               // _2C
	f32* _30;               // _30
	f32* _34;               // _34
	u8 _38[8];              // _38 - unknown
	u8* _40;                // _40
	u32* _44;               // _44
	JAISequence* mSequence; // _48
	PlayerParameter* _4C;   // _4C - pointer to array of 33 parameters
};

struct SeqParameter : MoveParaSet {
	~SeqParameter();
	void init();

	// f32 _00;                  // _00
	// f32 _04;                  // _04 - tempo proportion?
	// f32 _08;                  // _08 - affected by tempo?
	// u32 _0C;                    // _0C
	MoveParaSet _10[16];       // _10
	MoveParaSet _110[20];      // _110
	MoveParaSet* _250;         // _250
	MoveParaSet* _254;         // _254
	MoveParaSet* _258;         // _258
	MoveParaSet* _25C;         // _25C
	MoveParaSet* _260;         // _260
	MoveParaSetInitHalf* _264; // _264
	MoveParaSet* _268;         // _268
	MoveParaSetInitZero* _26C; // _26C
	MoveParaSetInitZero* _270; // _270
	u16** _274;                // _274
	u8 _278;                   // _278 - auto heap index?
	u8 _279;                   // _279
	s16 _27A;                  // _27A
	u32 _27C;                  // _27C
	u32 _280;                  // _280 - from here to (and including) _2B0 might be an array...
	u32 _284;                  // _284
	u32 _288;                  // _288
	u32 _28C;                  // _28C
	u32 _290;                  // _290
	u32 _294;                  // _294
	u32 _298;                  // _298
	u32 _29C;                  // _29C
	u32 _2A0;                  // _2A0
	u32 _2A4;                  // _2A4
	u32 _2A8;                  // _2A8
	u32 _2AC;                  // _2AC
	u32 _2B0;                  // _2B0
	u32* _2B4;                 // _2B4
	u8* _2B8;                  // _2B8 - unknown pointer
	MuteBit* _2BC;             // _2BC
	SeqUpdateData* _2C0;       // _2C0
	JASTrack mTrack;           // _2C4
	JASOuterParam mOuterParam; // _62C
};

namespace SoundTable {
void init(u8*, u32);
SoundInfo* getInfoPointer(u32);
u32 getInfoFormat(u32);
void setInfoTrack(u32, u8);
u8 getCategotyMax(); // [sic]
u16 getSoundMax(u8);
void getSoundTablePointer();

extern u8 mVersion;
extern u8 mCategotyMax;
extern u16* mSoundMax;
extern u32 mDatasize;
extern SoundInfo** mPointerCategory;
extern u8* mAddress;
}; // namespace SoundTable

namespace SystemInterface {
BOOL checkFileExsistence(char*);
u8 checkSeqActiveFlag(JASTrack*);
JASTrack* trackToSeqp(JAISequence*, u8);
void setSeqPortargsF32(SeqUpdateData*, u32, u8, f32);
void setSeqPortargsU32(SeqUpdateData*, u32, u8, u32);
void rootInit(SeqUpdateData*);
void trackInit(SeqUpdateData*);
void outerInit(SeqUpdateData*, JASTrack*, u32, u16, u8);
void setSePortParameter(JASPortArgs*);

// unused/inlined:
void setSeqPortargsPS16(JAInter::SeqUpdateData*, u32, u8, s16*);
JASTrack* trackToSeqp(JASTrack*, u8, u32);
void setPortParameter(JASPortArgs*, JASTrack*, u32, u32);
void JAIouterP(void*);
void JAIouterSW(void*);
void setAudioFrameParameter(JASPortArgs*);

extern JASPortCmd systemPortCmd;
}; // namespace SystemInterface

void deleteTmpDVDFile(u8**);
void loadTmpDVDFile(char*, u8**);
u8* transInitDataFile(u8*, u32);
u32 routeToTrack(u32);
} // namespace JAInter

namespace JAInterface {
void* getAudioThreadPointer();
void* getDvdThreadPointer();
void setAudioThreadPauseFlag(bool);
}; // namespace JAInterface

#define IsJAISoundIDInUse(id)    (((id)&0x800) == 0)
#define IsJAISoundIDFree(id)     (((id)&0x800) == 1)
#define JAISoundID_TypeMask      0xC0000000
#define JAISoundID_Type_Se       0x00000000
#define JAISoundID_Type_Sequence 0x80000000
#define JAISoundID_Type_Stream   0xC0000000

#endif
