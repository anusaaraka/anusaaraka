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
 int i;
 char str[1000];
%x ABSORB
%%
[\.\?\!]\n		{printf("%c</s>\n<s>",yytext[0]); BEGIN ABSORB;}
[\.\?\!]["']\n		{printf("%c%c</s>\n<s>",yytext[0],yytext[1]); BEGIN ABSORB;}
<ABSORB>\n		{printf("");BEGIN 0;}
<ABSORB>.		{printf("%c",yytext[0]);BEGIN 0;}
[\.\?\!]["')]?[ ][ ]\n	{printf("%c</s>\n<s>",yytext[0]); BEGIN ABSORB;}
[\.\?\!]["')]?[ ][ ]	{printf("%c</s>\n<s>",yytext[0]);}
ABBR[ ][ ]\n		{printf("ABBR</s>\n<s>",yytext[0]);}
[\)'][ ]\.		{printf("%c%c</s>",yytext[0],yytext[2],yytext[3]); BEGIN ABSORB; }   
[\)'][ ]\.[ ][ ]	{printf("%c%c</s>\n<s>",yytext[0],yytext[2],yytext[3]); BEGIN ABSORB; }
\.[ ][0-9]		{printf("%c</s>\n<s>%c",yytext[0],yytext[2]); BEGIN ABSORB; }
[ ][A-Za-z][.][ ][A-Za-z][.]    {printf("%c%c%c%c%c",yytext[0],yytext[1],yytext[2],yytext[4],yytext[5]); }
[ ][A-Za-z][.][ ][A-Za-z][.][ ][A-Z]	{printf("%c%c%c%c%c</s>\n<s>%c",yytext[0],yytext[1],yytext[2],yytext[4],yytext[5],yytext[7]); }
[ ][A-Za-z][.][ ][ ]\)  {printf("%c%c%c%c",yytext[0],yytext[1],yytext[2],yytext[5]); }
[.][ ][,][ ]		{printf("%c%c%c",yytext[0],yytext[2],yytext[3]); }
[.][ ]\$[0-9]           {printf("%c</s>\n<s>%c%c",yytext[0],yytext[2],yytext[3]);} 
\<p\>			{printf("<p><s>");}
\<\/p\>			{printf("</s></p>\n");}
\<A[ ]href[^>]+>	{
			  strcpy(str,yytext);
			  for(i=0;i<strlen(str);i++){
				if(str[i] == ' ')  printf("_");
				else printf("%c",str[i]);
			  }
			}
%%
