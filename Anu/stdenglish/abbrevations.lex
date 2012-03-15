 # include<string.h>
%{
#include<string.h>
char str[1000];
int len=0;
%}
%%
^([jJ]an|[fF]eb|[mM]ar|[Aa]pr|[Mm]ay|[Jj]un|[Jj]ul|[Aa]ug|[Ss]ep|[Oo]ct|[Nn]ov|[Dd]ec|[a-z])[.] {
                                                                       len=strlen(yytext);
                                                                       strncpy(str,yytext,len-1);
                                                                       str[len-1]='\0';
                                                                       printf("%sABBR-Dot", str);
                                                               }
^(i[.]*e[.]*|e[.]*g[.]*|U[.]*S[.]*A[.]*|U[.]*[SK][.]*|[aA][.]*[dD][.]*|[bB][.]*[cC][.]*|[Ff][Ii][Gg][.]*|[Ee][Tt][Cc][.]*|[Rr][Ss][.]*|m[.]*g[.]*)[ ]  {
                                        while((len=strcspn(yytext,".")) < strlen(yytext))
                                         {
                                               strncat(str,yytext,len);
                                               yytext=yytext+len+1;
                                               strcat(str,"ABBR-Dot");
                                         }
                                         strncat(str,yytext,len);
                                         printf("%s",str);strcpy(str,"\0");
                                  }

[ ]([jJ]an|[fF]eb|[mM]ar|[Aa]pr|[Mm]ay|[Jj]un|[Jj]ul|[Aa]ug|[Ss]ep|[Oo]ct|[Nn]ov|[Dd]ec|[a-z])[.] {
                                                                       len=strlen(yytext);
                                                                       strncpy(str,yytext,len-1);
                                                                       str[len-1]='\0';
                                                                       printf("%sABBR-Dot", str);
                                                               }
[ ](i[.]*e[.]*|e[.]*g[.]*|U[.]*S[.]*A[.]*|U[.]*[SK][.]*|[aA][.]*[dD][.]*|[bB][.]*[cC][.]*|[Ff][Ii][Gg][.]*|[Ee][Tt][Cc][.]*|[Rr][Ss][.]*|m[.]*g[.]*)[ ]  {
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
