//Program to get resolve information of each word.
#include<stdio.h>
#include<stdlib.h>
#define _GNU_SOURCE
#include<string.h>
#include "f_tid-rid.h"
int res[100][100];
char word[100][50];
int range=0;
char sentence_word[100][50];
int f_range_wordarray_resarray(FILE *fp)
	{ 
          FILE *fp1;
          char * line = NULL;
          size_t len = 0;
          size_t read;
          int n,i=0,j=0,c=1,id=0,m=0,count=0,ln=0;
          char s1[50],s2[50],s3[50],s4[50],s5[50],s[100];
          char abs_path[1000];
         
          strcpy(abs_path,ABS_PATH);
          strcat(abs_path,"resid-word.dat");
          fp1=fopen(abs_path,"w"); 
 
 if (fp == NULL)
   printf("Do not exist");
//To get RESOLVED TABLE in ol-EG-TR.diag
while ((read = getline(&line, &len, fp)) != EOF)
    	{ 
	      n=strcmp(line,"*RESOLVED SWORK RECORDS*\n");
        if(n == 0)
        break;
      }      
//To avoid storage of three lines after RESOLVED SWORK RECORDS
 getline(&line, &len, fp);
 getline(&line, &len, fp);
 getline(&line, &len, fp);
 
 	      while ((read = getline(&line, &len, fp)) != EOF)
      		{
		 sscanf(line,"%d %s %d%d%d%d%d%d%d%d %s %d%d %s %d%d%d%d%d%d%d%d%d%d %s %d%d%d%d%d%d%d%d%d%d%d %[^\n]\n",&res[i][j+0],s1,&res[i][j+2],&res[i][j+3],&res[i][j+4],&res[i][j+5],&res[i][j+6],&res[i][j+7],&res[i][j+8],&res[i][j+9],s2,&res[i][j+11],&res[i][j+12],s3,&res[i][j+14],&res[i][j+15],&res[i][j+16],&res[i][j+17],&res[i][j+18],&res[i][j+19],&res[i][j+20],&res[i][j+21],&res[i][j+22],&res[i][j+23],s4,&res[i][j+25],&res[i][j+26],&res[i][j+27],&res[i][j+28],&res[i][j+29],&res[i][j+30],&res[i][j+31],&res[i][j+32],&res[i][j+33],&res[i][j+34],&res[i][j+35],&word[i][0]);
    strcpy(s5,word[i]); 
     if(strstr(s5,")")!=NULL ||strstr(s5,"(")!=NULL ||strstr(s5,"$")!=NULL ||strstr(s5,",")!=NULL ||strstr(s5,".")!=NULL ||strstr(s5,":")!=NULL ||strstr(s5,";")!=NULL ||strstr(s5,"?")!=NULL ||strstr(s5,"!")!=NULL ||strstr(s5,"'")!=NULL||strstr(s5,"=")!=NULL || strstr(s5,"=")!=NULL)  // Added '=' by Roja (10-10-11) Ex: He is very well-liked(= popular) at work.
     {
       fprintf(fp1,"(Res_id-WC-Word-Anu_id \t%d\t%d\tPunctuation mark 0)\n",res[i][j+0],res[i][j+2]);
       strcpy(word[i],"PunctuationMark"); 
      
     }
       else
       {  int c=0, len=0;
          fprintf(fp1,"(Res_id-WC-Word-Anu_id \t%d\t%d\t%s\t",res[i][j+0],res[i][j+2],s5);
          for(c=0; c < res[i][j+35];c++)
          {  sscanf(s5+len,"%s",s);
             fprintf(fp1,"\t%d",id);
             len=strlen(s)+len+1;
             id++;
      }
    fputs(")\n",fp1);
    }
     i++;
//If more than one word are combined in resolve
      if((line[138]== '.') || (line[138] == '?') || (line[138] == '!') )
      	//if(line[136]== 0)
         {
	   break;
         }}  
             
if (line)
free(line);
range=i;
//To store all words in sentence in sentence_word array
for(i=0;i<100;i++)
{  for(j=0;j<50;j++)
      {sentence_word[i][j]=word[i][j];
       if(sentence_word[i][j]==32)
         {sentence_word[i][j]='\0';
          j=100;
         }
      }
}
return range;
}

//*To run program independntly
int main(int argc,char * argv[1])  //changed return type from 'void' to 'int' to avoid warnings in server
  { 
          FILE *fp;
          FILE *subject_fp;
          FILE *rel_fp;
          int i ;
          char abs_path[1000];
          
          strcpy(abs_path,ABS_PATH);
          strcat(abs_path,"tmp-rel-facts.dat");
          rel_fp = fopen(abs_path, "w");
  
          fp = fopen(argv[1], "r");

          range=f_range_wordarray_resarray(fp);
          //if(0<=atoi(argv[2]) && atoi(argv[2])<range)
          for(i=0;i<range;i++)  
           { if(res[i][17] == 0 && res[i+1][17] != 0)
            fprintf (rel_fp,"(Subject_id-word P%d %s)\n",i+1,sentence_word[i+1]);
            fprintf (rel_fp,"(id-word-wc-typ-fr-subset-superset %d %s %d %d %d %d %d)\n",res[i][0],sentence_word[i],res[i][2],res[i][3],res[i][4],res[i][5],res[i][6]);
             
          }
           fclose(fp);
           fclose(rel_fp);
  }

