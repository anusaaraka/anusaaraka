/*sample imput :- 
^visWApana/*visWApana$_^meM/meM<cat:prsg>$_^parimANa/parimANa<cat:n><case:d><gen:m><num:s>/parimANa<cat:n><case:d><gen:m><num:p>/parimANa<cat:n><case:o><gen:m><num:s>/parimANa<cat:n><case:o><gen:m><num:p>$_^va/*va$_^xiSA/xiSA<cat:n><case:d><gen:f><num:s>/xiSA<cat:n><case:o><gen:f><num:s>$_^xonoM/xonA<cat:n><case:o><gen:m><num:p>$_^howe/ho<cat:v><gen:m><num:p><per:u><tam:wA>/ho<cat:v><gen:m><num:p><per:m><tam:wA>/ho<cat:v><gen:m><num:p><per:m_h><tam:wA>/ho<cat:v><gen:m><num:p><per:a><tam:wA>$_^hEM/hE<cat:v><gen:m><num:p><per:u><tam:hE>/hE<cat:v><gen:m><num:p><per:a><tam:hE>/hE<cat:v><gen:f><num:p><per:u><tam:hE>/hE<cat:v><gen:f><num:p><per:a><tam:hE>$_._

sample output :-

(man_word-root-cat      visWApana       visWApana       dummy_cat)
(man_word-root-cat      meM     meM     prsg)
(man_word-root-cat      parimANa        parimANa        n)
(man_word-root-cat      parimANa        parimANa        n)
(man_word-root-cat      parimANa        parimANa        n)
(man_word-root-cat      parimANa        parimANa        n)
(man_word-root-cat      va      va      dummy_cat)
(man_word-root-cat      xiSA    xiSA    n)
(man_word-root-cat      xiSA    xiSA    n)
(man_word-root-cat      xonoM   xonA    n)
(man_word-root-cat      howe    ho      v)
(man_word-root-cat      howe    ho      v)
(man_word-root-cat      howe    ho      v)
(man_word-root-cat      howe    ho      v)
(man_word-root-cat      hEM     hE      v)
(man_word-root-cat      hEM     hE      v)
(man_word-root-cat      hEM     hE      v)
(man_word-root-cat      hEM     hE      v)
*/

%{
#include <stdio.h>
#include<string.h>
char word[1000],root[1000],cat[100],tam[100], vib[100];
FILE *fp,*fp1;
int len=0;
char *ptr;

%}


%%

[\^][A-Za-z0-9 ]*		{	ptr=yytext;ptr=ptr+1;len=strlen(ptr);
					strncpy(word,ptr,len);word[len]='\0';
				}


[A-Za-z0-9]*[/][*][A-Za-z0-9]*[$]  { fprintf(fp,"(man_word-root-cat	%s	%s	dummy_cat)\n",word,word);//words which don't have morph information here we are printing dummy root as word itself and category as dummy_cat
				   }

[A-Za-z0-9 ]*<cat:[a-z]*>		{	ptr=yytext;
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

[<]tam:[a-zA-Z01_]+[>]		{	ptr=strchr(yytext, ':')+1;
					len=strlen(ptr);
					strncpy(tam, ptr, len-1); tam[len-1]='\0';
					fprintf(fp1,"(man_word-cat-tam      %s      %s      %s)\n",word,cat,tam);		
				}

[\n]				{	fprintf(fp,";~~~~~~~~~~\n");
					fprintf(fp1,";~~~~~~~~~~\n");
				}

[<]parsarg:[a-zA-Z0_]+[>]	{	ptr=strchr(yytext, ':')+1;
					len=strlen(ptr);
					strncpy(vib, ptr, len-1); vib[len-1]='\0';
					fprintf(fp,"(man_word-root-vib-cat  %s      %s      %s	%s)\n",word,root,vib,cat);
				}

%%

main(int argc, char* argv[])
{
fp=fopen(argv[1], "w");
fp1=fopen(argv[2], "w");
yylex();
fclose(fp);
}
