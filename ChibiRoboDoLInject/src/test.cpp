class Instance
{

};
class HSD_BASE 
{
    public:
    virtual void HSD_Init();
    virtual void HSD_Del();
};


//Class conversion - TODO
class HSD_Chan : HSD_BASE
{
    //parent typeinfo ref
    //space 4 byte
    //destructor
    public:
    void HSD_Del() override
    {

    };
};

const HSD_Chan ChanTest;
