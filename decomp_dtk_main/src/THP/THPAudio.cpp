#include "THPAudio.h"

void THPSimpleAudioStop()//801b66ec
{
	THPAudioFlag[165] = 0;
}

void THPSimpleAudioResume()//801b6700
{
	THPAudioFlag[165] = 1;
}
