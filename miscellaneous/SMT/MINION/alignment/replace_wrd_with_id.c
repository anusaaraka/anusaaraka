#include<stdio.h>
#include<string.h>

void main(int argc, char *argv[]){

    FILE *fp,*fp1,*fp2,*fp3;
    char str[1000],str1[1000],*str2,str3[100];
    int len=0,len1=0,id=0,inc=0,count=1,inc1=0;

    fp = fopen(argv[1],"r");
    fp1 = fopen(argv[2],"r");
    fp2 = fopen(argv[3],"w");
    fp3 = fopen(argv[4],"w");
    fgets(str1,1000,fp);fprintf(fp2,"%s",str1);
    fgets(str3,1000,fp1);fprintf(fp3,"%s",str3);
  
   while(fgets(str1,1000,fp)!=NULL)
  { 
          fgets(str3,1000,fp1);
          if(strchr(str1,'.')==NULL && strcmp(str1,"\n")!=0 && strcmp(str1,"xx\n")!=0 && strcmp(str1,"yy\n")!=0) 
                { count=0;inc1=0;
                  len=strcspn(str1,"."); strncpy(str,str1,len); str[len]='\0';
                  fprintf(fp2,"%s",str1);fprintf(fp3,"%s",str3);}
          else if(strcmp(str1,"\n")==0) {fprintf(fp2,"\n");count=0;fprintf(fp3,"\n");}
          else { inc1=inc1+1;id=atoi(str);
                 fprintf(fp2,"%d.%d\n",id,inc1);count=count+1;
                 if(strcmp(str3,"\n")==0) fprintf(fp3,"VIB\n");
                 else  fprintf(fp3,"%s",str3);
                }
           
  }
    fclose(fp);
}

