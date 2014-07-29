/*	Program by Prakrati Vidyarthi (prakratividyarthi@gmail.com)
This program takes a phrase table as input and returns an english-hindi dictionary
If an english word has more than one hindi meanings then they are appended by '/'    */

#include<stdio.h>
#include<string.h>

void replace(char *);
int main(int argc, char *argv[]){
	
	char s[4]="|||", source[500], str[500], previous[500], source1[500], target[500], *token;
	int flag=0;
	FILE *fp1, *fp2;
	fp1=fopen(argv[1],"r");
	fp2=fopen(argv[2],"w");
	
	//Taking line by line input from file
	while(fgets(str,500,fp1)!=NULL){			
		if(strstr(str,"|||")==NULL)					
			continue;
	
		token=strtok(str,s);	
			
		if(!strcmp(token,previous))
			flag=1;
			
		strcpy(source,token);
		strcpy(source1,token);
		replace(source);
		token=strtok(NULL,s);
		
		if(!token){
			fgets(str,500,fp1);
			strcpy(target,(strtok(NULL,s)));
		}
		else
			strcpy(target,token);
		
		replace(target);
		
		//printing to the output file
		if(flag){
			fprintf(fp2,"/%s",target);
			flag=0;
		}
		else
			fprintf(fp2,"\n_%s\t%s",source,target);
			
		strcpy(previous,source1);
	}
	return 0;
}

void replace(char *s){

	while(*s!='\0'){
		if(*s==' ')
			*s='_';
		s++;	
	}
}	

