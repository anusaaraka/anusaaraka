/* This programme identifies english words in a text and puts '@' before an english word. */
/* As shallow parser splits at '@', Instead of '@' ABBRENGBEFORE is given. */
/* Written by Roja (15-08-12) 	*/

alphabets	[a-zA-Z]
non_alphabets   [^a-zA-Z0-9]

%x eng

%%

{alphabets}		{	printf("@"); ECHO;  BEGIN eng;	}

<eng>symbol|punct	{	ECHO; /*Ex: tsymbolequalto0[t=0] */	}

<eng>{non_alphabets}+	{	ECHO; BEGIN INITIAL;	}

%%
