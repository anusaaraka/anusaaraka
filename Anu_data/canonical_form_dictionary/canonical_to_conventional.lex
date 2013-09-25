/*** Added by Roja(23-09-13) */
/*** Canonical to conventional form */

MATRAS [eEiIoO]

%%

{MATRAS}[f][kKgG]	{	printf("%cM%c", yytext[0], yytext[2]); 	}
{MATRAS}[F][cCjJ]	{	printf("%cM%c", yytext[0], yytext[2]); 	}
{MATRAS}[N][tTdD]	{	printf("%cM%c", yytext[0], yytext[2]); 	}
{MATRAS}[m][pPbB]	{	printf("%cM%c", yytext[0], yytext[2]); 	}
{MATRAS}[n][xXwW]	{	printf("%cM%c", yytext[0], yytext[2]); 	}
\<sdefs				{	ECHO;	}
\<pardef			{	ECHO; 	}
(conjunct|instead|singular|following|second|imper|Rising|commenting|abcdefgh|ABCDEFGH|removing|sentence|hindi|mapping|End)	{	ECHO; 	}
\<\/sdefs			{	ECHO;	}
\<\/pardef			{	ECHO;	}

%%
 
