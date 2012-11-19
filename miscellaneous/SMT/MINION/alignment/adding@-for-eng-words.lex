
alphabets	[a-zA-Z]
non_alphabets   [^a-zA-Z]

%x eng

%%

{alphabets}+		{	printf("ABBRENGBEFORE");ECHO;printf("ABBRENGAFTER"); BEGIN eng; }


<eng>{non_alphabets}+	{	ECHO; BEGIN INITIAL;	}

 

%%
