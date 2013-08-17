/*NOTE:  Any changes done in this file should be updated in bin/abbr.sh file and bin/abbr_browser.sh also. */

%{
#include<string.h>
char str[1000];
int len=0;
%}


%%

[\n{\[( ]+(([Jj][Aa][Nn])|([Ff][Ee][Bb])|([mM][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])|distt|([Ee][Qq][Ss]?)|Ill|([Ff][Ii][Gg][Ss]?)|([M][t])|([Ee][Tt][Cc])|([Rr][Ss])|([Cc][Hh])|[a-z])[.][\n, ]		{	*str='\0';
                                                                      len=strlen(yytext);
                                                                      strncpy(str,yytext,len-2);
                                                                      str[len-2]='\0';
								      if(yytext[len-1]==',')
                                                                      printf("%sABBR-Dot,", str);
								      else if(yytext[len-1]==' ')
                                                                      printf("%sABBR-Dot ", str);
								      else
                                                                      printf("%sABBR-Dot\n", str);
							      }

^(([Jj][Aa][Nn])|([Ff][Ee][Bb])|([mM][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])|distt|([Ee][Qq][Ss]?)|Ill|([Ff][Ii][Gg][Ss]?)|([M][t])|([Ee][Tt][Cc])|([Rr][Ss])|([Cc][Hh])|[a-z])[.][\n, ]            		{       *str='\0';
                                                                      len=strlen(yytext);
                                                                      strncpy(str,yytext,len-2);
                                                                      str[len-2]='\0';
                                                                      if(yytext[len-1]==',')
                                                                      printf("%sABBR-Dot,", str);
                                                                      else if(yytext[len-1]==' ')
                                                                      printf("%sABBR-Dot ", str);
                                                                      else
                                                                      printf("%sABBR-Dot\n", str);
                                                              } 
[\n{\[( ]+((i[.]e[.])|(e[.]g[.])|([aA][.][dD][.])|([bB][.][cC][.])|(m[.]g[.])|(I[.]M[.]E)|(M[.]G[.]Road))[\n, ] 					       				   {    *str='\0';
			                                           while((len=strcspn(yytext,".")) < strlen(yytext))
                        				           {
			                                               strncat(str,yytext,len);
                        			                       yytext=yytext+len+1;
                                               			strcat(str,"ABBR-Dot");
                                      				  }
                                        len = strlen(yytext);
                                        strncat(str,yytext,len);
                                        printf("%s", str);
                                  }
^((i[.]e[.])|(e[.]g[.])|([aA][.][dD][.])|([bB][.][cC][.])|(m[.]g[.])|(I[.]M[.]E)|(M[.]G[.]Road))[\n, ]                                                 		{    *str='\0';
                                        while((len=strcspn(yytext,".")) < strlen(yytext))
                                        {
                                               strncat(str,yytext,len);
                                               yytext=yytext+len+1;
                                               strcat(str,"ABBR-Dot");
                                        }
                                        len = strlen(yytext);
                                        strncat(str,yytext,len);
                                        printf("%s", str);
                                   }
%%
