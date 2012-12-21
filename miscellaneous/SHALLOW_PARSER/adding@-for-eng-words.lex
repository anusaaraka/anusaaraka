/* This programme identifies english words in a text and puts '@' before an english word. */
/* As shallow parser splits at '@',  */
/* Written by Roja (15-08-12) 	*/

alphabets	[a-zA-Z]
non_alphabets   [^a-zA-Z]

%x eng

%%

{alphabets}+		{	printf("@");ECHO; BEGIN eng; }


<eng>{non_alphabets}+	{	ECHO; BEGIN INITIAL;	}

%%
