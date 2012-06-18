/*NOTE:  Any changes done in this file should be updated in bin/abbr.sh file and bin/abbr_browser.sh also. */

%{
#include<string.h>
char str[1000];
int len=0;
%}
%%
[ {\[(]+(([Jj][Aa][Nn])|([Ff][Ee][Bb])|([mM][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])|([a-z]))[.][\n] {*str='\0';                                          
								       len=strlen(yytext);
                                                                       strncpy(str,yytext,len-2);
                                                                       str[len-2]='\0';
                                                                       printf("%sABBR-Dot", str);
                                                               }
^[{\[(]*(([Jj][Aa][Nn])|([Ff][Ee][Bb])|([mM][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])|([a-z]))[.][ ,] {*str='\0';
                                                                       len=strlen(yytext);
                                                                       strncpy(str,yytext,len-2);
                                                                       str[len-2]='\0';
                                                                       if(yytext[len]==',')
                                                                       printf("%sABBR-Dot,", str);
								       else
                                                                       printf("%sABBR-Dot ", str);
                                                               }
[{\[( ]+(([Jj][Aa][Nn])|([Ff][Ee][Bb])|([mM][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])|([Ee][Qq][Ss]?)|([a-z]))[.][ ,] {*str='\0';
                                                                       len=strlen(yytext);
                                                                       strncpy(str,yytext,len-2);
                                                                       str[len-2]='\0';
                                                                       if(yytext[len]==',')
                                                                       printf("%sABBR-Dot,", str);
                                                                       else
                                                                       printf("%sABBR-Dot ", str);
                                                               }
[{\[( ]+((i[. ]*e[. ]*)|(e[. ]*g[. ]*)|(U[. ]*S[. ]*A[. ]*)|(U[. ]*[SK][ .]*)|([aA][ .]*[dD][ .]*)|([bB][. ]*[cC][ .]*)|([Ff][Ii][Gg][Ss]?[. ]*)|([Ee][Tt][Cc][. ]*)|([Rr][Ss][. ]*)|(m[. ]*g[. ]*)|(u[ .]*p[ .]*)|([Cc][Hh][. ]*)|([Ee][Qq][Ss]?[. ]*))[\n]                                                     { *str='\0';
                                        while((len=strcspn(yytext,".")) < strlen(yytext))
                                         {
                                               strncat(str,yytext,len);
                                               yytext=yytext+len+1;
                                               strcat(str,"ABBR-Dot");
                                         }
                                         len = strlen(yytext);
                                         strncat(str,yytext,len);
                                         printf("%s",str);
                                  }
[{\[( ]+((i[ .]*e[ .]*)|(e[ .]*g[ .]*)|(U[ .]*S[ .]*A[ .]*)|(U[ .]*[SK][ .]*)|([aA][ .]*[dD][ .]*)|([bB][ .]*[cC][ .]*)|([Ff][Ii][Gg][Ss]?[. ]*)|([Ee][Tt][Cc][ .]*)|([Rr][Ss][ .]*)|(m[. ]*g[. ]*)|(u[ .]*p[ .]*)|([Cc][Hh][. ]*))[ ,]        {*str='\0';
                                        while((len=strcspn(yytext,".")) < strlen(yytext))
                                         {
                                               strncat(str,yytext,len);
                                               yytext=yytext+len+1;
                                               strcat(str,"ABBR-Dot");
                                         }
                                         len = strlen(yytext);
                                         strncat(str,yytext,len);
                                         printf("%s",str);
                                  }
^[{\[(]*((i[. ]*e[. ]*)|(e[. ]*g[. ]*)|(U[. ]*S[. ]*A[ .]*)|(U[ .]*[SK][ .]*)|([aA][ .]*[dD][ .]*)|([bB][ .]*[cC][ .]*)|([Ff][Ii][Gg][Ss]?[. ]*)|([Ee][Tt][Cc][ .]*)|([Rr][Ss][ .]*)|(m[ .]*g[ .]*)|(u[ .]*p[ .]*)|([Ee][Qq][Ss]?[.]))[ ,]        {*str='\0';
                                        while((len=strcspn(yytext,".")) < strlen(yytext))
                                         {
                                               strncat(str,yytext,len);
                                               yytext=yytext+len+1;
                                               strcat(str,"ABBR-Dot");
                                         }
                                         len = strlen(yytext);
                                         strncat(str,yytext,len);
                                         printf("%s",str);
                                  }
%%
