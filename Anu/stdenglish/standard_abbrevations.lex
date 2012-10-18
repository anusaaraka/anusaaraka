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

########### NOTE:  Any changes done in this file should be updated in bin/abbr.sh file and bin/replace-abbrevations.sh also.

*/
SPC [^a-zA-Z0-9]
%{
#include<string.h>
char str[1000];
int len=0;
%}
%%
^i\.e\.$	{printf("ABBR-ThatIs");}
^i\.e\.{SPC}	{printf("ABBR-ThatIs%c",yytext[4]);}
{SPC}i\.e\.{SPC}	{printf("%cABBR-ThatIs%c",yytext[0],yytext[5]);}
^e\.g\.$	{printf("ABBR-Example");}
^e\.g\.{SPC}	{printf("ABBR-Example%c",yytext[4]);}
{SPC}e\.g\.{SPC}	{printf("%cABBR-Example%c",yytext[0],yytext[5]);}

(L[.]T[.]|n[.]m[.]|B[.]C[.]|A[.]D[.]|B[.]C[.]E[.]|C[.]E[.]|B[.]A[.]|B[.]S[.])[ ] 	{
							while((len=strcspn(yytext,".")) < strlen(yytext))
                 		                        {
                                  			     	strncat(str,yytext,len);
			                                     	yytext=yytext+len+1;
                                       				strcat(str,"ABBR-Dot");
							}
		                                        strncat(str,yytext,len);
                                       			printf("%s",str);strcpy(str,"\0");
                                       		}

^[{\[(]*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|Sun|Mon|Tu|Tue|Tues|Wed|Th|Thu|Thur|Thurs|Fri|Sat|sec|min|hr|wk|mo|yr|cent|Acad|bbl|cu|doz|F|fl|ft|gal|gr|gro|in|kt|lb|mi|oz|pt|qt|sq|T|tbsp|tsp|yd|alt|apt|Assn|Ave|Blvd|ctr|c|ca|circ|Cpl|Corp|Ct|dept|div|ed|Ft|Gen|Gov|hwy|in|Lk|Ln|lat|lib|Lt|Ltd|long|mt|mus|no|No|p|pl|pop|Rd|Sta|St|ste|Ter|Tpk|Univ|vol|wt|viz|etc|approx|fig|Inc|inc)[.] {
                                len=strlen(yytext);
                                strncpy(str,yytext,len-1);
                                str[len-1]='\0';
                                printf("%sABBR-Dot", str);}
[^.][ {\[(]+(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|Sun|Mon|Tu|Tue|Tues|Wed|Th|Thu|Thur|Thurs|Fri|Sat|sec|min|hr|wk|mo|yr|cent|Acad|bbl|cu|doz|F|fl|ft|gal|gr|gro|in|kt|lb|mi|oz|pt|qt|sq|T|tbsp|tsp|yd|alt|apt|Assn|Ave|Blvd|ctr|c|ca|circ|Cpl|Corp|Ct|dept|div|ed|Ft|Gen|Gov|hwy|in|Lk|Ln|lat|lib|Lt|Ltd|long|mt|mus|no|No|p|pl|pop|Rd|Sta|St|ste|Ter|Tpk|Univ|vol|wt|viz|etc|approx|fig|Inc|inc)[.] {
                                len=strlen(yytext);
                                strncpy(str,yytext,len-1);
                                str[len-1]='\0';
                                printf("%sABBR-Dot", str);}

%%
main()
{
 yylex();
}
