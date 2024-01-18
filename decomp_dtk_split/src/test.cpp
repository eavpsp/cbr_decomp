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
struct TestContainer
{
    public:
    static Test test;
    TestContainer();
    ~TestContainer();
};
Test* obj = new Test();
Test TestContainer::test;
const CTexObj* texObj = new CTexObj();
CPadOne* pad = new CPadOne();
void main()
{

    Test obj;
    TestContainer test;

};
/*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
