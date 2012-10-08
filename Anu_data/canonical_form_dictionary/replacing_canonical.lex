/* Added by Roja(29-08-12) */
/* Some words doesnt need Canonical form . So replacing them here. */
/* Ex: KIMca in canonical form becomes KIFca . */
/* Replacing here 'F' with 'z'	*/

%%

[ ]KIFc	{	printf(" KIzc"); /* KIFca */	}

%%
