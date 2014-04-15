/* Program written by Roja 20-03-14 
*  To fetch value for a given key   
*  RUN: ./gdbm-fetch.out dict.gdbm  key.txt  > key-val.txt	
* 	Ex: ./gdbm-fetch.out en-hi-dict.gdbm  key.txt  > key-val.txt 
*********************************************************************/

#include<stdio.h>
#include<string.h>
#include<gdbm.h>
#include <stdlib.h>

 int main(int argc,char* argv[]){

  GDBM_FILE   dbf;
  datum    content,word;
  FILE     *fp;
  char	   *line=NULL, str[1000], wrd_ids[1000], *value;
  size_t   length;
  int	   len, len1;

  dbf = gdbm_open (argv[1],512,GDBM_READER,0644,0);
  if (dbf == NULL)  printf("couldn't open the gdbm file\n");
  fp = fopen(argv[2], "r");
  if(fp == NULL) printf("couldn't open the file\n");

 
  while(getline(&line, &length, fp)!=-1)
  {
	*str='\0'; *wrd_ids='\0'; 
	if(line[0] != ';') 
	{
		line = line+20+1; //(eng_cmp_mng-eng_ids\t = 20(length of the string)
		len=strcspn(line, "\t");
		strncpy(str, line, len); str[len]='\0'; line=line+len+1;
		len1=strcspn(line, ")");
		strncpy(wrd_ids, line, len1); 	wrd_ids[len1]='\0';
	//		printf("%s", wrd_ids);
		word.dptr=str;
		word.dsize=strlen(word.dptr);
   		content = gdbm_fetch(dbf,word);

		value  = (char *)malloc(sizeof(char)* content.dsize+1);
		strncpy(value, content.dptr, content.dsize);
		value[content.dsize] = '\0';
		word.dptr[word.dsize]='\0';

		if(content.dptr == NULL)
        		printf("%s\tWord not found\n", word.dptr);  
		else  	
			printf("%s\t%s\t%s\n",word.dptr, value, wrd_ids);
		line=NULL;  
	}
	else
	   printf("%s", line); line = NULL; // ;~~~~~~~~~~
 }
 fclose(fp);
 gdbm_close(dbf);
 free(value);
}
