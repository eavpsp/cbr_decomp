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
struct CJArchive //0x7c
{
    //4 v funcs
    char pad[0x7C];
    CJArchive(){};
    virtual ~CJArchive(){};
};
struct CJAnim : CJArchive //0x7c
{
    CJAnim(){};
    virtual ~CJAnim(){};
};
struct CAnmQueue//0x84
{
    char pad[0x84];
    CAnmQueue(){};
    virtual ~CAnmQueue(){};
};

struct CTpl : CFile
{
    CTexObj textureObj;
    CTpl() {};
    virtual ~CTpl(){};
};
struct Logo //0x200
{
    char pad[272];
    CTpl logoTexture; //0xec
    Logo(){};
    virtual ~Logo(){};
};
#endif