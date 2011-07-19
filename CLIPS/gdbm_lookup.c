#include <stdio.h>
#include <string.h>
#include <gdbm.h>
#include "clips.h"
#include <stdlib.h>
#include <stddef.h>
#include "gdbm_lookup.h"
char * gdbm_lookup(char *dbm,char *word)
{
   GDBM_FILE   dbf;
   datum       key,value; 
   char        *morph_out , *my_morph_out;
   char        abs_db_path[1000];
   int         len=0,len1=0;
   char        *dbm1;
   DATA_OBJECT temp;
   /*=================================*/
   /* Check for exactly one argument. */
   /*=================================*/

   if (ArgCountCheck("gdbm_lookup",EXACTLY,2) == -1)
   { return(AddSymbol("")); }

   if (ArgTypeCheck("gdbm_lookup",2,SYMBOL_OR_STRING,&temp) == 0)
    { return(AddSymbol(""));} 

   /*=================================*/
   /* To open the gdbm file.          */
   /*=================================*/
 
  len=(strlen(RtnLexeme(1)));
  dbm=malloc(sizeof(char)*len+1);

  strcpy(dbm,RtnLexeme(1));
  strcpy(abs_db_path,ABS_ANU_PATH);
  strcat(abs_db_path,dbm);
  free(dbm);
  len1=(strlen(abs_db_path));
  dbm1=malloc(sizeof(char)*len1+1);
  strcpy(dbm1,abs_db_path);
  
   dbf = gdbm_open(dbm1,512,GDBM_READER,0644,0);
   /*==================================================*/
  /* Check for database. 1.Empty  OR  2.File not found */
  /*===================================================*/
  if (dbf == NULL)
 { PrintRouter(WDISPLAY,"Warning :: Database Not Found ----- OR ----- Database Is Empty.\n");
//   PrintRouter(WDISPLAY,"\n");
//   PrintRouter(WDISPLAY,RtnLexeme(2));
//   PrintRouter(WDISPLAY,"\n");
   return(AddSymbol(""));}

   
/*==========================================================================================*/
/* RtnLexeme returns a character pointer from either a symbol, string, or instance name data type */
/*=========================================================================================*/
   word = RtnLexeme(2);
  // PrintRouter(WDISPLAY,"Database: ");PrintRouter(WDISPLAY,RtnLexeme(1));PrintRouter(WDISPLAY,"  word :");PrintRouter(WDISPLAY,RtnLexeme(2));PrintRouter(WDISPLAY,"\n");
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

   gdbm_close (dbf);  
   my_morph_out = AddSymbol(morph_out);
   free(dbm1);free(morph_out);
   return my_morph_out;
}
