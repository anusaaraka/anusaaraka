/*
 * example2.c: This program illustrates how to use ahocorasick library
 * it shows some techniques for using the library.
 * This file is part of multifast.
 *
    Copyright 2010-2013 Kamiar Kanani <kamiar.kanani@gmail.com>

    multifast is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    multifast is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with multifast.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <stdio.h>
#include <string.h>
#include <ctype.h>  //Added by Roja
#include <stdlib.h> //Added by Roja

#include "ahocorasick.h"

//** Include multi word dictionary (Removed 'char input_file []' instead included multi word dictionary by Roja)
#include "multi_word-dic.c"

#define BUFFER_SIZE 2500 //Increased buffer size from 256 to 2500
char buffer[BUFFER_SIZE];

//Added below variables by Roja
char input_line [10000];
int word_count=0, offset_count=0, flag=0;
int word_id[1000], offset_no[1000];

#define PATTERN_COUNT (sizeof(sample_patterns)/sizeof(AC_PATTERN_t))

/***********************************************************************/
/* Checking whether the string is punctuation or not .
** If punctuation then flag is 0 else flag is 1 */

 void check_for_punctuation(char *str)
     {
          if(strcmp(str,")")==0 ||strcmp(str,"(")==0 ||strcmp(str,"$")==0 ||strcmp(str,",")==0 ||strcmp(str,".")==0 ||strcmp(str,":")==0 ||strcmp(str,";")==0 ||strcmp(str,"?")==0 ||strcmp(str,"!")==0 ||strcmp(str,"''")==0 ||strcmp(str,"'")==0||strcmp(str,"=")==0 || strcmp(str,"\"")==0 || strcmp(str,"\n")==0 || strcmp(str, "...")==0)
		flag=0;
          else
             flag=1;
    }

/***********************************************************************/
//Added below function by Roja
//*** Replacing space with underscore in input text. 
//*** Also storing word count and offset count in an array

void replace_space_with_underscore(char inp_text[10000])
{
   char *p, str[1000], *p1;
   int j=0, len1=0;
   word_count=1;
   p1=inp_text;
   while(1)
    {
	p=index(inp_text, ' ');
	if(p!=NULL)
	{
           *p='_';
           len1=strcspn(p1+1, "_");
  	   strncpy(str, p1+1, len1);  str[len1]='\0';  p1=p1+len1+1;
	   offset_count=strlen(inp_text)-strlen(p)+1;

           //calling function check_for_punctuation()
           check_for_punctuation(str);
           if(flag==1) {
           offset_no[j]=offset_count;
	   word_id[j]=word_count;
//	   printf("%d\t%d\t%s\n", offset_no[j], word_id[j], str);
	   j++; 
	   word_count++; }
        }
	else
	{
	   word_count++;
           break;
	}
    }
//	  printf("%d\n", strlen(inp_text)); 
}

/****************************************************************************/

struct parameter
{
    int position;       // input: end position
    int match_count;    // output: total match count
};

int match_handler (AC_MATCH_t * matchp, void * param)
{
	unsigned int j;
	struct parameter * par = (struct parameter *)param;
        //Assigned below variables by Roja
	int i=0, k=0, length;
	char id_count[1000], *p, mng[1000], mngs[1000], head_id[100], cat[1000], mng_type[1000];
	int word_ids, final_ids;

/*Commented below if loop by Roja
	if (matchp->position >  par->position) {
	   return 1; 

	printf ("@ %2ld : ", matchp->position);
*/
//Added below loop by Roja
	if (matchp->match_num >= 1) { 
              for(k=0; k<1000 ; k++) {
                if(offset_no[k] == matchp->position)
		 {
		   word_ids=word_id[k];
//		   printf ("@ %ld-- %d--%d", matchp->position, word_ids, word_count);
		   break;
 	}
              }}

for (j=0; j < matchp->match_num; j++) { //(Added below code by Roja.)
//        printf ("%s (%s), ", matchp->patterns[j].rep.stringy, matchp->patterns[j].astring);
	if((p=index(matchp->patterns[j].rep.stringy, '=')+1))
	{
	   if((length=strcspn(p, "#"))) {
		strncpy(id_count, p, length); id_count[length]='\0'; p=p+length+1;  //word_count
		length=strcspn(p, "#");
		strncpy(mngs, p, length);  mngs[length]='\0'; p=p+length+1;   //mngs
		if((length=strcspn(mngs, "/")))
		{  strncpy(mng, mngs, length); mng[length]='\0';  } //if more than one meaning
		else   strcpy(mng, mngs);
		length=strcspn(p, "#"); p=p+length+1;
		length=strcspn(p, "#");
		strncpy(cat, p, length);  cat[length]='\0'; p=p+length+1;  //category info
                        length=strcspn(p, "#");
                        strncpy(head_id, p, length); head_id[length]='\0'; p=p+length+1; //head id info
                        length=strcspn(p, "#");
                        strncpy(mng_type, p, length);  mng_type[length]='\0';   //mng type . EX:, WM , RM 
                   }}

                printf("(ids-cmp_mng-head-cat-mng_typ-priority\t");

                //to get word ids
                for(i=atoi(id_count); i>=1; i--) {
//			printf("%d-%d\n", word_ids,i);
                        final_ids=word_ids-i+1;
                        printf(" %d ", final_ids);
                }

                printf("%s %s %s %s 2)",  mng, head_id, cat, mng_type);
                printf("\n");
    }
   	//Added Code by Roja ended  
    par->match_count += matchp->match_num;

//    printf ("\n");
    
    return 0;
}


int main (int argc, char ** argv)
{
    unsigned int i;
    struct parameter my_param;
    // we use this struct to send/receive input/output parameters to/from automata
    my_param.position = 250;    // input: end position; change it to 1000 and see what happens
    my_param.match_count = 0;   // output:

    AC_TEXT_t input_text;
    AC_AUTOMATA_t * atm = ac_automata_init ();

    for (i=0; i<PATTERN_COUNT; i++)
    {
        AC_STATUS_t status;
        sample_patterns[i].length = strlen (sample_patterns[i].astring);
        status = ac_automata_add (atm, &sample_patterns[i]);
        switch (status)
        {
            case ACERR_DUPLICATE_PATTERN:
//                printf ("Add pattern failed: ACERR_DUPLICATE_PATTERN: %s\n", sample_patterns[i].astring);
                break;
            case ACERR_LONG_PATTERN:
                printf ("Add pattern failed: ACERR_LONG_PATTERN: %s\n", sample_patterns[i].astring);
                break;
            case ACERR_ZERO_PATTERN:
                printf ("Add pattern failed: ACERR_ZERO_PATTERN: %s\n", sample_patterns[i].astring);
                break;
            case ACERR_AUTOMATA_CLOSED:
                printf ("Add pattern failed: ACERR_AUTOMATA_CLOSED: %s\n", sample_patterns[i].astring);
                break;
            case ACERR_SUCCESS:
//                printf ("Pattern Added: %s\n", sample_patterns[i].astring);
                break;
        }
    }

    ac_automata_finalize (atm);
    
    // here we illustrates how to search a big text chunk by chunk.
    // in this example input buffer size is 64 and input file is pretty
    // bigger than that. we want to imitate reading from input file.
    // in such situations searching must be done inside a loop. the loop
    // continues until it consumed all input file.

//    printf ("Automata finalized.\n\nSearching...\n");
	//Added below code by Roja  
	FILE *fp;
	char *line;
	size_t len=0;
	int k=0;
	char tolower_input_line[10000];

        fp = fopen(argv[1], "r");
        if(fp == NULL) printf("File Couldn't Open\n");

        input_line[0]='_';  tolower_input_line[0]='_';
        while(getline(&line, &len, fp)!=-1)
        {
           strcpy(input_line+1, line);
         //  printf("%s", input_line);

           //calling function replace_space_with_underscore()
           replace_space_with_underscore(input_line);
           *(input_line+len)='_';
           k=0;
           strcpy(tolower_input_line+1, line);

           //tolower 
           while(tolower_input_line[k])
           {
             *(tolower_input_line+k)= tolower(tolower_input_line[k]);
             k++;
           } 

           /*****appending original line and tolower of the same line
                 *(input_line+strcspn(input_line, "\n"))= '/';
                 strcat(input_line, tolower_input_line);            **********/

           //calling function replace_space_with_underscore()
           replace_space_with_underscore(tolower_input_line);
           *(tolower_input_line+len)='_'; 
	//Code added by  Roja ended

	char * chunk_start = input_line;
	char * end_of_file = input_line + sizeof(input_line);
	input_text.astring = buffer;

	while (chunk_start<end_of_file)
	{
	        input_text.length = (chunk_start<end_of_file)?sizeof(buffer):(sizeof(input_line)%sizeof(buffer));
        	strncpy (buffer, chunk_start, input_text.length);

	        if (ac_automata_search (atm, &input_text, 0, match_handler, (void *)(&my_param)))
        	    // if the search stopped in the middle (returned 1) we should break the loop
            		break;

	        chunk_start += sizeof(buffer);
	}
	//Added below code by Roja  
        //Checking multi words after tolowering the i/p. 
        strcpy(input_line,tolower_input_line);
        chunk_start = input_line;
        end_of_file = input_line+strlen(input_line);
        input_text.astring = buffer; 
	//Code added by  Roja ended
	//This search loop copied from above loop by Roja
        /* Search loop */
	while (chunk_start<end_of_file)
	    {
        	input_text.length = (chunk_start<end_of_file)?sizeof(buffer):(sizeof(input_line)%sizeof(buffer));
	        strncpy (buffer, chunk_start, input_text.length);
	
		//Changed 3rd argument from 1 to 0 by Roja (Refer example1.c programme for details)
        	if (ac_automata_search (atm, &input_text, 0, match_handler, (void *)(&my_param)))
        	    // if the search stopped in the middle (returned 1) we should break the loop
	            break;

                chunk_start += sizeof(buffer);
            } 


    printf(";~~~~~~~~~~\n"); //Added by Roja
    }
    
//    printf ("found %d occurrence in the beginning %d bytes\n", my_param.match_count, my_param.position);

    // TODO: do the same search with settext/findnext interface
    
    ac_automata_release (atm);

    return 0;
}
