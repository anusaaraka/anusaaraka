%{
#define YYSTYPE char *
#include <stdio.h>
#include <string.h>


  int   my_level=0,my_token_count=0,found=0,my_index[100],j=0,index1=1;
  int   my_opn_parn_loc[100];
  char  my_temp[100][100000],str1[100],str2[10000],str3[10000],str4[10000],token[1000],my_constituents[100][100000],node_level[100][100000];
  char buffer[20];
   int count=0,count1=0;

 /* This procedure is called by yyparse on error to print an error message  */
 void yyerror(const char *str) {
    fprintf(stderr,"error: %s\n",str);
 }

/* The procedure is defined to return 1, indicating that the end of input occurs. */
 int yywrap() 
 {  return 1;  }

/* opens E_constituents_info.clp file in write mode and writes the constituents 
 * information with level and token count in clips format.   
 * opens constituents.clp file in write mode and writes the Node-category information into it. */

main(int argc,char *argv[])  
{
       FILE *fp_cons;
       FILE *fp_level;

       fp_cons =fopen(argv[2],"w");
//       fprintf(fp_cons,"(deffacts  Node-constituents\n");

  //     fp_level =fopen("Node_level_info.dat","w");
  //     fprintf(fp_level,"(deffacts  Node_level-constituents\n");

     yyparse();
     {
       int i,j;
       FILE *fp;    
       fp =fopen(argv[1],"w");
    //   fprintf(fp,"(deffacts constituents\n");
       for(i=1;i<index1;i++) {
           fprintf(fp,"%s",my_temp[i]);
       }
       for(j=0;j<=count;j++){
       fprintf(fp_cons,"%s",my_constituents[j]);//fprintf(fp_level,"%s",node_level[j]);
}
      // fprintf(fp_cons,")\n");
       //fprintf(fp,")\n");
       //fprintf(fp_level,")\n");
       fclose(fp);fclose(fp_cons); 
     }
  }
%}


%token LEFT_PAREN RIGHT_PAREN TOK_CATEGORY STRING

%%
                  
expression: LEFT_PAREN   {found=0;my_level++;
                            for(j=0;j<index1;j++)
                             {  if(my_index[j]==my_level)found=1; }
                            if(found==0)
                             { my_index[index1]=my_level;index1++; }
                            strcat(my_temp[my_level],"(Mother-Daughters                "); 
                            my_opn_parn_loc[my_level]=strlen(my_temp[my_level])-1; }

               // Get the TOK_CATEGORY and concatenate level number to the TOK_CATEGORY
            TOK_CATEGORY {
                           strcpy(token,$3);
                           my_token_count++;
                           //sprintf(str2,"\t%d\t%d\t\0",my_token_count,my_level);
                           sprintf(str2,"-%d\0",my_token_count);
                           strcat($3,str2);
                           sprintf(str3,"(Node-Category  %s  %s)\n",$3,token);
                           sprintf(str4,"(Node-level  %s  %d)\n",$3,my_level);
                           strcpy(node_level[count],str4);
                           strcpy(my_constituents[count],str3);
                           count=count+1;
                          } 

            sub_expression { 
                             strncpy(my_temp[my_level]+my_opn_parn_loc[my_level]-9,$3,strlen($3));
                             strcat(my_temp[my_level-1],$3);
                             strcat(my_temp[my_level-1]," "); }

            RIGHT_PAREN {  strcat(my_temp[my_level],")\n");
                           my_level--;  }
	    ; 


sub_expression:
	expression {strcpy($$,$1);}
	|
	sub_expression expression 
	|
                              /* if string is "?" then replace "?" with "question_mark" and add to my_temp array  */
	STRING                { if (strcmp($1,"?")==0)  { strcpy($1,"question_mark"); }
                                    strcat(my_temp[my_level],$1);
                           //         count1=count1+1;
                             //      sprintf(buffer,"%d\0",count1);
                              //     strcat(my_temp[my_level],buffer);
                                   strcat(my_temp[my_level]," ");
                              }
	|
                              /* if string is "?" then replace "?" with "question_mark" and add to my_temp array  */
	sub_expression STRING { if (strcmp($2,"?")==0) { strcpy($2,"question_mark"); }
                                   strcat(my_temp[my_level],$2);
                               //    count1=count1+1;
                                //   sprintf(buffer,"%d\0",count1);
                                 //  strcat(my_temp[my_level],buffer);
                                   strcat(my_temp[my_level]," ");
                                 //count1=count1+1;printf("%d\n",count1);
                               }
	;
