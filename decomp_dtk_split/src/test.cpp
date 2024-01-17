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
#include <game.h>
/*
class MainClass
{
    public:
    virtual ~MainClass(){};

    virtual int StartClass() const {
        return (int)this;
    };
    
    MainClass();
};
class ChildClass : public MainClass
{
    public:
    CBase obj;
   
};
*/

class Test
{
    public:
    static CGs cgs;
    virtual ~Test();
};

CGs* obj = new CGs(); 
CGs Test::cgs;

/*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
