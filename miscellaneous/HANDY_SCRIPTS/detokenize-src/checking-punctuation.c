//By Roja Lakshmi (04-11-11)
//Program to check whether end of the sentence as punctuation or not. If no punctuation then add full-stop(.)


#include <stdio.h>
#include<string.h>

main(int argc , char*argv[])
{
  int len=0;
  char str[1000],str1[1000];
  FILE *fp;

  fp = fopen(argv[1], "r");
  if(fp == NULL)
  printf("FILE cannot open");
  while(fgets(str, 1000, fp) != NULL) 
  {
         len=strcspn(str, "\n");
         strncpy(str1,str,len);
         str1[len]='\0';
//	printf("***%s***\n", str1);
        //checking punctuation at the end of the line.
        if((str1[len-1]=='.') || (str1[len-2] == '.') || (str1[len-1]=='?') || (str1[len-1]=='!') || (str1[len-1]=='\"') ||             (str1[len-1]=='\'') || (str1[len-1]==')') || (str1[len-2]=='?') || (str1[len-2]=='!') || (str1[len-2]=='\"') ||              (str1[len-2]=='\'') || (str1[len-2]==')') || (str1[len-2]=='>') || (str1[len-1]=='>')) 
           printf("%s\n", str1);
        else
           printf("%s.\n",str1);
  }   
fclose(fp);
}
