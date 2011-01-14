#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_SENT_LENGTH 20000 //maximum length of the pos output(of each line) in characters 
#define MAX_FACT_LENGTH 100 
int main(int argc,char **argv)
{
  int index,i,flag,first_word,beginning_flag,str_len=0;
  char input[MAX_SENT_LENGTH],*ptr,*ptr_previous,str[MAX_FACT_LENGTH],fact[MAX_FACT_LENGTH];
  char dirname[200],filename[400];
  FILE *chunk_clp,*directories;

//  sprintf(filename,"../../tmp/%s_tmp/dir_names.txt",argv[1]);
  sprintf(filename,"%s/%s_tmp/dir_names.txt",argv[1],argv[2]);
  directories=fopen(filename,"r");
  if(directories==NULL) printf("Cannot open dir_names for reading\n");
  while(fgets(input,MAX_SENT_LENGTH,stdin)!=NULL)
    {
      fgets(dirname,50,directories);
      *(dirname+strcspn(dirname,"\n"))='\0';
      sprintf(filename,"%s/%s_tmp/%s/chunk.dat",argv[1],argv[2],dirname);
      chunk_clp=fopen(filename,"w");
      if(chunk_clp==NULL) printf("Cannot open chunk.dat for writing\n");
      fprintf(chunk_clp,";chunk\t%s\n",input);


      ptr=input;
      index=1;flag=0,first_word=1,beginning_flag=1;
      fact[0]='\0';
//      fprintf(chunk_clp,"(deffacts chunk\n");
      while(1)
	{
	  if(!((*ptr>='a' && *ptr <= 'z')||(*ptr>='A'&&*ptr<='Z')||(*ptr=='-')))
	    {
	      flag=1;
	    }
	  else flag=0;
	  ptr=ptr+strcspn(ptr,"/\0");
	  if(*ptr=='\0') 
	    {
	      if(beginning_flag==0)
		fprintf(chunk_clp,"(chunk_ids %s)\n",fact);
	      //if(first_word==1 && index==1)
              //{  sprintf(fact,"%s",ptr);
              //  sprintf(fact,"%s %d",fact,index);
               // fprintf(chunk_clp,"(chunk_ids %s)\n",fact);}
               break;
	    }
	  ptr++;
	  ptr=ptr+strcspn(ptr,"/")+1;
	  
	  if(*ptr!='I')
	    {
	      if(beginning_flag==0)
		{
		  fprintf(chunk_clp,"(chunk_ids %s)\n",fact);
		  beginning_flag=1;
		}
	      fact[0]='\0';
	      if(*ptr=='B')
		{
		  ptr+=2;
		  ptr_previous=ptr;
		  ptr=ptr+strcspn(ptr," \0\n");
		  if(*ptr=='\0') 
		    {
		        if(first_word==1 && index==1)
                        {
                        str_len=strcspn(ptr_previous,"\n");
                         strncpy(str,ptr_previous,str_len);
                        sprintf(fact,"%s %d",str,index);
                        fprintf(chunk_clp,"(chunk_ids %s)\n",fact);}
                        if(beginning_flag==0)
			fprintf(chunk_clp,"(chunk_ids %s)\n",fact);
		      break;
		    }
		  
		  *ptr='\0';
		  ptr++;
		  sprintf(fact,"%s",ptr_previous);
		  if(flag!=1)
		    {
		      sprintf(fact,"%s %d",fact,index);
		      beginning_flag=0;
		      index++;
		    }
		  
		  
		  continue;
		}
	      else
		{
		  ptr_previous=ptr;
		  ptr=ptr+strcspn(ptr," \0\n");
		  if(*ptr=='\0')
		    {
		      if(beginning_flag==0)
			fprintf(chunk_clp,"(chunk_ids %s)\n",fact);
		      break;
		    }
		  *ptr='\0';
		  ptr++;
		  sprintf(fact,"%s",ptr_previous);
		  if(flag!=1)
		    {
		      sprintf(fact,"%s %d",fact,index);
		      beginning_flag=0;
		      index++;
		    }
		  
		  continue;
		}
	    }
	  
	  if(flag!=1)
	    {
	      sprintf(fact,"%s %d",fact,index);
	      beginning_flag=0;
	      index++;
	    }
	  ptr=ptr+strcspn(ptr," \0\n");
	  if(*ptr=='\0')
	    {
	      if(beginning_flag==0)
		fprintf(chunk_clp,"(chunk_ids %s)\n",fact);
	      break;
	    }
	  ptr++;
	}
//      fprintf(chunk_clp,")\n\n");
      fclose(chunk_clp);
    }
}
