/*******************************
Added by Roja(08-03-12)
Program to convert unprintable characters to normal ASCII characters.
Note: Removed sed and handling with Flex as Suggested by Chaitanya Sir.
TODO: The characters replaced here need to re-mapped after final translation. 
      So information need to be stored.
********************************/
%%

 	{	printf(" "); /* Replacing No-Break Space(NBSP with octal value \302 240\) with normal space */
	}

’	{	printf("\'");/* Replacing Right Single Quotation Mark(RSQM with octal value \342 200 231\) with normal single quote */
	}

“	{	printf("\"");/* Replacing Left Double Quotation Mark(LDQM with octal value \342 200 234\) with normal double quote */
	}

”	{	printf("\"");/* Replacing Right Double Quotation Mark(RDQM with octal value \342 200 235\) with normal double quote */
	}

‘	{	printf("\'");/* Replacing Left Single Quotation Mark(LSQM with octal value \342 200 230\) with normal single quote */
	}

﻿	{	printf(" "); /* Replacing Zero Width No-Breakable Space(ZWNBSP with octal value \357 273 277\) with noraml space 
	}

—	{	printf("-"); * Replacing Em Dash (with octal value \342 200 224\) with normal hyphen */
	}

%%

