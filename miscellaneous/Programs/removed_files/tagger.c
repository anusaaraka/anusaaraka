#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(int argc,char **argv)
{	
	FILE *fine, *coarse,*directories,*error_ptr,*cat1;
	int debug=0,n,j,i,k,x,y,p,count=0,prev_hyphen=0;
	int len1;
	char c;	
	char s1[2000][2000],s2[2000],dirname[200],filenamef[200],filenamec[200],text[5001],filename[200];
	sprintf(dirname,"%s/tmp/%s_tmp/dir_names.txt",argv[1],argv[2]);
	directories=fopen(dirname,"r");
	if(directories==NULL) {printf("Could not open %s for reading\n",dirname);exit(1);}

	for(i=0;(c=getchar())!=EOF;i++)
	{
		s1[i][0]=c;
		if(s1[i][0]!='\n')
		{
			fgets(dirname,50,directories);
			*(dirname+strcspn(dirname,"\n"))='\0';
			sprintf(filenamef,"%s/tmp/%s_tmp/%s/cat1_fine.dat",argv[1],argv[2],dirname);
			sprintf(filenamec,"%s/tmp/%s_tmp/%s/cat1_coarse.dat",argv[1],argv[2],dirname);
			fine=fopen(filenamef,"w");
			coarse=fopen(filenamec,"w");
			if(fine==NULL) {printf("Could not open %s for writing\n",filenamef);exit(1);}
			if(coarse==NULL) {printf("Could not open %s for writing\n",filenamec);exit(1);}
			sprintf(filenamef,"%s/tmp/%s_tmp/%s/errors.txt",argv[1],argv[2],dirname);
			//error_ptr=fopen(filenamef,"w");


			for(j=1;(c=getchar())!='\n';j++)
			{
				s1[i][j]=c;
			}
			s1[i][j]='\0';
			j=0;
			fprintf(fine,"\n;%s\n",s1[i]);
			fprintf(fine,"\n");
			for(count=0,n=0;s1[i][n]!='\0';n++)
			{
				k=n;
				if(s1[i][k]=='^')
				{
					if((s1[i][k+1]!=',')&&(s1[i][k+1]!='.')&&(s1[i][k+1]!=';')&&(s1[i][k+1]!=':')&&(s1[i][k+1]!=39)&&(s1[i][k+1]!=34)&&(s1[i][k+1]!='?')&&(s1[i][k+1]!='!'))//ASCII- 34=" 39='
					{
						while(s1[i][k]!='$')
						{
							//p=k+1;changed by sriram for ^*Bravery$ k=1 is 'B'
							//p=k;
							if(s1[i][k+1]=='*')
							{
								y=0;
								p=k+1;
								while(s1[i][p]!='$')
								{
									s2[y]=s1[i][p];
									p++;y++;
								}
								s2[y]='\0';
								count++;

								if((s1[i][k+2]>=65)&&(s1[i][k+2]<=90)){
									fprintf(fine,"(id-cat %d proper_noun)\n",count);
									fprintf(coarse,"(id-cat_coarse %d proper_noun)\n",count);
									s2[0]='\0';
									k=p-1;
									n=k;
								}
								else {
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s)\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d unknown)\n",count);
									s2[0]='\0';
									k=p-1;
									n=k;
								}
							}

							if((s1[i][k]=='<')&&(s1[i][k-1]!=',')&&(s1[i][k-1]!='.')&&(s1[i][k-1]!=';')&&(s1[i][k-1]!=':')&&(s1[i][k-1]!=39)&&(s1[i][k-1]!=34)&&(s1[i][k-1]!='?')&&(s1[i][k-1]!='!')&&(s1[i][k-1]!='(')&&(s1[i][k-1]!=')'))
							{
								y=0;
								p=k;
								while((s1[i][p]!='>')||(s1[i][p+1]!='$'))
								{
									s2[y]=s1[i][p];
									p++;y++;
								}
								s2[y]='\0';
								count++;


								if(prev_hyphen){prev_hyphen=0;}

								//for handling "-<guio>" (hyphen) (no increment in word-id for this and next word)
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='g')&&(s1[i][k+2]=='u')&&(s1[i][k+3]=='i')&&(s1[i][k+4]=='o')&&(s1[i][k+5]=='>')){

									count=count-2;
									prev_hyphen=1;


								}

								else if((s1[i][k]=='<')&&(s1[i][k+1]=='n')&&(s1[i][k+2]=='>')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d noun)\n",count);
									//					noun(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='n')&&(s1[i][k+2]=='p')&&(s1[i][k+3]=='>')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d PropN)\n",count);
									//					noun(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='n')&&(s1[i][k+2]=='u')&&(s1[i][k+3]=='m')&&(s1[i][k+4]=='>')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d number)\n",count);
									//					num(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='p')&&(s1[i][k+2]=='r')&&(s1[i][k+3]=='>')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d preposition)\n",count);
									//					prep(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='p')&&(s1[i][k+2]=='r')&&(s1[i][k+3]=='n')&&(s1[i][k+4]=='>')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d pronoun)\n",count);
									//					pronoun(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='v')&&(s1[i][k+2]=='b')){

									if(strstr(s2,"vblex><past") != NULL){fprintf(fine,"(id-cat %d verb_past_tense)\n",count);}
									else if(strstr(s2,"vblex><pp") != NULL){fprintf(fine,"(id-cat %d verb_past_participle)\n",count);}
									else if(strstr(s2,"vblex><inf") != NULL){fprintf(fine,"(id-cat %d infinitive)\n",count);}
									else{
										fprintf(fine,"(id-cat ");
										fprintf(fine,"%d %s> )\n",count,s2);
									}
									fprintf(coarse,"(id-cat_coarse %d verb)\n",count);
									//						verb(count);
									//
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='v')&&(s1[i][k+2]=='a')&&(s1[i][k+3]=='u')&&(s1[i][k+4]=='x')){

									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d verb)\n",count);
									//					verb(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='a')&&(s1[i][k+2]=='d')&&(s1[i][k+3]=='j')&&(s1[i][k+4]=='>')){

									if(strstr(s1[i]+k,"<adj><sint><sup>") != NULL){fprintf(fine,"(id-cat %d adjective_superlative)\n",count);}
									else if(strstr(s1[i]+k,"<adj><sint><comp>") != NULL){fprintf(fine,"(id-cat %d adjective_comparative)\n",count);}
									else {fprintf(fine,"(id-cat %d adjective )\n",count);}


									//					 if((s1[i][k]=='<')&&(s1[i][k+1]=='a')&&(s1[i][k+2]=='d')&&(s1[i][k+3]=='j')&&(s1[i][k+4]=='>')&&(s1[i][k+5]=='<')&&(s1[i][k+6]=='s')&&(s1[i][k+7]=='i')&&(s1[i][k+4]=='n'))
									//					fprintf(fine,"(id-cat ");
									//					fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d adjective)\n",count);
									//					adj(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='a')&&(s1[i][k+2]=='d')&&(s1[i][k+3]=='v')&&(s1[i][k+4]=='>')&&(s1[i][k+5]=='<')&&(s1[i][k+6]=='i')&&(s1[i][k+7]=='t')&&(s1[i][k+8]=='g')&&(s1[i][k+9]=='>')){
									fprintf(fine,"(id-cat %d wh-adverb)\n",count);
									fprintf(coarse,"(id-cat_coarse %d wh-adverb)\n",count);
									//					adv(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='a')&&(s1[i][k+2]=='d')&&(s1[i][k+3]=='v')&&(s1[i][k+4]=='>')){
									fprintf(fine,"(id-cat %d adverb)\n",count);
									fprintf(coarse,"(id-cat_coarse %d adverb)\n",count);
									//					adv(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='p')&&(s1[i][k+2]=='r')&&(s1[i][k+3]=='e')&&(s1[i][k+4]=='a')&&(s1[i][k+5]=='d')&&(s1[i][k+6]=='v')&&(s1[i][k+7]=='>')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d adverb)\n",count);
									//					adv(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='c')&&(s1[i][k+2]=='n')&&(s1[i][k+3]=='j')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d conjunction)\n",count);
									//					cnj(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='d')&&(s1[i][k+2]=='e')&&(s1[i][k+3]=='t')){

									if(strstr(s1[i]+k,"<det><itg>") != NULL){fprintf(fine,"(id-cat %d wh_determiner)\n",count);}
									else{

										fprintf(fine,"(id-cat ");
										fprintf(fine,"%d %s> )\n",count,s2);
									}
									fprintf(coarse,"(id-cat_coarse %d determiner)\n",count);
									//					det(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='p')&&(s1[i][k+2]=='r')&&(s1[i][k+3]=='e')&&(s1[i][k+4]=='d')&&(s1[i][k+5]=='e')&&(s1[i][k+6]=='t')&&(s1[i][k+7]=='>')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d determiner)\n",count);
									//					det(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='i')&&(s1[i][k+2]=='j')&&(s1[i][k+3]=='>')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d interjection)\n",count);
									//					interjection(count);
								}
								else if((s1[i][k]=='<')&&(s1[i][k+1]=='r')&&(s1[i][k+2]=='e')&&(s1[i][k+3]=='l')){
									fprintf(fine,"(id-cat ");
									fprintf(fine,"%d %s> )\n",count,s2);
									fprintf(coarse,"(id-cat_coarse %d reletive_clause)\n",count);
									//					interjection(count);
								}
								k=p;
								n=k;
								s2[0]='\0';
							}
							k++;
						}
					}
				}
			}
			//	fprintf(coarse,")\n");
			fprintf(coarse,"\n \n");

			fclose(fine);
			fclose(coarse);

			sprintf(filenamef,"%s/tmp/%s_tmp/%s/cat1_fine.dat",argv[1],argv[2],dirname);
			sprintf(filenamec,"%s/tmp/%s_tmp/%s/cat1_coarse.dat",argv[1],argv[2],dirname);
			fine=fopen(filenamef,"r");
			coarse=fopen(filenamec,"r");
			if(fine==NULL) {printf("Could not open %s for writing\n",filenamef);exit(1);}
			if(coarse==NULL) {printf("Could not open %s for writing\n",filenamec);exit(1);}



			sprintf(filename,"%s/tmp/%s_tmp/%s/pos_cat.dat",argv[1],argv[2],dirname);
			cat1=fopen(filename,"w");
			if(cat1==NULL) {printf("Could not open %s for writing \n",filename);exit(1);}


			while( fgets(text,100,fine) != NULL)
			{
				fprintf(cat1,"%s",text);
			}
			while( fgets(text,100,coarse) != NULL)
			{
				fprintf(cat1,"%s",text);
			}
			fclose(fine);
			fclose(coarse);
			fclose(cat1);
		}
	}
	fclose(directories);
	return(0);
}
