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

############### NOTE:  Any changes done in this file should be updated in bin/abbr.sh file and bin/abbr_browser.sh also.

*/
 #include<string.h>
SPC [^a-zA-Z0-9]
%%
^i\.e\.$	{printf("ABBRThatis");}
^i\.e\.{SPC}	{printf("ABBRThatis%c",yytext[4]);}
{SPC}i\.e\.{SPC}	{printf("%cABBRThatis%c",yytext[0],yytext[5]);}
^e\.g\.$	{printf("eABBRDOTABBRgABBRDOTABBR");}
^e\.g\.{SPC}	{printf("eABBRDOTABBRgABBRDOTABBR%c",yytext[4]);}
{SPC}e\.g\.{SPC}	{printf("%ceABBRDOTABBRgABBRDOTABBR%c",yytext[0],yytext[5]);}
{SPC}U\.S\.A\.{SPC}	{printf("%cUABBRDOTABBRSABBRDOTABBRAABBRDOTABBR%c",yytext[0],yytext[7]);}
{SPC}U\.S\.{SPC}	{printf("%cUABBRDOTABBRSABBRDOTABBR%c",yytext[0],yytext[5]);}
{SPC}U\.K\.{SPC}	{printf("%cUABBRDOTABBRKABBRDOTABBR%c",yytext[0],yytext[5]);}
{SPC}A\.D\.{SPC}	{printf("%cAABBRDOTABBRDABBRDOTABBR%c",yytext[0],yytext[5]);}
{SPC}a\.k\.a\.{SPC} 	{printf("%caABBRDOTABBRkABBRDOTABBRaABBRDOTABBR%c",yytext[0],yytext[7]);}

[ ]Sr\.		{printf("%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2]); }
[ ][jJ]r\.	{printf("%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2]); }
[ ]Dr\.		{printf("%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2]); }
[ ]Mr\.		{printf("%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2]); }
[ ]Mrs\.	{printf("%c%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2],yytext[3]); }
[ ]Ms\.		{printf("%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2]); }
[ ]Inc\.	{printf("%c%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2],yytext[3]); }
[0-9]%		{printf("%c ABBRpercent",yytext[0]); }
$[0-9]		{printf("ABBRdollar %c",yytext[1]);  }
#[0-9]		{printf("ABBRsharp %c",yytext[1]);   }
[ ]No\.         {printf("%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2]); }
Fig\.		{printf("%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2]); }
[ ]etc\.	{printf("%c%c%c%cABBRDOT", yytext[0],yytext[1],yytext[2],yytext[3]);	}

%%
main()
{
 yylex();
}
