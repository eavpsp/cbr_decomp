#ifndef CFILEBASE_H
#define CFILEBASE_H
class FileHandler
{
public:
	virtual ~FileHandler();
	virtual void StoreAndAllocateMem(int param_1, int param_2);
	virtual void DestroyMessengerManager(int param_1);
	virtual int ReadCFile(void* param_1, char* param_2, int param_3, int param_4, int param_5);
	virtual void zz_8019fe3c_(int param_1);
	virtual void OpenFileStream(int param_1);
	virtual void CloseStream(int param_1);
	virtual int  FileExceptionHandler(int param_1);
};
class DVDFileInfoBase
{
	char* objType;
	char buffer[4];
};

class DVDFileInfo : public DVDFileInfoBase
{
	char buffer[8];

};
class CFileBase
{
	public:
		char* objType;
		DVDFileInfo* dvdInfo;
};
/*.global lbl_8025878C
lbl_8025878C:

	# ROM: 0x25578C
	.4byte lbl_8065AD80
	.4byte 0
	.4byte cHeadTrack____dt_void__N6
	.4byte zz_8019fd4c_
	.4byte OverlayManager__DestroyMessengerManager_void_
	.4byte ReadCFile
	.4byte zz_8019f8d8_
	.4byte OpenFileStream
	.4byte CloseDevice
	.4byte zz_8019f6ec_
	.4byte 0x30303030
*/
class CFile : public CFileBase, public FileHandler
{
	public:
		
		~CFile();
		
};
class DVDFileInfoHandler : public DVDFileInfoBase
{
public:
	char buffer[4];
	CFileBase* cFile;
};
#endif