/*Converting text to non canonical form(normal form)*/
/*Ex: I/p: Afkade o/p: AMkadZe	*/
/*Written by Roja (31-12-12)	*/

alphabets [a-zA-Z]

%%
@{alphabets}+	{	 ECHO;	}

fk	{ 	printf("Mk");	}
fK	{ 	printf("MK");	}
fg	{ 	printf("Mg");	}
fG	{ 	printf("MG");	}

Fc	{	printf("Mc");	}
FC	{	printf("MC");	}
Fj	{	printf("Mj");	}
FJ	{	printf("MJ");	}


Nt	{	printf("Mt");	}
NT	{	printf("MT");	}
Nd	{	printf("Md");	}
ND	{	printf("MD");	}

mp	{	printf("Mp");	}
mP	{	printf("MP");	}
mb	{	printf("Mb");	}
mB	{	printf("MB");	}

nx	{	printf("Mx");	}
nX	{	printf("MX");	}
nw	{	printf("Mw");	}
nW	{	printf("MW");	}

%%
