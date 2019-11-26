%{
#include<string.h>
FILE *fp, *fp1 ,*fp2,*fp3;
int len=0,comma_cnt=0,len1=0;
char id[100],node[20],root[100],cat[20],gen[20],num[20],per[20],cas[20],tam[50],new_tam[50],*t,new_text[100],word[50],head[50],name[50],rel1[50],rel2[50];
char *fun(char *str);
void printfun(char *id , char *node , char *root , char *cat ,char *gen,char *num ,char *per, char *cas,char *new_tam , char *head, char *name , char *rel1 ,char *rel2);
%}
%%
[0-9]*[\t]\(\([\t][A-Z]*[\t]<fs[ ]af='[a-zA-Z0-9._,+]*'[ ]head=[a-zA-Z._,+0-9]*[ ]name='[A-Z0-9]*'[ ]drel='[a-z_0-9]*[:][A-Z0-9]*'>  {
					yytext=fun(yytext);
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); strncpy(head,yytext,len); 
					head[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(name,yytext,len);
					name[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,":"); strncpy(rel1,yytext,len); 
					rel1[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(rel2,yytext,len); rel2[len]='\0';
                                        printfun(id,node,root,cat,gen,num,per,cas,new_tam,head,name,rel1,rel2);                                            }
[0-9]*[\t]\(\([\t][A-Z]*[\t]<fs[ ]af='[a-zA-Z0-9._,+]*'[ ]vpos=\"[a-z_0-9A-Z]*\"[ ][ ]head=[a-zA-Z._,+0-9]*[ ][ ]poslcat=\"[A-Z]*\"[ ]name='[A-Z0-9]*'[ ]drel='[a-z_0-9-]*[:][A-Z0-9]*'>  {
                                        yytext=fun(yytext);
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
					len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); strncpy(head,yytext,len); 
					head[len]='\0';yytext=yytext+len+1; 
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(name,yytext,len); 
					name[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,":"); strncpy(rel1,yytext,len);
					rel1[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(rel2,yytext,len); rel2[len]='\0';
                                        printfun(id,node,root,cat,gen,num,per,cas,new_tam,head,name,rel1,rel2);                                            }

[0-9]*[\t]\(\([\t][A-Z]*[\t]<fs[ ]af='[a-zA-Z0-9._,+]*'[ ]vpos=\"[a-z_0-9A-Z]*\"[ ][ ]head=[a-zA-Z._,+0-9]*[ ][ ]poslcat=\"[A-Z]*\"[ ]name='[A-Z0-9]*'>  {
                                        yytext=fun(yytext);
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); strncpy(head,yytext,len);
                                        head[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(name,yytext,len);
                                        name[len]='\0';yytext=yytext+len+1;
					strcpy(rel1,"-"); strcpy(rel2,"-");
                                        printfun(id,node,root,cat,gen,num,per,cas,new_tam,head,name,rel1,rel2);                                            }
[0-9]*[\t]\(\([\t][A-Z]*[\t]<fs[ ]af='[a-zA-Z0-9\._,+]*'[ ]vpos=\"[a-z_0-9A-Z]*\"[ ][ ]head=[a-zA-Z._,+0-9]*[ ]name='[A-Z0-9]*'[ ]drel='[a-z_0-9-]*[:][A-Z0-9]*'> { 
                                        yytext=fun(yytext);
                                        len = strcspn(yytext," "); yytext=yytext+len+1;
					len = strcspn(yytext," "); yytext=yytext+len+1;
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); strncpy(head,yytext,len);
					head[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(name,yytext,len); 
					name[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,":"); strncpy(rel1,yytext,len);
					rel1[len]='\0'; yytext=yytext+len+1; 
					len = strcspn(yytext,"'"); strncpy(rel2,yytext,len);rel2[len]='\0';
                                        printfun(id,node,root,cat,gen,num,per,cas,new_tam,head,name,rel1,rel2);                                            
				}
[0-9]*[\t]\(\([\t][A-Z]*[\t]<fs[ ]af='[a-zA-Z0-9\._,+]*'[ ]vpos=\"[a-z_0-9A-Z]*\"[ ][ ]head=[a-zA-Z._,+0-9]*[ ]name='[A-Z0-9]*'> {
                                        yytext=fun(yytext);
                                        len = strcspn(yytext," "); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); yytext=yytext+len+1;
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); strncpy(head,yytext,len);
                                        head[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(name,yytext,len);
                                        name[len]='\0';yytext=yytext+len+1;
					strcpy(rel1,"-"); strcpy(rel2,"-");
                                        printfun(id,node,root,cat,gen,num,per,cas,new_tam,head,name,rel1,rel2); 
                                }
[0-9]*[\t]\(\([\t][A-Z]*[\t]<fs[ ]af='[a-zA-Z0-9._,+ -]*'[ ]head=[a-zA-Z._,+0-9-]*[ ][ ]*poslcat=\"[A-Z]*\"[ ]name='[A-Z0-9]*'[ ]drel='[a-z_0-9]*[:][A-Z0-9]*'>  {
                                	yytext=fun(yytext);
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); strncpy(head,yytext,len);
					head[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(name,yytext,len); 
					name[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,":"); strncpy(rel1,yytext,len); 
					rel1[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(rel2,yytext,len);rel2[len]='\0';
                                        printfun(id,node,root,cat,gen,num,per,cas,new_tam,head,name,rel1,rel2);                                            
				}
[0-9]*[\t]\(\([\t][A-Z]*[\t]<fs[ ]af='[a-zA-Z0-9._,+]*'[ ]head=[a-zA-Z._,+0-9]*[ ][ ]poslcat=\"[A-Z]*\"[ ]name='[A-Z0-9]*'>   {
                                	yytext=fun(yytext);
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); strncpy(head,yytext,len); 
					head[len]='\0'; yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(name,yytext,len); 
					name[len]='\0'; yytext=yytext+len+1;
                                        strcpy(rel1,"-"); strcpy(rel2,"-"); 
                                        printfun(id,node,root,cat,gen,num,per,cas,new_tam,head,name,rel1,rel2);                                            }
[0-9]*[\t]\(\([\t][A-Z]*[\t]<fs[ ]af='[a-zA-Z0-9._,+]*'[ ]head=[a-zA-Z._,+0-9]*[ ]name='[A-Z0-9]*'>   {
                                        yytext=fun(yytext);
                                        len = strcspn(yytext,"="); yytext=yytext+len+1;
                                        len = strcspn(yytext," "); strncpy(head,yytext,len);
					head[len]='\0';yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); yytext=yytext+len+1;
                                        len = strcspn(yytext,"'"); strncpy(name,yytext,len); 
					name[len]='\0';yytext=yytext+len+1;
                                        strcpy(rel1,"-"); strcpy(rel2,"-"); 
                                        printfun(id,node,root,cat,gen,num,per,cas,new_tam,head,name,rel1,rel2);                                            
                }
[0-9]*[.][0-9]*\t[A-Za-z0-9._@]*\t[A-Z]*\t<fs[ ]af=['][a-zA-Z0-9._,+]*[,] {
 					len = strcspn(yytext,"\t"); strncpy(id,yytext,len); 
					id[len]='\0'; yytext=yytext+len+1;
 					len = strcspn(yytext,"\t"); strncpy(word,yytext,len); 
					word[len]='\0'; yytext=yytext+len+1;
 					len = strcspn(yytext,"\t"); strncpy(node,yytext,len); 
					node[len]='\0'; yytext=yytext+len+1;
 					len = strcspn(yytext,"'"); yytext=yytext+len+1;  
 					len = strcspn(yytext,","); strncpy(root,yytext,len); root[len]='\0';
					if(strcmp(root,"\0")==0) strcpy(root,"-");
					if(strcmp(word,"\0")==0) strcpy(word,"-");
					if(strcmp(node,"\0")==0) strcpy(node,"-");
                                        fprintf(fp1,"(id-node-word-root %s %s %s %s)\n",id,node,word,root);
                                        *id='\0';*root='\0';*node='\0';*word='\0';
					}

%%

char *fun(char* yytext)
{
        comma_cnt = 0;
        len = strcspn(yytext,"\t"); strncpy(id,yytext,len);id[len]='\0';yytext=yytext+len+1;
	len = strcspn(yytext,"\t"); yytext=yytext+len+1;
        len = strcspn(yytext,"\t"); strncpy(node,yytext,len); node[len]='\0'; yytext=yytext+len+1;
        len = strcspn(yytext,"'"); yytext=yytext+len+1;
	while ((len = strcspn(yytext,","))>=0 && comma_cnt <7) {
		comma_cnt = comma_cnt +1 ;
		if (comma_cnt == 1) { strncpy(root,yytext,len); root[len]='\0';if(strcmp(root,"\0")==0) strcpy(root,"-");}
		if (comma_cnt == 2) { strncpy(cat,yytext,len);  cat[len]='\0'; if(strcmp(cat,"\0")==0) strcpy(cat,"-");}
		if (comma_cnt == 3) { strncpy(gen,yytext,len);  gen[len]='\0'; if(strcmp(gen,"\0")==0) strcpy(gen,"-");}
		if (comma_cnt == 4) { strncpy(num,yytext,len);  num[len]='\0'; if(strcmp(num,"\0")==0) strcpy(num,"-");}
		if (comma_cnt == 5) { strncpy(per,yytext,len);  per[len]='\0'; if(strcmp(per,"\0")==0) strcpy(per,"-");}
		if (comma_cnt == 6) { strncpy(cas,yytext,len);  cas[len]='\0'; if(strcmp(cas,"\0")==0) strcpy(cas,"-");}
		if (comma_cnt == 7) { strncpy(tam,yytext,len);  tam[len]='\0'; t=tam;
                			fprintf(fp2,"(id-node-tam %s %s %s)\n" ,id,node,tam);
                        		while ((len1 = strcspn(t,"+"))>0 && len1<strlen(t)) {
						 strncat(new_tam,t,len1); t=t+len1+1; }
 					strcat(new_tam,t);
                        		if(strcmp(new_tam,"\0")==0) strcpy(new_tam,"-");
				    }
                yytext=yytext+len+1;
	}
	return yytext;
}

void printfun(char *id , char *node , char *root , char *cat ,char *gen,char *num ,char *per, char *cas,char *new_tam , char *head, char *name , char *rel1 ,char *rel2)
{
  fprintf(fp3,"(id-head-name-rel1-rel2 %s %s %s %s %s)\n",id,head,name,rel1,rel2);
  fprintf(fp,"(id-node-root-cat-gen-num-per-case-tam %s %s %s %s %s %s %s %s %s)\n",id,node,root,cat,gen,num,per,cas,new_tam);
  *id='\0';*root='\0';*node='\0';*cat='\0';*gen='\0';*num='\0';*per='\0';*cas='\0';*tam='\0';*new_tam='\0';*t='\0';*head='\0';*name='\0';*rel1='\0';*rel2='\0';
}

char* main(int argc, char* argv[])
{
 fp= fopen(argv[1],"w");fp1= fopen(argv[2],"w");fp2= fopen(argv[3],"w");fp3= fopen(argv[4],"w");
 yylex();
 fclose(fp);fclose(fp1);fclose(fp2);fclose(fp3);
}


