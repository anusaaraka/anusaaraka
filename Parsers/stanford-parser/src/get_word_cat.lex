%{
#include <stdio.h>
#include<string.h>
char str[1000],str1[1000];
int count=1,len=0,count1=0,count2=0;
FILE *fp,*fp1,*fp2;

%}


%%

[)][ ]*\n                                {count=1;fprintf(fp,";~~~~~~~~~~\n");
                                              fprintf(fp1,";~~~~~~~~~~\n");
                                              fprintf(fp2,";~~~~~~~~~~\n");
                                      }
[(][A-Z$-_]*[ ][a-zA-Z0-9.',-_]*[)]         { 
                                        count1=count; count2=count;
                                        len=strcspn(yytext," ");
                                        strncpy(str,yytext+1,len);
                                        str[len-1]='\0';
                                        strcpy(str1,str);
                                        fprintf(fp1,"(id-sd_cat	P%d	%s)\n",count++,str);
                                        yytext=yytext+len+1;
                                        len=strcspn(yytext,")");
                                        strncpy(str,yytext,len);
                                        str[len]='\0';
                                        fprintf(fp,"(parser_numeric_id-word      %d      %s)\n",count1++,str);
                                        fprintf(fp2,"(parserid-word      P%d      %s)\n",count2++,str);
                                        }

%%

main(int argc, char* argv[])
{
fp=fopen(argv[1],"w");
fp1=fopen(argv[2],"w");
fp2=fopen(argv[3],"w");
yylex();
fclose(fp);
}
