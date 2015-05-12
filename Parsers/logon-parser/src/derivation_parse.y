%{
#define YYSTYPE char *
#include <stdio.h>
#include <string.h>
FILE *cat_fp,*d_tree_fp;
char *cat;
int len=0,word_id=0;

void yyerror(const char *str)
{
        fprintf(stderr,"error: %s\n",str);
}

int yywrap()
{
        return 1;
}

%}

%token SENT LEFT_PAREN ROOT SEN_GRAMMAR TOKEN STRING RIGHT_PAREN ID SEN_GRM LEX_GRM CARG CLASS CASE FORM TAG PRBS

%%
start	: SENT LEFT_PAREN {fprintf(d_tree_fp,"%s",$2);} ROOT {fprintf(d_tree_fp," %s ",$4);} sen_grammar RIGHT_PAREN {fprintf(d_tree_fp,"%s",$7);};
        
sen_grammar	: sen_grammar1 
                | sen_grammar sen_grammar1;

sen_grammar1	: LEFT_PAREN {fprintf(d_tree_fp,"%s",$1);} sen_grammar  RIGHT_PAREN {fprintf(d_tree_fp,"%s",$4);}
		| ID {fprintf(d_tree_fp," %s ",$1);} SEN_GRM {fprintf(d_tree_fp," %s ",$3);} ID ID ID 
		| ID {fprintf(d_tree_fp," %s ",$1);} LEX_GRM {fprintf(d_tree_fp," %s ",$3);} ID ID ID 
                | TOKEN {fprintf(d_tree_fp," %s ",$1);} ID {fprintf(d_tree_fp," %s ",$3);} token_grammar1
                | ID {fprintf(d_tree_fp," %s ",$1);} token_grammar1

token_grammar1 : /* */
               | CARG {/*printf(" in_carg");*/} token_grammar1
               | CLASS {/*printf(" in_class");*/} token_grammar1
               | CASE {/*printf(" in_case");*/} token_grammar1
               | FORM {/*printf(" in_form");*/} token_grammar1
               | TAG   {word_id=word_id+1;cat=malloc(strlen($1)+1);cat=$1;
                         len=strcspn(cat,"\""); cat=cat+len+1;
                         len=strcspn(cat,"\""); cat[len-1]='\0';
                         fprintf(cat_fp,"(id-logon_cat %d %s)\n",word_id,cat);} token_grammar1
               |  PRBS {/*printf(" in_prbs\n");*/} token_grammar1;


%%
main(int argc,char* argv[])
{
 d_tree_fp = fopen(argv[1], "w");
 cat_fp = fopen(argv[2], "w");
 yyparse();
 fclose(d_tree_fp);
 fclose(cat_fp);
}
