#ifndef HELPER_H
#define HELPER_H

#include "FunctionHelper.h"
bool started = false;


void TestClassInMemory()
{
   
    

}

void OnLoad(int val)
{
    OnActivate(val);
    if (!started) {
        started = true;
       // TestClassInMemory();
    }
    if (started)
    {
       
    }

    return;
}
#endif HELPER_H