/* Ex: The average annual rainfall ranges from 2,000 mm to 3,000 mm , with temperatures ranging from 25 to 30° Celsius.
   In above example '°' symbol applies to both 25 and 30. So instead of combining '°' to 30 in Stanford penn o/p,  Chaitanya Sir suggested to consider all the Symbols as 'SYMBOL-NAME' and restore 'SYMBOL-NAME' back again with original Symbol.
   Ex: '°' is mapped to SYMBOL-DEGREE-SIGN and at the end SYMBOL-DEGREE-SIGN is replaced with °	
   Added by Roja (17-08-12) 
   NOTE: Any changes done in mapping-symbols_manual.lex should be updated in this file also.*/
%{
#include <string.h>
char str[1000], *s1 , str2[1000];
int len, len1;
FILE *fp;
%}

%%

[ ]*¡[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-INVERTED-EXCLAMATION-MARK1 ");
				fprintf(fp, " SYMBOL-INVERTED-EXCLAMATION-MARK1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-INVERTED-EXCLAMATION-MARK2 ");
				fprintf(fp, " SYMBOL-INVERTED-EXCLAMATION-MARK2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¢[ ]*	{
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-CENT-SIGN1 ");
				fprintf(fp, " SYMBOL-CENT-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-CENT-SIGN2 ");
				fprintf(fp, " SYMBOL-CENT-SIGN\\([^\\s]\\)2	%s\\1\n", yytext); }	
		}
[ ]*£[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-POUND-SIGN1 ");
				fprintf(fp, " SYMBOL-POUND-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-POUND-SIGN2 ");
				fprintf(fp, " SYMBOL-POUND-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¤[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-CURRENCY-SIGN1 ");
				fprintf(fp, " SYMBOL-CURRENCY-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-CURRENCY-SIGN2 ");
				fprintf(fp, " SYMBOL-CURRENCY-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¥[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-YEN-SIGN1 ");
				fprintf(fp, " SYMBOL-YEN-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-YEN-SIGN2 ");
				fprintf(fp, " SYMBOL-YEN-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¦[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-BROKEN-BAR1 ");
				fprintf(fp, " SYMBOL-BROKEN-BAR1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-BROKEN-BAR2 ");
				fprintf(fp, " SYMBOL-BROKEN-BAR2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*§[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-SECTION-SIGN1 ");
				fprintf(fp, " SYMBOL-SECTION-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-SECTION-SIGN2 ");
				fprintf(fp, " SYMBOL-SECTION-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¨[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-DIAERESIS1 ");
				fprintf(fp, " SYMBOL-DIAERESIS1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-DIAERESIS2 ");
				fprintf(fp, " SYMBOL-DIAERESIS2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*©[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-COPYRIGHT-SIGN1 ");
				fprintf(fp, " SYMBOL-COPYRIGHT-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-COPYRIGHT-SIGN2 ");
				fprintf(fp, " SYMBOL-COPYRIGHT-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*ª[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-FEMININE-ORDINAL-INDICATOR1 ");
				fprintf(fp, " SYMBOL-FEMININE-ORDINAL-INDICATOR1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-FEMININE-ORDINAL-INDICATOR2 ");
				fprintf(fp, " SYMBOL-FEMININE-ORDINAL-INDICATOR2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*«[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK1 ");
				fprintf(fp, " SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK2 ");
				fprintf(fp, " SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¬[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-NOT-SIGN1 ");
				fprintf(fp, " SYMBOL-NOT-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-NOT-SIGN2 ");
				fprintf(fp, " SYMBOL-NOT-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
	/*	}
[ ]*[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-SOFT-HYPHEN1 ");
			fprintf(fp, " SYMBOL-SOFT-HYPHEN	%s\n", yytext);
			else if(yytext[yyleng-1]!=' ') {
	*/	}
[ ]*®[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-REGISTERED-SIGN1 ");
				fprintf(fp, " SYMBOL-REGISTERED-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-REGISTERED-SIGN2 ");
				fprintf(fp, " SYMBOL-REGISTERED-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¯[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-MACRON1 ");
				fprintf(fp, " SYMBOL-MACRON1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-MACRON2 ");
				fprintf(fp, " SYMBOL-MACRON2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*°[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-DEGREE-SIGN1 ");
				fprintf(fp, " SYMBOL-DEGREE-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-DEGREE-SIGN2 ");
				fprintf(fp, " SYMBOL-DEGREE-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*±[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-PLUS-MINUS-SIGN1 ");
				fprintf(fp, " SYMBOL-PLUS-MINUS-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-PLUS-MINUS-SIGN2 ");
				fprintf(fp, " SYMBOL-PLUS-MINUS-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*²[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-SUPERSCRIPT-TWO1 ");
				fprintf(fp, " SYMBOL-SUPERSCRIPT-TWO1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-SUPERSCRIPT-TWO2 ");
				fprintf(fp, " SYMBOL-SUPERSCRIPT-TWO2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*³[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-SUPERSCRIPT-THREE1 ");
				fprintf(fp, " SYMBOL-SUPERSCRIPT-THREE1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-SUPERSCRIPT-THREE2 ");
				fprintf(fp, " SYMBOL-SUPERSCRIPT-THREE2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*´[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-ACUTE-ACCENT1 ");
				fprintf(fp, " SYMBOL-ACUTE-ACCENT1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-ACUTE-ACCENT2 ");
				fprintf(fp, " SYMBOL-ACUTE-ACCENT2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*µ[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-MICRO-SIGN1 ");
				fprintf(fp, " SYMBOL-MICRO-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-MICRO-SIGN2 ");
				fprintf(fp, " SYMBOL-MICRO-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¶[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-PILCROW-SIGN1 ");
				fprintf(fp, " SYMBOL-PILCROW-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-PILCROW-SIGN2 ");
				fprintf(fp, " SYMBOL-PILCROW-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*·[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-MIDDLE-DOT1 ");
				fprintf(fp, " SYMBOL-MIDDLE-DOT1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-MIDDLE-DOT2 ");
				fprintf(fp, " SYMBOL-MIDDLE-DOT2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¸[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-CEDILLA1 ");
				fprintf(fp, " SYMBOL-CEDILLA1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-CEDILLA2 ");
				fprintf(fp, " SYMBOL-CEDILLA2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¹[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-SUPERSCRIPT-ONE1 ");
				fprintf(fp, " SYMBOL-SUPERSCRIPT-ONE1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-SUPERSCRIPT-ONE2 ");
				fprintf(fp, " SYMBOL-SUPERSCRIPT-ONE2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*º[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-MASCULINE-ORDINAL-INDICATOR1 "); 
				fprintf(fp, " SYMBOL-MASCULINE-ORDINAL-INDICATOR1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-MASCULINE-ORDINAL-INDICATOR2 ");
				fprintf(fp, " SYMBOL-MASCULINE-ORDINAL-INDICATOR2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*»[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-RIGHT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK1 ");
				fprintf(fp, " SYMBOL-RIGHT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-RIGHT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK2 ");
				fprintf(fp, " SYMBOL-RIGHT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¼[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-VULGAR-FRACTION-ONE-QUARTER1 ");
				fprintf(fp, " SYMBOL-VULGAR-FRACTION-ONE-QUARTER1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-VULGAR-FRACTION-ONE-QUARTER2 ");
				fprintf(fp, " SYMBOL-VULGAR-FRACTION-ONE-QUARTER2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*½[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-VULGAR-FRACTION-ONE-HALF1 ");
				fprintf(fp, " SYMBOL-VULGAR-FRACTION-ONE-HALF1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-VULGAR-FRACTION-ONE-HALF2 ");
				fprintf(fp, " SYMBOL-VULGAR-FRACTION-ONE-HALF2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¾[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-VULGAR-FRACTION-THREE-QUARTERS1 ");
				fprintf(fp, " SYMBOL-VULGAR-FRACTION-THREE-QUARTERS1	 %s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-VULGAR-FRACTION-THREE-QUARTERS2 ");
				fprintf(fp, " SYMBOL-VULGAR-FRACTION-THREE-QUARTERS2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*¿[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-INVERTED-QUESTION-MARK1 ");
				fprintf(fp, " SYMBOL-INVERTED-QUESTION-MARK1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-INVERTED-QUESTION-MARK2 ");
				fprintf(fp, " SYMBOL-INVERTED-QUESTION-MARK2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*÷[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-DIVISION-SIGN1 ");
				fprintf(fp, " SYMBOL-DIVISION-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-DIVISION-SIGN2 ");
				fprintf(fp, " SYMBOL-DIVISION-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*×[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-MULTIPLICATION-SIGN1 ");
				fprintf(fp, " SYMBOL-MULTIPLICATION-SIGN1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-MULTIPLICATION-SIGN2 ");
				fprintf(fp, " SYMBOL-MULTIPLICATION-SIGN2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*―[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-HORIZONTAL-BAR1 ");
				fprintf(fp, " SYMBOL-HORIZONTAL-BAR1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-HORIZONTAL-BAR2 ");
				fprintf(fp, " SYMBOL-HORIZONTAL-BAR2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*\+[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-PLUS1 ");
				fprintf(fp, " SYMBOL-PLUS1 	%s\n", yytext);	}
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-PLUS2 ");
				fprintf(fp, " SYMBOL-PLUS2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*#[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-SHARP1 ");
				fprintf(fp, " SYMBOL-SHARP1 	%s\n", yytext);	}
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-SHARP2 ");
				fprintf(fp, " SYMBOL-SHARP2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*\$[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-DOLLAR1 ");
				fprintf(fp, " SYMBOL-DOLLAR1 	%s\n", yytext);	}
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-DOLLAR2 ");
				fprintf(fp, " SYMBOL-DOLLAR2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*\=[ ]*	{	
			if(yytext[yyleng-1]==' ') { 
				printf(" SYMBOL-EQUAL-TO1 ");
				fprintf(fp, " SYMBOL-EQUAL-TO1 	%s\n", yytext);	}
			else if(yytext[yyleng-1]!=' ') {
				printf(" SYMBOL-EQUAL-TO2 ");
				fprintf(fp, " SYMBOL-EQUAL-TO2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*%[ ]*	{	
                        if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-PERCENT1 ");
				fprintf(fp, " SYMBOL-PERCENT1 	%s\n", yytext); }
			else if(yytext[yyleng-1]!=' ') { 
                                printf(" SYMBOL-PERCENT2 ");
				fprintf(fp, " SYMBOL-PERCENT2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*—[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-EMDASH1 ");
				fprintf(fp, " SYMBOL-EMDASH1 	%s\n", yytext);	}
			else if(yytext[yyleng-1]!=' ') { 
				printf(" SYMBOL-EMDASH2 ");
				fprintf(fp, " SYMBOL-EMDASH2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*β[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-BETA1 ");
				fprintf(fp, " SYMBOL-BETA1 	%s\n", yytext);	}
			else if(yytext[yyleng-1]!=' ') { 
				printf(" SYMBOL-BETA2 ");
				fprintf(fp, " SYMBOL-BETA2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*\~[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" SYMBOL-TELDA1 ");
				fprintf(fp, " SYMBOL-TELDA1 	%s\n", yytext);	}
			else if(yytext[yyleng-1]!=' ') { 
				printf(" SYMBOL-TELDA2 ");
				fprintf(fp, " SYMBOL-TELDA2\\([^\\s]\\)	%s\\1\n", yytext); }	
		}
[ ]*[a-zA-Z0-9]+[/][a-zA-Z0-9]* { 	len=strcspn(yytext, "/");
				strncpy(str, yytext, len); str[len]='\0';

				s1=strchr(yytext, '/')+1;
                                printf(" %s SYMBOL-SLASH %s", str, s1); /*Ex: km/hr  */
				fprintf(fp, " SYMBOL-SLASH 	\\/\n"); 
			}
[ ]*[0-9]+[.][0-9]+	{	len=strcspn(yytext, ".");
				strncpy(str, yytext, len); str[len]='\0';
	
				s1=strchr(yytext, '.')+1;
				printf("%sSYMBOL-DOT%s", str, s1);
				fprintf(fp, "SYMBOL-DOT	.\n");
			}	
%%

main(int argc, char*argv[])
{
  fp=fopen(argv[1], "a");
  yylex();
}
