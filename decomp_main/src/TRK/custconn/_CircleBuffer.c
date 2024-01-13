#include "<PowerPC_EABI_Support/MetroTRK/custconn/CircleBuffer.h>"


//.global CBGetBytesAvailableForRead
//CBGetBytesAvailableForRead :
//* 8000A538 000052B8  80 63 1B 0C */	lwz r3, 0x1b0c(r3)
//* 8000A53C 000052BC  4E 80 00 20 */	blr
u32 CBGetBytesAvailableForRead(CircleBuffer* cb) { return cb->mBytesToRead; }
