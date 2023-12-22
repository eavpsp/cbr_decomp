#ifndef CTPL_H
#define CTPL_H
#include "include/IO/CFile.h"

class CTplBase
{
	public:
		char* objType;
		DVDFileInfoHandler* fileHandler;
};
class CTpl : public CTplBase, public FileHandler
{
	public:
		char buffer[4];
		~CTpl();
};

#endif
