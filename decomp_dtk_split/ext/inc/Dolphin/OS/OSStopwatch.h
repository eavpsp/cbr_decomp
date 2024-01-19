#ifndef RVL_SDK_OS_STOPWATCH_H
#define RVL_SDK_OS_STOPWATCH_H
#include "types.h"
#include "Dolphin/OS/OSTime.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSStopwatch {
	char* name;
	u32 unk4; //padding
	s64 total;
	u32 hits;
	s64 min;
	s64 max;
	s64 last;
	BOOL running;
	u32 unk34; //padding
} OSStopwatch;

void OSInitStopwatch(OSStopwatch* sw, char* name);
void OSStartStopwatch(OSStopwatch* sw);
void OSStopStopwatch(OSStopwatch* sw);
s64 OSCheckStopwatch(OSStopwatch* sw);
void OSResetStopwatch(OSStopwatch* sw);
void OSDumpStopwatch(OSStopwatch* sw);

#ifdef __cplusplus
}
#endif
#endif
