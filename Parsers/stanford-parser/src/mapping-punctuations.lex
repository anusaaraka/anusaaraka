/* Any changes done in this file , then update miscellaneous/TREES/tree_viewer/mapping-punctuations.lex file. */
/********************
Mapping punctuation with a standard notation.
Removed sed and handled it in this flex programme. 
*********************/
/* Instead of handling each pattern separately, separated punctuation head and punctuation 
   Ex:   (: -)  is mapped as (: as (P_CLN
			     -) as PUNCT-Hyphen)
         So o/p is (P_CLN PUNCT-Hyphen)
Modified by Roja (23-03-13)
Note: Symbols need to be handled in a better way.
*/

%{
#include <string.h>
char str[1000], str1[1000], *s1, *s2;
int len, len1;
%}

%%

\(,		{	printf("(P_COM");		}
\([.] 		{	printf("(P_DOT");		}
\(\?		{	printf("(P_QES");		}
\(``		{	printf("(P_DQT");		}
\(''		{	printf("(P_DQT");		}
\(:		{	printf("(P_CLN");		}
\(\-LRB\-	{	printf("(P_LB");		}
\(\-RRB\-	{	printf("(P_RB");		}
\(\$		{	printf("(P_DOL");		}
\(#		{	printf("(P_SHRP");		}

\(POS[ ]\'\)	{	ECHO;				}


[ ][.]\)	{	printf(" PUNCT-Dot)");		}
,\)		{	printf("PUNCT-Comma)");		}
\?\)		{	printf("PUNCT-QuestionMark)");	}
``\)		{	printf("PUNCT-DoubleQuote)");	}
''\)		{	printf("PUNCT-DoubleQuote)");	}
;\)		{	printf("PUNCT-Semicolon)");	}
:\)		{	printf("PUNCT-Colon)");		}
[.][.][.]\)	{       printf("PUNCT-DotDotDot)");	}
[ ]'\)		{	printf(" PUNCT-SingleQuote)");	}
`\)		{	printf("PUNCT-SingleQuote)");	}
\-LRB\-\)	{	printf("PUNCT-OpenParen)");	}
\-RRB\-\)	{	printf("PUNCT-ClosedParen)");	}
!\)		{	printf("PUNCT-Exclamation)");	}
—		{	printf("SYMBOL-EMDASH");	}
\-LCB\-\)	{	printf("PUNCT-LeftCurlyBrace)");	}
\-RCB\-\)	{	printf("PUNCT-RightCurlyBrace)");	}
\$\)		{	printf("SYMBOL-DOLLAR)"); 	}
#\)		{	printf("SYMBOL-SHARP)"); 	}

\([A-Z$]+[ ][0-9a-zA-Z]+[/][0-9a-zA-Z-]+\)	{	len=strcspn(yytext, " ");
					strncpy(str, yytext, len); str[len]='\0';

					s1=strchr(yytext, ' ')+1;
					len1=strcspn(s1, "/");
					strncpy(str1, s1, len1); str1[len1]='\0';

					s2=strchr(s1, '/')+1;
					printf("%s %s) %s SYMBOL-SLASH) %s %s", str, str1, str, str, s2);
		/* Ex: To describe motion in two/three dimensions, we need a set of two/three axis. */
				}
%%
