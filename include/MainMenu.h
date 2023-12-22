#ifndef MAINMENU_H
#define MAINMENU_H

#include "include/types.h"
#include "include/IO/CFile.h"
#include "include/GX/CTexObject.h"
#include "include/GX/CTpl.h"
#include "include/GameObjects/JObject/XObjectDemo.h"

class TitleObjectBase
{
	public:
		char* objType;
		char buffer[4];
};

class TitleObject : public TitleObjectBase
{
	public:
		char buffer[4];
		~TitleObject();
};
class MainMenu
{
	public:
		MainMenu(int param_1);
		~MainMenu();
};


#endif