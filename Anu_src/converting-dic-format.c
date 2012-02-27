/* Program to get each word and its possible meanings with categories in one single line from default dictionary.
   Ex: aback	adjective::cakiwa
       aback	adverb::pICe_kI_ora/pICe/hawapraBa  
	                 as
       aback	@@@adjective::cakiwa@@@adverb::pICe_kI_ora/pICe/hawapraBa  
   NOTE:: "@@@" is used as a separator to differentiate between categories
*/

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int
 main(int argc, char* argv[])
 {
           FILE 	* fp ;
           char 	* line = NULL, * line1 = NULL;
           size_t	len = 0, len1 = 0; 
           char		eng_wrd[1000][50], eng_nxt_wrd[1000][50], mng[1000][50], nxt_mng[1000][50];
           int		i=0, j;
 
           fp  = fopen(argv[1], "r");
           if (fp == NULL)
               exit(EXIT_FAILURE);

		getline(&line, &len, fp); // To avoid storage of comments in the input file.
		getline(&line, &len, fp);
		getline(&line, &len, fp); 
		getline(&line, &len, fp); 
 	
		getline(&line, &len, fp);
               	sscanf(line, "%s\t%s", &eng_wrd[i][0], &mng[i][0]);
	        printf("%s\t@@@%s", &eng_wrd[i][0], &mng[i][0]);
           	while (getline(&line1, &len1, fp) != -1) 
                  { 
                	sscanf(line1, "%s\t%s", &eng_nxt_wrd[i][0], &nxt_mng[i][0]);
		   	nxt_mng[i][len1-1]='\0';
 
                   	if(strcmp(&eng_wrd[i][0], &eng_nxt_wrd[i][0]) == 0) 
	                   printf("@@@%s", &nxt_mng[i][0]); 
        	        else
	                   printf("\n%s\t@@@%s", &eng_nxt_wrd[i][0], &nxt_mng[i][0]);

        	        strncpy(&eng_wrd[i][0],&eng_nxt_wrd[i][0],len1);eng_wrd[i][len1-1]='\0'; 
	                strncpy(&mng[i][0],&nxt_mng[i][0],len1);mng[i][len1-1]='\0';
	         }
           if (line)
               free(line); 
           exit(EXIT_SUCCESS); 
 }

