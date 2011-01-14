#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "clips.h"
#include <gdbm.h>
#include "gdbm_lookup.h"

int gdbm_lookup_p(char *word,char *dbm)
{
   GDBM_FILE   dbf;
   datum       key,value;
   int 	       flag;
   char        abs_db_path[1000];
   int         len=0,len1=0;
   char        *dbm1;
  /*=================================*/
  /* Check for exactly two argument. */
  /*=================================*/
 
  if (ArgCountCheck("gdbm_lookup_p",EXACTLY,2) == -1)
  { return(FALSE); }

 /*==========================================================================================*/
 /*RtnLexeme returns a character pointer from either a symbol, string, or instance name data type */
 /*=========================================================================================*/

   len=(strlen(RtnLexeme(1)));
  dbm=malloc(sizeof(char)*len+1);

  strcpy(dbm,RtnLexeme(1));
  strcpy(abs_db_path,ABS_ANU_PATH);
  strcat(abs_db_path,dbm);
  free(dbm);
  len1=(strlen(abs_db_path));
  dbm1=malloc(sizeof(char)*len1+1);
  strcpy(dbm1,abs_db_path);
  
  //dbm = RtnLexeme(1);
  word = RtnLexeme(2);
 
  /*=================================*/
  /* To open the gdbm file.          */
  /*=================================*/

  dbf = gdbm_open(dbm1,512,GDBM_READER,0644,0);
  if (dbf == NULL) exit(1);
  
  key.dptr=word;
  key.dsize=strlen(key.dptr);
  value = gdbm_fetch(dbf,key);

  while(value.dptr==NULL)
   {
      flag=0;
      break;
   }
  while(value.dptr!=NULL) 
   {
      flag=1;
      break;
   }

   if(flag==1)
         return(TRUE);
  else  return(FALSE);   
}
