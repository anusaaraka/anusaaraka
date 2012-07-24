//Reading a line and printing numbers in ascending order

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

main(int argc, char* argv[])
{
   char *line = NULL, word[1000];
   size_t  count=0, len=0;
   FILE *fp;
   
   fp = fopen(argv[1] , "r");
   if(fp == NULL) printf("Couldn't open file\n");
   
   while(getline(&line, &len, fp)!=-1)
   {
//        sscanf(line, "%s", word);
        count=count++;
        //printf("%d\t%s\n", count, word);
        printf("%d\n", count);
   }
  fclose(fp);
}
