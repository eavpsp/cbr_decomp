#ifndef _JSYSTEM_JGADGET_LIST_H
#define _JSYSTEM_JGADGET_LIST_H

#include "types.h"
#include "stl/iterator.h"
#include "JSystem/JGadget/allocator.h"

namespace JGadget {
template <typename Element, typename Allocator>
struct TList {
	struct iterator : std::iterator<std::input_iterator_tag, Element> {
		Element* mElement;
	};
	~TList() { } // unused/inlined

	// unused/inlined:
	void assign(u32, const Element&);
	TList& operator=(const TList& other);
};

struct TList_pointer_void : public TList<void*, TVoidAllocator> {
	TList_pointer_void(); // unused/inlined?
	TList_pointer_void(const TVoidAllocator& allocator);
	TList_pointer_void(u32, const void*&, const TVoidAllocator&); // unused/inlined
	~TList_pointer_void();

	void insert(iterator, void* const&);
	void erase(iterator);

	// unused/inlined:
	void insert(iterator, u32, void* const&);
	void erase(iterator, iterator);
	void remove(void* const&);
	void assign(u32, void* const&);
	void resize(u32, void* const&);
	void unique();
	TList_pointer_void& operator=(const TList_pointer_void& other);

	// not sure what goes in here vs what goes in TList (or things above that)
	u8 _00;    // _00, unknown
	u32 _04;   // _04, unknown
	void* _08; // _08, probably mNext? type unknown
	void* _0C; // _0C, probably mPrev? type unknown
};

template <typename Iterator, typename Value>
void findUpperBound_binary_current(Iterator, Iterator, Iterator, const Value&);

template <typename Iterator, typename Value, typename Predicate>
void findUpperBound_binary_current(Iterator, Iterator, Iterator, const Value&, Predicate);
} // namespace JGadget

#endif
