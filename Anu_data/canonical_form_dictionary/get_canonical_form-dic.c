//Programe to get canonical form dictionary
//Added by Roja (16-07-12)

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

extern void canonical_form(char* str , char* new_str);  //Calling canonical_form function

int main(int argc, char* argv[])
{

   size_t  len=0;
   char    word[100000], canonical_word[100000];
   char    *line=NULL;
   FILE    *fp;
   int     i, len1;

   fp=fopen(argv[1], "r");				//to open a file argv[1]
   if(fp==NULL)  printf("could not open file ");	

   while (getline(&line, &len, fp) != -1)
   {	
       	if(line[0] == '#')
		printf("%s", line); 	 //reading comments
	else 
	{
		len1=strcspn(line, "\n");
		strncpy(word, line, len1);  word[len1]='\0';	//getting the word 

		canonical_form(word,canonical_word);		//passing the word to canonical_form function
        	printf("%s\n", canonical_word);				
		*word='\0'; *canonical_word='\0';		//null the arrays word and canonical_word
	}
   }
   if (line)
	free(line);
   fclose(fp);
}
