//Function to convert given tranid into resid
#include<stdio.h>
#include<stdlib.h>
#define _GNU_SOURCE
#include<string.h>
#include "f_tid-rid.h"
int A[100][100];
int map_tran3id_resid(int tranval,char *file)
{ FILE *fp1;
  FILE *fp;
  char        abs_path[1000];

  //giving the path 
  strcpy(abs_path,ABS_PATH);
  strcat(abs_path,"f_tid-rid.dat");

  fp1=fopen(abs_path,"w");
  fp = fopen(file, "r");
  char * line = NULL;
  size_t len = 0,read;
  int i,j,tranid=0,n,count=0,resid=0,resval=0;


if (fp == NULL)
    printf("File do not exist");

while ((read = getline(&line, &len, fp)) != EOF)
{n=strcmp(line," -----------     tran1  PROCESSING COMPLETE      ----------\n");
  if(n==0)
 break;}

for(i=0;i<60;i++)
{for(j=0;j<100;j++)
  A[i][j]=-9999;}

i=j=0;
//To fetch resid
getline(&line, &len, fp);
getline(&line, &len, fp);
while ((read = getline(&line, &len, fp)) != EOF)
      {  int j=0;
         if(line[7]!=32 )        //32 is ascii value for space.It helps to identify the line which it needs to fetch
           {
             i++;
             sscanf(line+6,"%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d\n",&A[i][j],&A[i][j+1],&A[i][j+2],&A[i][j+3],&A[i][j+4],&A[i][j+5],&A[i][j+6],&A[i][j+7],&A[i][j+8],&A[i][j+9],&A[i][j+10],&A[i][j+11],&A[i][j+12],&A[i][j+13],&A[i][j+14],&A[i][j+15],&A[i][j+16],&A[i][j+17],&A[i][j+18],&A[i][j+19]);
               if(A[i][j+1] == 0)
               break;
               fputs("(Tran_id-Res_id\t\t",fp1);  //write into map-tran3id-resid.dat
               fprintf(fp1,"%d\t",A[i][j]);
               fprintf(fp1,"%d)\n",A[i][j+10]);
         if(tranval==A[i][j])              //mapping user given tranid to resid
                 resval=A[i][j+10]; 
            i++;
          }}
if (line)                         
free(line);
fclose(fp1);                     
fclose(fp);
return resval;
}
/*void main()
{int res=0;
 res= map_tran3id_resid(11);
 printf("%d\n",res);
}*/
