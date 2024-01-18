/*
 test.cpp:
	.sdata2     start:0x8065FD38 end:0x8065FD40

 */
#include <game.h>


const CPadEx* CurrentPad;
struct Test
{
    public:
    CGs cgsp;
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
CCamera* gameCam = new CCamera();
CPadEx* pad = new CPadEx();
Test TestContainer::test;
void main()
{

    Test obj;
    TestContainer test;

};
