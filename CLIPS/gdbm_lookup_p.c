#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "clips.h"
#include <gdbm.h>
#include "gdbm_lookup.h"

int gdbm_lookup_p(char *dbm,char *word)
{
   GDBM_FILE   dbf;
   datum       key,value;
//   int 	       flag;
   char        abs_db_path[1000];
   int         len=0,len1=0;
   char        *dbm1;
   DATA_OBJECT temp;

  /*=================================*/
  /* Check for exactly two argument. */
  /*=================================*/

  if (ArgCountCheck("gdbm_lookup_p",EXACTLY,2) == -1)
  { return(FALSE); }

  /*=================================*/
  /* Check the datatype of 2nd argument. */
  /*=================================*/

  if (ArgTypeCheck("gdbm_lookup_p",2,SYMBOL_OR_STRING,&temp) == 0)
    { return(1L);}
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
  
  word = RtnLexeme(2);
  //PrintRouter(WDISPLAY,"Database: ");PrintRouter(WDISPLAY,RtnLexeme(1));PrintRouter(WDISPLAY,"  word :");PrintRouter(WDISPLAY,RtnLexeme(2));PrintRouter(WDISPLAY,"\n");
  /*=================================*/
  /* To open the gdbm file.          */
  /*=================================*/

  dbf = gdbm_open(dbm1,512,GDBM_READER,0644,0);
 /*=================================*/
  /* Check whether databse is empty. */
  /*=================================*/
  if (dbf == NULL) 
 { PrintRouter(WDISPLAY,"Warning :: Database Not Found ------ OR ----- Database Is Empty.\n");
//   PrintRouter(WDISPLAY,"\n");
 //  PrintRouter(WDISPLAY,RtnLexeme(2));
  // PrintRouter(WDISPLAY,"\n");
   return(1L); }
  
  key.dptr=word;
  key.dsize=strlen(key.dptr);
  value = gdbm_fetch(dbf,key);

  gdbm_close (dbf);
  if(value.dptr!=NULL)
    return(TRUE);
  else
   return(FALSE);
}
