/*NOTE:  Any changes done in this file should be updated in bin/abbr.sh file and bin/abbr_browser.sh also. */

%{
#include<string.h>
char str[1000];
int len=0;
%}
%%
[ {\[(]+(([Jj][Aa][Nn])|([Ff][Ee][Bb])|([mM][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])|distt|([a-z]))[.][\n] {*str='\0';                                          
								       len=strlen(yytext);
                                                                       strncpy(str,yytext,len-2);
                                                                       str[len-2]='\0';
                                                                       printf("%sABBR-Dot", str);
                                                               }
^[{\[(]*(([Jj][Aa][Nn])|([Ff][Ee][Bb])|([mM][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])|distt|([a-z]))[.][ ,] {*str='\0';
                                                                       len=strlen(yytext);
                                                                       strncpy(str,yytext,len-2);
                                                                       str[len-2]='\0';
                                                                       if(yytext[len]==',')
                                                                       printf("%sABBR-Dot,", str);
								       else
                                                                       printf("%sABBR-Dot ", str);
                                                               }
[{\[( ]+(([Jj][Aa][Nn])|([Ff][Ee][Bb])|([mM][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])|([Ee][Qq][Ss]?)|distt|([a-z]))[.][ ,] {*str='\0';
                                                                       len=strlen(yytext);
                                                                       strncpy(str,yytext,len-2);
                                                                       str[len-2]='\0';
                                                                       if(yytext[len]==',')
                                                                       printf("%sABBR-Dot,", str);
                                                                       else
                                                                       printf("%sABBR-Dot ", str);
                                                               }
[{\[( ]+((i[. ]*e[. ]*)|(e[. ]*g[. ]*)|(U[. ]*S[. ]*A[. ]*)|(U[. ]*[SK][ .]*)|([aA][ .]*[dD][ .]*)|([bB][. ]*[cC][ .]*)|([Ff][Ii][Gg][Ss]?[. ]*)|([Ee][Tt][Cc][. ]*)|([Rr][Ss][. ]*)|(m[. ]*g[. ]*)|(u[ .]*p[ .]*)|([Cc][Hh][. ]*)|([Ee][Qq][Ss]?[. ]*)|([M][t][. ]*))[\n]              { *str='\0';
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
[{\[( ]+((i[ .]*e[ .]*)|(e[ .]*g[ .]*)|(U[ .]*S[ .]*A[ .]*)|(U[ .]*[SK][ .]*)|([aA][ .]*[dD][ .]*)|([bB][ .]*[cC][ .]*)|([Ff][Ii][Gg][Ss]?[. ]*)|([Ee][Tt][Cc][ .]*)|([Rr][Ss][ .]*)|(m[. ]*g[. ]*)|(u[ .]*p[ .]*)|([Cc][Hh][. ]*)|([M][t][. ]*))[ ,]        {*str='\0';
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
^[{\[(]*((i[. ]*e[. ]*)|(e[. ]*g[. ]*)|(U[. ]*S[. ]*A[ .]*)|(U[ .]*[SK][ .]*)|([aA][ .]*[dD][ .]*)|([bB][ .]*[cC][ .]*)|([Ff][Ii][Gg][Ss]?[. ]*)|([Ee][Tt][Cc][ .]*)|([Rr][Ss][ .]*)|(m[ .]*g[ .]*)|(u[ .]*p[ .]*)|([Ee][Qq][Ss]?[.])|([M][t][. ]*))[ ,]        {*str='\0';
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

[ ]M[.]G[.]Road         {       printf(" MABBR-DotGABBR-DotRoad");  /* This rule need to be improved . Ex: Today ,  almost 60 years to the month ,  this landmark (Jayalakshmi Silk) on M.G.Road in Cochin is a must see for every tourist who graces her shores. */
                        }

%%
