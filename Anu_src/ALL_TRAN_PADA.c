/*To extract information of grouping of id's from Output Target Arrays In tran1, tran2 and tran3 respectively of OpenLogos*/

#include<stdio.h>
#include<stdlib.h>
#define _GNU_SOURCE
#include<string.h>
int p[100][40][100];
int a[100];
extern int sentence_range(FILE *fp);
extern int map_tran3id_resid(int tranval,char *file);

int compare(const void *a,const void *b)
{
  return (*(int *)a-*(int *)b);
}

int  main(int argc, char *argv[1])
{
            char * line = NULL;
            FILE * fp;
            FILE * fp1;
            size_t len = 0;
            size_t read;
            int n,i,ch,j,k,loopcount=0,m,q,range=0,sort=0,flag=0,cnt=1;//Modified cnt=0 to 1 by Mahalaxmi 20-10-2011
                                                                       //As cnt here starts from cnt=1 in this prg.  
            char *cha,charcons;
            char word[100][100]; 
            char s1[]="             ***** OUTPUT TARGET ARRAYS IN tran1  *****\n";
            char s2[]="             ***** OUTPUT TARGET ARRAYS IN tran2  *****\n";
            char s3[]="             ***** OUTPUT TARGET ARRAYS IN tran3  *****\n";

//File to read/write
           fp = fopen(argv[1], "r");
           fp1 = fopen(argv[2], "w");
 if (fp == NULL || fp1 == NULL)
           printf("File could not Open");

//Intialize the array
           for(k=0; k<100; k++)
           {for(i=0; i<40; i++)
           {for(j=0; j<100; j++)
            p[k][i][j]=9999;}}

range=sentence_range(fp);

do
{
  while ((read = getline(&line, &len, fp)) != EOF)
  { if(cnt==1)
     n=strcmp(line,s1);
     if(cnt==2)
        n=strcmp(line,s2);
     if(cnt==3)
       n=strcmp(line,s3);
        if(n == 0)
             break;
  }
getline(&line, &len, fp);
getline(&line, &len, fp);
i=0;n=0;k=-1,loopcount=0;

cnt++;
while ((read = getline(&line, &len, fp)) != EOF)
 { 
     ch=strcmp(line,"*EOS*\n"); //to find end of table
     if(ch == 0)
     break;
     
//1st index of table 
 if(line[7]=='W' )  //'W' in 'SWORKO'
   {
     k++;i=0;j=0;loopcount++;
    sscanf(line+16," %d%d%d%d%s \n",&p[k][i][j],&p[k][i][j+1],&p[k][i][j+2],&p[k][i][j+3],&word[k][0]);//to get all tran info
    p[k][i][j+3]=map_tran3id_resid(p[k][i][j+3],argv[1]);
    i++;
    }
//To fetch Constiuents info from SCONPO
 else if(line[7]=='C')  //'C' in 'SCONPO'
    {  q=16;j=0;
      while(q < read )
        {  sscanf(line+q,"%d",&p[k][i][j]);
           if(p[k][i][j] <= range)
            { p[k][i][j]=map_tran3id_resid(p[k][i][j],argv[1]);  //to map SCONPO ids.
              j++;
            } 
         p[k][i][j]=9999;  //to avoid last is in scon line storage
         q=q+6;   // to move the index of line pointer before the next SCONPO id.
       }
       i++;
   }
//to handle HFPOAD line
 else if(strstr(line," HFPOAD: ")!=NULL)
   { j=0; q=16; 
     while(q < read )
        { sscanf(line+q,"%d",&p[k][i][j]);
          if(p[k][i][j] <= range)
            {p[k][i][j]=map_tran3id_resid(p[k][i][j],argv[1]); //to map SCONHF ids.
             j++;
             }
           p[k][i][j]=9999;  //to avoid last is in scon line storage
           q=q+6;
        }
    i++;j=0;q=16;
    getline(&line, &len, fp);
    while(q < read )
       { sscanf(line+q,"%d",&p[k][i][j]);
         if(p[k][i][j] <= range)
            {p[k][i][j]=map_tran3id_resid(p[k][i][j],argv[1]);
             j++;
            }
         p[k][i][j]=9999;  //to avoid last is in scon line storage
         q=q+6;
       }
    i++;
   }
}

//To print OUTPUT ARRAY Information
  for(k=0;k<loopcount; k++)
  {
       fprintf(fp1,"(tran-word-wc-typ-form-h_id-comp  %d",cnt-1);
       // Added below coding part for '(', ')', ';' and '=' by Roja (10-10-11) Ex: He is very well-liked(= popular) at work.
       if(strcmp(word[k],"(") ==0) 
             strcpy(word[k],"left_paren");
       else if(strcmp(word[k],")") ==0)
             strcpy(word[k],"right_paren");
       else if(strcmp(word[k],";") ==0)
             strcpy(word[k],"semicolon");
       else if(strcmp(word[k],"=") ==0)
             strcpy(word[k],"equal_to");
       fprintf(fp1,"\t%s\t",word[k]);  
       for(i=0,sort=0; i<4; i++)
        {for(j=0;p[k][i][j]!=9999; j++)
          { 
           
            if(i>0)
            { a[sort]=p[k][i][j];
              sort++;}
              else
           fprintf(fp1,"\t%d",p[k][i][j]);
        }}
           qsort (a,100, sizeof(int),compare);
          for(sort=0;sort<100;sort++)
          {if((a[sort]!=0) && (a[sort]!=a[sort+1]))
            fprintf(fp1,"\t%d",a[sort]);
            a[sort]=0;}
      fputs(")\n",fp1);
 }
}while(cnt<4);
fprintf(fp1,"\n(Sentence range is %d)",range);

if (line)
free(line);
}
