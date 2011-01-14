#include<stdio.h>
#include<stdlib.h>
#include<string.h>
main(int argc,char *argv[])
{
  FILE *fp,*fp1,*fp2;
  char str[100000],str1[100],filename[100],str_tmp[100];
  int str_len=0;

  fp=fopen(argv[1],"r");
  fp1=fopen(argv[2],"r");
 if(fp==NULL) {printf("Could not open %s for reading\n",argv[1]);exit(1);}  
 if(fp1==NULL) {printf("Could not open %s for reading\n",argv[2]);exit(1);}
  while(fgets(str1,1000,fp1)!=NULL)
  {
   str_len=strlen(str1);
   strncpy(str_tmp,str1,str_len);
   str_tmp[str_len-1]='\0';
   mkdir(str_tmp,0777);
   sprintf(filename,"%s/%s",str_tmp,argv[3]);
   fp2=fopen(filename,"w");
   if(fp==NULL) {printf("Could not open %s for writing\n",argv[3]);exit(1);}
   while(fgets(str,256,fp)!=NULL && strcmp(str,";~~~~~~~~~~\n")!=0)
   {
   fprintf(fp2,"%s",str);

   }
  fclose(fp2);
   }
fclose(fp);
fclose(fp1);

}
