/****** This programe is written by Roja (23-05-2013).
	Adding sentence marker 
*******/
#include <string.h>
%{
char str[1000], *s1;
int len;
%}

%x start_tag
%%

\<TITLE\>[ ](TEST|Test|test)\.[ ]\<\/TITLE\>	{	s1=strchr(yytext, ' ')+1;
							len=strcspn(s1, ".");
							strncpy(str, s1, len); str[len]='\0';
							printf("<TITLE>%s.</TITLE>", str);	 }
\<p\>[\n]*	{	 printf("<p><s>");  BEGIN start_tag; 	}

<start_tag>\n	{	printf("</s>\n<s>");		}

<start_tag>\n\<\/p\>	{	ECHO; BEGIN INITIAL; /*		}

<start_tag>[^a-zA-Z]$	{	ECHO; printf("</s>"); */	}

<start_tag>\n\<\/p\>\n	{	printf("</p>"); BEGIN INITIAL;	}

%%
