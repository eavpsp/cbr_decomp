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

struct ClassData
{

};
class MainClass
{
    public:
    virtual int StartClass() const
    {

    };
    MainClass();
    virtual ~MainClass(){};
};
class ChildClass : public MainClass
{
    public:
    int StartClass() const override{
        return (int)this;
    };
    ClassData* classObject;
    ChildClass()
    {
        classObject = new ClassData();
    };
};
class ClassObject
{
    public:
    ChildClass* classObject;
    ClassObject()
    {
        classObject = new ChildClass();
    };

};

ChildClass classData;
ClassObject obj;
 //ptr to classType
//Container that stores pointer to classType(2) 2nd usually null(Base Class)
//Class that stores base class as parent (3) 2nd usually null(Child Class)
