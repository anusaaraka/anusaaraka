%%

,	{	printf("PUNCT-Comma");	}
\?	{	printf("PUNCT-QuestionMark");	}
``	{	printf("PUNCT-DoubleQuote");	}
''	{	printf("PUNCT-DoubleQuote");	}
^;	{	ECHO;				}
;	{	printf("PUNCT-Semicolon");	}
:	{	printf("PUNCT-Colon");		}
[\'\`\']	{	printf("PUNCT-SingleQuote");	}
\"	{	printf("PUNCT-DoubleQuote");	}
^\(	{	ECHO;				}
\)$	{	ECHO;				}
\(	{	printf("PUNCT-OpenParen");	}
\)	{	printf("PUNCT-ClosedParen");	}
!	{	printf("PUNCT-Exclamation");	}
{	{	printf("PUNCT-LeftCurlyBrace");	}
}	{	printf("PUNCT-RightCurlyBrace");	}
]	{	printf("PUNCT-RightSquareBracket");	}
=	{	printf("SYMBOL-EQUAL-TO");		}
\+	{	printf("SYMBOL-PLUS");		}
[[]	{	printf("PUNCT-LeftSquareBracket");	}
~	{	printf("SYMBOL-TELDA");		}
\| 	{	printf("SYMBOL-VERTICAL-LINE");	}
%%
