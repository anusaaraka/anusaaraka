/* Ex: The average annual rainfall ranges from 2,000 mm to 3,000 mm , with temperatures ranging from 25 to 30° Celsius.
   In above example '°' symbol applies to both 25 and 30. So instead of combining '°' to 30 in Stanford penn o/p,  Chaitanya Sir suggested to consider all the Symbols as '@symbolNAME' and restore '@symbolNAME' back again with original Symbol.
   Ex: '°' is mapped to @symbolDEGREESIGN and at the end @symbolDEGREESIGN is replaced with °	
   Added by Roja (17-08-12) */
%{
#include <string.h>
char str[1000], *s1;
int len, len1;
FILE *fp;
%}

%%
[;]     {       printf(" @punctSEMICOLON ");
                fprintf(fp, "@punctSEMICOLON	PUNCT-Semicolon\n", yytext);
        }
nonascii      {       printf(" @symbolnonascii ");
                fprintf(fp, "@symbolnonascii	nonascii\n", yytext);
        }
\(	{	printf(" @punctOPENPAREN ");
		fprintf(fp, "@punctOPENPAREN	PUNCT-OpenParen\n", yytext);
	}
\)	{	printf(" @punctCLOSEPAREN ");
		fprintf(fp, "@punctCLOSEPAREN	PUNCT-ClosedParen\n", yytext);
	}
¡	{	printf("@symbolINVERTEDEXCLAMATIONMARK");
		fprintf(fp, "@symbolINVERTEDEXCLAMATIONMARK	SYMBOL-INVERTED-EXCLAMATION-MARK\n", yytext);
	}
¢	{	printf("@symbolCENTSIGN");
		fprintf(fp, "@symbolCENTSIGN	SYMBOL-CENT-SIGN\n", yytext);
	}
£	{	printf("@symbolPOUNDSIGN");
		fprintf(fp, "@symbolPOUNDSIGN	SYMBOL-POUND-SIGN\n", yytext);
	}
¤	{	printf("@symbolCURRENCYSIGN");
		fprintf(fp, "@symbolCURRENCYSIGN	SYMBOL-CURRENCY-SIGN\n", yytext);
	}
¥	{	printf("@symbolYENSIGN");
		fprintf(fp, "@symbolYENSIGN	SYMBOL-YEN-SIGN\n", yytext);
	}
¦	{	printf("@symbolBROKENBAR");
		fprintf(fp, "@symbolBROKENBAR	SYMBOL-BROKEN-BAR\n", yytext);
	}
§	{	printf("@symbolSECTIONSIGN");
		fprintf(fp, "@symbolSECTIONSIGN	SYMBOL-SECTION-SIGN", yytext);
	}
¨	{	printf("@symbolDIAERESIS");
		fprintf(fp, "@symbolDIAERESIS	SYMBOL-DIAERESIS\n", yytext);
	}
©	{	printf("@symbolCOPYRIGHTSIGN");
		fprintf(fp, "@symbolCOPYRIGHTSIGN	SYMBOL-COPYRIGHT-SIGN\n", yytext);
	}
ª	{	printf("@symbolFEMININEORDINALINDICATOR");
		fprintf(fp, "@symbolFEMININEORDINALINDICATOR	SYMBOL-FEMININE-ORDINAL-INDICATOR\n", yytext);
	}
«	{	printf("@symbolLEFTPOINTINGDOUBLEANGLEQUOTATIONMARK");
		fprintf(fp, "@symbolLEFTPOINTINGDOUBLEANGLEQUOTATIONMARK	SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK\n", yytext);
	}
¬	{	printf("@symbolNOTSIGN");
		fprintf(fp, "@symbolNOTSIGN	SYMBOL-NOT-SIGN", yytext);
	/*}
 	{	printf("@symbolSOFTHYPHEN");
		fprintf(fp, "@symbolSOFTHYPHEN	%s\n", yytext);
	*/}
®	{	printf("@symbolREGISTEREDSIGN");
		fprintf(fp, "@symbolREGISTEREDSIGN	SYMBOL-REGISTERED-SIGN\n", yytext);
	}
¯ 	{	printf("@symbolMACRON");
		fprintf(fp, "@symbolMACRON	SYMBOL-MACRON\n", yytext);
	}
° 	{	printf("@symbolDEGREESIGN");
		fprintf(fp, "@symbolDEGREESIGN	SYMBOL-DEGREE-SIGN\n", yytext);
	}
±	{	printf("@symbolPLUSMINUSSIGN");
		fprintf(fp, "@symbolPLUSMINUSSIGN	SYMBOL-PLUS-MINUS-SIGN", yytext);
	}
² 	{	printf("@symbolSUPERSCRIPTTWO");
		fprintf(fp, "@symbolSUPERSCRIPTTWO	SYMBOL-SUPERSCRIPT-TWO\n", yytext);
	}
³ 	{	printf("@symbolSUPERSCRIPTTHREE");
		fprintf(fp, "@symbolSUPERSCRIPTTHREE	SYMBOL-SUPERSCRIPT-THREE\n", yytext);
	}
´ 	{	printf("@symbolACUTEACCENT");
		fprintf(fp, "@symbolACUTEACCENT	SYMBOL-ACUTE-ACCENT\n", yytext);
	}
µ 	{	printf("@symbolMICROSIGN");
		fprintf(fp, "@symbolMICROSIGN	SYMBOL-MICRO-SIGN\n", yytext);
	}
¶	{	printf("@symbolPILCROWSIGN");
		fprintf(fp, "@symbolPILCROWSIGN	SYMBOL-PILCROW-SIGN\n", yytext);
	}
· 	{	printf("@symbolMIDDLEDOT");
		fprintf(fp, "@symbolMIDDLEDOT	SYMBOL-MIDDLE-DOT\n", yytext);
	}
¸	{	printf("@symbolCEDILLA");
		fprintf(fp, "@symbolCEDILLA	SYMBOL-CEDILLA\n", yytext);
	}
¹ 	{	printf("@symbolSUPERSCRIPTONE");
		fprintf(fp, "@symbolSUPERSCRIPTONE	SYMBOL-MASCULINE-ORDINAL-INDICATOR\n", yytext);
	}
º 	{	printf("@symbolMASCULINEORDINALINDICATOR");
		fprintf(fp, "@symbolMASCULINEORDINALINDICATOR	SYMBOL-MASCULINE-ORDINAL-INDICATOR\n", yytext);
	}
»	{	printf("@symbolRIGHTPOINTINGDOUBLEANGLEQUOTATIONMARK");
		fprintf(fp, "@symbolRIGHTPOINTINGDOUBLEANGLEQUOTATIONMARK	\n", yytext);
	}
¼	{	printf("@symbolVULGARFRACTIONONEQUARTER");
		fprintf(fp, "@symbolVULGARFRACTIONONEQUARTER	SYMBOL-VULGAR-FRACTION-ONE-QUARTER\n", yytext);
	}
½	{	printf("@symbolVULGARFRACTIONONEHALF");
		fprintf(fp, "@symbolVULGARFRACTIONONEHALF	SYMBOL-VULGAR-FRACTION-ONE-HALF\n", yytext);
	}
¾	{	printf("@symbolVULGARFRACTIONTHREEQUARTERS");
		fprintf(fp, "@symbolVULGARFRACTIONTHREEQUARTERS	SYMBOL-VULGAR-FRACTION-THREE-QUARTERS\n", yytext);
	}
¿	{	printf("@symbolINVERTEDQUESTIONMARK");
		fprintf(fp, "@symbolINVERTEDQUESTIONMARK	SYMBOL-INVERTED-QUESTION-MARK\n", yytext);
	}
÷	{	printf("@symbolDIVISIONSIGN");
		fprintf(fp, "@symbolDIVISIONSIGN	SYMBOL-DIVISION-SIGN\n", yytext);
	}
×	{	printf("@symbolMULTIPLICATIONSIGN");
		fprintf(fp, "@symbolMULTIPLICATIONSIGN	SYMBOL-MULTIPLICATION-SIGN\n", yytext);
	}
―	{	printf("@symbolHORIZONTALBAR");
		fprintf(fp, "@symbolHORIZONTALBAR	SYMBOL-HORIZONTAL-BAR\n", yytext);
	}
\+	{	printf("@symbolPLUS");
		fprintf(fp, "@symbolPLUS	SYMBOL-PLUS\n", yytext);	
	}
#	{	printf("@symbolSHARP");	
		fprintf(fp, "@symbolSHARP	SYMBOL-SHARP\n", yytext);	
	}
\$	{	printf("@symbolDOLLAR");
		fprintf(fp, "@symbolDOLLAR	SYMBOL-DOLLAR\n", yytext);	
	}
\=	{	printf("@symbolEQUALTO");
		fprintf(fp, "@symbolEQUALTO	SYMBOL-EQUAL-TO\n", yytext);	
	}
%	{	printf("@symbolPERCENT");
		fprintf(fp, "@symbolPERCENT	SYMBOL-PERCENT\n", yytext);	
	}
—	{	printf("@symbolEMDASH");
		fprintf(fp, "@symbolEMDASH	SYMBOL-EMDASH\n", yytext);	
	}
β	{	printf("@symbolBETA");
		fprintf(fp, "@symbolBETA	SYMBOL-BETA\n", yytext);	
	}
[ ][a-zA-Z0-9]*[/][a-zA-Z0-9]* {	len=strcspn(yytext, "/");
				strncpy(str, yytext, len); str[len]='\0';

				s1=strchr(yytext, '/')+1;
                                printf(" %s symbolSLASH %s", str, s1); /*Ex: km/hr  */
				fprintf(fp, " symbol-SLASH 	SYMBOL-SLASH\n"); 
			}
[0-9]+[.][0-9]+		{	len=strcspn(yytext, ".");
				strncpy(str, yytext, len); str[len]='\0';

				s1=strchr(yytext, '.')+1;
				printf("%s@symbolDOT%s", str, s1);
				fprintf(fp, "@symbolDOT	SYMBOL-DOT\n");
			}	

%%

main(int argc, char*argv[])
{
  fp=fopen(argv[1], "a");
  yylex();
}


/*[^<]\/  {       len=strcspn(yytext, "/");
#                strncpy(str, yytext, len); str[len]='\0';
#                s1=strchr(yytext, '/')+1;
#                printf("%s @symbolSLASH %s", str, s1);
#                fprintf(fp, "[ ]*@symbolSLASH[ ]*      SYMBOL-SLASH\n");
#        }*/

