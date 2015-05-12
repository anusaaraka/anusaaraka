%{
#include <stdio.h>
#include<string.h>
#define YYSTYPE char*
#include "y.tab.h"
extern YYSTYPE yylval;
%}

%%
[`].*[']		{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return SENT;}
[{]		 	{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return OPEN_BRKT;}	
[}]		 	{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return CLOSE_BRKT;}	
[\[]		 	{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return OPEN_SQ_BRKT;}	
[\]]			{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return CLOSE_SQ_BRKT;}
[<]			{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return OPEN_ANG_BRKT;}
[>]			{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return CLOSE_ANG_BRKT;}
[e][0-9]*[:,]*		{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';if(yytext[yyleng-1]==':'||yytext[yyleng-1]==',')*(yylval+yyleng-1)='\0'; return EVENT;}
[x][0-9]*[:,]*		{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';if(yytext[yyleng-1]==':'||yytext[yyleng-1]==',')*(yylval+yyleng-1)='\0';  return SELF;}
[0-9]*[:][0-9]*   {yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return ID;}
ARG[0-9]*		{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return ARG;}
[a-zA-Z0-9_\-\/\+]*		{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return REL;}
[_][0-9]*[:]		{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return UNDERSCORE_ID;}
BV/[ ]		{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return BV;}
L[-]INDEX/[ ]       {yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return LINDEX;} 
R[-]INDEX/[ ]       {yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return RINDEX;} 
L[-]HNDL/[ ]	{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return LHNDL;}
R[-]HNDL/[ ]	{yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return RHNDL;}
[(]["][a-zA-Z\.\?]*["][)] {yylval = malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; ;return STR;}

\n			/* */
[ \t]+                  /* ignore whitespace */
%%

