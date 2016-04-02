%{
#include <stdio.h>
#include<string.h>
#define YYSTYPE char*
#include "y.tab.h"
extern YYSTYPE yylval;
%}
%%
[`].*[']                {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0';return SENT;}
\(                      {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return LEFT_PAREN;}
\)                      {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return RIGHT_PAREN;}
ROOT[_]INFFRAG		{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return ROOT;}
ROOT[_]FRAG		{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return ROOT;}
ROOT[_]STRICT		{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return ROOT;}
ROOT[_]INFORMAL		{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return ROOT;}
[0-9e\.\-]*		{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return ID;}
[A-Z\-\_\^0-9]*		{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return SEN_GRM;}
[A-Z\-\_@a-z0-9\*]*	{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return LEX_GRM;}
\"[A-Za-z0-9\.\?,\“\”\-\’‘()! ]*\"	{yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return TOKEN; /*Added space in the pattern by Roja(26-03-16) Ex: "on behalf of" */}
\"token                 {/*printf("====%s====",yytext);*/} 
[+]CARG[ ][#]*[1]*[=]*[\\]["][A-Za-z\-\’0-9\.]*[\\]["][ ] {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return CARG;}
[+]CLASS[ ][a-z\_]*[ ]        {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return CLASS;}
[+]CASE[ ][a-z\_\+]*[ ][+]INITIAL[ ][+-]            {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return CASE;}
[+]INITIAL[ ][+-]            {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return CASE;}
[+]FORM[ ].*[+]PRB[ ]string        {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return FORM; /*Added this pattern by Roja (26-03-16) In case of nos. this pattern is used. Ex: We lost 30 minutes in the traffic jam. */ }
[+]FORM[ ].*[+]PRB[ ][#]*[0-9]*[=]*[\\]["][0-9\.]*[\\]["]        {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return FORM;}
[+]TAG[ ]string     {yylval=malloc(yyleng+1); strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return TAG; /*Added this pattern by Roja (26-03-16) In case of nos. this pattern is used. Ex: We lost 30 minutes in the traffic jam. */}
[+]TAG[ ][#]*[0-9]*[=]*[\\]["][A-Z:$]*[\\]["]     {yylval=malloc(yyleng+1); strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return TAG;}
[+]PRBS.*+UW.*[]]["]            {yylval=malloc(yyleng+1);strncpy(yylval,yytext,yyleng);*(yylval+yyleng)='\0'; return PRBS;}
\n			/* */
[ \[\]\t]+                  /* ignore whitespace */
%%

