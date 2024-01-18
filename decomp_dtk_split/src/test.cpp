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

struct Test
{
    public:
    Game_GX cgsp;
    Test() : cgsp(){};
    ~Test();
};

Test* obj = new Test();

void main()
{
    Test obj;

};
/*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
