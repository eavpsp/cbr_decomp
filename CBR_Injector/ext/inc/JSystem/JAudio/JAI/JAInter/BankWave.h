#ifndef _JSYSTEM_JAI_JAINTER_BANKWAVE_H
#define _JSYSTEM_JAI_JAINTER_BANKWAVE_H

#include "types.h"

namespace JAInter {
namespace BankWave {

struct TCodeBnk {
	int* _00; // _00
	u32 _04;  // _04
	int _08;  // _08
};

struct TCodeWS {
	int* _00; // _00
	u32 _04;  // _04
	u32 _08;  // _08
};

extern TCodeBnk* initOnCodeBnk;
extern TCodeWS* initOnCodeWs;

inline void registWaveBanks()
{
	for (s32 i = 0; initOnCodeBnk[i]._00; i++) {
		if (initOnCodeBnk[i]._00) {
			JASBankMgr::registBankBNK(i, initOnCodeBnk[i]._00);
		}
	}
}

inline void assignWaveBanks()
{
	for (int i = 0; initOnCodeBnk[i]._00; i++) {
		JASBankMgr::assignWaveBank(i, initOnCodeBnk[i]._08);
	}
}

typedef void (*LoadCallback)();
typedef void (*InitCallback)();
typedef void (*SceneSetFinishCallback)(s32, s32);
void finishSceneSet(u32);
void init();
void loadFirstStayWave();
void loadGroupWave(s32, s32);
void loadSecondStayWave();
void setFirstLoadCallback(LoadCallback);
void setInitCallback(InitCallback);
void setSecondLoadCallback(LoadCallback);

// unused/inlined:
void setWsGroupNumber(s32, s32);
void setWsLoadStatus(s32, s32);
s32 getWsGroupNumber(s32);
s32 getWsLoadStatus(s32);
void readInitSoundData();
void setSceneSetFinishCallback(SceneSetFinishCallback);
void loadSceneWave(s32, s32);
void checkSceneWaveOnMemory(s32, s32);
s32 getWaveGroupNumber(s32);
s32 getWaveLoadStatus(s32);
void checkAllWaveLoadStatus();

extern union Flags {
	u8 asByte;
	struct {
		bool _7 : 1;
		bool _6 : 1;
	} asStruct;
} flags;
extern int SceneSetFlag;

extern InitCallback initCallback;
extern LoadCallback firstLoadCallback;
extern LoadCallback secondLoadCallback;
extern s32* wsGroupNumber;
extern s32* wsLoadStatus;
extern int wsMax;
} // namespace BankWave
} // namespace JAInter

#endif
