//Game.cpp
/*
CTexObj
CStatus
Logo
XOBJS
CStack
CEvt
CSound
XSound
CCard
*/
class CBASE;

struct CBase_info
{
    char* base;
    CBASE* parent;
};
struct CBaseInstance_info
{
    CBase_info baseInfo;
    char*  instanceDestructor;
   // ~CBaseInstance_info();
};
class CBASE 
{ };
class CSound_Instance
{
    static CBaseInstance_info instanceInfo;
};

class CSoundBase : public CBASE
{
    public:
    static CBase_info classInfo;
};
class XSoundBase : public CBASE
{
    public:
    static CBase_info classInfo;

};

CBase_info CSoundBase::classInfo = 
{
    "CSound", 
    nullptr
};
CBase_info XSoundBase::classInfo = 
{
    "XSound", 
    reinterpret_cast<CBASE*>(&CSoundBase::classInfo),
};
void Test(){

}

CBaseInstance_info CSound_Instance::instanceInfo = 
{
    reinterpret_cast<char*>(&CSoundBase::classInfo),
    nullptr,
    reinterpret_cast<char*>(&Test),

};



//store class name pointer
//CBASE* CSoundBase::parentClassPtr = reinterpret_cast<CBASE*>(0x00000000);//set parent class name pointer

//ptr to classType
//Container that stores pointer to classType(2) 2nd usually null(Base Class)
//Class that stores base class as parent (3) 2nd usually null(Child Class)
