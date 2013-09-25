/*Programme to get canonical to conventional form in WSD rules*/
/*Added by Roja(21-09-13) */

MATRAS [eEiIoO]
VOWELS [aAeEiIoOuUqQ]
CONSONANTS [^aAeEiIoOuUqQMHZ]
%x hnd_wrd
%%

\(assert[ ]\(id-(wsd_root|wsd_word|H_vib)_mng[ ]\?[a-z0-9 \?\(\)=+-]*[ ]	{	ECHO; BEGIN hnd_wrd;	}

<hnd_wrd>{MATRAS}[f][kKgG]	{	printf("%cM%c", yytext[0], yytext[2]);  }	
<hnd_wrd>{MATRAS}[F][cCjJ]	{	printf("%cM%c", yytext[0], yytext[2]);  }	
<hnd_wrd>{MATRAS}[N][tTdD]	{	printf("%cM%c", yytext[0], yytext[2]);  }	
<hnd_wrd>{MATRAS}[m][pPbB]	{	printf("%cM%c", yytext[0], yytext[2]);  }	
<hnd_wrd>{MATRAS}[n][xXwW]	{	printf("%cM%c", yytext[0], yytext[2]);  }	

\(assert[ ]\(id-attach_emphatic[ ]		{	ECHO; BEGIN hnd_wrd;    }

\(assert[ ]\(kriyA_id-object1|2_viBakwi[ ]	{       ECHO; BEGIN hnd_wrd;    }

\(assert[ ]\(kriyA_id-object_viBakwi[ ]		{	ECHO; BEGIN hnd_wrd;    }

\(assert[ ]\(kriyA_id-subject_viBakwi[ ]	{	ECHO; BEGIN hnd_wrd;    }

\(assert[ ]\(affecting_id-affected_ids-wsd_group_(root|word)_mng[ ]\?[a-z0-9 \?\(\)=+-]*[ ]        										     {       ECHO; BEGIN hnd_wrd;    }

<hnd_wrd>\)\)					{	ECHO; BEGIN INITIAL;	}

%%
