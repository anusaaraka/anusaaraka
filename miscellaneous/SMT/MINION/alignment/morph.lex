%{
#include <stdio.h>
#include<string.h>
char word[1000],root[1000],cat[100],tam[100];
FILE *fp,*fp1;
int len=0;
char *ptr;

%}


%%

[\^][A-Za-z0-9]*		{	ptr=yytext;ptr=ptr+1;len=strlen(ptr);
					strncpy(word,ptr,len);word[len]='\0';
				}

[A-Za-z0-9]*<cat:[a-z]>		{	ptr=yytext;
					len=strcspn(ptr,"<");
					strncpy(root,ptr,len);
					root[len]='\0';
					ptr=ptr+len+1;
					len=strcspn(ptr,":");
					ptr=ptr+len+1;
					len=strcspn(ptr,">");
					strncpy(cat,ptr,len);
					cat[len]='\0';
					fprintf(fp,"(man_word-root-cat	%s	%s	%s)\n",word,root,cat);
			  	}

[<]tam:[a-zA-Z0_]+[>]		{	ptr=strchr(yytext, ':')+1;
					len=strlen(ptr);
					strncpy(tam, ptr, len-1); tam[len-1]='\0';
					fprintf(fp1,"(man_word-cat-tam      %s      %s      %s)\n",word,cat,tam);		
				}

[\n]				{	fprintf(fp,";~~~~~~~~~~\n");
					fprintf(fp1,";~~~~~~~~~~\n");
				}

%%

main(int argc, char* argv[])
{
fp=fopen(argv[1], "w");
fp1=fopen(argv[2], "w");
yylex();
fclose(fp);
}
