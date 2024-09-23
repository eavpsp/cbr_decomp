#include <FunctionHelper.h>
#include <stdarg.h>
#include <stdbool.h>
#include <debug.h>
//-c OnLoad:0x8000EE84
bool started = false;

void OnLoad(int val)
{
    OnActivate(val);
    if (!started) {
        started = true;
        
    }
    if (started)
    {
       
    }

    return;
}
