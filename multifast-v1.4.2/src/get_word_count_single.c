//Print no: of words in a multi word
//Written by Roja (21-03-14)
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

main(int argc, char* argv[])
{
   char		*line = NULL, multi_word[1000], *p;
   size_t	len=0, multi_len=0, len1=0;
   int		word_count=0, count=0;
   FILE		*fp;
   
   fp = fopen(argv[1] , "r");
   if(fp == NULL) exit(EXIT_FAILURE);

 
   while(getline(&line, &len, fp)!=-1)
   {	
      		word_count=0, count=0;
		if(line[0] != '#') 
		{
      			sscanf(line, "%s\n", multi_word);
			len1=strlen(multi_word); multi_word[len1]='\0';
			p=multi_word; 
			while(strchr(p, '_'))
		  	{
		       		count++;    //increamenting the count
				p=strchr(p, '_');
				p=p+multi_len+2;
	  		}
			word_count = count + 1; //increamenting word_count when '_' in the multiword.
			printf("%s\tword_count=%d\n", multi_word, word_count); line=NULL; 
		}
   }
   if(line) free(line);
   fclose(fp);
   exit(EXIT_SUCCESS);
}
