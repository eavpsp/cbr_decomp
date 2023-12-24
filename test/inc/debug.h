#include <stdlib.h>
#include <stdint.h>
#include <stdarg.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
typedef struct
{
    /* data */
    int a;
    int b;
    int c;
    int d;
    int e;

} FloatData;

typedef struct
{
    /* data */
    char intro[5];//= 0x23 00 00 00 05;
    char text[];
} TextObject;


extern void SetDebugFloat(int val, int index);
extern void SetDebugText(char* inputString);
static FloatData* debugFloat = (FloatData*)0x80317800;
static bool* runSecondFloat = (bool*)0x80317804; //0x80317804s;
static char* debugString = (char*)0x80317900;//0x80317900
extern void OnActivate(int param_1);
extern void OSReport(const char* fmt, ...);
void SetDebugText(char* inputString) {
    // Base memory address to start from
    char* baseAddress = (char*)0x80317900;
    int stringLength = strlen(inputString);
    // Loop through the characters in the input string
    for (int i = 0; i < stringLength; i++) {
        // Calculate the memory address for the current character
        char* currentAddress = baseAddress + i;

        // Assign the character from the input string to the memory address
        *currentAddress = inputString[i];
    }
}
void SetDebugFloat(int val, int index)
{
    switch (index)
    {


    case 4:/* constant-expression */
    /* code */
        debugFloat->e = val;
        break;
    case 3:/* constant-expression */
    /* code */
        debugFloat->d = val;
        break;
    case 2:/* constant-expression */
    /* code */
        debugFloat->c = val;
        break;
    case 1:/* constant-expression */
    /* code */
        debugFloat->b = val;
        break;

    default:
        debugFloat->a = val;

        break;
    }
}