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

//** Include extract_key-hi-en.c (Removed 'char input_file []' instead included extract_key-hi-en.c by Roja)
#include "extract_key-hi-en.c"

#define BUFFER_SIZE 2500 //Increased buffer size from 256 to 2500
char buffer[BUFFER_SIZE];

//Added below variables by Roja
char input_line [10000];
int word_count=0, offset_count=0, flag=0;
int word_id[1000], offset_no[1000];
FILE *fp1;

#define PATTERN_COUNT (sizeof(sample_patterns)/sizeof(AC_PATTERN_t))

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

           offset_no[j]=offset_count;
	   word_id[j]=word_count;
//	   printf("%d\t%d\t%s\n", offset_no[j], word_id[j], str);
	   j++; 
	   word_count++; 
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
	int i=0, k=0;
	char id_count[1000], *p;
	int word_ids, final_ids;

//	if (matchp->position >  par->position) { Commented by Roja and added below if else loop
	if (matchp->match_num == 1) { 
              for(k=0; k<1000 ; k++) {
                if(offset_no[k] == matchp->position)
		 {
		   word_ids=word_id[k];
//		   printf ("@ %ld-- %d--%d", matchp->position, word_ids, word_count);
//        	    return 1; //Commented by Roja
		   break;
 	}
              }}
        else {
	//	printf ("At %ld : ", matchp->position); //Commented by Roja
		for(k=0; k<1000 ; k++) {
                if(offset_no[k] == matchp->position)
		 {
		   word_ids=word_id[k];
//		   printf ("@ %ld-- %d--%d", matchp->position, word_ids, word_count);
		   break;
 	}}}



// printf ("@ %2ld : ", matchp->position); //Commented by Roja

for (j=0; j < matchp->match_num; j++) { //(Added below code by Roja.)
//        printf ("%s (%s), ", matchp->patterns[j].rep.stringy, matchp->patterns[j].astring);
	if((p=index(matchp->patterns[j].rep.stringy, '=')+1))
	{
		strncpy(id_count, p, strlen(p)); id_count[strlen(p)]='\0'; //word_count 
	}
	printf("(eng_cmp_mng-eng_ids\t");
	printf("%s\t%ld\t%ld",  matchp->patterns[j].astring, matchp->position - matchp->patterns[j].length + 1, matchp-> position);
	fprintf(fp1, "%ld %ld\t", matchp->position - matchp->patterns[j].length + 1, matchp-> position);
		
                //to get word ids
                for(i=atoi(id_count); i>=1; i--) {
//			printf("%d-%d\n", word_ids,i);
                        final_ids=word_ids-i+1;
                        fprintf(fp1, "%d ", final_ids);
                }
		printf(")\n");
		fprintf(fp1, "\n");

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

        fp = fopen(argv[1], "r");
	fp1 = fopen(argv[2], "w");
        if(fp == NULL  || fp1 == NULL) printf("File Couldn't Open\n");

        input_line[0]='_';
        while(getline(&line, &len, fp)!=-1)
        {
           strcpy(input_line+1, line);
         //  printf("%s", input_line);

           //calling function replace_space_with_underscore()
           replace_space_with_underscore(input_line);
           *(input_line+len)='_';
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


    printf(";~~~~~~~~~~\n"); //Added by Roja
    fprintf(fp1, ";~~~~~~~~~~\n"); //Added by Roja
    }
    
//    printf ("found %d occurrence in the beginning %d bytes\n", my_param.match_count, my_param.position);

    // TODO: do the same search with settext/findnext interface
    
    ac_automata_release (atm);

    return 0;
}
