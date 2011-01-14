#include<stdio.h>
#include<stdlib.h>
#include<string.h>
main(){
FILE *cat1;
char filename[100];

sprintf(filename,"/home/manju/GIT/tmp_anu_dir/tmp/total.en1_tmp/2.1017/pos_cat.dat");
cat1=fopen(filename,"w");
if(cat1==NULL) {printf("Could not open %s for writing\n",filename);exit(1);}

fclose(cat1);
}
