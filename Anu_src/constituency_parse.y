/* Any changes done in this file , then update miscellaneous/TREES/tree_viewer/constituency_parse.y file. */
%{
#define YYSTYPE char *
#include <stdio.h>
#include <string.h>
int yylex(); //added to avoid gcc error in 16.04

int my_level=0,my_token_count=0,found=0,my_index[100],j=0,index1=1,k=0;// index1 seems to store (max_number_of_levels+1)!
int my_opn_parn_loc[100];
char my_temp[100][100000],str1[100],str2[100],str3[100],token[10],node_cat[500][100];
int current_sub_level[100];
char my_daughters[100][100][1000], my_mother[100][100][100], my_head[100][100][100];
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

int main(int argc,char *argv[])
{     
	int yyparse(); //added int to avoid gcc error in 16.04
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

%token LEFT_PAREN RIGHT_PAREN SLASH TOK_CATEGORY STRING

%%
/* Actions in Mid-rule style is followed here; so for deciding "n" in $n, actions are also to be counted */
/* Removed LEFT_BRACKET and  RIGHT_BRACKET sub-expressions and handle it in TOK_CATEGORY to differenciate between Tokens and string in sentences like "The S does not stand for anything; therefore, his name was Harry S Truman." */
expression: LEFT_PAREN {found=0;my_level++;current_sub_level[my_level]++;
                        for(j=0;j<index1;j++)
                        {if(my_index[j]==my_level)found=1;}
                        if(found==0){my_index[index1]=my_level;index1++;}
                        strcat(my_temp[my_level],"(          "); my_opn_parn_loc[my_level]=strlen(my_temp[my_level]);}

            TOK_CATEGORY{//sprintf(str1,"%d\0",my_level);strcat($3,str1);my_token_count++;
                         count=count+1;
                         strcpy(token,$3);

                         my_token_count++;
			 //sprintf(str2,"%d\0",my_token_count); strcat($3,str2);
			 //Modified above step as shown below by Roja(11-05-16). To avoid warnings in Ubuntu 14.04 and above
			 sprintf(str2,"%d",my_token_count); str2[strlen(str2)] = '\0';  strcat($3,str2); 
                         strcpy(my_mother[my_level][current_sub_level[my_level]],$3);
                         sprintf(str3,"(Node-Category\t%s\t%s)\n",$3,token); 
                         strcpy(node_cat[count],str3);
                        }

	    STRING        {strcat(my_temp[my_level],$5);strcat(my_temp[my_level]," ");

                          strcpy(my_head[my_level][current_sub_level[my_level]],$5);}
	    SLASH
	    TOK_CATEGORY
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
        	           //sprintf(buffer,"P%d\0",count1);
			   //Modified above step as shown below by Roja(11-05-16). To avoid warnings in Ubuntu 14.04 and above
        	           sprintf(buffer,"P%d",count1); buffer[strlen(buffer)]='\0';
                 strcat(my_daughters[my_level][current_sub_level[my_level]],buffer);
              }
	|
	sub_expression STRING {strcat(my_temp[my_level],$2);strcat(my_temp[my_level]," ");
                                     count1=count1+1;
        	           	     //sprintf(buffer,"P%d\0",count1);
	  			     //Modified above step as shown below by Roja(11-05-16). To avoid warnings in Ubuntu 14.04 and above
                                     sprintf(buffer,"P%d",count1); buffer[strlen(buffer)]='\0';
                               strcat(my_daughters[my_level][current_sub_level[my_level]],buffer);
                              }
	;

