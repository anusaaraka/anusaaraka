 char map[]="01234567890123456789012345678901234567890123456789012345678901234⁄Àπ¿‚º∂£‹ª¥L¢¡Ê…Q÷’æﬁV√≈YÈ      § ∏ø·∑µÿ€∫≥—Ã∆Â»ﬂœ◊Ω›‘¬ƒÕ° ";
NUKTA Z
OPERATOR_V V
OPERATOR_Y Y
SPECIAL_CATEGORY [zMH]
VOWEL_A a
VOWEL_REMAINING [AiIuUqiQLeEoO]
CONSONANT [kKgGfcCjJFtTdDNwWxXnpPbBmyrlvSRsh]
ROM_WORD [A-Za-z0-9]+
%x CONS 
%%
@{ROM_WORD}				{printf("%s",yytext+1);}

{CONSONANT}				{
					printf("%c",map[yytext[0]]);BEGIN CONS;
					}

<CONS>{NUKTA}				{
					printf("È");
					}

<CONS>{VOWEL_A}				{BEGIN INITIAL;}

<CONS>{VOWEL_REMAINING}			{
					printf("%c",map[yytext[0]]);
					BEGIN INITIAL;
					}

<CONS>{VOWEL_REMAINING}{OPERATOR_V}+ 	{
					printf("%c",map[yytext[0]]-yyleng+1);
					BEGIN INITIAL;
					}

<CONS>{VOWEL_REMAINING}{OPERATOR_Y}+ 	{
					printf("%c",map[yytext[0]]+yyleng);
					BEGIN INITIAL;
					}

<CONS>{CONSONANT}			{
					printf("Ë%c",map[yytext[0]]);
					}

<CONS>{CONSONANT}{OPERATOR_V}+		{
					printf("Ë%c",map[yytext[0]]-yyleng+1);
					}

<CONS>{CONSONANT}{OPERATOR_Y}+		{
					printf("Ë%c",map[yytext[0]]+yyleng);
					}

<CONS>(.|\n)				{
					printf("Ë%c",yytext[0]);
					BEGIN INITIAL;
					}

{VOWEL_REMAINING}			{
					printf("%c",map[yytext[0]]-53);
					}

{VOWEL_A}				{
					printf("%c",map[yytext[0]]);
					}

{SPECIAL_CATEGORY}			{
					printf("%c",map[yytext[0]]);
					}

{CONSONANT}{OPERATOR_V}+		{
					printf("%c",map[yytext[0]]-yyleng+1);
					BEGIN CONS;
					}

{CONSONANT}{OPERATOR_Y}+		{
					printf("%c",map[yytext[0]]+yyleng);
					BEGIN CONS;
					}

{VOWEL_REMAINING}{OPERATOR_V}+		{
					printf("%c",map[yytext[0]]-53-yyleng+1);
					}

{VOWEL_REMAINING}{OPERATOR_Y}+		{
					printf("%c",map[yytext[0]]-53+yyleng);
					}


{VOWEL_A}{OPERATOR_V}+			{
					printf("%c",map[yytext[0]]-yyleng+1);
					}

{VOWEL_A}{OPERATOR_Y}+			{
					printf("%c",map[yytext[0]]+yyleng);
					}
\.Y					{
					printf("ÍÈ");
					}
\.					{
					printf("%c",yytext[0]);
					}

