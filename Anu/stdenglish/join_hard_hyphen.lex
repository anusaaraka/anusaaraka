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
 char hyphen_wrd[20];
WRD [a-zA-Z0-9]+
%x HYPHEN
%%
{WRD}\-[ ]*$		{ while(yytext[yyleng-1] == ' ') {
			    yytext[yyleng-1] = '\0';
			    yyleng--;
			  }
			  yytext[yyleng-1] = '\0';
			  strcpy(hyphen_wrd,yytext);
			  BEGIN HYPHEN;
			  printf("\n");
			}
<HYPHEN>^[ \t]+		{}
<HYPHEN>\n		{}
<HYPHEN>{WRD}		{ printf("%s-%s",hyphen_wrd,yytext);
                          BEGIN 0;
                          hyphen_wrd[0] = '\0';
			}
\n			{ printf("%c",yytext[1]);}
.			{ printf("%c",yytext[0]);}
\n			{ printf("%c",yytext[0]);}
