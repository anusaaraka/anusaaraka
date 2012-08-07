%{
#include <stdio.h>
#include<string.h>
char word[1000],root[1000],cat[100];
FILE *fp,*fp1;
int len=0;
char *ptr;

%}


%%

[\^][A-Za-z0-9]*          {   ptr=yytext;ptr=ptr+1;len=strlen(ptr);
			      strncpy(word,ptr,len);word[len]='\0';}

[A-Za-z0-9]*<cat:[a-z]>  {  len=strcspn(yytext,"<");
                            strncpy(root,yytext,len);
                            root[len]='\0';
                            yytext=yytext+len+1;
                            len=strcspn(yytext,":");
                            yytext=yytext+len+1;
                            len=strcspn(yytext,">");
                            strncpy(cat,yytext,len);
                            cat[len]='\0';
			    fprintf(fp,"(man_word-root-cat	%s	%s	%s)\n",word,root,cat);}
[\n]	{   fprintf(fp,";~~~~~~~~~~\n",yytext);}
%%

main(int argc, char* argv[])
{
fp=fopen(argv[1],"w");
yylex();
fclose(fp);
}
