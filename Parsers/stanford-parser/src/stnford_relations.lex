%{
#include<string.h>
char str[1000],str1[1000],str2[1000],*s1,*s2, *s3, *s4, str3[100];
int len,len1,len2;
FILE *fp;
%}

%%

[A-Za-z:_]*\([A-Za-z0-9'-\.]*[-][0-9]*[,][ ][A-Za-z0-9'-\.]*[-][0-9]*\)\n      {  
				                              len=strcspn(yytext,"(");
                                                              strncpy(str,yytext,len);
                                                              str[len]='\0';

                                                              s1=strchr(yytext,',')-4; //id of word will not exceed 3 digits 
                                                              s2=strchr(s1,'-')+1;  
                                                              len1=strcspn(s2,",");
                                                              strncpy(str1,s2,len1);
                                                              str1[len1]='\0';
 
                                                              s3=strchr(s2,')')-4; //id of word will not exceed 3 digits.         Ex:When the dollar is in a free-fall, even central banks can not stop it.
     		                                              s4=strchr(s3,'-')+1;
                                                              len2=strcspn(s4,")");
                                                              strncpy(str2,s4,len2);
                                                              str2[len2]='\0';
 
                                                              fprintf(fp,"(%s %s P%s P%s)\n",str3,str,str1,str2);

                                                          }

[ ]                             { }

^[\n]           		{  fprintf(fp,"\n;~~~~~~~~~~\n");  }

[A-Za-z_0-9`']*[/][A-Za-z0-9 $ ,' ? ! ( ) `"._-]*\n\n   {   }

\;~~~~~~~~~~\n			{  fprintf(fp,";~~~~~~~~~~\n");  }

%%

main(int argc, char* argv[])
{
fp=fopen(argv[1],"a");
strcpy(str3,argv[2]);
yylex();
fclose(fp);
}

