/*PROGRAM TO REPLACE BACK nonascii<no of bytes><value> BT THE CORRESPONDING CHARACTER*/
#include<stdio.h>
#include<string.h>
#include<math.h>
#include<unistd.h>
#include<fcntl.h>

int main(int argc, char *argv[])
{
	int fpi=open(argv[1],O_RDONLY,0777);	//ARG1 FOR INPUT FILE 
	FILE *fp1=fdopen(fpi,"r");
	int fpo=open(argv[2],O_WRONLY|O_CREAT,0777);	//ARG2 FOR OUTPUT FILE
	FILE *fp2=fdopen(fpo,"w");

	int c,i,n,sb,ck=1;
	char p[8],t[3];
	unsigned char a[7];
	while((c=fgetc(fp1))!=EOF)
	{
		int flag=1;
		if(c=='n')	//SEARCH FOR n OF nonacii
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
				if (!strcmp(p,"onascii"))	//COMPARING THE REMAINING onacii		
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

