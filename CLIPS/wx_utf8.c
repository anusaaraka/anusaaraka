#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "clips.h"
#include <stddef.h>
typedef struct yy_buffer_state * YY_BUFFER_STATE;
extern YY_BUFFER_STATE yy_scan_string(char * str);
extern int yylex();
extern YY_BUFFER_STATE yy_scan_bytes(char * str,size_t size);
extern void yy_delete_buffer(YY_BUFFER_STATE buffer);

int yywrap( void ) { return 1; }

char *utf8_string;
char *returnValue;

void *wx_utf8(char *wx_string)
{
    
    wx_string = RtnLexeme(1);

    if (ArgCountCheck("wx_utf8",EXACTLY,1) == -1)
    { return(AddSymbol("Wrong number of Arguments"));}
    
    utf8_string = malloc(6*strlen(wx_string)+1);
    if (utf8_string == NULL) { printf("Can't allocate memory for utf8_string\n"); exit;}
    
    *utf8_string='\0';

    YY_BUFFER_STATE buffer = yy_scan_string(wx_string);
    yylex();
    yy_delete_buffer(buffer);
   
    returnValue = AddSymbol(utf8_string);
    free(utf8_string);

    return(returnValue);
}
