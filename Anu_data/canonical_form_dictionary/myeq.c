//This programme has two functions ::
/*1.canonical_form function :: 
	-->converts a string in canonical form	Ex: saMgIwa   --> safgIwa
	-->removing 'Z' if present in a string	Ex: WeZjI se  --> WejI se
	-->modifying 'iye' to 'ie'		Ex: kiye      --> kie 	*/
/*2.myeq function ::
	-->compares two strings and returns TRUE/FALSE 
************************************************************************/

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

void canonical_form(char* str , char* new_str)
{
	char  *p1,*p2,*p3;
	char ch;
	int len=0,str_len=0,len_checked=0,new_str_len=0, count=0, array_len;
	char array[1000];

	strcpy(new_str,str);
	str_len = strlen(str);
	p1 = new_str; //initialising p1

        while((len=strcspn(p1,"MZ")) < (str_len - len_checked))
	{
	   count++; *array='\0';
		if(*(p1+len) == 'M')
		{ 
			ch = *(p1+1+len);
			switch (ch) {
					case 'k' : case 'K' : case 'g' : case 'G' : *(p1+len)='f';
                        	                                                    break;
	        	                case 'c' : case 'C' : case 'j' : case 'J' : *(p1+len)='F';
        	                                                                     break;
                                	case 't' : case 'T' : case 'd' : case 'D' : *(p1+len)='N';
                                                        	                     break;
                                	case 'p' : case 'P' : case 'b' : case 'B' : *(p1+len)='m';
                                                	                             break;
                                	case 'x' : case 'X' : case 'w' : case 'W' : *(p1+len)='n';
                                        	                                     break;
					default  : break;
			 }//switch end
			len_checked = len_checked+len+1;
		 } 
		else //(*(p1+len) == 'Z')because it is not 'M' so it must be 'Z'
                      {
				p2 = p1+len+1;
				*(p1+len) =  '\0';
//				strcat(p1,p2);   Commenting this line Instead strcat is done to an array 
				strcat(array, p1);
				strcat(array,p2);
				array_len=strlen(array);
				strncpy(p1, array, array_len); *(p1+array_len) =  '\0';
				len_checked = len_checked+len+2; //Adding size of  'Z' 
                      }       
			p1 = p1+len+1;

	}// while end
	new_str_len = strlen(p1);
	p3 = p1 + (new_str_len - 3);
        if(!strcmp(p3,"iye"))
	{
		*(p1+(new_str_len-2))='e';
		*(p1+new_str_len-1)='\0';
	}
	
} //function end
 
/*int main(int argc , char* argv[])
{
	if (myeq(argv[1],argv[2]))
		printf("equal\n");
	else
	   printf("not_equal\n");
}*/

int myeq(char* str1 , char* str2)
{
	char new_str1[1000], new_str2[1000];
	

	canonical_form(str1,new_str1);
        canonical_form(str2,new_str2);

	if (strcmp(new_str1,new_str2)==0)
                 {  return 1; 	 }
        else     {  return 0;    }
}
