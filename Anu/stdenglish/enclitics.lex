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
 #include<string.h>
%%

^[aA]ll's	{printf("%cll is",yytext[0]);}
^[cC]an't	{printf("%can not",yytext[0]);}
^[sS]han't	{printf("%chall not",yytext[0]);}
^[wW]on't	{printf("%cill not",yytext[0]);}
^[aA]in' 	{printf("%cm not",yytext[0]);}
^[nN]'t 	        {printf(" %cot",yytext[0]);}
^[hH]e's		{printf("%ce is",yytext[0]);}
^[hH]e'd		{printf("%ce would",yytext[0]);}
^[hH]ow's	{printf("%cow is",yytext[0]);}
^[hH]ere's	{printf("%cere is",yytext[0]);}
^[hH]e'll	{printf("%ce will",yytext[0]);}
^[iI]t's		{printf("%ct is",yytext[0]);}
^[iI]t'll	{printf("%ct will",yytext[0]);}
^[lL]et's	{printf("%cet us",yytext[0]);}
'twas		{printf("it was");}
'tis		{printf("it is");}
^I'll		{printf("I will");}
'twill		{printf("it will");}
'twould		{printf("it would");}
^I'd		{printf("I would");}
^I've		{printf("I have");}
^I'm		{printf("I am");}
^[sS]he'll	{printf("%che will",yytext[0]);}
^[sS]he'd	{printf("%che would",yytext[0]);}
^[sS]he's	{printf("%che is",yytext[0]);}
^[tT]hat'll	{printf("%chat will",yytext[0]);}
^[tT]hey'd	{printf("%chey would",yytext[0]);}
^[tT]hat's	{printf("%chat is",yytext[0]);}
^[tT]here's	{printf("%chere is",yytext[0]);}
^[tT]hey're	{printf("%chey are",yytext[0]);}
^[tT]hey'll	{printf("%chey will",yytext[0]);}
^[tT]here're	{printf("%chere are",yytext[0]);}
^[tT]hey've	{printf("%chey have",yytext[0]);}
^[tT]hat'd	{printf("%chat would",yytext[0]);}
^[wW]ho'll	{printf("%cho will",yytext[0]);}
^[wW]e'd		{printf("%ce would",yytext[0]);}
^[wW]hy's	{printf("%chy is",yytext[0]);}
^[wW]ho'd	{printf("%cho would",yytext[0]);}
^[wW]ho's	{printf("%cho is",yytext[0]);}
^[wW]e'll	{printf("%ce will",yytext[0]);}
^[wW]hat'll	{printf("%chat will",yytext[0]);}
^[wW]e're	{printf("%ce are",yytext[0]);}
^[wW]hen's	{printf("%chen is",yytext[0]);}
^[wW]ho're	{printf("%cho are",yytext[0]);}
^[wW]hat's	{printf("%chat is",yytext[0]);}
^[wW]here's	{printf("%chere is",yytext[0]);}
^[wW]e've	{printf("%ce have",yytext[0]);}
^[Yy]ou're	{printf("%cou are",yytext[0]);}
^[yY]ou'll	{printf("%cou will",yytext[0]);}
^[Yy]ou've	{printf("%cou have",yytext[0]);}
^[yY]ou'd	{printf("%cou would",yytext[0]);}

[^a-zA-Z][aA]ll's	{printf("%c%cll is",yytext[0],yytext[1]);}
[^a-zA-Z][cC]an't	{printf("%c%can not",yytext[0],yytext[1]);}
[^a-zA-Z][sS]han't	{printf("%c%chall not",yytext[0],yytext[1]);}
[^a-zA-Z][wW]on't	{printf("%c%cill not",yytext[0],yytext[1]);}
[^a-zA-Z][aA]in' 	{printf("%c%cm not",yytext[0],yytext[1]);}
[a-zA-Z][nN]'t 	        {printf("%c %cot",yytext[0],yytext[1]);}
[^a-zA-Z][hH]e's		{printf("%c%ce is",yytext[0],yytext[1]);}
[^a-zA-Z][hH]e'd		{printf("%c%ce would",yytext[0],yytext[1]);}
[^a-zA-Z][hH]ow's	{printf("%c%cow is",yytext[0],yytext[1]);}
[^a-zA-Z][hH]ere's	{printf("%c%cere is",yytext[0],yytext[1]);}
[^a-zA-Z][hH]e'll	{printf("%c%ce will",yytext[0],yytext[1]);}
[^a-zA-Z][iI]t's		{printf("%c%ct is",yytext[0],yytext[1]);}
[^a-zA-Z][iI]t'll	{printf("%c%ct will",yytext[0],yytext[1]);}
[^a-zA-Z]I'll		{printf("%cI will",yytext[0]);}
[^a-zA-Z]I'd		{printf("%cI would",yytext[0]);}
[^a-zA-Z]I've		{printf("%cI have",yytext[0]);}
[^a-zA-Z]I'm		{printf("%cI am",yytext[0]);}
[^a-zA-Z][lL]et's	{printf("%c%cet us",yytext[0],yytext[1]);}
[^a-zA-Z][sS]he'll	{printf("%c%che will",yytext[0],yytext[1]);}
[^a-zA-Z][sS]he'd	{printf("%c%che would",yytext[0],yytext[1]);}
[^a-zA-Z][sS]he's	{printf("%c%che is",yytext[0],yytext[1]);}
[^a-zA-Z]tT]hat'll	{printf("%c%chat will",yytext[0],yytext[1]);}
[^a-zA-Z][tT]hey'd	{printf("%c%chey would",yytext[0],yytext[1]);}
[^a-zA-Z][tT]hat's	{printf("%c%chat is",yytext[0],yytext[1]);}
[^a-zA-Z][tT]here's	{printf("%c%chere is",yytext[0],yytext[1]);}
[^a-zA-Z][tT]hey're	{printf("%c%chey are",yytext[0],yytext[1]);}
[^a-zA-Z][tT]hey'll	{printf("%c%chey will",yytext[0],yytext[1]);}
[^a-zA-Z][tT]here're	{printf("%c%chere are",yytext[0],yytext[1]);}
[^a-zA-Z][tT]hey've	{printf("%c%chey have",yytext[0],yytext[1]);}
[^a-zA-Z][tT]hat'd	{printf("%c%chat would",yytext[0],yytext[1]);}
[^a-zA-Z][wW]ho'll	{printf("%c%cho will",yytext[0],yytext[1]);}
[^a-zA-Z][wW]e'd		{printf("%c%ce would",yytext[0],yytext[1]);}
[^a-zA-Z][wW]hy's	{printf("%c%chy is",yytext[0],yytext[1]);}
[^a-zA-Z][wW]ho'd	{printf("%c%cho would",yytext[0],yytext[1]);}
[^a-zA-Z][wW]ho's	{printf("%c%cho is",yytext[0],yytext[1]);}
[^a-zA-Z][wW]e'll	{printf("%c%ce will",yytext[0],yytext[1]);}
[^a-zA-Z][wW]hat'll	{printf("%c%chat will",yytext[0],yytext[1]);}
[^a-zA-Z][wW]e're	{printf("%c%ce are",yytext[0],yytext[1]);}
[^a-zA-Z][wW]hen's	{printf("%c%chen is",yytext[0],yytext[1]);}
[^a-zA-Z][wW]ho're	{printf("%c%cho are",yytext[0],yytext[1]);}
[^a-zA-Z][wW]hat's	{printf("%c%chat is",yytext[0],yytext[1]);}
[^a-zA-Z][wW]here's	{printf("%c%chere is",yytext[0],yytext[1]);}
[^a-zA-Z][wW]e've	{printf("%c%ce have",yytext[0],yytext[1]);}
[^a-zA-Z][Yy]ou're	{printf("%c%cou are",yytext[0],yytext[1]);}
[^a-zA-Z][yY]ou'll	{printf("%c%cou will",yytext[0],yytext[1]);}
[^a-zA-Z][Yy]ou've	{printf("%c%cou have",yytext[0],yytext[1]);}
[^a-zA-Z][yY]ou'd	{printf("%c%cou would",yytext[0],yytext[1]);}


[^a-zA-Z][nN]ow's       {printf("%c%cow is",yytext[0],yytext[1]);}


[a-zA-Z]'[sS][^a-zA-Z]	{printf("%s",yytext);}
o'clock		{printf("%s",yytext);}
Hon'ble		{ printf("Honourable");	}
[a-zA-Z]'[a-zA-Z]	{printf("%cQUOTE%c",yytext[0],yytext[2]);}
[cC]annot	{printf("%can not",yytext[0]);}
%%
main()
{
 yylex();
}
