//Function to get number of words in given sentence.
#include<stdio.h>
#include<stdlib.h>
#define _GNU_SOURCE
#include<string.h>
int range[100][100];
int sentence_range(FILE *fp)
{
           char * line = NULL;
           size_t len = 0;
           size_t read;
           int n,count=0, i=0, j=0;
           char s1[10],s2[10],s3[10],s4[10],s5[10];
           if (fp == NULL)
           printf("File do not exist");

getline(&line, &len, fp);           
getline(&line, &len, fp);           
getline(&line, &len, fp);           
while ((read = getline(&line, &len, fp)) != EOF)
      { 
        n=strcmp(line,"*RESOLVED SWORK RECORDS*\n");
        if(n == 0)
        break;
     }      
while ((read = getline(&line, &len, fp)) != EOF)
      {                 
       sscanf(line,"%d %s %d%d%d%d%d%d%d%d %s %d%d %s %d%d%d%d%d%d%d%d%d%d %s %d%d%d%d%d%d%d%d%d%d%d %s\n",&range[i][j+0],s1,&range[i][j+2],&range[i][j+3],&range[i][j+4],&range[i][j+5],&range[i][j+6],&range[i][j+7],&range[i][j+8],&range[i][j+9],s2,&range[i][j+11],&range[i][j+12],s3,&range[i][j+14],&range[i][j+15],&range[i][j+16],&range[i][j+17],&range[i][j+18],&range[i][j+19],&range[i][j+20],&range[i][j+21],&range[i][j+22],&range[i][j+23],s4,&range[i][j+25],&range[i][j+26],&range[i][j+27],&range[i][j+28],&range[i][j+29],&range[i][j+30],&range[i][j+31],&range[i][j+32],&range[i][j+33],&range[i][j+34],&range[i][j+35],s5);
       if(line[136]=='0' || line[120]=='0') //To identify the end of the sentence.
       break;                
      } 

return(range[i][j]);
if (line)
free(line);
}
//Tocheck individually this programme uncomment below lines.
/*int main(void)
{ FILE *fp;int range;
 fp = fopen("ol-EG-TR.diag", "r");
 range= sentence_range(fp);
 printf("\nSentence Range is =%d\n",range);
    fclose(fp);
return 0;
}*/

