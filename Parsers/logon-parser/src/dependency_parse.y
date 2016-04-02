%{
#define YYSTYPE char *
#define YYDEBUG 1
#include <stdio.h>
#include <string.h>
FILE *fp;
char arg0[100][100],sent[1000],sent_head[100];
char rel_name[100][100],id[100][100],args[100][100][100],sub_index[100]="\0",arg_type[100][100][100];
int index1=0,index2=0;
extern int yylineno;
extern char *yytext;
extern YYSTYPE yylval;
void yyerror(const char *str)
{
fprintf(stderr, "%d: error: '%s' at '%s', yylval=%s\n", yylineno, str, yytext, yylval);
}


int yywrap()
{
        return 1;
}
%}
%error-verbose

%token SENT OPEN_BRKT HEAD_EVENT CLOSE_BRKT EVENT REL ID OPEN_SQ_BRKT ARG BV CLOSE_SQ_BRKT HEAD REL1 UNDERSCORE_ID SELF OPEN_CIRCLE_BRKT STR CLOSE_CIRCLE_BRKT OPEN_ANG_BRKT CLOSE_ANG_BRKT LINDEX RINDEX LHNDL RHNDL ITYPE 

%%

start           : SENT {strcpy(sent,$1);} OPEN_BRKT type {strcpy(sent_head,$4);} relations CLOSE_BRKT; 

type		: EVENT   /*Added this 'type' rule by Roja (28-03-16) Ex: Do not shut the door.(ex: {i10:). As the dependency parse also starts with ITYPE giving separate rule for type. Replaced EVENT in start condition rule with type*/ 
		| ITYPE

relations : relations relation1
          | relation1;

relation1       : EVENT {index2=0;index1=index1+1;strcpy(arg0[index1],$1);} rel arg_info
                | SELF {index2=0;index1=index1+1;strcpy(arg0[index1],$1);} rel arg_info 
                | ITYPE {index2=0;index1=index1+1;strcpy(arg0[index1],$1);} rel arg_info 
	        | UNDERSCORE_ID {index2=0;index1=index1+1;strcpy(arg0[index1],$1);} rel arg_info; 

rel	: REL {strcpy(rel_name[index1],$1);} OPEN_ANG_BRKT ID {strcpy(id[index1],$4);} CLOSE_ANG_BRKT;

arg_info	: OPEN_SQ_BRKT args CLOSE_SQ_BRKT
                | OPEN_SQ_BRKT CLOSE_SQ_BRKT
                | STR arg_info;

args            : args args1
                | args1;

args1		: ARG {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} SELF {strcpy(args[index1][index2],$3);}
		| BV  {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} SELF {strcpy(args[index1][index2],$3);}
		| BV  {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} ITYPE {strcpy(args[index1][index2],$3);                         /*This pattern added by Roja (28-03-16) Ex: How many people did you see? _2:which_q<0:3>[BV i9] */ }
		| ARG  {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} EVENT {strcpy(args[index1][index2],$3);}
		| ARG {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} UNDERSCORE_ID {strcpy(args[index1][index2],$3);}
		| ARG {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} ITYPE {strcpy(args[index1][index2],$3);}
                | LINDEX {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} EVENT {strcpy(args[index1][index2],$3);}               
		| RINDEX {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} EVENT {strcpy(args[index1][index2],$3);}              
		| LHNDL EVENT
                | RHNDL EVENT
                | LINDEX {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} SELF {strcpy(args[index1][index2],$3);}
                | RINDEX {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} SELF {strcpy(args[index1][index2],$3);}
                | LHNDL SELF
                | RHNDL SELF
		| LINDEX {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} ITYPE {strcpy(args[index1][index2],$3);}
		| RINDEX {index2=index2+1;sub_index[index1]=index2;strcpy(arg_type[index1][index2],$1);} ITYPE {strcpy(args[index1][index2],$3);}
                | RHNDL ITYPE /*Added LINDEX, RINDEX and RHNDL ITYPE by Roja(28-03-16) Ex: He smiled and said, Good morning! */;  

%%

int get_word_id(char id_str[100] , char sent[1000])
{
  char *p,*id;
  int space_count=1,len1=0,len=0,c=0;
  char  sub_str[1000],id1[100];
  strcpy(id1,id_str);
  id1[strlen(id_str)]='\0';
  id=id1;
  len=strcspn(id,":");  id= id+len+1;
  len1=atoi(id);
  
   while (c < len1) {
      sub_str[c] = sent[c];
      c++;
   }
   sub_str[c] = '\0';
//  printf("---%s--%s---%d---%s--%s\n",sub_str,sent,len1,id_str,id); 
   p=sub_str;
  do {
        if (*p == ' ')
           space_count++;
    } while (*(p++));

 //printf("%s--%d\n",sub_str,space_count);
 return space_count;

}

main(int argc,char* argv[])
{
 int i=0,j=0,k=0,index3=0;
 char *sen,str[1000];
 fp = fopen(argv[1], "w");
 //strcpy(str,argv[2]);
 yyparse();
 strcpy(str,sent);
 //printf("=========%s==================\n" , sent);

 for(i=1;i<=index1;i++){
 if(strcmp(arg0[i],sent_head)==0)
 fprintf(fp,"(sent_head-id  %s  %d)\n",sent_head,get_word_id(id[i],str));}
 index3 = index1;
 for(i=1;i<=index1;i++){
                       //fprintf(fp,"(relation_name-id-args_with_ids %s  %s ",rel_name[i],id[i]);
                       fprintf(fp,"(relation_name-id-args_with_ids %s  %d ",rel_name[i],get_word_id(id[i],str));
                       if(sub_index[i] == '\0')
                       fprintf(fp,"ARG0 %s %d ",arg0[i],get_word_id(id[i],str));
                        
                       for(j=1;j<=sub_index[i];j++)
                        { 
                         if(strcmp(arg_type[i][j],"BV")==0){ }
                         else if (strcmp(rel_name[i],"implicit_conj")==0) { }
                         else if(j==1)
                         fprintf(fp,"ARG0 %s  %d ",arg0[i],get_word_id(id[i],str));
                            

                         for(k=1;k<=index3;k++)
                            {
                               if(strcmp(args[i][j],arg0[k])==0)
                                  fprintf(fp," %s %s %d ", arg_type[i][j],args[i][j],get_word_id(id[k],str));
                            }
                             
                        }
                          fprintf(fp,")\n");
                      }
 fclose(fp);
}


