#ifndef cfile
#define cfile
#include<archive.h>
#include<game_gx.h>
#include <Dolphin/dvd.h>

struct FileData
{
    char fileName[256];
};
struct CFile : DVDFileInfo //0xe8 match
{
    //0x3c - DVDFileInfo 60
    //
    //0xAC
    FileData* filedata;
    char pad[0xAC];
    CFile(){};
    virtual ~CFile(){};
};
struct CFileArchive : CFile
{
    CFileArchive(){};
    virtual ~CFileArchive(){};
};

struct CTpl : CFile
{
    CTexObj textureObj;
    CTpl() {};
    virtual ~CTpl(){};
};
#endif