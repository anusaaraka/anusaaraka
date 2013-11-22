//Reading a line and printing numbers in ascending order

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

main(int argc, char* argv[])
{
   char *line = NULL;
   int  count=0;
   size_t len=0;
   FILE *fp;
   
   fp = fopen(argv[1] , "r");
   if(fp == NULL) printf("Couldn't open file\n");
   
   while(getline(&line, &len, fp)!=-1)
   {
        count=count++;
        printf("%d.  %s", count, line);
   }
  fclose(fp);
}
