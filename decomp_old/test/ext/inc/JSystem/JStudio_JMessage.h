#ifndef _JSYSTEM_JSTUDIO_JMESSAGE_H
#define _JSYSTEM_JSTUDIO_JMESSAGE_H

#include "JSystem/JStudio/TAdaptor.h"
#include "JSystem/JStudio/TCreateObject.h"
#include "JSystem/JStudio/stb-data.h"
#include "JSystem/JMessage/TControl.h"

namespace JStudio_JMessage {
struct TCreateObject_base : JStudio::TCreateObject {
	virtual ~TCreateObject_base() = 0;                                                                       // _08
	virtual bool create(JStudio::TObject** newObject, const JStudio::stb::data::TParse_TBlock_object& data); // _0C
	virtual JMessage::TControl* find(const JStudio::stb::data::TParse_TBlock_object&) = 0;                   // _10
};
} // namespace JStudio_JMessage

namespace JStudio_JMessage {
struct TCreateObject : public TCreateObject_base {
	TCreateObject(JMessage::TControl* control) { mControl = control; }

	virtual ~TCreateObject();                                                          // _08
	virtual JMessage::TControl* find(const JStudio::stb::data::TParse_TBlock_object&); // _10

	JMessage::TControl* mControl; // _0C
};

struct TAdaptor_message : public JStudio::TAdaptor_message {
	virtual ~TAdaptor_message();                                                       // _08
	virtual void adaptor_do_MESSAGE(JStudio::data::TEOperationData, const void*, u32); // _20

	TAdaptor_message(JMessage::TControl*);
	JMessage::TControl* mControl; // _10
};
} // namespace JStudio_JMessage

#endif
