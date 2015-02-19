#include <stdio.h>
#include <string.h>
#include <gdbm.h>
#include <stdlib.h>

 int main(int argc,char* argv[]){

  GDBM_FILE   dbf;
  datum       content, word;
  char *value;
 
   word.dptr=argv[2];
   word.dsize=strlen(word.dptr);

   dbf = gdbm_open (argv[1],512,GDBM_READER,0644,0);

   if (dbf == NULL)  printf("couldn't open the file\n");

   content = gdbm_fetch (dbf,word );
   value  = (char *)malloc(sizeof(char)* content.dsize+1); //Added by Roja(12-02-15)


   if(content.dptr ==NULL)
         { fprintf(stdout, "Word not found\n");   }
   // Modified below else loop by Roja(12-02-15). 
   // Instead of printing content.dptr directly storing the data of content in a variable 'value' to avoid junk characters in o/p.
   else  { strncpy(value,content.dptr,content.dsize); 
	   value[content.dsize] = '\0';
 	   printf("%s\n",value);  }
 }
