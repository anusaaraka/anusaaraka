/* Ex: The average annual rainfall ranges from 2,000 mm to 3,000 mm , with temperatures ranging from 25 to 30° Celsius.
   In above example '°' symbol applies to both 25 and 30. So instead of combining '°' to 30 in Stanford penn o/p,  Chaitanya Sir suggested to consider all the Symbols as '@symbolNAME' and restore '@symbolNAME' back again with original Symbol.
   Ex: '°' is mapped to @symbolDEGREESIGN and at the end @symbolDEGREESIGN is replaced with °	
   Added by Roja (17-08-12) 
   NOTE: Any changes done in mapping-symbols.lex should be updated in this file also. */

%{
#include <string.h>
char str[1000], *s1;
int len, len1;
FILE *fp;
%}

%%
[;]	{       
				printf(" @punctSEMICOLON ");
        		        fprintf(fp, "@punctSEMICOLON	PUNCT-Semicolon\n"); 
/*        }
[ ]*nonascii[ ]*	{ 
			if(yytext[yyleng-1]==' ') {	
				printf("@symbolnonascii");
	                	fprintf(fp, "@symbolnonascii	nonascii\n"); } 
			else if(yytext[yyleng-1]!=' ') {
				printf(" @punctSEMICOLON1 ");
        		        fprintf(fp, "@punctSEMICOLON1	PUNCT-Semicolon1\n"); } */
        }
\(	{	
				printf(" @punctOPENPAREN ");
				fprintf(fp, "@punctOPENPAREN	PUNCT-OpenParen \n"); 
	}
\)	{	
				printf(" @punctCLOSEPAREN ");
				fprintf(fp, "@punctCLOSEPAREN	PUNCT-ClosedParen\n");
	}
[ ]*¡[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolINVERTEDEXCLAMATIONMARK1");
				fprintf(fp, "@symbolINVERTEDEXCLAMATIONMARK1	 SYMBOL-INVERTED-EXCLAMATION-MARK1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-INVERTEDEXCLAMATIONMARK2 ");
        		        fprintf(fp, "@symbol-INVERTEDEXCLAMATIONMARK2	SYMBOL-INVERTED-EXCLAMATION-MARK2\n"); }
	}
[ ]*¢[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolCENTSIGN1 ");
				fprintf(fp, "@symbolCENTSIGN1	 SYMBOL-CENT-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-CENTSIGN2 ");
        		        fprintf(fp, "@symbol-CENTSIGN2	SYMBOL-CENT-SIGN2\n"); }
	}
[ ]*£[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolPOUNDSIGN1 ");
				fprintf(fp, "@symbolPOUNDSIGN1	 SYMBOL-POUND-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-POUNDSIGN2 ");
        		        fprintf(fp, "@symbol-POUNDSIGN2	SYMBOL-POUND-SIGN2\n"); }
	}
[ ]*¤[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolCURRENCYSIGN1 ");
				fprintf(fp, "@symbolCURRENCYSIGN1	 SYMBOL-CURRENCY-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-CURRENCYSIGN2 ");
        		        fprintf(fp, "@symbol-CURRENCYSIGN2	SYMBOL-CURRENCY-SIGN2\n"); }
	}
[ ]*¥[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolYENSIGN1 ");
				fprintf(fp, "@symbolYENSIGN1	 SYMBOL-YEN-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-YENSIGN2 ");
        		        fprintf(fp, "@symbol-YENSIGN2	SYMBOL-YEN-SIGN2\n"); }
	}
[ ]*¦[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolBROKENBAR1 ");
				fprintf(fp, "@symbolBROKENBAR1	 SYMBOL-BROKEN-BAR1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-BROKENBAR2 ");
        		        fprintf(fp, "@symbol-BROKENBAR2	SYMBOL-BROKEN-BAR2\n"); }
	}
[ ]*§[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolSECTIONSIGN1 ");
				fprintf(fp, "@symbolSECTIONSIGN1	 SYMBOL-SECTION-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-SECTIONSIGN2 ");
        		        fprintf(fp, "@symbol-SECTIONSIGN2	SYMBOL-SECTION-SIGN2\n"); }
	}
[ ]*¨[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolDIAERESIS1 ");
				fprintf(fp, "@symbolDIAERESIS1	 SYMBOL-DIAERESIS1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-DIAERESIS2 ");
        		        fprintf(fp, "@symbol-DIAERESIS2	SYMBOL-DIAERESIS2\n"); }
	}
[ ]*©[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolCOPYRIGHTSIGN1 ");
				fprintf(fp, "@symbolCOPYRIGHTSIGN1	 SYMBOL-COPYRIGHT-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-COPYRIGHTSIGN2 ");
        		        fprintf(fp, "@symbol-COPYRIGHTSIGN2	SYMBOL-COPYRIGHT-SIGN2\n"); }
	}
[ ]*ª[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolFEMININEORDINALINDICATOR1 ");
				fprintf(fp, "@symbolFEMININEORDINALINDICATOR1	 SYMBOL-FEMININE-ORDINAL-INDICATOR1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-FEMININEORDINALINDICATOR2 ");
        		        fprintf(fp, "@symbol-FEMININEORDINALINDICATOR2	SYMBOL-FEMININE-ORDINAL-INDICATOR2\n"); }
	}
[ ]*«[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolLEFTPOINTINGDOUBLEANGLEQUOTATIONMARK1 ");
				fprintf(fp, "@symbolLEFTPOINTINGDOUBLEANGLEQUOTATIONMARK1	 SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-LEFTPOINTINGDOUBLEANGLEQUOTATIONMARK2 ");
        		        fprintf(fp, "@symbol-LEFTPOINTINGDOUBLEANGLEQUOTATIONMARK2	SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK2\n"); }
	}
[ ]*¬[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolNOTSIGN1 ");
				fprintf(fp, "@symbolNOTSIGN1	 SYMBOL-NOT-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolNOTSIGN12 ");
        		        fprintf(fp, "@symbolNOTSIGN12	SYMBOL-NOT-SIGN2\n"); }
	/*}
[ ]* [ ]*	{	printf(" @symbolSOFTHYPHEN");
		fprintf(fp, "@symbolSOFTHYPHEN	%s \n"); }
	*/}
[ ]*®[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolREGISTEREDSIGN1 ");
				fprintf(fp, "@symbolREGISTEREDSIGN1 	SYMBOL-REGISTERED-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolREGISTEREDSIGN2 ");
        		        fprintf(fp, "@symbolREGISTEREDSIGN2	SYMBOL-REGISTERED-SIGN2\n"); }
	}
[ ]*¯[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolMACRON1 ");
				fprintf(fp, "@symbolMACRON1	 SYMBOL-MACRON1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolMACRON2 ");
        		        fprintf(fp, "@symbolMACRON2	SYMBOL-MACRON2\n"); }
	}
[ ]*°[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolDEGREESIGN1 ");
				fprintf(fp, "@symbolDEGREESIGN1	 SYMBOL-DEGREE-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolDEGREESIGN2 ");
        		        fprintf(fp, "@symbolDEGREESIGN2	SYMBOL-DEGREE-SIGN2\n"); }
	}
[ ]*±[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolPLUSMINUSSIGN1 ");
				fprintf(fp, "@symbolPLUSMINUSSIGN1	 SYMBOL-PLUS-MINUS-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolPLUSMINUSSIGN2 ");
        		        fprintf(fp, "@symbolPLUSMINUSSIGN2	SYMBOL-PLUS-MINUS-SIGN2\n"); }
	}
[ ]*²[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolSUPERSCRIPTTWO1 ");
				fprintf(fp, "@symbolSUPERSCRIPTTWO1	 SYMBOL-SUPERSCRIPT-TWO1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-SUPERSCRIPTTWO2 ");
        		        fprintf(fp, "@symbol-SUPERSCRIPTTWO2	SYMBOL-SUPERSCRIPT-TWO2\n"); }
	}
[ ]*³[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolSUPERSCRIPTTHREE1 ");
				fprintf(fp, "@symbolSUPERSCRIPTTHREE1	 SYMBOL-SUPERSCRIPT-THREE1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolSUPERSCRIPTTHREE2 ");
        		        fprintf(fp, "@symbolSUPERSCRIPTTHREE2	SYMBOL-SUPERSCRIPT-THREE2\n"); }
	}
[ ]*´[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolACUTEACCENT1 ");
				fprintf(fp, "@symbolACUTEACCENT1	 SYMBOL-ACUTE-ACCENT1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolACUTEACCENT2 ");
        		        fprintf(fp, "@symbolACUTEACCENT2	SYMBOL-ACUTE-ACCENT2\n"); }
	}
[ ]*µ[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolMICROSIGN1 ");
				fprintf(fp, "@symbolMICROSIGN1	 SYMBOL-MICRO-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolMICROSIGN2 ");
        		        fprintf(fp, "@symbolMICROSIGN2	SYMBOL-MICRO-SIGN2\n"); }
	}
[ ]*¶[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolPILCROWSIGN1 ");
				fprintf(fp, "@symbolPILCROWSIGN1	 SYMBOL-PILCROW-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolPILCROWSIGN2 ");
        		        fprintf(fp, "@symbol-PILCROWSIGN2	SYMBOL-PILCROW-SIGN2\n"); }
	}
[ ]*·[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolMIDDLEDOT1 ");
				fprintf(fp, "@symbolMIDDLEDOT1	 SYMBOL-MIDDLE-DOT1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolMIDDLEDOT2 ");
        		        fprintf(fp, "@symbolMIDDLEDOT2	SYMBOL-MIDDLE-DOT2\n"); }
	}
[ ]*¸[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolCEDILLA1 ");
				fprintf(fp, "@symbolCEDILLA1	 SYMBOL-CEDILLA1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolCEDILLA2 ");
        		        fprintf(fp, "@symbolCEDILLA2	SYMBOL-CEDILLA2\n"); }
	}
[ ]*¹[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolSUPERSCRIPTONE1 ");
				fprintf(fp, "@symbolSUPERSCRIPTONE1	 SYMBOL-SUPERSCRIPT-ONE1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolSUPERSCRIPTONE2 ");
        		        fprintf(fp, "@symbolSUPERSCRIPTONE2	SYMBOL-SUPERSCRIPT-ONE2\n"); }
	}
[ ]*º[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolMASCULINEORDINALINDICATOR1 ");
				fprintf(fp, "@symbolMASCULINEORDINALINDICATOR1	 SYMBOL-MASCULINE-ORDINAL-INDICATOR1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolMASCULINEORDINALINDICATOR2 ");
        		        fprintf(fp, "@symbolMASCULINEORDINALINDICATOR2	SYMBOL-MASCULINE-ORDINAL-INDICATOR2\n"); }
	}
[ ]*»[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolRIGHTPOINTINGDOUBLEANGLEQUOTATIONMARK1 ");
				fprintf(fp, "@symbolRIGHTPOINTINGDOUBLEANGLEQUOTATIONMARK1	 SYMBOL-RIGHT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolRIGHTPOINTINGDOUBLEANGLEQUOTATIONMARK2 ");
        		        fprintf(fp, "@symbolRIGHTPOINTINGDOUBLEANGLEQUOTATIONMARK2	SYMBOL-RIGHT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK2\n"); }
	}
[ ]*¼[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolVULGARFRACTIONONEQUARTER1 ");
				fprintf(fp, "@symbolVULGARFRACTIONONEQUARTER1	 SYMBOL-VULGAR-FRACTION-ONE-QUARTER1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolVULGARFRACTIONONEQUARTER2 ");
        		        fprintf(fp, "@symbolVULGARFRACTIONONEQUARTER2	SYMBOL-VULGAR-FRACTION-ONE-QUARTER2\n"); }
	}
[ ]*½[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolVULGARFRACTIONONEHALF1 ");
				fprintf(fp, "@symbolVULGARFRACTIONONEHALF1	 SYMBOL-VULGAR-FRACTION-ONE-HALF1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolVULGARFRACTIONONEHALF2 ");
        		        fprintf(fp, "@symbolVULGARFRACTIONONEHALF2	SYMBOL-VULGAR-FRACTION-ONE-HALF2\n"); }
	}
[ ]*¾[ ]*	{	
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolVULGARFRACTIONTHREEQUARTERS1 ");
				fprintf(fp, "@symbolVULGARFRACTIONTHREEQUARTERS1	 SYMBOL-VULGAR-FRACTION-THREE-QUARTERS1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolVULGARFRACTIONTHREEQUARTERS2 ");
        		        fprintf(fp, "@symbolVULGARFRACTIONTHREEQUARTERS2	SYMBOL-VULGAR-FRACTION-THREE-QUARTERS2\n"); }
	}
[ ]*¿[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolINVERTEDQUESTIONMARK1 ");
				fprintf(fp, "@symbolINVERTEDQUESTIONMARK1	 SYMBOL-INVERTED-QUESTION-MARK1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolINVERTEDQUESTIONMARK2 ");
        		        fprintf(fp, "@symbolINVERTEDQUESTIONMARK2	SYMBOL-INVERTED-QUESTION-MARK2\n"); }
	}
[ ]*÷[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolDIVISIONSIGN1 ");
				fprintf(fp, "@symbolDIVISIONSIGN1	 SYMBOL-DIVISION-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolDIVISIONSIGN2 ");
        		        fprintf(fp, "@symbolDIVISIONSIGN2	SYMBOL-DIVISION-SIGN2\n"); }
	}
[ ]*×[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolMULTIPLICATIONSIGN1 ");
				fprintf(fp, "@symbolMULTIPLICATIONSIGN1	 SYMBOL-MULTIPLICATION-SIGN1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolMULTIPLICATIONSIGN2 ");
        		        fprintf(fp, "@symbolMULTIPLICATIONSIGN2	SYMBOL-MULTIPLICATION-SIGN2\n"); }
	}
[ ]*―[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolHORIZONTALBAR1 ");
				fprintf(fp, "@symbolHORIZONTALBAR1	 SYMBOL-HORIZONTAL-BAR1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolHORIZONTALBAR2 ");
        		        fprintf(fp, "@symbolHORIZONTALBAR2	SYMBOL-HORIZONTAL-BAR2\n"); }
	}
[ ]*\+[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolPLUS1 ");
				fprintf(fp, "@symbolPLUS1	 SYMBOL-PLUS1 \n"); }	
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolPLUS2 ");
        		        fprintf(fp, "@symbolPLUS2	SYMBOL-PLUS2\n"); }
	}
[ ]*#[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolSHARP1 ");	
				fprintf(fp, "@symbolSHARP1	 SYMBOL-SHARP1 \n"); }	
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolSHARP2 ");
        		        fprintf(fp, "@symbolSHARP2	SYMBOL-SHARP2\n"); }
	}
[ ]*\$[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolDOLLAR1 ");
				fprintf(fp, "@symbolDOLLAR1	 SYMBOL-DOLLAR1 \n"); }	
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbol-DOLLAR2 ");
        		        fprintf(fp, "@symbol-DOLLAR2	SYMBOL-DOLLAR2\n"); }
	}
[ ]*\=[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolEQUALTO1 ");
				fprintf(fp, "@symbolEQUALTO1	 SYMBOL-EQUAL-TO1 \n"); }	
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolEQUALTO2 ");
        		        fprintf(fp, "@symbolEQUALTO2	SYMBOL-EQUAL-TO2\n"); }
	}
[ ]*%[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolPERCENT1 ");
				fprintf(fp, "@symbolPERCENT1	 SYMBOL-PERCENT1 \n"); }	
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolPERCENT2 ");
        		        fprintf(fp, "@symbolPERCENT2	SYMBOL-PERCENT2\n"); }
	}
[ ]*—[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolEMDASH1 ");
				fprintf(fp, "@symbolEMDASH1	 SYMBOL-EMDASH1 \n"); }	
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolEMDASH2 ");
        		        fprintf(fp, "@symbolEMDASH2	SYMBOL-EMDASH2\n"); }
	}
[ ]*β[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolBETA1 ");
				fprintf(fp, "@symbolBETA1	 SYMBOL-BETA1 \n"); }	
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolBETA2 ");
        		        fprintf(fp, "@symbolBETA2	SYMBOL-BETA2\n"); }
	}
[ ]*\~[ ]*	{
			if(yytext[yyleng-1]==' ') {
				printf(" @symbolTELDA1 ");
				fprintf(fp, "@symbolTELDA1	 SYMBOL-TELDA1 \n"); }
			else if(yytext[yyleng-1]!=' ') {
				printf(" @symbolTELDA2 ");
        		        fprintf(fp, "@symbolTELDA2	SYMBOL-TELDA2\n"); }
	}

[ ]*[a-zA-Z0-9]*[/][a-zA-Z0-9]* {	len=strcspn(yytext, "/");
					strncpy(str,yytext, len); str[len]='\0';

					s1=strchr(yytext, '/')+1;
        	                        printf("%s @symbolSLASH %s", str, s1); /*Ex: km/hr  */
					fprintf(fp, "@symbolSLASH	SYMBOL-SLASH \n"); 
				}
[0-9]+[.][0-9]+			{	len=strcspn(yytext, ".");
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
