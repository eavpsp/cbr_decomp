#ifndef game_gx
#define game_gx

//graphics.h Class Data //0x8001b9b8
class _GXRenderModeObj
{
    public:
    virtual ~_GXRenderModeObj(){};
};

class CGScreen : public _GXRenderModeObj {}; //Done

class _HSD_PEDesc
{
    public:
    virtual ~_HSD_PEDesc(){};
};

class CGsRenderMode : public _HSD_PEDesc {};

class _HSD_TevDesc 
{
    public:
    virtual ~_HSD_TevDesc();
};

class CGsTevStage : public _HSD_TevDesc
{
    public:
    CGsTevStage(){};
};
//cfont
class _HSD_Chan
{
    public:
    virtual ~_HSD_Chan(){};
};

class CGsChannel : public _HSD_Chan 
{
    public:
    CGsChannel(){};
};

class _GXTexObj
{
    public:
    virtual ~_GXTexObj(){};
};
class CTexObj : public _GXTexObj 
{
    public:
    CTexObj(){};
};
class CFont : CTexObj 
{
    public:
    ~CFont();
};
#endif