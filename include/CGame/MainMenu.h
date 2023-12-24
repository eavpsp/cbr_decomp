#ifndef MAINMENU_H
#define MAINMENU_H

#include "include/types.h"
#include "include/IO/CFile.h"
#include "include/GX/CTexObject.h"
#include "include/GX/CTpl.h"
#include "include/GameObjects/JObject/XObjectDemo.h"
typedef struct TitleObjectBase TitleObjectBase;
typedef struct TitleObject TitleObject;
typedef struct MainMenu MainMenu;
struct TitleObjectBase
{
		char* objType;
		char* buffer;
};

struct TitleObject : public TitleObjectBase
{
		char* buffer;
		//~TitleObject();
};
struct MainMenu
{
		MainMenu(int param_1); //<-- Custom constructor will add proper fields
		//~MainMenu();
};


#endif