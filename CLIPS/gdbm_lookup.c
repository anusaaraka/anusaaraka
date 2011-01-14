#include <stdio.h>
#include <string.h>
#include <gdbm.h>
#include "clips.h"
#include <stdlib.h>
#include <stddef.h>
#include "gdbm_lookup.h"
char * gdbm_lookup(char *word,char *dbm)
{
   GDBM_FILE   dbf;
   datum       key,value; 
   char        *morph_out , *my_morph_out;
   char        abs_db_path[1000];
   int         len=0,len1=0;
   char        *dbm1;
   /*=================================*/
   /* Check for exactly one argument. */
   /*=================================*/

   if (ArgCountCheck("gdbm_lookup",EXACTLY,2) == -1)
   { return(AddSymbol("")); }

   /*=================================*/
   /* To open the gdbm file.          */
   /*=================================*/
 
  len=(strlen(RtnLexeme(1)));
  dbm=malloc(sizeof(char)*len+1);

  strcpy(dbm,RtnLexeme(1));
  //strcpy(abs_db_path,"/home/mahalaxmi/02-04-09/anu_testing/Anu_databases/");
  strcpy(abs_db_path,ABS_ANU_PATH);
  strcat(abs_db_path,dbm);
  free(dbm);
  len1=(strlen(abs_db_path));
  dbm1=malloc(sizeof(char)*len1+1);
  strcpy(dbm1,abs_db_path);
  
   dbf = gdbm_open(dbm1,512,GDBM_READER,0644,0);
   if (dbf == NULL) exit(1); 
   
/*==========================================================================================*/
/* RtnLexeme returns a character pointer from either a symbol, string, or instance name data type */
/*=========================================================================================*/

   word = RtnLexeme(2);

   key.dptr=word;
   key.dsize=strlen(key.dptr);
   
   value = gdbm_fetch(dbf,key);

   /*=================================*/
   /* To allocate the size.           */
   /*=================================*/

   morph_out  = (char *)malloc(sizeof(char)* value.dsize+1);
   if(value.dptr==NULL)
   {strncpy(morph_out,"FALSE",6);morph_out[6]= '\0';}
   else
  { strncpy(morph_out,value.dptr,value.dsize);
   morph_out[value.dsize] = '\0';}

   /*=============================================================================*/
   /* To return the morph output.Refer 3.3.1 of advanced clips pdf for AddSymbol. */ 
   /*=============================================================================*/
 
   my_morph_out = AddSymbol(morph_out);
   free(dbm1);free(morph_out);
   return my_morph_out;
}
