/*PROGRAM TO REPLACE BACK nonascii<no of bytes><value> WITH THE CORRESPONDING CHARACTER*/
/*Added by RACHIT KUMAR MNNIT-ALLAHABAD (4th year) */

#include<stdio.h>
#include<string.h>
#include<math.h>
#include<unistd.h>
#include<fcntl.h>

int main(int argc, char *argv[])
{
	int fpi=open(argv[1],O_RDONLY,0777);	//ARG1 FOR INPUT FILE 
	FILE *fp1=fdopen(fpi,"r");
	int fpo=open(argv[2],O_WRONLY|O_CREAT|O_TRUNC,0777);	//ARG2 FOR OUTPUT FILE
	FILE *fp2=fdopen(fpo,"w");
	if(fp1==NULL||fp2==NULL) printf("Could not open file\n");

	int c,i,n,sb,ck=1;
	char p[8],t[3];
	unsigned char a[7];  //Changed from a[3] to a[7] as maximum unsinged char is 6 bytes. As suggested by Chaitanya Sir
	while((c=fgetc(fp1))!=EOF)
	{
		int flag=1;
		if(c=='n')	//SEARCH FOR n OF nonascii
		{
			fgets(p,8,fp1);
			for(sb=0;sb<7;sb++)
			{
				if(p[sb]=='\n')
				{
					flag=0;
					break;
				}
			}
			if(flag)
			{
				if (!strcmp(p,"onascii"))	//COMPARING THE REMAINING onascii		
				{
					c=fgetc(fp1);
					n=c-48;				
					for(i=0;i<n;i++)
					{	
						fgets(t,4,fp1);
						a[i]=atoi(t);
					}
					a[i]='\0';	
					fprintf(fp2,"%s",a);									

				}			
				else
				{
					fseek(fp1,-8,SEEK_CUR);
					c=fgetc(fp1);
					fputc(c,fp2);
				}	
			}
			else
			{
				fseek(fp1,-sb-2,SEEK_CUR);
				c=fgetc(fp1);
				fputc(c,fp2);
			}	
		}
		else
			fputc(c,fp2);	//FOR OTHER CHARACTER, PUT THEM AS IT IS
			
	}
	return 0;
}

