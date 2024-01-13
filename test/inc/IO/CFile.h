#ifndef CFILEBASE_H
#define CFILEBASE_H
typedef struct FileHandler FileHandler;
typedef struct DVDFileInfoBase DVDFileInfoBase;
typedef struct DVDFileInfo DVDFileInfo;
typedef struct DVDFileInfo DVDFileInfo;
typedef struct DVDFileInfoHandler DVDFileInfoHandler;
typedef struct CFile CFile;

struct FileHandler
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
struct DVDFileInfoBase
{
	char* objType;
	char* buffer;
};

struct DVDFileInfo : public DVDFileInfoBase
{
	char* buffer;

};
struct CFileBase
{
	
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
struct CFile : public CFileBase, public FileHandler
{
	public:
		~CFile();
		
};
struct DVDFileInfoHandler : public DVDFileInfoBase
{

	char* buffer;
	CFileBase* cFile;
};


#endif