 # include<string.h>
%{
#include<string.h>
char str[1000];
int len=0;
%}
%%

(a.d.|b.c.|m.g.|a.k.a) {
			while((len=strcspn(yytext,".")) < strlen(yytext))
			{
			      	strncat(str,yytext,len);
			        yytext=yytext+len+1;
			        strcat(str,"ABBR-Dot");
			}
			strncat(str,yytext,len);
			printf("%s",str);strcpy(str,"\0");
		}

[ ](rs|Rs|Fig|jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)[.] {
					                                len=strlen(yytext);
					                                strncpy(str,yytext,len-1);
					                                str[len-1]='\0';
					                                printf("%sABBR-Dot", str);
								}
