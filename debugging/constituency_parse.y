%{
#define YYSTYPE char *
#include <stdio.h>
#include <string.h>

int my_level=0,my_token_count=0,found=0,my_index[100],j=0,index1=1,k=0;// index1 seems to store (max_number_of_levels+1)!
int my_opn_parn_loc[100];
char my_temp[100][100000],str1[100],str2[100],str3[100],token[10],node_cat[500][100];
int current_sub_level[100];
char my_daughters[100][100][100], my_mother[100][100][100], my_head[100][100][100];
char buffer[20];
int count=0,count1=0;

void yyerror(const char *str)
{
	fprintf(stderr,"error: %s\n",str);
}

int yywrap()
{
	return 1;
}

main(int argc,char *argv[])
{     
	yyparse();
      	{	int i,j;
       		for(i=1;i<index1;i++){ 
            		for(j=1;j<current_sub_level[i]+1;j++); //printf("\n");
	//fprintf(fp,"(Head-Level-Mother-Daughters %s %d %s %s)\n", my_head[i][j], i, my_mother[i][j], my_daughters[i][j]); 
   		}
       }
       {	
		FILE *fp;
                FILE *fp_node;
                fp_node =fopen(argv[2],"w");
                fp =fopen(argv[1],"w");

		int i,j;
	      	for(i=1;i<index1;i++){ //printf("\n");
		    for(j=1;j<current_sub_level[i]+1;j++) //printf("(Head-Level-Mother-Daughters %s %d %s %s) ", my_head[i][j], i, my_mother[i][j], my_daughters[i][j]); 
			 fprintf(fp,"(Head-Level-Mother-Daughters %s %d %s %s)\n", my_head[i][j], i, my_mother[i][j], my_daughters[i][j]); 
		   }
	      fclose(fp);
              for(i=1;i<=count;i++)
              fprintf(fp_node,"%s",node_cat[i]);
              fclose(fp_node);
       }
		
}

%}

%token LEFT_PAREN RIGHT_PAREN LEFT_BRACKET SLASH RIGHT_BRACKET TOK_CATEGORY STRING

%%
/* Actions in Mid-rule style is followed here; so for deciding "n" in $n, actions are also to be counted */
expression: LEFT_PAREN {found=0;my_level++;current_sub_level[my_level]++;
                        for(j=0;j<index1;j++)
                        {if(my_index[j]==my_level)found=1;}
                        if(found==0){my_index[index1]=my_level;index1++;}
                        strcat(my_temp[my_level],"(          "); my_opn_parn_loc[my_level]=strlen(my_temp[my_level]);}

            TOK_CATEGORY{//sprintf(str1,"%d\0",my_level);strcat($3,str1);my_token_count++;
                         count=count+1;
                         strcpy(token,$3);

                         my_token_count++;
			 sprintf(str2,"%d\0",my_token_count);strcat($3,str2);
                         strcpy(my_mother[my_level][current_sub_level[my_level]],$3);
                         sprintf(str3,"(Node-Category\t%s\t%s)\n",$3,token); 
                         strcpy(node_cat[count],str3);
                        }

	    LEFT_BRACKET
	    STRING        {strcat(my_temp[my_level],$6);strcat(my_temp[my_level]," ");

                          strcpy(my_head[my_level][current_sub_level[my_level]],$6);}
	    SLASH
	    TOK_CATEGORY
	    RIGHT_BRACKET
            sub_expression
                        {
                          strncpy(my_temp[my_level]+my_opn_parn_loc[my_level]-9,$3,strlen($3));
                          strcat(my_temp[my_level-1],$3);
                          strcat(my_temp[my_level-1]," ");

                          strcat(my_daughters[my_level-1][current_sub_level[my_level-1]],$3);
                          strcat(my_daughters[my_level-1][current_sub_level[my_level-1]]," "); }

           RIGHT_PAREN {
                        strcat(my_temp[my_level],")");
                        my_level--; }
	    ;          


sub_expression:
	expression {strcpy($$,$1);}
	|
	sub_expression expression 
	|
	STRING { strcat(my_temp[my_level],$1); strcat(my_temp[my_level]," ");
                   count1=count1+1;
        	           sprintf(buffer,"P%d\0",count1);
                // strcat(my_daughters[my_level][current_sub_level[my_level]],buffer);
                 strcat(my_daughters[my_level][current_sub_level[my_level]],$1);
              }
	|
	sub_expression STRING {strcat(my_temp[my_level],$2);strcat(my_temp[my_level]," ");
                                     count1=count1+1;
                                     sprintf(buffer,"P%d\0",count1);
                              // strcat(my_daughters[my_level][current_sub_level[my_level]],buffer);
                               strcat(my_daughters[my_level][current_sub_level[my_level]],$2);
                              }
	;

