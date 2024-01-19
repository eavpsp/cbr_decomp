#include "JSystem/JUtility/JUTDirectPrint.h"
#include "JSystem/JUtility/JUTException.h"

// clang-format off
u8 JUTDirectPrint::sAsciiTable[0x80] = {
	0x7A, 0x7A, 0x7A, 0x7A,
	0x7A, 0x7A, 0x7A, 0x7A,
	0x7A, 0xFD, 0xFE, 0x7A,
	0x7A, 0x7A, 0x7A, 0x7A,
	0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0x29, 0x64, 0x65,
	0x66, 0x2B, 0x67, 0x68,
	0x25, 0x26, 0x69, 0x2A,
	0x6A, 0x27, 0x2C, 0x6B,
	 0x0,  0x1,  0x2,  0x3,
	 0x4,  0x5,  0x6,  0x7,
	 0x8,  0x9, 0x24, 0x6C,
	0x6D, 0x6E, 0x6F, 0x28,
	0x70,  0xA,  0xB,  0xC,
	 0xD,  0xE,  0xF, 0x10,
	0x11, 0x12, 0x13, 0x14,
	0x15, 0x16, 0x17, 0x18,
	0x19, 0x1A, 0x1B, 0x1C,
	0x1D, 0x1E, 0x1F, 0x20,
	0x21, 0x22, 0x23, 0x71,
	0x72, 0x73, 0x74, 0x75,
	0xFF, 0x7D, 0x7E, 0x7F,
	0x80, 0x81, 0x82, 0x83,
	0x84, 0x85, 0x86, 0x87,
	0x88, 0x89, 0x8A, 0x8B,
	0x8C, 0x8D, 0x8E, 0x8F,
	0x90, 0x91, 0x92, 0x93,
	0x94, 0x95, 0x96, 0x76,
	0x77, 0x78, 0x79, 0x7A
};

u32 JUTDirectPrint::sFontData[0x40] = {
	0x70871C30,    0x8988A250,    0x88808290,    0x88830C90,
	0x888402F8,    0x88882210,    0x71CF9C10,    0xF9CF9C70,
	0x8208A288,    0xF200A288,     0xBC11C78,     0xA222208,
	0x8A222208,    0x71C21C70,    0x23C738F8,    0x5228A480,
	0x8A282280,    0x8BC822F0,    0xFA282280,    0x8A28A480,
	0x8BC738F8,    0xF9C89C08,    0x82288808,    0x82088808,
	0xF2EF8808,    0x82288888,    0x82288888,    0x81C89C70,
	0x8A08A270,    0x920DA288,    0xA20AB288,    0xC20AAA88,
	0xA208A688,    0x9208A288,    0x8BE8A270,    0xF1CF1CF8,
	0x8A28A220,    0x8A28A020,    0xF22F1C20,    0x82AA0220,
	0x82492220,    0x81A89C20,    0x8A28A288,    0x8A28A288,
	0x8A289488,    0x8A2A8850,    0x894A9420,    0x894AA220,
	0x70852220,    0xF8011000,     0x8020800,    0x10840400,
	0x20040470,    0x40840400,    0x80020800,    0xF8011000,
	0x70800000,    0x88822200,     0x8820400,    0x108F8800,
	0x20821000,       0x22200,    0x20800020,           0x0
};

u32 JUTDirectPrint::sFontData2[0x4D] = {
	0x51421820,    0x53E7A420,     0x14A2C40,     0x1471000,
	 0x142AA00,     0x3EAA400,     0x1471A78,           0x0,
	0x50008010,    0x20010820,    0xF8020040,    0x20420820,
	0x50441010,      0x880000,       0x70E00,     0x1088840,
	0x78898820,      0x4A8810,    0x788A8810,     0x1098808,
	   0x40E04,    0x70800620,    0x11400820,    0x12200820,
	0x10001020,    0x10000820,    0x100F8820,    0x70000620,
	0x60070000,    0x110F82A0,    0x12AA8AE0,     0x84F92A0,
	0x100FBE1C,    0x10089008,    0x60070808,           0x0,
	 0x2000200,    0x7A078270,    0x8BC81E88,    0x8A2822F8,
	0x9A282280,    0x6BC79E78,    0x30000000,    0x48080810,
	0x41E80000,    0x422F1830,    0xFBE88810,    0x40288890,
	0x43C89C60,    0x81000000,    0x81000000,    0x990F3C70,
	0xA10AA288,    0xE10AA288,    0xA10AA288,    0x98CAA270,
		   0x0,          0x20,    0xF1EF1E20,    0x8A28A0F8,
	0x8A281C20,    0xF1E80220,    0x80283C38,           0x0,
		   0x0,    0x8A28B688,    0x8A2A8888,    0x8A2A8878,
	0x894A8808,    0x788536F0,           0x0,           0x0,
	0xF8000000,    0x10000000,    0x20000000,    0x40000000,
	0xF8000000
};
// clang-format on

JUTDirectPrint* JUTDirectPrint::sDirectPrint;

/**
 * @note Address: N/A
 * @note Size: 0x58
 */
JUTDirectPrint::JUTDirectPrint()
    : mCharColor(0xFFFFFFFF)
{
	// UNUSED FUNCTION
	changeFrameBuffer(nullptr, 0, 0);
	setCharColor(0xFF, 0xFF, 0xFF);
}

/**
 * @note Address: 0x80029BCC
 * @note Size: 0x74
 */
JUTDirectPrint* JUTDirectPrint::start()
{
	if (!sDirectPrint) {
		sDirectPrint = new JUTDirectPrint();
	}
	return sDirectPrint;
}

/**
 * @note Address: 0x80029C40
 * @note Size: 0xF8
 * Clears a rectangular region of the buffer.
 */
void JUTDirectPrint::erase(int x, int y, int width, int height)
{
	if (!mFrameBuffer) {
		return;
	}

	if (400 < mFBWidth) {
		x     = x << 1;
		width = width << 1;
	}

	if (300 < mFBHeight) {
		y      = y << 1;
		height = height << 1;
	}

	u16* pixel = mFrameMemory + mStride * y + x;
	for (int i = 0; i < height; i++) {
		for (int j = 0; j < width; j++) {
			*pixel = 0x1080;
			pixel  = pixel + 1;
		}

		pixel += mStride - width;
	}
}

/**
 * @note Address: 0x80029D38
 * @note Size: 0x254
 */
void JUTDirectPrint::drawChar(int position_x, int position_y, int ch)
{
	static u32 twiceBit[4] = { 0x00000000, 0x00000003, 0x0000000C, 0x0000000F };

	int codepoint = (100 <= ch) ? ch - 100 : ch;
	int col_index = (codepoint % 5) * 6;
	int row_index = (codepoint / 5) * 7;

	const u32* font_data = (100 > ch) ? sFontData + row_index : sFontData2 + row_index;

	int scale_x = (mFBWidth < 400) ? 1 : 2;
	int scale_y = (mFBHeight < 300) ? 1 : 2;

	u16* pixel = mFrameMemory + mStride * position_y * scale_y + position_x * scale_x;
	for (int y = 0; y < 7; y++) {
		u32 data = *font_data << col_index;
		font_data += 1;

		if (scale_x == 1) {
			data = (data & 0xfc000000) >> 1;
		} else {
			u32 a = twiceBit[(data >> 26) & 3];
			u32 b = twiceBit[(data >> 28) & 3] << 4;
			u32 c = twiceBit[(data >> 30) & 3] << 8;
			data  = (a | b | c) << 19;
		}

		for (int x = 0; x < scale_x * 6; x += 2) {
			u16 value;

			value    = (((data & 0x40000000) ? mCharColor_Y : 0)
                     | ((data & 0x80000000) ? mCharColor_Cb4 : 32) + ((data & 0x40000000) ? mCharColor_Cb2 : 64)
                           + ((data & 0x20000000) ? mCharColor_Cb4 : 32));
			pixel[0] = value;
			if (scale_y > 1)
				pixel[mStride] = value;

			value    = (((data & 0x20000000) ? mCharColor_Y : 0)
                     | ((data & 0x40000000) ? mCharColor_Cr4 : 32) + ((data & 0x20000000) ? mCharColor_Cr2 : 64)
                           + ((data & 0x10000000) ? mCharColor_Cr4 : 32));
			pixel[1] = value;
			if (scale_y > 1)
				pixel[1 + mStride] = value;

			pixel += 2;
			data <<= 2;
		}

		pixel += mStride * scale_y - 6 * scale_x;
	}
}

/**
 * @note Address: 0x80029F8C
 * @note Size: 0x34
 */
void JUTDirectPrint::changeFrameBuffer(void* buffer, u16 pixelWidth, u16 pixelHeight)
{
	mFrameBuffer = buffer;
	mFrameMemory = (u16*)buffer;
	mFBWidth     = pixelWidth;
	mFBHeight    = pixelHeight;
	mStride      = ALIGN_NEXT(pixelWidth, 16);
	mFBSize      = (u32)mStride * (u32)mFBHeight * 2;
}

/**
 * @note Address: N/A
 * @note Size: 0x228
 */
void JUTDirectPrint::printSub(u16 position_x, u16 position_y, const char* format, va_list args, bool clear)
{
	char buffer[256];
	if (!mFrameMemory) {
		return;
	}

	int buffer_length = vsnprintf(buffer, ARRAY_SIZE(buffer), format, args);
	u16 x             = position_x;
	if (buffer_length > 0) {
		if (clear) {
			erase(position_x - 6, position_y - 3, (buffer_length + 2) * 6, 0xd);
		}

		char* ptr = buffer;
		for (; 0 < buffer_length; buffer_length--, ptr++) {
			int codepoint = sAsciiTable[*ptr & 0x7f];
			if (codepoint == 0xfe) {
				position_x = x;
				position_y += 7;
			} else if (codepoint == 0xfd) {
				s32 current_position = (int)position_x;
				s32 tab              = (current_position - x + 0x2f) % 0x30;
				position_x           = current_position + 0x30 - tab;
			} else {
				if (codepoint != 0xff) {
					drawChar(position_x, position_y, codepoint);
				}
				position_x += 6;
			}
		}
	}

	DCStoreRange(mFrameMemory, mFBSize);
}

/**
 * @note Address: N/A
 * @note Size: 0x280
 */
// void JUTDirectPrint::print(u16, u16, const char*, ...)
// {
// 	// UNUSED FUNCTION
// }

/**
 * @note Address: 0x80029FC0
 * @note Size: 0x2C
 */
void JUTDirectPrint::drawString(u16 x, u16 y, char* str) { drawString_f(x, y, "%s", str); }

/**
 * @note Address: 0x80029FEC
 * @note Size: 0x174
 */
void JUTDirectPrint::drawString_f(u16 x, u16 y, const char* format, ...)
{
	if (mFrameMemory) {
		va_list args;
		va_start(args, format);
		printSub(x, y, format, args, false);
		va_end(args);
	}
}

/**
 * @note Address: 0x8002A160
 * @note Size: 0x30
 */
void JUTDirectPrint::setCharColor(JUtility::TColor color) { setCharColor(color.r, color.g, color.b); }

/**
 * @note Address: 0x8002A190
 * @note Size: 0x17C
 * UcUcUc
 */
void JUTDirectPrint::setCharColor(u8 r, u8 g, u8 b)
{
	mCharColor = JUtility::TColor(r, g, b, 0xFF);
	u16 Y      = 0.257 * (int)r + 0.504 * (int)g + 0.098 * (int)b + 16;
	u16 Cb     = -0.148 * (int)r - 0.291 * (int)g + 0.439 * (int)b + 128;
	u16 Cr     = 0.439 * (int)r - 0.368 * (int)g - 0.071 * (int)b + 128;

	mCharColor_Y   = Y << 8;
	mCharColor_Cb  = Cb;
	mCharColor_Cb2 = Cb / 2;
	mCharColor_Cb4 = Cb / 4;
	mCharColor_Cr  = Cr;
	mCharColor_Cr2 = Cr / 2;
	mCharColor_Cr4 = Cr / 4;
}
