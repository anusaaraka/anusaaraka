#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

#define MAX_LINE_LENGTH 500
#define MAX_NO_OF_LINES 500 //Increased to 500 from 200 by Roja(14-06-11) for a big sentence from "calculate" file in SENSEVAL TRAIN
#define INPUT_LENGTH MAX_LINE_LENGTH*MAX_NO_OF_LINES

char punct_short[100]={',','.',';',':','\'','"','?','!','(',')','{','}','[',']'};
char punct_long[100][100]={"PUNCT-Comma","PUNCT-Dot","PUNCT-Semicolon","PUNCT-Colon","PUNCT-SingleQuote","PUNCT-DoubleQuote","PUNCT-QuestionMark","PUNCT-Exclamation","PUNCT-OpenParen","PUNCT-ClosedParen","PUNCT-LeftCurlyBrace","PUNCT-RightCurlyBrace","PUNCT-LeftSquareBracket","PUNCT-RightSquareBracket"};

char *get_punct_full(char *ps)
{
  int i,len=0,j;
  char punc[1000];
  char *str=malloc(strlen(ps) *50);

 strcpy(str,"\0");
 strcpy(punc,ps);
 len=strlen(punc);
 
 	for(i=0;i<=len;i++)
	 { for(j=0;j<=15;j++)
	   {
		 if(punc[i]==punct_short[j]) strcat(str,punct_long[j]);
	 }}
  if(strcmp(str,"\0")==0)
  return "NONE";
  else
  return str;
  free(str);

}


int func(char *str)
{
  if(strcmp(str,")")==0 ||strcmp(str,"(")==0 ||strcmp(str,"$")==0 ||strcmp(str,",")==0 ||strcmp(str,".")==0 ||strcmp(str,":")==0 ||strcmp(str,";")==0 ||strcmp(str,"?")==0 ||strcmp(str,"!")==0 ||strcmp(str,"''")==0 ||strcmp(str,"'")==0||strcmp(str,"=")==0 || strcmp(str,"\"")==0)
    return 1;
  return 0;
}


int func2(char *str)
{
  char *ptr;
  ptr=str+strcspn(str,"'\0");
  if(*ptr=='\'')
    {
      ptr++;
      if(strcmp(str,"re")||strcmp(str,"s")||strcmp(str,"ve")||strcmp(str,"d")||strcmp(str,"ll"))
	return 1;
    }
  return 0;
}


read_file(char **f_input){
  unsigned char *input,*p;
  int c,i=0,size,increment_size,buffer,realloc_calls=0;
  size = 10000;
  increment_size = 10000;
  buffer = 100;
  p=(char *)malloc(size);
  if(p==NULL){printf("Can not allocate memory:1\n");exit(3);}
  input =p;
  while((c=getchar())!=EOF) {
    *(input+i++)=c;
    if(i > (size - buffer)){
      size=size+increment_size;
      p=(char *)realloc(input,size);
      realloc_calls++;
      if(p==NULL){printf("Can not allocate memory:2\n");exit(3);}
      input=p;}
  }
  
  *(input+i)='\0';
  *f_input=input;
  return(realloc_calls);
}


int main(int argc,char **argv)
{
  FILE  *word_clp,*new_text,*morph_input,*paxa_input,*dir_names,*word1_clp,*meaning_clp,*word2_clp,*punct_clp;
  FILE  *root_word_picked_up,*tolower_word_clp,*paxa_clp,*para_sent,*eng_fp;
  int   i=0,j,index,flag,map[MAX_NO_OF_LINES][2],lag,file_end,wrd_len=0,first_cap_flag=0,all_cap_flag=0,punct_len=0;
  char  temp_left_punct[5],temp_right_punct[5],*temp_ptr,*str_tolower,str1[100],str2[100];
  char  *para_no,*line_no,*prev_para,*prev_line;
  char  *ptr,c,*word[MAX_NO_OF_LINES],*left_punct[MAX_NO_OF_LINES],*right_punct[MAX_NO_OF_LINES];
  char  word_tmp[MAX_NO_OF_LINES][MAX_NO_OF_LINES];
  char  *input,*lp,*rp,*ZERO="0";
  char  filename[500],filename1[500],filename2[100],filename3[100],filename4[100];

  char 	*lp1,*rp1;
  read_file(&input);
  index=1;
  flag=1;
  file_end=0;
 
  sprintf(filename,"%s/%s_tmp/new_text.txt",argv[1],argv[2]);
  new_text=fopen(filename,"w");
  if(new_text==NULL) {printf("Could not open new_text.txt for reading\n");exit(1);}  

  sprintf(filename,"%s/%s_tmp/dir_names.txt",argv[1],argv[2]); 
  dir_names=fopen(filename,"w");
  if(dir_names==NULL) {printf("Could not open dir_names.txt for reading\n");exit(1);}
  ptr=input;
  while(1)
    {
      if(*ptr=='\n' || *ptr=='\0')
	file_end=1;
      else
	{
	  para_no=ptr;
	  ptr=ptr+strcspn(ptr,".");
	  *ptr='\0';
	  
	  line_no=++ptr;
	  ptr=ptr+strcspn(ptr,".");
	  *ptr='\0';  
	  
	  ptr++;
	  ptr=ptr+strcspn(ptr,"\t");
	  left_punct[index]=++ptr;
	  ptr=ptr+strcspn(ptr,"\t");
	  *ptr='\0';
	  
	  word[index]=++ptr;
	  ptr=ptr+strcspn(ptr,"\t");
	  *ptr='\0';
	  right_punct[index]=++ptr;
	  
	  ptr=ptr+strcspn(ptr,"\n");
	  
	  *ptr='\0';
	  ptr++;

	  if(flag)
	    {
	      flag=0;
	      index++;
	      prev_para=para_no;
	      prev_line=line_no;
	      continue;
	    }
	}

      if(strcmp(para_no,prev_para)!=0 || strcmp(line_no,prev_line)!=0 ||file_end)
	{
          sprintf(filename,"%s/%s_tmp/%s.%s",argv[1],argv[2],prev_para,prev_line);
	  fprintf(dir_names,"%s.%s\n",prev_para,prev_line);
	  mkdir(filename,0777);
          
          sprintf(filename,"%s/%s_tmp/%s.%s",argv[1],argv[2],prev_para,prev_line);
          sprintf(filename,"%s/original_word.dat",filename);
          word1_clp=fopen(filename,"w");
          if(word1_clp==NULL) {printf("Could not open original_word.dat for writing\n");exit(1);}
         
 
          sprintf(filename,"%s/%s_tmp/%s.%s",argv[1],argv[2],prev_para,prev_line);
  	  sprintf(filename,"%s/para_sent_id_info.dat",filename);
          para_sent=fopen(filename,"w");
          if(para_sent==NULL) {printf("Could not open para_sent_id_info.dat for writing\n");exit(1);}
          fprintf(para_sent,"(para_id-sent_id-no_of_words\t%s\t%s\t%d)\n",prev_para,prev_line,index-1);


          sprintf(filename,"%s/%s_tmp/%s.%s",argv[1],argv[2],prev_para,prev_line);
          sprintf(filename,"%s/punctuation_info.dat",filename);
          punct_clp=fopen(filename,"w");
          if(punct_clp==NULL) {printf("Could not open punctuation_info.dat for writing\n");exit(1);}

          sprintf(filename,"%s/%s_tmp/%s.%s",argv[1],argv[2],prev_para,prev_line);
          sprintf(filename1,"%s/meaning_to_be_decided.dat",filename);
          meaning_clp=fopen(filename1,"w");
          if(meaning_clp==NULL) {printf("Could not open  meaning_to_be_decided.dat for writing\n");exit(1);}

          sprintf(filename,"%s/%s_tmp/%s.%s",argv[1],argv[2],prev_para,prev_line);
          sprintf(filename1,"%s/to_be_included_in_paxa.dat",filename);
          paxa_clp = fopen(filename1,"w");
          if(paxa_clp==NULL) {printf("Could not open to_be_included_in_paxa.dat for writing\n");exit(1);}


          sprintf(filename,"%s/%s_tmp/%s.%s",argv[1],argv[2],prev_para,prev_line);
          sprintf(filename1,"%s/Eng_id_order.dat",filename);
          eng_fp = fopen(filename1,"w");
          if(eng_fp==NULL) {printf("Could not open Eng_id_order.dat for writing\n");exit(1);}
          fprintf(eng_fp,"(expr ");

 
          sprintf(filename2,"%s/word2.dat",filename);
          word2_clp=fopen(filename2,"w");
          if(word2_clp==NULL) {printf("Could not open word2.dat for writing\n");exit(1);}

          sprintf(filename3,"%s/word.dat",filename);
          tolower_word_clp=fopen(filename3,"w");
          if(tolower_word_clp==NULL) {printf("Could not open word.dat for writing\n");exit(1);}

          sprintf(filename4,"%s/morph_root_tobe_choosen.dat",filename);
          root_word_picked_up=fopen(filename4,"w");
          if(root_word_picked_up==NULL) {printf("Could not open morph_root_tobe_choosen.dat for writing\n");exit(1);}
        
	  lag=0;
	  for(i=1;i<index;i++)
	    {
	      if(func(left_punct[i]))
		lag++;
	   
	      if(func2(word[i]))
		{
		  map[i][0]=lag+i;
		  map[i][1]=++lag+i;
		}
	      else
		{
		  map[i][0]=lag+i;
		  map[i][1]=-1;
		}
	   
	      if(func(right_punct[i]))
		lag++;	   
	    }
	  for(i=1;i<index;i++)
	    { first_cap_flag=0;
             wrd_len=strlen(word[i]);
             if(isupper(word[i][0]))
             { first_cap_flag=1;}
                 
                for(j=0;j<wrd_len;j++)
                   {  //all_cap_flag=0;
                      if(isupper(word[i][j]))
                      {all_cap_flag=1; }
                      else
                      {all_cap_flag=0; }
                      
                      str_tolower =(char *) malloc(sizeof(char) * wrd_len);
                      *(str_tolower+j)=tolower(*(word[i]+j));
                      str_tolower=str_tolower+j;   word_tmp[i][j]=*str_tolower;
                   }
                     word_tmp[i][wrd_len]='\0';
                  if(all_cap_flag==1)
                  fprintf(word2_clp,"(id-word_cap_info %d  all_caps)\n",i);  
                  else if(first_cap_flag==1)
                  fprintf(word2_clp,"(id-word_cap_info %d  first_cap)\n",i);
                  else
              fprintf(word2_clp,"(id-word_cap_info %d  none)\n",i);
              fprintf(word1_clp,"(id-original_word %d  %s)\n",i,word[i]);
              fprintf(tolower_word_clp,"(id-word %d  %s)\n",i,word_tmp[i]);
              if(i==index-1)
              fprintf(tolower_word_clp,"(id-last_word %d %s)\n",i,word_tmp[i]);
              fprintf(meaning_clp,"(meaning_to_be_decided %d )\n",i);
              fprintf(root_word_picked_up,"(morph_analysis_to_be_choosen %d )\n",i);
              fprintf(paxa_clp,"(to_be_included_in_paxa %d )\n",i);
              fprintf(eng_fp," %d ",i);

                 lp1=get_punct_full(left_punct[i]);
		     fprintf(punct_clp,"(id-left_punctuation   %d\t%s)\n",i,lp1);
                 rp1=get_punct_full(right_punct[i]);
		     fprintf(punct_clp,"(id-right_punctuation  %d\t%s)\n",i,rp1);
	    }
	
	  fprintf(eng_fp, ")\n");
          fclose(word1_clp);
          fclose(meaning_clp);
	  fclose(word2_clp);
          fclose(punct_clp);
          fclose(paxa_clp);
          fclose(tolower_word_clp);
          fclose(root_word_picked_up);
	  fclose(para_sent);
          fclose(eng_fp); 
	  for(i=1;i<index;i++)
	    {

/*********   Modified by Roja Lakshmi (26-12-10)

In OL, problem occurred at this type of sentences. 

Eg1: When Mrs . Chitnis discovered that her husband was an adulterer she divorced him .
Here there is a space between Mrs and "." 
Due to this OL, treating it has two sentences.

Eg2: The university spends $5 per student . 
While printing final output there is space between '$' and '5' in English sentence.
To resolve these type of problems , printing of punctuations in new_text.txt are modified. ********/
 
              if(strcmp(left_punct[i],"")!=0 && strcmp(right_punct[i],"")==0 )       {
                     fprintf(new_text,"%s",left_punct[i]);
	             fprintf(new_text,"%s ",word[i]);        }
	      else if(strcmp(left_punct[i],"") ==0 && strcmp(right_punct[i],"")!=0)  {
                     fprintf(new_text,"%s",word[i]); 
                     fprintf(new_text,"%s ",right_punct[i]); }
              else if(strcmp(left_punct[i],"") !=0 && strcmp(right_punct[i],"")!=0)  {
                     fprintf(new_text,"%s",left_punct[i]);
                     fprintf(new_text,"%s",word[i]); 
                     fprintf(new_text,"%s ",right_punct[i]); }
              else if(strcmp(left_punct[i],"") ==0 && strcmp(right_punct[i],"") ==0) {
                     fprintf(new_text,"%s ",word[i]);        }
            }
/*********  end ***********/
	  
          fprintf(new_text,"\n");
          left_punct[1]=left_punct[i];
	  right_punct[1]=right_punct[i];
	  word[1]=word[i];
	  prev_para=para_no;prev_line=line_no;
	  index=2;
	  if(file_end)
	    break;
	  continue;
	}
      index++;

    }
  fclose(new_text);
  fclose(dir_names);
}
