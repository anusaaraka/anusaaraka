%{
#include <stdio.h>
#include<string.h>
char id[100];
int len=0,j=0;
int prev_count=0;

%}


%%

\014					{ }
\004					{ }
[\[][0-9]*[\]][ ][(][0-9]*[ ]of[ ][0-9]*[)].*  { 
						 yytext=yytext+1;
						 len=strcspn(yytext,"]");strncpy(id,yytext,len);
                                                 id[len]='\0';
                                                 if(atoi(id)==prev_count+1)
                                                 printf("[%s",yytext);
                                                 else
                                                 { for(j=prev_count;j<atoi(id)-1;j++)printf("(No Parse Found)\n;~~~~~~~~~~\n");//loop if more than one continious sentence has No Parse
                                                 printf("[%s",yytext);}
                                                 prev_count=atoi(id);
						}
[\[][0-9]*[\]][ ][(][0-9]*[ ]of[ ][0-9]*[)].*/\n[\004|014] {printf("%s\n;~~~~~~~~~~",yytext); yytext=yytext+1;
                                                 len=strcspn(yytext,"]");strncpy(id,yytext,len);
                                                 id[len]='\0';prev_count=atoi(id);   }

[\}]/\n\n[\004|014]						{printf("}\n;~~~~~~~~~~");}

%%

main(int argc, char* argv[])
{
yylex();
}
