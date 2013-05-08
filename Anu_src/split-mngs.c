//Program to split hindi meanings with '/'
//Written by Roja (11-07-12) 

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char* argv[])
{

   size_t  len=0, len1=0;
   char    hnd_mng[1000], eng_mng[1000], hnd_mng1[1000], *value;
   char    * line=NULL;
   FILE    *fp;
   int     i;

   fp=fopen(argv[1], "r");
   if(fp==NULL)  printf("could not open file ");

   while (getline(&line, &len, fp) != -1)
   {
       sscanf(line, "%s\t%s\n", &hnd_mng[i], &eng_mng[i]);
       value=hnd_mng; 
       while(strchr(value, '/')) 
         {   
             len1=strcspn(value, "/");
             strncpy(hnd_mng1, value, len1);
             hnd_mng1[len1]='\0';  value=value+len1+1; 
             printf("%s\t%s\n", hnd_mng1, eng_mng);
         }	     
         if(!strchr(value, '/'))    
             printf("%s\t%s\n", value, eng_mng);
   } 
 fclose(fp);
}
