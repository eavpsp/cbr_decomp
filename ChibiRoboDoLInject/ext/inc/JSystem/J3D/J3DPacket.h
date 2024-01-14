#ifndef _JSYSTEM_J3D_J3DPACKET_H
#define _JSYSTEM_J3D_J3DPACKET_H

#include "Dolphin/mtx.h"
#include "JSystem/J3D/J3DDisplayListObj.h"
#include "JSystem/J3D/J3DShape.h"
#include "JSystem/J3D/J3DTypes.h"
#include "JSystem/JGadget/linklist.h"
#include "JSystem/JSupport/JSUList.h"
#include "JSystem/J3D/J3DDrawBuffer.h"
#include "types.h"

struct J3DTexMtxObj;
struct J3DTexture;
struct J3DMaterialAnm;
struct J3DShapePacket;
struct J3DMtxBuffer;
struct J3DModel;

inline u32 getDiffFlag_LightObjNum(u32 param_1) { return (param_1 & 0xf0) >> 4; }

inline u32 getDiffFlag_TexGenNum(u32 param_1) { return (param_1 & 0xf00) >> 8; }

inline int calcDifferedBufferSize_TexMtxSize(int param_1) { return param_1 * 0x35; }

inline int calcDifferedBufferSize_TexGenSize(int param_1) { return param_1 * 0x3d + 10; }

inline u32 getDiffFlag_TexNoNum(u32 param_1) { return (param_1 & 0xf0000) >> 0x10; }

inline int calcDifferedBufferSize_TexNoSize(int param_1) { return param_1 * 0x37; }

inline u32 calcDifferedBufferSize_TexNoAndTexCoordScaleSize(u32 param_1)
{
	u32 res = param_1 * 0x37;
	res += ((param_1 + 1) >> 1) * 0x37;
	return res;
}

inline u32 getDiffFlag_TevStageNum(u32 param_1) { return (param_1 & 0xf00000) >> 0x14; }

inline int calcDifferedBufferSize_TevStageSize(int param_1) { return param_1 * 10; }

inline int calcDifferedBufferSize_TevStageDirectSize(int param_1) { return param_1 * 5; }

struct J3DTexMtxObj {
	J3DTexMtxObj(u16 i)
	{
		mTexMtx    = new Mtx[i];
		_04        = new Mtx44[i];
		mTexGenNum = i;
	}
	Mtx& getMtx(u16 idx) { return mTexMtx[idx]; }

	Mtx* mTexMtx;   // _00, array of Mtxs
	Mtx44* _04;     // _04
	u16 mTexGenNum; // _08
};

// TODO: Could this use TLinkList?
struct J3DPacket {
	inline J3DPacket()
	    : mNextPacket(nullptr)
	    , mChildPacket(nullptr)
	    , mUserArea(0)
	{
	}

	virtual bool entry(J3DDrawBuffer*); // _08
	virtual void draw();                // _0C (weak)
	virtual ~J3DPacket();               // _10 (weak)

	void addChildPacket(J3DPacket*);

	J3DPacket* getNextPacket() const { return mNextPacket; }
	void setNextPacket(J3DPacket* i_packet) { mNextPacket = i_packet; }

	void drawClear()
	{
		mNextPacket  = nullptr;
		mChildPacket = nullptr;
	}

	void setUserArea(u32 area) { mUserArea = area; }

	// _00 = VTBL
	J3DPacket* mNextPacket;  // _04
	J3DPacket* mChildPacket; // _08
	u32 mUserArea;           // _0C
};

struct J3DDrawPacket : public J3DPacket {
	enum DrawPacketFlags {
		J3DDP_IsLocked = 0x1,
	};

	inline J3DDrawPacket()
	    : mFlags(0)
	    , mDisplayList(nullptr)
	    , mTexMtxObj(nullptr)
	{
	}

	virtual void draw();      // _0C
	virtual ~J3DDrawPacket(); // _10

	J3DErrType newDisplayList(u32);
	J3DErrType newSingleDisplayList(u32);

	bool checkFlag(u32 flag) const { return mFlags & flag; }
	void onFlag(u32 flag) { mFlags |= flag; }
	void offFlag(u32 flag) { mFlags &= ~flag; }
	void lock() { onFlag(J3DDP_IsLocked); }
	void unlock() { offFlag(J3DDP_IsLocked); }
	J3DTexMtxObj* getTexMtxObj() const { return mTexMtxObj; }
	bool isLocked() const { return checkFlag(J3DDP_IsLocked); }
	J3DDisplayListObj* getDisplayListObj() const { return mDisplayList; }

	void beginPatch() { mDisplayList->beginPatch(); }
	void endPatch() { mDisplayList->endPatch(); }

	// _00     = VTBL
	// _00-_10 = J3DPacket
	u32 mFlags;                      // _10
	u8 _14[0xC];                     // _14, unknown
	J3DDisplayListObj* mDisplayList; // _20
	J3DTexMtxObj* mTexMtxObj;        // _24
};

/**
 * @size{0x3C}
 */
struct J3DShapePacket : public J3DDrawPacket {
	J3DShapePacket();

	virtual void draw();       // _0C
	virtual ~J3DShapePacket(); // _10

	J3DErrType newDifferedDisplayList(u32 displayListFlag);
	J3DErrType newDifferedTexMtx(J3DTexDiffFlag);
	int calcDifferedBufferSize(u32);
	void drawFast();

	void setShape(J3DShape* pShape) { mShape = pShape; }
	void setModel(J3DModel* pModel) { mModel = pModel; }
	void setMtxBuffer(J3DMtxBuffer* pMtxBuffer) { mMtxBuffer = pMtxBuffer; }
	void setBaseMtxPtr(Mtx* pMtx) { mBaseMtxPtr = pMtx; }

	J3DShape* getShape() const { return mShape; }
	J3DModel* getModel() const { return mModel; }
	Mtx* getBaseMtxPtr() const { return mBaseMtxPtr; }

	// _00     = VTBL
	// _00-_28 = J3DDrawPacket
	J3DShape* mShape;         // _28
	J3DMtxBuffer* mMtxBuffer; // _2C
	Mtx* mBaseMtxPtr;         // _30
	u32 mDiffFlag;            // _34
	J3DModel* mModel;         // _38
};

/**
 * @size{0x40}
 */
struct J3DMatPacket : public J3DDrawPacket {
	enum MatPacketFlags {
		J3DMP_IsChanged = 0x80000000,
	};

	J3DMatPacket();

	virtual bool entry(J3DDrawBuffer* buffer)
	{
		sortFunc func = J3DDrawBuffer::sortFuncTable[buffer->mSortType];
		return (buffer->*func)(this);
	}                        // _08 (weak)
	virtual void draw();     // _0C
	virtual ~J3DMatPacket(); // _10

	void addShapePacket(J3DShapePacket*);
	void beginDiff();
	u32 endDiff();
	bool isSame(J3DMatPacket*) const;

	J3DMaterial* getMaterial() const { return mMaterial; }
	J3DShapePacket* getShapePacket() const { return mShapePacket; }
	void setShapePacket(J3DShapePacket* packet) { mShapePacket = packet; }
	void setInitShapePacket(J3DShapePacket* packet) { mInitShapePacket = packet; }
	bool isChanged() const { return mDiffFlag & J3DMP_IsChanged; }
	void setMaterialAnmID(J3DMaterialAnm* materialAnm) { mMaterialAnm = materialAnm; }
	bool isEnabled_Diff() const { return mInitShapePacket->getDisplayListObj() != nullptr; }

	// _00     = VTBL
	// _00-_28 = J3DDrawPacket
	J3DShapePacket* mInitShapePacket; // _28
	J3DShapePacket* mShapePacket;     // _2C
	J3DMaterial* mMaterial;           // _30
	u32 mDiffFlag;                    // _34
	J3DTexture* mTexture;             // _38
	J3DMaterialAnm* mMaterialAnm;     // _3C
};

#endif
