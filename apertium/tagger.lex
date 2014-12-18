%{
#include<string.h>
char str[1000],str1[100],str2[100],word[100];
int len=0;
FILE *fp;
int count=0;
%}

%%
[\^][a-zA-Z0-9\-]*[<][a-zA-Z0-9<>-]*[>][$][\^]['][s][<]gen[>][$] 	{ print_category(yytext); } 
[\^][a-zA-Z0-9\-]*[<][a-zA-Z0-9<>-]*[>][$] 			{ print_category(yytext); } 
[\^][\*][a-zA-Z0-9\-]*[$]					{count=count+1;
                                                                 if((yytext[2]>=65)&&(yytext[2]<=90)){
								    fprintf(fp,"(id-cat %d proper_noun)\n",count);
                                                                    fprintf(fp,"(id-cat_coarse %d PropN)\n",count);}
                                                                 else {
                                                                    fprintf(fp,"(id-cat %d unknown)\n",count);
                                                                    fprintf(fp,"(id-cat_coarse %d unknown)\n",count); }}
[<]sent[>][$]							{count=0;fprintf(fp,";~~~~~~~~~~\n");}

%%


print_category(char* category)
{
        
        len=strcspn(category,"^");
        category=category+len+1;
	len=strcspn(category,"<");strncpy(word,category,len);word[len]='\0';
        category=category+len+1;strcpy(str,category);
        len=strcspn(str,"$");strncpy(str2,str,len);str2[len]='\0';
        len=strcspn(category,">");
        strncpy(str1,category,len);
        str1[len]='\0';    count=count+1;

        if(strcmp(str2,"adv>")==0) {fprintf(fp,"(id-cat %d adverb)\n",count);}
        else if (strcmp(str2,"adj><sint><comp>")==0)  {fprintf(fp,"(id-cat %d adjective_comparative)\n",count);}
        else if (strcmp(str2,"adj><sint><sup>")==0)  {fprintf(fp,"(id-cat %d adjective_superlative)\n",count);}
        else if (strcmp(str2,"adj><sint>")==0||strcmp(str2,"adj>")==0||strcmp(str2,"adj><pos>")==0)  {fprintf(fp,"(id-cat %d adjective )\n",count);}
        else if (strcmp(str2,"vblex><inf>")==0)  {fprintf(fp,"(id-cat %d infinitive)\n",count);}
        else if (strcmp(str2,"vblex><pp>")==0)  {fprintf(fp,"(id-cat %d verb_past_participle)\n",count);}
        else if (strcmp(str2,"vblex><past>")==0)  {fprintf(fp,"(id-cat %d verb_past_tense)\n",count);}
        else if (strcmp(str2,"det><itg><sp>")==0)  {fprintf(fp,"(id-cat %d wh_determiner)\n",count);}
        else if (strcmp(str2,"adv><itg>")==0)  {fprintf(fp,"(id-cat %d wh-adverb)\n",count);}
        else
        fprintf(fp,"(id-cat %d <%s )\n",count,str2);
       
 
        if((strcmp(word,"when")==0||strcmp(word,"where")==0||strcmp(word,"why")==0||strcmp(word,"When")==0||strcmp(word,"Where")==0||strcmp(word,"Why")==0)&&(strcmp(str1,"adv")==0)){fprintf(fp,"(id-cat_coarse\t%d\twh-adverb)\n",count);}
        else if(strcmp(str1,"n")==0) {fprintf(fp,"(id-cat_coarse\t%d\tnoun)\n",count);}
        else if(strcmp(str1,"vblex")==0||strcmp(str1,"vbser")==0||strcmp(str1,"vbhaver")==0||strcmp(str1,"vaux")==0||strcmp(str1,"vbdo")==0) {fprintf(fp,"(id-cat_coarse\t%d\tverb)\n",count);}
        else if(strcmp(str1,"pr")==0) {fprintf(fp,"(id-cat_coarse\t%d\tpreposition)\n",count);}
        else if(strcmp(str1,"cnjcoo")==0||strcmp(str1,"cnjadv")==0||strcmp(str1,"cnjsub")==0) {fprintf(fp,"(id-cat_coarse\t%d\tconjunction)\n",count);}
        else if(strcmp(str1,"det")==0||strcmp(str1,"predet")==0) {fprintf(fp,"(id-cat_coarse\t%d\tdeterminer)\n",count);}
        else if(strcmp(str1,"adj")==0) {fprintf(fp,"(id-cat_coarse\t%d\tadjective)\n",count);}
        else if(strcmp(str1,"preadv")==0||strcmp(str1,"adv")==0) {fprintf(fp,"(id-cat_coarse\t%d\tadverb)\n",count);}
        else if(strcmp(str1,"prn")==0) {fprintf(fp,"(id-cat_coarse\t%d\tpronoun)\n",count);}
        else if(strcmp(str1,"np")==0) {fprintf(fp,"(id-cat_coarse\t%d\tPropN)\n",count);}
        else if(strcmp(str1,"rel")==0) {fprintf(fp,"(id-cat_coarse\t%d\treletive_clause)\n",count);}
        else if(strcmp(str1,"num")==0) {fprintf(fp,"(id-cat_coarse\t%d\tnumber)\n",count);}
        else {fprintf(fp,"(id-cat_coarse\t%d\tunknown)\n",count);}

        
	//printf("--%s--\n",word);

}


main(int argc, char* argv[])
{
fp=fopen(argv[1],"w");
yylex();
fclose(fp);
}

