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
 # include<string.h>
SPC [^a-zA-Z0-9]
%%
^i\.e\.$	{printf("ABBR-ThatIs");}
^i\.e\.{SPC}	{printf("ABBR-ThatIs%c",yytext[4]);}
{SPC}i\.e\.{SPC}	{printf("%cABBR_ThatIs%c",yytext[0],yytext[5]);}
^e\.g\.$	{printf("ABBR-Example");}
^e\.g\.{SPC}	{printf("ABBR-Example%c",yytext[4]);}
{SPC}e\.g\.{SPC}	{printf("%cABBR-Example%c",yytext[0],yytext[5]);}
{SPC}U\.S\.A\.{SPC}	{printf("%cABBR-USA%c",yytext[0],yytext[7]);}
{SPC}U\.S\.{SPC}	{printf("%cABBR-US%c",yytext[0],yytext[5]);}
{SPC}U\.K\.{SPC}	{printf("%cABBR-UK%c",yytext[0],yytext[5]);}
{SPC}A\.D\.{SPC}	{printf("%cABBR-AD%c",yytext[0],yytext[5]);}
{SPC}a\.k\.a\.{SPC} 	{printf("%cABBR-aka%c",yytext[0],yytext[7]);}
[ ]Inc\.	{printf("%c%c%c%cABBR-Dot", yytext[0],yytext[1],yytext[2],yytext[3]); }
[0-9]%		{printf("%cSYM-Percent",yytext[0]); }
[0-9][ ]%	{printf("%cSYM-Percent",yytext[0]); }
$[0-9]		{printf("SYM-Dollar%c",yytext[1]);  }
#[0-9]		{printf("SYM-Sharp%c",yytext[1]);   }
[ ][nN]o\.      {printf("%c%c%cABBR-Dot", yytext[0],yytext[1],yytext[2]); }
Fig\.		{printf("%c%c%cABBR-Dot", yytext[0],yytext[1],yytext[2]); }
[ ]etc\.	{printf("%c%c%c%cABBR-Dot", yytext[0],yytext[1],yytext[2],yytext[3]);	}
[ ][rR]s\.		{printf("%c%c%cABBR-Dot", yytext[0],yytext[1],yytext[2]);    }
[ ]approx\.	{printf("%c%c%c%c%c%c%cABBR-Dot", yytext[0],yytext[1],yytext[2],yytext[3],yytext[4],yytext[5],yytext[6],yytext[7]);    }
viz[.]		{printf("%c%c%cABBR-Dot", yytext[0],yytext[1],yytext[2]); }
ca[.][ ]	{printf("%c%cABBR-Dot ", yytext[0],yytext[1]);	}
a[.]d[.][ ]	{printf("%cABBR-Dot%cABBR-Dot ", yytext[0],yytext[2]);	}
b[.]c[.][ ]     {printf("%cABBR-Dot%cABBR-Dot ", yytext[0],yytext[2]);    }
m[.]g[.][ ]     {printf("%cABBR-Dot%cABBR-Dot ", yytext[0],yytext[2]);   /* } 
\—		{printf("SYM-EmDash");*/}
%%
main()
{
 yylex();
}
