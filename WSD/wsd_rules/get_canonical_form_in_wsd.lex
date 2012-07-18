/*Programme to get canonical form WSD rules*/
/*Added by Roja(17-07-12) */
HINDI_wrd [^) ]
%{
#include<string.h>
char word[10000], canonical_word[10000];
%}
%x hnd_wrd
%%

\(assert[ ]\(id-(wsd_root|wsd_word|H_vib)_mng[ ]\?[a-z0-9 \?\(\)=+-]*[ ]	{	ECHO; BEGIN hnd_wrd;	}

<hnd_wrd>{HINDI_wrd}+	{	strcpy(word, yytext);
				canonical_form(word,canonical_word); //calling canonical_form function
				printf("%s", canonical_word);  *word='\0'; *canonical_word='\0';}

\(assert[ ]\(id-attach_emphatic[ ]		{	ECHO; BEGIN hnd_wrd;    }

\(assert[ ]\(kriyA_id-object1|2_viBakwi[ ]	{       ECHO; BEGIN hnd_wrd;    }

\(assert[ ]\(kriyA_id-object_viBakwi[ ]		{	ECHO; BEGIN hnd_wrd;    }

\(assert[ ]\(kriyA_id-subject_viBakwi[ ]	{	ECHO; BEGIN hnd_wrd;    }

\(assert[ ]\(affecting_id-affected_ids-wsd_group_root_mng[ ]\?[a-z0-9 \?\(\)=+-]*[ ]        										     {       ECHO; BEGIN hnd_wrd;    }

<hnd_wrd>\)\)					{	ECHO; BEGIN INITIAL;	}

%%
