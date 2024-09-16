#ifndef cfile
#define cfile
#include<archive.h>
#include<game_gx.h>
#include <Dolphin/dvd.h>


struct FileData
{
    char fileName[256];
};
struct CFile : DVDFileInfo //232
{
    FileData* filedata;
    char unk0[162];
    CFile(){};
    virtual ~CFile(){};
};

struct ARPreCache//484
{
    CFile filea;
    CFile fileb;
    char unk0[12];
    ARPreCache(){};
    virtual ~ARPreCache(){};
};
struct ARCacheInfo//16392
{
    char unk0[0x4008];
    ARCacheInfo(){};
    virtual ~ARCacheInfo(){};
};
struct CObjArchive : HSD_Archive
{
    CFile archive;
    int unkval;
    CObjArchive() {};
    virtual ~CObjArchive() {};
};
struct CFileArchive : CFile //232
{
    CFileArchive(){};
    virtual ~CFileArchive(){};
};
struct CJArchive //124
{
    //4 v funcs
    char pad[0x7C];
    CJArchive(){};
    virtual ~CJArchive(){};
};
struct CJAnim : CJArchive //124
{
    CJAnim(){};
    virtual ~CJAnim(){};
};
struct CAnmQueue//132
{
    char pad[0x84];
    CAnmQueue(){};
    virtual ~CAnmQueue(){};
};

struct CTpl : CFile
{
    int unkcval0;
    CTexObj textureObj;
    CTpl(){};
    virtual ~CTpl(){};
};
struct Logo //516
{
    char unk0[12];
    CTpl logoTexture; 
    char unk1[16];
    Logo(){};
    virtual ~Logo(){};
};
#endif