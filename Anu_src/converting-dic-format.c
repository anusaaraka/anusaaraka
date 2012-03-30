/* Program to get each word and its possible meanings with different categories in to html forat.
   Ex: aback	adjective::cakiwa
       aback	adverb::pICe_kI_ora/pICe/hawapraBa  
	                 as
       aback   <adjective>adjective::cakiwa</adjective><br><adverb>adverb::pICe_kI_ora/pICe/hawapraBa</adverb><br>  
*/

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

 main(int argc, char* argv[])
 {
           FILE 	* fp , *fp_w, *fp_r ;
           char 	* line = NULL, * line1 = NULL;
           size_t	len = 0, len1 = 0; 
           char		eng_wrd[10000], eng_nxt_wrd[10000], mng[1000],cat[1000], nxt_mng1[10000],mng1[10000],str1[1000];
           int		i=0, j;
 
           fp  = fopen(argv[1], "r");
           if (fp == NULL)
               exit(EXIT_FAILURE);

                getline(&line, &len, fp);  //reading comments
                getline(&line, &len, fp);  // To avoid storage of comments in the output file.
                getline(&line, &len, fp);
                getline(&line, &len, fp);

                getline(&line, &len1, fp); //reading first line of the dictionary after comments 
                len =strcspn(line,"_");  strncpy(eng_wrd,line,len);  eng_wrd[len]='\0';  line=line+len+1;
                len =strcspn(line,"\t"); strncpy(cat,line,len);      cat[len]='\0';      line=line+len+1;
                len =strcspn(line,"\n"); strncpy(mng,line,len);      mng[len]='\0';      line='\0';

                //formatting the text
                strcat(mng1,"<"); strcat(mng1,cat); strcat(mng1,">");strcat(mng1,cat);
                strcat(mng1,"::");
/*                fp_w=fopen("new","w");fprintf(fp_w,"%s",mng);fclose(fp_w);
                system("/bin/sh wx_utf8 new>new1");
                fp_r=fopen("new1","r");fgets(str1,1000,fp_r);fclose(fp_r);
                strcat(mng1,str1);*/strcat(mng1,mng);
                strcat(mng1,"</");strcat(mng1,cat);
                strcat(mng1,">"); strcat(mng1,"<br>");
                free(line);
	        //printing first line
                printf("%s\t%s", eng_wrd, mng1);strcpy(mng1,"\0");
        	while (getline(&line, &len1, fp) != -1) 
                  { 
		   	len =strcspn(line,"_"); strncpy(eng_nxt_wrd,line,len); eng_nxt_wrd[len]='\0'; line=line+len+1;
                        len =strcspn(line,"\t"); strncpy(cat,line,len);     cat[len]='\0';     line=line+len+1;
                        len =strcspn(line,"\n"); strncpy(mng,line,len);     mng[len]='\0';     line='\0';
			
                        strcat(nxt_mng1,"<"); strcat(nxt_mng1,cat); strcat(nxt_mng1,">"); strcat(nxt_mng1,cat);
                        strcat(nxt_mng1,"::"); 
/*                        fp_w=fopen("new","w");fprintf(fp_w,"%s",mng);fclose(fp_w);
	                system("/bin/sh wx_utf8 new>new1");
        	        fp_r=fopen("new1","r");fgets(str1,1000,fp_r);fclose(fp_r); strcat(nxt_mng1,str1); */
                        strcat(nxt_mng1,mng);
                        strcat(nxt_mng1,"</");strcat(nxt_mng1,cat);
                        strcat(nxt_mng1,">"); strcat(nxt_mng1,"<br>");

                   	if(strcmp(eng_wrd, eng_nxt_wrd) == 0) //comparing previous and next word if same the append the mng
	                   printf("%s", nxt_mng1); 
        	        else
	                   printf("\n%s\t%s", eng_nxt_wrd, nxt_mng1);//if differ print in next line

        	        strcpy(eng_wrd,eng_nxt_wrd); 
//	                strcpy(mng1,nxt_mng1);
                        strcpy(nxt_mng1,"\0");free(line);
	         }
           if (line)
               free(line); 
           exit(EXIT_SUCCESS); 
}

