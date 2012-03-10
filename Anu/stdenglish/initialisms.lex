%{
#include<string.h>
char str[1000];
int len=0;
%}
%%
(U.K.|U.S.A.|U.S.|D.C.|M.D.|P.M.|R.N.)	{
                                           while((len=strcspn(yytext,".")) < strlen(yytext))
                                           {
                                              strncat(str,yytext,len);
                                              yytext=yytext+len+1;
                                              strcat(str,"ABBR-Dot");
                                           }
                                           strncat(str,yytext,len);
                                           printf("%s",str);strcpy(str,"\0");
                                         }
%%
main()
{
 yylex();
}

