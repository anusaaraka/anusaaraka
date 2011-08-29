/*

##############################################################################
#  Copyright (C) 2002-2005 Amba Kulkarni (amba at iiit dot net)
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later
#  version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

##############################################################################


*/
 #include <stdio.h>
 #include <string.h>
 #include <gdbm.h>
 datum tag,tag2;
 char word[30],left_half[30];

 GDBM_FILE dict;

WRD [A-Za-z0-9]+
%x HYPHEN
%%
{WRD}\-		{  yytext[yyleng-1] = '\0';
		   strcpy(left_half,yytext);
		   BEGIN HYPHEN;
	        }
<HYPHEN>{WRD}		{  strcpy(word,left_half);
			   strcat(word,yytext);
			  /* strcpy(word,left_half);*/
			   tag.dptr = word;
			   tag.dsize = sizeof(word);
			   tag2 = gdbm_fetch(dict,tag);
			   if(tag2.dsize > 0 ){
			        printf("%s",left_half);
			   }
			   else printf("%s-%s",left_half,yytext);
			   left_half[0] = '\0';
			   BEGIN 0;
			}
<HYPHEN>.	{printf("%s-%s",left_half,yytext);
		 left_half[0] = '\0';
		 BEGIN 0;
		}
%%

main(int argc,char *argv[]){
if(argc != 2) {
   printf("Usage: rm_joined_hard_hyphens.out dict_dbm\n"); 
   exit(0);
}
dict = gdbm_open(argv[1],512,GDBM_READER,0666,0);
yylex();
}
