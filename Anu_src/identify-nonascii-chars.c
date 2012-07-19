/*PROGRAM TO REPLACE MORE THAN 1 BYTE CHARACTER WITH nonascii<no of bytes><value>*/
/*Added by RACHIT KUMAR MNNIT-ALLAHABAD (4th year) */

#include<stdio.h>
#include<string.h>
#include<math.h>
#include<unistd.h>
#include<fcntl.h>

int no_of_bytes(int ch) //FUNCTION TO COUNT NO OF BYTES
{
	int x,count=0;

	if(ch<128)
		return 1;

	x=128;
	while(1)
	{
		if(ch/x>=1 && ch>0 && x>0)
			count++;
		else
			break;
		ch-=x;		
		x/=2;		
	}
	return count;
}

int main(int argc, char *argv[])	
{
	int fpi=open(argv[1],O_RDONLY,0777);	//ARG1 FOR INPUT FILE 
	FILE *fp1=fdopen(fpi,"r");
	int fpo=open(argv[2],O_WRONLY|O_CREAT|O_TRUNC,0777); //ARG2 FOR OUTPUT FILE
	FILE *fp2=fdopen(fpo,"w");
        if(fp1==NULL || fp2==NULL) printf("Could not open file\n");

	int c;
	while((c=fgetc(fp1))!=EOF)
	{
		int i,n=no_of_bytes(c);		
		if(n==1)	//FOR 1BYTE CH. NOTHING TO BE DONE 
			fputc(c,fp2);
		else if(n>1)	//FOR MORE THAN 1 BYTE CHARACTERS
		{
			fputs("nonascii",fp2);		
			fprintf(fp2,"%d%d",n,c);
			for(i=1;i<n;i++)
			{
				c=fgetc(fp1);
				fprintf(fp2,"%d",c);		
			}	
		}
	}
	return 0;
}

