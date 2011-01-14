#include<stdio.h>
#include <string.h>
#include <gdbm.h>

 int main(int argc,char* argv[]){

  GDBM_FILE   dbf;
  datum       content,word,tmp_word;
 
  word.dptr=argv[2];
  word.dsize=strlen(word.dptr);

   dbf = gdbm_open (argv[1],512,GDBM_READER,0644,0);

   if (dbf == NULL)  printf("couldn't open the file\n");

   content = gdbm_fetch (dbf,word );

   if(content.dptr ==NULL)
         { fprintf(stdout, "Word not found\n");   }
   else  {  printf("%s\n",content.dptr);  }
 }
