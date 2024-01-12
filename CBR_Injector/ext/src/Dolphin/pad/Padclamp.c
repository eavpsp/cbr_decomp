#include "types.h"
#include "Dolphin/pad.h"
#include "math.h"

typedef struct PADClampRegion {
	u8 minTrigger;
	u8 maxTrigger;
	s8 minStick;
	s8 maxStick;
	s8 xyStick;
	s8 minSubstick;
	s8 maxSubstick;
	s8 xySubstick;
	s8 radStick;
	s8 radSubstick;
} PADClampRegion;

static const PADClampRegion ClampRegion = {
	// Triggers
	30,
	180,

	// Left stick
	15,
	72,
	40,

	// Right stick
	15,
	59,
	31,

	// Stick radii
	56,
	44,
};

/**
 * @note Address: 0x800F3048
 * @note Size: 0x130
 */
void ClampStick(s8* px, s8* py, s8 max, s8 xy, s8 min)
{
	int x = *px;
	int y = *py;
	int signX;
	int signY;
	int d;

	if (0 <= x) {
		signX = 1;
	} else {
		signX = -1;
		x     = -x;
	}

	if (0 <= y) {
		signY = 1;
	} else {
		signY = -1;
		y     = -y;
	}

	if (x <= min) {
		x = 0;
	} else {
		x -= min;
	}
	if (y <= min) {
		y = 0;
	} else {
		y -= min;
	}

	if (x == 0 && y == 0) {
		*px = *py = 0;
		return;
	}

	if (xy * y <= xy * x) {
		d = xy * x + (max - xy) * y;
		if (xy * max < d) {
			x = (s8)(xy * max * x / d);
			y = (s8)(xy * max * y / d);
		}
	} else {
		d = xy * y + (max - xy) * x;
		if (xy * max < d) {
			x = (s8)(xy * max * x / d);
			y = (s8)(xy * max * y / d);
		}
	}

	*px = (s8)(signX * x);
	*py = (s8)(signY * y);
}

/**
 * @note Address: 0x800F3178
 * @note Size: 0x1A8
 */
void ClampCircle(s8* px, s8* py, s8 radius, s8 min)
{
	int x = *px;
	int y = *py;
	int squared;
	int length;

	if (-min < x && x < min) {
		x = 0;
	} else if (0 < x) {
		x -= min;
	} else {
		x += min;
	}

	if (-min < y && y < min) {
		y = 0;
	} else if (0 < y) {
		y -= min;
	} else {
		y += min;
	}

	squared = x * x + y * y;
	if (radius * radius < squared) {
		length = dolsqrtf(squared);
		x      = (x * radius) / length;
		y      = (y * radius) / length;
	}

	*px = x;
	*py = y;
}

/**
 * @note Address: N/A
 * @note Size: 0x3C
 */
inline void ClampTrigger(u8* trigger, u8 min, u8 max)
{
	if (*trigger <= min) {
		*trigger = 0;
	} else {
		if (max < *trigger) {
			*trigger = max;
		}
		*trigger -= min;
	}
}

/**
 * @note Address: 0x800F3320
 * @note Size: 0x114
 */
void PADClamp(PADStatus* status)
{
	int i;
	for (i = 0; i < PAD_CHANMAX; i++, status++) {
		if (status->err != PAD_ERR_NONE) {
			continue;
		}

		ClampStick(&status->stickX, &status->stickY, ClampRegion.maxStick, ClampRegion.xyStick, ClampRegion.minStick);
		ClampStick(&status->substickX, &status->substickY, ClampRegion.maxSubstick, ClampRegion.xySubstick, ClampRegion.minSubstick);
		ClampTrigger(&status->triggerLeft, ClampRegion.minTrigger, ClampRegion.maxTrigger);
		ClampTrigger(&status->triggerRight, ClampRegion.minTrigger, ClampRegion.maxTrigger);
	}
}

/**
 * @note Address: 0x800F3434
 * @note Size: 0x10C
 */
void PADClampCircle(PADStatus* status)
{
	int i;
	for (i = 0; i < 4; ++i, status++) {
		if (status->err != PAD_ERR_NONE) {
			continue;
		}

		ClampCircle(&status->stickX, &status->stickY, ClampRegion.radStick, ClampRegion.minStick);
		ClampCircle(&status->substickX, &status->substickY, ClampRegion.radSubstick, ClampRegion.minSubstick);
		ClampTrigger(&status->triggerLeft, ClampRegion.minTrigger, ClampRegion.maxTrigger);
		ClampTrigger(&status->triggerRight, ClampRegion.minTrigger, ClampRegion.maxTrigger);
	}
}
