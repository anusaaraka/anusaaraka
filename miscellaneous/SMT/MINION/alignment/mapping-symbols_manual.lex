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
                fprintf(fp, "@punctSEMICOLON	PUNCT-Semicolon\n");
/*        }
nonascii      {       printf("@symbolnonascii ");
                fprintf(fp, "@symbolnonascii	nonascii\n"); */
        }
\(	{	printf(" @punctOPENPAREN ");
		fprintf(fp, "@punctOPENPAREN	PUNCT-OpenParen\n");
	}
\)	{	printf(" @punctCLOSEPAREN ");
		fprintf(fp, "@punctCLOSEPAREN	PUNCT-ClosedParen\n");
	}
¡	{	printf(" @symbolINVERTEDEXCLAMATIONMARK ");
		fprintf(fp, "@symbolINVERTEDEXCLAMATIONMARK	SYMBOL-INVERTED-EXCLAMATION-MARK\n");
	}
¢	{	printf(" @symbolCENTSIGN ");
		fprintf(fp, "@symbolCENTSIGN	SYMBOL-CENT-SIGN\n");
	}
£	{	printf(" @symbolPOUNDSIGN ");
		fprintf(fp, "@symbolPOUNDSIGN	SYMBOL-POUND-SIGN\n");
	}
¤	{	printf(" @symbolCURRENCYSIGN ");
		fprintf(fp, "@symbolCURRENCYSIGN	SYMBOL-CURRENCY-SIGN\n");
	}
¥	{	printf(" @symbolYENSIGN ");
		fprintf(fp, "@symbolYENSIGN	SYMBOL-YEN-SIGN\n");
	}
¦	{	printf(" @symbolBROKENBAR ");
		fprintf(fp, "@symbolBROKENBAR	SYMBOL-BROKEN-BAR\n");
	}
§	{	printf(" @symbolSECTIONSIGN ");
		fprintf(fp, "@symbolSECTIONSIGN	SYMBOL-SECTION-SIGN\n");
	}
¨	{	printf(" @symbolDIAERESIS ");
		fprintf(fp, "@symbolDIAERESIS	SYMBOL-DIAERESIS\n");
	}
©	{	printf(" @symbolCOPYRIGHTSIGN ");
		fprintf(fp, "@symbolCOPYRIGHTSIGN	SYMBOL-COPYRIGHT-SIGN\n");
	}
ª	{	printf(" @symbolFEMININEORDINALINDICATOR ");
		fprintf(fp, "@symbolFEMININEORDINALINDICATOR	SYMBOL-FEMININE-ORDINAL-INDICATOR\n");
	}
«	{	printf(" @symbolLEFTPOINTINGDOUBLEANGLEQUOTATIONMARK ");
		fprintf(fp, "@symbolLEFTPOINTINGDOUBLEANGLEQUOTATIONMARK	SYMBOL-LEFT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK\n");
	}
¬	{	printf(" @symbolNOTSIGN ");
		fprintf(fp, "@symbolNOTSIGN	SYMBOL-NOT-SIGN\n");
	/*}
 	{	printf("@symbolSOFTHYPHEN");
		fprintf(fp, "@symbolSOFTHYPHEN	%s\n");
	*/}
®	{	printf(" @symbolREGISTEREDSIGN ");
		fprintf(fp, "@symbolREGISTEREDSIGN	SYMBOL-REGISTERED-SIGN\n");
	}
¯ 	{	printf(" @symbolMACRON ");
		fprintf(fp, "@symbolMACRON	SYMBOL-MACRON\n");
	}
° 	{	printf(" @symbolDEGREESIGN ");
		fprintf(fp, "@symbolDEGREESIGN	SYMBOL-DEGREE-SIGN\n");
	}
±	{	printf(" @symbolPLUSMINUSSIGN ");
		fprintf(fp, "@symbolPLUSMINUSSIGN	SYMBOL-PLUS-MINUS-SIGN\n");
	}
² 	{	printf(" @symbolSUPERSCRIPTTWO ");
		fprintf(fp, "@symbolSUPERSCRIPTTWO	SYMBOL-SUPERSCRIPT-TWO\n");
	}
³ 	{	printf(" @symbolSUPERSCRIPTTHREE ");
		fprintf(fp, "@symbolSUPERSCRIPTTHREE	SYMBOL-SUPERSCRIPT-THREE\n");
	}
´ 	{	printf(" @symbolACUTEACCENT ");
		fprintf(fp, "@symbolACUTEACCENT	SYMBOL-ACUTE-ACCENT\n");
	}
µ 	{	printf(" @symbolMICROSIGN ");
		fprintf(fp, "@symbolMICROSIGN	SYMBOL-MICRO-SIGN\n");
	}
¶	{	printf(" @symbolPILCROWSIGN ");
		fprintf(fp, "@symbolPILCROWSIGN	SYMBOL-PILCROW-SIGN\n");
	}
· 	{	printf(" @symbolMIDDLEDOT ");
		fprintf(fp, "@symbolMIDDLEDOT	SYMBOL-MIDDLE-DOT\n");
	}
¸	{	printf(" @symbolCEDILLA ");
		fprintf(fp, "@symbolCEDILLA	SYMBOL-CEDILLA\n");
	}
¹ 	{	printf(" @symbolSUPERSCRIPTONE ");
		fprintf(fp, "@symbolSUPERSCRIPTONE	SYMBOL-MASCULINE-ORDINAL-INDICATOR\n");
	}
º 	{	printf(" @symbolMASCULINEORDINALINDICATOR ");
		fprintf(fp, "@symbolMASCULINEORDINALINDICATOR	SYMBOL-MASCULINE-ORDINAL-INDICATOR\n");
	}
»	{	printf(" @symbolRIGHTPOINTINGDOUBLEANGLEQUOTATIONMARK ");
		fprintf(fp, "@symbolRIGHTPOINTINGDOUBLEANGLEQUOTATIONMARK	SYMBOL-RIGHT-POINTING-DOUBLE-ANGLE-QUOTATION-MARK\n");
	}
¼	{	printf(" @symbolVULGARFRACTIONONEQUARTER ");
		fprintf(fp, "@symbolVULGARFRACTIONONEQUARTER	SYMBOL-VULGAR-FRACTION-ONE-QUARTER\n");
	}
½	{	printf(" @symbolVULGARFRACTIONONEHALF ");
		fprintf(fp, "@symbolVULGARFRACTIONONEHALF	SYMBOL-VULGAR-FRACTION-ONE-HALF\n");
	}
¾	{	printf(" @symbolVULGARFRACTIONTHREEQUARTERS ");
		fprintf(fp, "@symbolVULGARFRACTIONTHREEQUARTERS	SYMBOL-VULGAR-FRACTION-THREE-QUARTERS\n");
	}
¿	{	printf(" @symbolINVERTEDQUESTIONMARK ");
		fprintf(fp, "@symbolINVERTEDQUESTIONMARK	SYMBOL-INVERTED-QUESTION-MARK\n");
	}
÷	{	printf(" @symbolDIVISIONSIGN ");
		fprintf(fp, "@symbolDIVISIONSIGN	SYMBOL-DIVISION-SIGN\n");
	}
×	{	printf(" @symbolMULTIPLICATIONSIGN ");
		fprintf(fp, "@symbolMULTIPLICATIONSIGN	SYMBOL-MULTIPLICATION-SIGN\n");
	}
―	{	printf(" @symbolHORIZONTALBAR ");
		fprintf(fp, "@symbolHORIZONTALBAR	SYMBOL-HORIZONTAL-BAR\n");
	}
\+	{	printf(" @symbolPLUS ");
		fprintf(fp, "@symbolPLUS	SYMBOL-PLUS\n");	
	}
#	{	printf(" @symbolSHARP ");	
		fprintf(fp, "@symbolSHARP	SYMBOL-SHARP\n");	
	}
\$	{	printf(" @symbolDOLLAR ");
		fprintf(fp, "@symbolDOLLAR	SYMBOL-DOLLAR\n");	
	}
\=	{	printf(" @symbolEQUALTO ");
		fprintf(fp, "@symbolEQUALTO	SYMBOL-EQUAL-TO\n");	
	}
%	{	printf(" @symbolPERCENT ");
		fprintf(fp, "@symbolPERCENT	SYMBOL-PERCENT\n");	
	}
—	{	printf(" @symbolEMDASH ");
		fprintf(fp, "@symbolEMDASH	SYMBOL-EMDASH\n");	
	}
β[^-]	{	printf(" @symbolBETA ");
		fprintf(fp, "@symbolBETA	SYMBOL-BETA\n");	
	}
\~	{	printf(" @symbolTELDA ");
		fprintf(fp, "@symbolTELDA	SYMBOL-TELDA\n");
	}
α	{	printf(" @symbolALPHA ");
			fprintf(fp, "@symbolALPHA	SYMBOL-ALPHA\n");	
		}
δ	{	printf(" @symbolDELTA ");
			fprintf(fp, "@symbolDELTA 	SYMBOL-DELTA\n");
		}
γ	{	printf(" @symbolGAMMA ");
			fprintf(fp, "@symbolGAMMA	SYMBOL-GAMMA\n");
		}
ε	{	printf(" @symbolEPSILION ");
			fprintf(fp, "@symbolEPSILION	SYMBOL-EPSILION\n");
		}
ζ	{	printf(" @symbolZETA ");
			fprintf(fp, "@symbolZETA	SYMBOL-ZETA\n");
		}
η	{	printf(" @symbolETA ");
			fprintf(fp, "@symbolETA	SYMBOL-ETA\n");
		}
θ	{	printf(" @symbolTHETA ");
			fprintf(fp, "@symbolTHETA	SYMBOL-THETA\n");
		}
ι	{	printf(" @symbolIOTA ");
			fprintf(fp, "@symbolIOTA	SYMBOL-IOT\n");
		}
κ	{	printf(" @symbolKAPPA ");
			fprintf(fp, "@symbolKAPPA	SYMBOL-KAPPA\n");
		}
λ	{	printf(" @symbolLAMBDA ");
			fprintf(fp, "@symbolLAMBDA	SYMBOL-LAMBDA\n");
		}
μ	{	printf(" @symbolMU ");
			fprintf(fp, "@symbolMU	SYMBOL-MU\n");
		}
ν	{	printf(" @symbolNU ");
			fprintf(fp, "@symbolNU	SYMBOL-NU\n");
		}
ξ	{	printf(" @symbolXI ");
			fprintf(fp, "@symbolXI	SYMBOL-XI\n");
		}
ο	{	printf(" @symbolOMICRON ");
			fprintf(fp, "@symbolOMICRON	SYMBOL-OMICRON\n");
		}
π	{	printf(" @symbolPI ");
			fprintf(fp, "@symbolPI	SYMBOL-PI\n");
		}
ρ	{	printf(" @symbolRHO ");
			fprintf(fp, "@symbolRHO	SYMBOL-RHO\n");
		}
σ	{	printf(" @symbolSIGMA ");
			fprintf(fp, "@symbolSIGMA	SYMBOL-SIGMA\n");
		}
τ	{	printf(" @symbolTAU ");
			fprintf(fp, "@symbolTAU	SYMBOL-TAU\n");
		}
υ	{	printf(" @symbolUPSILON ");
			fprintf(fp, "@symbolUPSILON	SYMBOL-UPSILON\n");
		}
φ	{	printf(" @symbolPHI ");
			fprintf(fp, "@symbolPHI	SYMBOL-PHI\n");
		}
χ	{	printf(" @symbolCHI ");
			fprintf(fp, "@symbolCHI	SYMBOL-CHI\n");
		}
ψ	{	printf(" @symbolPSI ");
			fprintf(fp, "@symbolPSI	SYMBOL-PSI\n");
		}
ω	{	printf(" @symbolOMEGA ");
			fprintf(fp, "@symbolOMEGA	SYMBOL-OMEG\n");
		}
[a-zA-Z0-9]*[/][a-zA-Z0-9]* {	len=strcspn(yytext, "/");
				strncpy(str,yytext, len); str[len]='\0';

				s1=strchr(yytext, '/')+1;
                                printf("%s @symbolSLASH %s", str, s1); /*Ex: km/hr  */
				fprintf(fp, "@symbolSLASH	SYMBOL-SLASH\n"); 
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
#                strncpy(str, len); str[len]='\0';
#                s1=strchr(yytext, '/')+1;
#                printf("%s @symbolSLASH %s", str, s1);
#                fprintf(fp, "[ ]*@symbolSLASH[ ]*      SYMBOL-SLASH\n");
#        }*/

