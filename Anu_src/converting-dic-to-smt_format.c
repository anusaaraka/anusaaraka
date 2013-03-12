/* Program to get each word and its possible meanings in one single line.
   Ex: aback_adjective	cakiwa
       aback_adverb	pICe_kI_ora/pICe/hawapraBa  
	                 as
       aback	cakiwa/pICe_kI_ora/pICe/hawapraBa 
   Modified this programme by Roja(08-03-12) 
*/

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

 main(int argc, char* argv[])
 {
           FILE 	*fp, *fp1;
           char 	* line = NULL;
           size_t	len1 = 0; 
           char		eng_wrd[10000], eng_nxt_wrd[10000], mng[1000],cat[1000], nxt_mng1[10000],mng1[10000];
           int		len=0;
 
           fp  = fopen(argv[1], "r");
           fp1  = fopen(argv[2], "w");
           if (fp == NULL)
               exit(EXIT_FAILURE);

                while (getline(&line, &len1, fp) != -1)
                  { 
                   if(line[0] != '#') break; //reading comments
                  }

                len =strcspn(line,"_");  strncpy(eng_wrd,line,len);  eng_wrd[len]='\0';  line=line+len+1;
                len =strcspn(line,"\t"); strncpy(cat,line,len);      cat[len]='\0';      line=line+len+1;
                len =strcspn(line,"\n"); strncpy(mng,line,len);      mng[len]='\0';      line='\0';

                free(line);
	        //printing first line
                fprintf(fp1,"%s\t%s", eng_wrd, mng);
        	while (getline(&line, &len1, fp) != -1) 
                  { 
		   	len =strcspn(line,"_"); strncpy(eng_nxt_wrd,line,len); eng_nxt_wrd[len]='\0'; line=line+len+1;
                        len =strcspn(line,"\t"); strncpy(cat,line,len);     cat[len]='\0';     line=line+len+1;
                        len =strcspn(line,"\n"); strncpy(mng,line,len);     mng[len]='\0';     line='\0';
			
                   	if(strcmp(eng_wrd, eng_nxt_wrd) == 0) //comparing previous and next word, if same then append the mng
	                   { fprintf(fp1,"/%s", mng); }
        	        else                                  //if differ print in next line
	                   {fprintf(fp1,"\n%s\t%s", eng_nxt_wrd, mng);}

        	        strcpy(eng_wrd,eng_nxt_wrd); 
                        strcpy(nxt_mng1,"\0");free(line);
	         }
           if (line)
               free(line); 
          fclose(fp);fclose(fp1);exit(EXIT_SUCCESS);
}
