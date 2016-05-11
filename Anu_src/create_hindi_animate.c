/* Program written by Roja 06-02-16 
*  To create hindi animate list from english animate dictionary using default dictionary   
*  RUN: ./create_hindi_animate.out dict.gdbm  eng_animate.txt  > hnd_animate.txt	
* 	Ex: ./create_hindi_animate.out default-iit-bombay-shabdanjali-dic.gdbm  eng-animate-list.txt  > hnd_animate.txt
*********************************************************************/

#include<stdio.h>
#include<string.h>
#include<gdbm.h>
#include<stdlib.h>

 int main(int argc,char* argv[])
 {

  GDBM_FILE   dbf;
  datum    content,word;
  FILE     *fp;
  char	   *line=NULL, str[1000], str1[1000], *value;
  size_t   length;
  int	   len, len1;

  dbf = gdbm_open (argv[1],512,GDBM_READER,0644,0);
  if (dbf == NULL)  printf("couldn't open the gdbm file\n");
  fp = fopen(argv[2], "r");
  if(fp == NULL) printf("couldn't open the file\n");

 
  while(getline(&line, &length, fp)!=-1)
  {
	if(line[0] != '#') 
	{
		*str='\0'; *str1='\0'; 
		len=strcspn(line, "\t");
		strncpy(str, line, len); str[len]='\0'; line=line+len+1; //str contains eng animate word
		strcat(str, "_noun"); //by default considering cat as noun
		word.dptr=str;
		word.dsize=strlen(word.dptr);
   		content = gdbm_fetch(dbf,word); //fetching eng animate in default dic

		value  = (char *)malloc(sizeof(char)* content.dsize+1); 
		strncpy(value, content.dptr, content.dsize); //storing content in value
		value[content.dsize] = '\0'; 
		word.dptr[word.dsize]='\0';

		if(content.dptr != NULL) 
		{
			while(strchr(value, '/')) //if more than one hindi mng then extracting each mng
			 { 
				len1 = strcspn(value, "/");
				strncpy(str1, value, len1); str1[len1]= '\0';
				printf("%s\t1\n",str1);
				value = value + len1 + 1; } 
			 
			if(!strchr(value, '/')) //if only one
				printf("%s\t1\n",value); 
		}
      }
      line=NULL;  value=NULL;
  }
  fclose(fp);
  gdbm_close(dbf);
  free(value);
 }
