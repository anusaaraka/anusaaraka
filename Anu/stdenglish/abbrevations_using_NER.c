//Using NER information to add ABBR-Dot in the abbreviated words.
//Ex: [J.P.] Bolduc, vice chairman of [W.R.] Grace and Co., which holds a 83.4% interest in this energy-services company, was elected a director.
//Written by Roja (20-06-13)
//Ex: U.S.A. becomes UABBR-DotSABBR-DotAABBR-Dot

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

main(int argc, char* argv[])
{
   char		*line = NULL, word[10000], type[1000], *ptr, str[1000];
   size_t	length=0, len=0, len1=0;
   FILE		*fp;
   
   fp   = fopen(argv[1] , "r");
   if(fp == NULL) printf("Couldn't open file\n");

   printf("/*****This is a generated file *****/\n\n");   
   printf("%%%%\n");

   while(getline(&line, &length, fp)!=-1)
   {	*str='\0';
        sscanf(line, "(word-nertype\t%s\t%s", word, type);
	if(strchr(word, '.')) {
	ptr=word;  //Storing the abbreviated word in a pointer
	while((len1=strcspn(ptr,".")) < strlen(ptr))
         {   
             strncat(str,ptr,len1);
             ptr=ptr+len1+1;
             strcat(str,"ABBR-Dot");  //concatening the string with ABBR-Dot
         }
         len = strlen(ptr);
         strncat(str,ptr,len); 
         printf("%s\t{\tprintf(\"%s\");\t}\n",word, str); } //Generating 'generate_ABBR-Dot.lex' file
   }
   printf("%%%%\n");
   fclose(fp);
}
