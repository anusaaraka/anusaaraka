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

  // In order to avoid errors like  ्जाँच_कर  
  /*We have added space to both sides of the string and passed it to lex function and removed them from the returned value of the lex function,  this a temporary solution must check for better solution*/ 

    char str_after_spaces_added[10000] =" ";
    char *str_after_spaces_removed;
    wx_string = RtnLexeme(1);
    strcat(str_after_spaces_added,wx_string);
    strcat(str_after_spaces_added," ");//string with spaces added [both sides]

    if (ArgCountCheck("wx_utf8",EXACTLY,1) == -1)
    { return(AddSymbol("Wrong number of Arguments"));}
    
    utf8_string = malloc(6*strlen(str_after_spaces_added)+1);
    //str = malloc(6*strlen(new_str)+1);
    if (utf8_string == NULL) { printf("Can't allocate memory for utf8_string\n"); exit;}
    
    *utf8_string='\0';

    YY_BUFFER_STATE buffer = yy_scan_string(str_after_spaces_added);
    yylex();
    yy_delete_buffer(buffer);
    
    str_after_spaces_removed = utf8_string + 1;
    
    str_after_spaces_removed[strlen(str_after_spaces_removed)-1]='\0'; //string with spaces removed [both sides]

    returnValue = AddSymbol(str_after_spaces_removed);
    free(utf8_string);
    return(returnValue);
}
