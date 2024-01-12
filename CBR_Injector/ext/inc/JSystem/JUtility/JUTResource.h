#ifndef _JSYSTEM_JUT_JUTRESOURCE_H
#define _JSYSTEM_JUT_JUTRESOURCE_H

#include "types.h"

struct JSUInputStream;
struct JKRArchive;

struct JUTResReference {
	enum ResType {
		RESTYPE_Null = 0,
		RESTYPE_Unk1 = 1,
		RESTYPE_Unk2 = 2,
		RESTYPE_Unk3 = 3,
		RESTYPE_Unk4 = 4,
	};

	JUTResReference() { mType = 0; }

	void* getResource(JSUInputStream*, u32, JKRArchive*);
	void* getResource(void const*, u32, JKRArchive*);
	void* getResource(u32, JKRArchive*);

	inline void setInfo(const u8& type, const u8& len)
	{
		mType       = type;
		mNameLength = len;
	}

	u8 mType;          // _00, see ResType enum
	u8 mNameLength;    // _01
	char mName[0x100]; // _02
};

#endif
