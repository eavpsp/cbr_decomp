#include "types.h"
#include "JSystem/JStudio/stb.h"
#include "JSystem/JGadget/binary.h"

namespace JStudio {
namespace stb {
namespace data {

/**
 * @note Address: N/A
 * @note Size: 0x50
 */
void toString_block(char*, u32)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x8000893C
 * @note Size: 0x4C
 * Matching!
 */
void TParse_TSequence::getData(TParse_TSequence::TData* data) const
{

	data->content = 0;
	data->next    = 0;
	int* filedata = (int*)stbData;
	u32 flag      = *(int*)stbData;
	data->type    = flag >> 0x18;
	data->param   = flag & 0xffffff;
	if (flag >> 0x18 == 0)
		return;
	int* next = filedata + 1;
	if (flag >> 0x18 <= 0x7f) {
		data->next = next;
		return;
	}
	data->content = next;
	data->next    = (u8*)next + (flag & 0xffffff);
}

/**
 * @note Address: 0x80008988
 * @note Size: 0x78
 * Matching!
 */
void TParse_TParagraph::getData(TParse_TParagraph::TData* data) const
{
	u32 block[1];
	u16* parse  = (u16*)JGadget::binary::parseVariableUInt_16_32_following(stbData, block, (u32*)data, 0);
	data->param = block[0];
	if (!block[0]) {
		data->content = nullptr;
		data->next    = parse;
	} else {
		data->content = parse;
		data->next    = parse + ((block[0] + 3) >> 1 & ~1);
	}
}

/**
 * @note Address: 0x80008A00
 * @note Size: 0x80
 * Matching!
 */
void TParse_TParagraph_data::getData(TParse_TParagraph_data::TData* data) const
{
	u8* set2;

	u8* filedata = (u8*)stbData;
	int dSize = data->dataSize = 0;
	data->_08                  = 0;
	data->fileCount            = nullptr;
	data->_10                  = nullptr;
	if (filedata == nullptr)
		return;
	u8 set       = *filedata;
	data->status = set & ~0x8;
	if (!set)
		return;
	set2     = (filedata + 1);
	int set3 = 1;
	if (set & 8) {
		set3 = *set2++;
	}
	data->_08       = set3;
	data->fileCount = (char*)set2;

	if (!(set & 7))
		return;
	dSize          = (gauDataSize_TEParagraph_data)[set &= 7];
	data->dataSize = dSize;
	data->_10      = (u8*)set2 + (dSize * set3);
}

} // namespace data
} // namespace stb
} // namespace JStudio
