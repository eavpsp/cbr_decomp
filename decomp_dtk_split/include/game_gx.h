#ifndef game_gx
#define game_gx
#include <Dolphin/gx.h>
//graphics.h Class Data //0x8001b9b8
#include <tev.h>
#include <mobj.h>
#include <gx_shape.h>
#include <types.h>


struct CGScreen : public GXRenderModeObj
{
    public:
    int color;
    CGScreen() : color(0xffffffff){};
    virtual ~CGScreen();
}; //Done


struct CGsRenderMode : public HSD_PEDesc 
{
    public:
    virtual ~CGsRenderMode();
};


struct CGsTevStage : public HSD_TevDesc
{
    public:
    CGsTevStage(){};
};
//cfont

struct CGsChannel : public HSD_Chan 
{
    public:
    CGsChannel(){};
};

struct CTexObj : GXTexObj 
{
    public:
    CTexObj(){};
    virtual ~CTexObj(){};
};
struct CFont : public CTexObj 
{};
#endif