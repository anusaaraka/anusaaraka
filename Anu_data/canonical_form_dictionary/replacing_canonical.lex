/* Added by Roja(29-08-12) */
/* Some words doesnt need Canonical form . So replacing them here. */
/* Ex: KIMca in canonical form becomes KIFca . */
/* Replacing here 'F' with 'z'	*/
/* This file need to be improved */

%%

KIFc	{	printf("KIzc");  /* KIFca    becomes KIzca   */	}
arefg	{	printf("arezg"); /* kareMge  becomes karezge */	}
efg	{	printf("ezg"); /* xeKefge  becomes xeKezge */	}
yefg	{	printf("yezg");	 /* KAyefge  becomes KAyezge */ }
%%
