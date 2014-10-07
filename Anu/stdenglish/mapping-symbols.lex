/* Ex: The average annual rainfall ranges from 2,000 mm to 3,000 mm , with temperatures ranging from 25 to 30° Celsius.
   In above example '°' symbol applies to both 25 and 30. So instead of combining '°' to 30 in Stanford penn o/p,  Chaitanya Sir suggested to consider all the Symbols as 'SYMBOL-NAME' and restore 'SYMBOL-NAME' back again with original Symbol.
   Ex: '°' is mapped to SYMBOL-DEGREE-SIGN and at the end SYMBOL-DEGREE-SIGN is replaced with °	
   Added by Roja (17-08-12) */
%{
#include <string.h>
char str[1000], *s1 , str2[1000];
int len, len1;
FILE *fp;
%}

%%

¡	{	printf(" SYMBOL-INVERTED-EXCLAMATION-MARK ");	}
¢	{	printf(" SYMBOL-CENT-SIGN ");	}
£	{	printf(" SYMBOL-POUND-SIGN ");	}
¤	{	printf(" SYMBOL-CURRENCY-SIGN ");	}
¥	{	printf(" SYMBOL-YEN-SIGN ");	}
¦	{	printf(" SYMBOL-BROKEN-BAR ");	}
§	{	printf(" SYMBOL-SECTION-SIGN ");	}
¨	{	printf(" SYMBOL-DIAERESIS ");	}
©	{	printf(" SYMBOL-COPYRIGHT-SIGN ");	}
ª	{	printf(" SYMBOL-FEMININE-ORDINAL-INDICATOR ");	}
«	{	printf(" SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK ");	}
¬	{	printf(" SYMBOL-NOT-SIGN ");
	/*	}
	{	printf(" SYMBOL-SOFT-HYPHEN ");
	*/	}
®	{	printf(" SYMBOL-REGISTERED-SIGN ");	}
¯	{	printf(" SYMBOL-MACRON ");	}
°	{	printf(" SYMBOL-DEGREE-SIGN ");	}
±	{	printf(" SYMBOL-PLUS-MINUS-SIGN ");	}
²	{	printf(" SYMBOL-SUPERSCRIPT-TWO ");	}
³	{	printf(" SYMBOL-SUPERSCRIPT-THREE ");	}
´	{	printf(" SYMBOL-ACUTE-ACCENT ");	}
µ	{	printf(" SYMBOL-MICRO-SIGN ");	}
¶	{	printf(" SYMBOL-PILCROW-SIGN ");	}
·	{	printf(" SYMBOL-MIDDLE-DOT ");	}
¸	{	printf(" SYMBOL-CEDILLA ");	}
¹	{	printf(" SYMBOL-SUPERSCRIPT-ONE ");	}
º	{	printf(" SYMBOL-MASCULINE-ORDINAL-INDICATOR ");	}
»	{	printf(" SYMBOL-RIGHT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK ");	}
¼	{	printf(" SYMBOL-VULGAR-FRACTION-ONE-QUARTER ");	}
½	{	printf(" SYMBOL-VULGAR-FRACTION-ONE-HALF ");	}
¾	{	printf(" SYMBOL-VULGAR-FRACTION-THREE-QUARTERS ");	}
¿	{	printf(" SYMBOL-INVERTED-QUESTION-MARK ");	}
÷	{	printf(" SYMBOL-DIVISION-SIGN ");	}
×	{	printf(" SYMBOL-MULTIPLICATION-SIGN ");	}
―	{	printf(" SYMBOL-HORIZONTAL-BAR ");	}
\+	{	printf(" SYMBOL-PLUS ");	}
#	{	printf(" SYMBOL-SHARP ");	}
[^>A-Za-z]\$	{	printf("%c SYMBOL-DOLLAR ", yytext[0]); /* >$ is used in apertium morph analysis */	}
\=	{	printf(" SYMBOL-EQUAL-TO ");	}
%	{	printf(" SYMBOL-PERCENT ");	}
—	{	printf(" SYMBOL-EMDASH ");	}
β[^-]	{	printf(" SYMBOL-BETA ");	}
\~	{	printf(" SYMBOL-TELDA ");	}		
α[^-]	{	printf(" SYMBOL-ALPHA ");	}
δ	{	printf(" SYMBOL-DELTA ");	}
γ	{	printf(" SYMBOL-GAMMA ");	}
ε	{	printf(" SYMBOL-EPSILION ");	}
ζ	{	printf(" SYMBOL-ZETA ");	}
η	{	printf(" SYMBOL-ETA ");	}
θ	{	printf(" SYMBOL-THETA ");	}
ι	{	printf(" SYMBOL-IOTA ");	}
κ	{	printf(" SYMBOL-KAPPA ");	}
λ	{	printf(" SYMBOL-LAMBDA ");	}
μ	{	printf(" SYMBOL-MU ");	}
ν	{	printf(" SYMBOL-NU ");	}
ξ	{	printf(" SYMBOL-XI ");	}
ο	{	printf(" SYMBOL-OMICRON ");	}
π	{	printf(" SYMBOL-PI ");	}
ρ	{	printf(" SYMBOL-RHO ");	}
σ	{	printf(" SYMBOL-SIGMA ");	}
τ	{	printf(" SYMBOL-TAU ");	}
υ	{	printf(" SYMBOL-UPSILON ");	}
φ	{	printf(" SYMBOL-PHI ");	}
χ	{	printf(" SYMBOL-CHI ");	}
ψ	{	printf(" SYMBOL-PSI ");	}
ω	{	printf(" SYMBOL-OMEGA ");	}
\|	{	printf(" SYMBOL-VERTICAL-LINE ");	}
[ ]\<[ ]	{	printf("  SYMBOL-LESSTHAN  ");	}
[ ]\>[ ]	{	printf("  SYMBOL-GREATERTHAN  ");	}

[^<][a-zA-Z0-9]*[/][a-zA-Z0-9]* { 	len=strcspn(yytext, "/");
				strncpy(str, yytext, len); str[len]='\0';

				s1=strchr(yytext, '/')+1;
                                printf("%s SYMBOL-SLASH %s", str, s1); /*Ex: km/hr  */
			}
[ ]*[0-9]+[.][0-9]+	{	len=strcspn(yytext, ".");
				strncpy(str, yytext, len); str[len]='\0';
	
				s1=strchr(yytext, '.')+1;
				printf("%sSYMBOL-DOT%s", str, s1);
			}	
%%
