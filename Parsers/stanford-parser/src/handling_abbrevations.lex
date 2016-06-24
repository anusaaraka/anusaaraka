/*Added by Roja (13-08-12)		*/
/*Handling Abbrevations which are not handled by Stanford Parser. */
/*Ex: Fig. , Eq. , viz. , Ch. , abbrv.	*/
/*I/p:: (NNP Fig) (. .) 		*/
/*O/p:: (NNP Fig.)			*/

%{
#include <string.h>
int len;
char str[1000], *s1;
%}

%%

[ ]([Ff]igs?|[Ee]qs?|[Vv]izs?|[Cc]h|abbrv|USA|distt|[Rr]s|approx|cent)\)[ ]\([.][ ][.]\)	{	s1 = strchr(yytext, ' ')+1;
										len=strcspn(s1, ")");
										strncpy(str, s1, len);
										str[len]='\0';
										
										printf(" %s.)", str);
										/*Ex: (NNP Fig) (. .) */
									}
%%
