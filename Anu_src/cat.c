#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <search.h>
#define MAX_SENT_LENGTH 10000 //in characters
#define MAX_NO_OF_WORDS 500 //in a sentence

char cat_long[37][40];
char cat_short[37][5];
char cat_long_crude[37][40];


int get_cat_index(char *pos_tag)
{
  int i;
  for(i=0;i<37;i++)
    if(strcmp(pos_tag,cat_short[i])==0)
      return i;
  return -1;
}


int main(int argc,char **argv)
{
  int i,index,cat_index,flag;
  char input[MAX_SENT_LENGTH],*ptr,*ptr_previous,*category[MAX_NO_OF_WORDS],*category_crude[MAX_NO_OF_WORDS];
  char dirname[200],filename[400],filename1[400];
  FILE *fp,*error_ptr,*directories,*cat_clp,*cat1_clp;
  char *para,*line;

  sprintf(filename1,"%s/categories.txt",argv[1]);
  fp=fopen(filename1,"r");
  if(fp==NULL) {printf("Could not open categories.txt for reading\n");exit(1);}

  for(i=0;i<37;i++)
    {
      fscanf(fp,"%s@ ",cat_long[i]);
      fscanf(fp,"%s@ ",cat_short[i]);
      fscanf(fp,"%s\n",cat_long_crude[i]);
    }
  fclose(fp);

   sprintf(dirname,"%s/%s_tmp/dir_names.txt",argv[2],argv[3]);
   directories = fopen(dirname,"r");
  if(directories==NULL) {printf("Could not open %s for reading\n",dirname);exit(1);}

  while(fgets(input,MAX_SENT_LENGTH,stdin)!=NULL)
    {
      fgets(dirname,50,directories);
      *(dirname+strcspn(dirname,"\n"))='\0';
    
      sprintf(filename,"%s/%s_tmp/%s/pos_cat.dat",argv[2],argv[3],dirname);
      cat1_clp=fopen(filename,"w");

      if(cat1_clp==NULL) {printf("Could not open %s for writing\n",filename);exit(1);}

      fprintf(cat1_clp,";cat\t%s\n",input);
     
      sprintf(filename,"%s/%s_tmp/errors.txt",argv[2],argv[3]); 
      error_ptr=fopen(filename,"w");
      if(error_ptr==NULL) {printf("Could not open %s for writing\n",filename);exit(1);}
      // The errors.txt file is used to show tags which are not found in the categories.txt file.Ideally,such a thing should not happen.
      para=dirname;
      line=(dirname+strcspn(dirname,"."));
      *line='\0';
      line++;
      index=1;
      ptr=input;  
      flag=0;
      while(1)
	{

	  while(!((*ptr>='a' && *ptr <= 'z')||(*ptr>='A'&&*ptr<='Z') ||(*ptr>='0'&&*ptr<='9')||(*ptr=='-'))) //this is used to filter out strings that are not words,eg. punctuation marks.
	    {
	      ptr=ptr+strcspn(ptr," ");
	      if(*ptr=='\0') break;
	      *ptr='\0';
	      ptr++;
	    }

	  if(*ptr=='\0') {index--;break;} 
	  ptr=ptr+strcspn(ptr,"/\0");
	  if(*ptr=='\0')
	{
	  index--;
	  break;
	}
	  ptr_previous=++ptr;
	  ptr=ptr+strcspn(ptr," \n\0");
	  if(*ptr=='\0') flag=1;
	  *ptr='\0';
	  ptr++;
	  cat_index=get_cat_index(ptr_previous);

	  if(cat_index==-1) {fprintf(fp,"Error,no match found for tag %s\n",ptr_previous);continue;}
	  category[index]=cat_long[cat_index];
	  category_crude[index]=cat_long_crude[cat_index];
	  index++;
	}
      fclose(error_ptr);
      for(i=1;i<=index;i++) {
       	fprintf(cat1_clp,"(id-cat %d %s)\n",i,category[i]); }
      for(i=1;i<=index;i++) {
	fprintf(cat1_clp,"(id-cat_coarse %d %s)\n",i,category_crude[i]);
      }
       fclose(cat1_clp);
    }

}

