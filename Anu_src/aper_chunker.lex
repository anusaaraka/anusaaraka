%{
#include<string.h>
FILE *fp;
int cap_len=0,str_len=0,count=0,lt_len=0,sent_len=0,len=0,cap_len1=0;
char ch;
%}

%%

[\^]default[\{\]\[\^@,!?\';:\-_\".<>$a-zA-Z0-9\(\)]*[\}][$]               { str_len=strlen(yytext); 
                                                                    lt_len = strcspn(yytext,"@");
                                                                    ch=*(yytext+(lt_len+1));
                                    if(((ch >= 'A') && (ch <= 'Z')) || ((ch >= 'a') && (ch <= 'z'))||(ch == '-'))
                                                                   {count=count+1;fprintf(fp,"(chunk-ids U  %d)\n",count);}
                                                                   }

[\^]unknown[\{\]\[\^\-@.!?\';,:\"\*<>$a-zA-Z0-9\(\)]*[\}][$]                { str_len=strlen(yytext);
                                                                    lt_len = strcspn(yytext,"\{");
                                                                    yytext=yytext+lt_len; 
                                                                    sent_len=strlen(yytext);

                                                                    while(len<sent_len)
                                                                    {
                                                                      cap_len=strcspn(yytext,"^");
                                                                      if(*(yytext+cap_len)=='^')
                                                                      {
                                                                       if (*(yytext+(cap_len+1))=='*')
                                                                       fprintf(fp,"(chunk-ids NP ");
                                                                       else
                                                                       fprintf(fp,"(chunk-ids U ");
                                                                         
                                                                       count=count+1;
                                                                       fprintf(fp," %d",count);
                                                                      }
                                                                      yytext=yytext+cap_len+1;
                                                                      len=cap_len+len+1;
                                                                     }
                                                                     fprintf(fp,")\n");len=0,sent_len=0;cap_len=0;
                                                                   }


[\^a-zA-Z0-9_-]*[\<\]\[_A-Z]*[\>][\{][-_\@.!?\';,:%\"\^a-zA-Z0-9\<\>$\(\) ]*[\}][$]  {  str_len=strlen(yytext);
                                                                    fprintf(fp,"(chunk-ids ");      
                                                                    lt_len = strcspn(yytext,"<");
                                                                    yytext=yytext+lt_len;
                                                                    if(*(yytext+1)=='>')
                                                                    fprintf(fp,"U");
                                                                    while(*(yytext+1)!='>')
                                                                    { fprintf(fp,"%c",*(yytext+1));
                                                                      yytext=yytext+1;
                                                                    }
                                                                    sent_len=strlen(yytext);
                                                                    
                                                                    while(len<sent_len)
                                                                    {
                                                                      cap_len=strcspn(yytext,"^");
                                                                      if(*(yytext+cap_len)=='^')
                                                                      {
                                                                       if(*(yytext+(cap_len+1))=='-')
                                                                        {
                                                                          yytext=yytext+cap_len+1;
                                                                          len=cap_len+len+1;
                                                                          cap_len=strcspn(yytext,"^");
                                                                        }
                                                                       else
                                                                        { count=count+1;
                                                                        fprintf(fp," %d",count);}
                                                                      }
                                                                      yytext=yytext+cap_len+1;
                                                                      len=cap_len+len+1;
                                                                     }
                                                                     fprintf(fp,")\n");len=0,sent_len=0;cap_len=0;
                                                                   }
[ ]                                                             { }
[ " ]                                                           { }
[\n]                                                            {count=0;fprintf(fp,";~~~~~~~~~~\n");}
%%

main(int argc, char* argv[])
{
fp=fopen(argv[1],"a");
yylex();
fclose(fp);
}

