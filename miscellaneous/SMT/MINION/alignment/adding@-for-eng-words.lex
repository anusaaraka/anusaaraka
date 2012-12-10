/* This programme identifies english words in a text and puts '@' before an english word. */
/* As shallow parser splits at '@', Instead of '@' ABBRENGBEFORE is given. */
/* Written by Roja (15-08-12) 	*/

alphabets	[a-zA-Z]
non_alphabets   [^a-zA-Z]

%x eng

%%

{alphabets}		{	printf("ABBRENGBEFORE"); ECHO; printf("ABBRENGAFTER"); BEGIN eng;	}

<eng>symbol|punct	{	printf("ABBRENGBEFORE");  ECHO; /*Ex: tsymbolequalto0[t=0] */	}

<eng>{non_alphabets}+	{	ECHO; BEGIN INITIAL;	}

%%
