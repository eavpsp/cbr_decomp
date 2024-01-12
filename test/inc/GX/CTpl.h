#ifndef CTPL_H
#define CTPL_H
#include "include/IO/CFile.h"
typedef struct CTplBase CTplBase;
typedef struct CTpl CTpl;
struct CTplBase
{
		char* objType;
		DVDFileInfoHandler* fileHandler;
};
struct CTpl : public CTplBase, public FileHandler
{
		char buffer[4];
		~CTpl();
};

#endif
