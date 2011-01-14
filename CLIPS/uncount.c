#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "clips.h"

get_uncountable_info(char *word)
{
   char  str[1000];
   int   len,flag; 
   FILE  *fp;
  
  if (ArgCountCheck("get_uncountable_info",EXACTLY,1) == -1)
   { return(FALSE); }

  word = RtnLexeme(1);

//   fp = fopen("uncountable.dat","r");  
   fp = fopen("../../../anu_testing/clips/uncountable.dat","r");
   if(fp == NULL)
    {
      printf("Could not open uncountable.dat file for reading \n");
      exit(-1);
    }
    while(!feof(fp))
     {
       flag=0;
       fgets(str,100,fp);
       len=strlen(str);
       str[len-1]='\0';
       if(strcmp(word,str)==0)
        {
          flag++;
          if(flag==1)break;
        }
     }
     if(flag==1)
         return(TRUE);
     else
        return(FALSE);
    fclose(fp);
}
