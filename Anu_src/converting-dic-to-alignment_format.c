/* Program to get each word and its possible meanings in one single line 
   Written by Roja (11-07-12)
   Ex: aback	cakiwa
       aback	pICe_kI_ora
       aback	pICe
       aback	hawapraBa  
	                 as
       aback	cakiwa/pICe_kI_ora/pICe/hawapraBa  
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
           char		hnd_mng[1000][50], hnd_nxt_mng[1000][50], eng_wrd[1000][50], nxt_eng_wrd[1000][50];
           int		i=0, j;
 
           fp  = fopen(argv[1], "r");
           if (fp == NULL)
               exit(EXIT_FAILURE);

		getline(&line, &len, fp);
               	sscanf(line, "%s\t%s", &hnd_mng[i][0], &eng_wrd[i][0]);
	        printf("%s\t%s", &hnd_mng[i][0], &eng_wrd[i][0]);
           	while (getline(&line1, &len1, fp) != -1) 
                  { 
                	sscanf(line1, "%s\t%s", &hnd_nxt_mng[i][0], &nxt_eng_wrd[i][0]);
		   	nxt_eng_wrd[i][len1-1]='\0';
 
                   	if(strcmp(&hnd_mng[i][0], &hnd_nxt_mng[i][0]) == 0) 
	                   printf("/%s", &nxt_eng_wrd[i][0]); 
        	        else
	                   printf("\n%s\t%s", &hnd_nxt_mng[i][0], &nxt_eng_wrd[i][0]);

        	        strncpy(&hnd_mng[i][0],&hnd_nxt_mng[i][0],len1);hnd_mng[i][len1-1]='\0'; 
	                strncpy(&eng_wrd[i][0],&nxt_eng_wrd[i][0],len1);eng_wrd[i][len1-1]='\0';
	         }
           if (line)
               free(line); 
           exit(EXIT_SUCCESS); 
 }

