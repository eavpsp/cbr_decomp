#ifndef CGEOM
#define CGEOM

class CGs
{
    public:
    static const char* HSD_CGsClassName;
    static const char* HSD_CGsClass[2];
    static const char* HSD_CGsClassObject[3];
};

class CGsScreen
{
    public:
    static const char* HSD_CGsScreenClassName;
    static const char* HSD_CGsClass[2];
    static const char* HSD_CGsClassObject[3];
};
class GXRenderModeObj
{
    public:
    static const char* GXRenderModeObjClassName;
    static const char* GXRenderModeObjClass[2];
    static const char* GXRenderModeObjClassObject[3];
};
extern "C" void CGS_Destructor();

#endif