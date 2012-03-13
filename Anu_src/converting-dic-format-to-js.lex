/*Program to Display Default Dictionary in ".js" format.*/
/*Added by Roja (16-02-11).*/

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
char eng_wrd[1000], cat[1000], mng[1000], color[1000], *mng1, *s1, *s2;
int len, len1;
FILE *fp;
extern char * wx_utf8(char *wx_string);
%}


%%
[A-Za-z0-9.!{}'_-]*\t@				{	len=strcspn(yytext, "\t");
                                                        strncpy(eng_wrd, yytext, len);
                                                        eng_wrd[len]='\0';
						        fprintf(fp,"function fetchdict%s(a) {\n\t\tvar contentshabd = document.getElementById('content');\n\t\tvar content1shabd = document.getElementById('content1dict');\n\t\tcontent1shabd.innerHTML ='<div id=\"hnd\"/>';\n\t\tcontentshabd.innerHTML = '<div id=\"%s\"\\>", eng_wrd, eng_wrd);
	}


@@[A-Za-z_-]*::[A-Za-z\/{}\(\)0-9!?\[\].:'_-]*@	{	len=strcspn(yytext, ":");
							strncpy(cat, yytext, len);
							cat[len]='\0';
							
							s1=strchr(yytext, ':')+2;
							len1=strcspn(s1, "@");
							strncpy(mng,s1,len1);
							mng[len1]='\0';
						
							mng1=wx_utf8(mng);  
							if(strcmp(cat,"@@noun")==0)
							   strcpy(color, "cadetblue");
							else if(strcmp(cat,"@@verb")==0)
							   strcpy(color, "lightpink");
							else if(strcmp(cat,"@@adjective")==0)
							   strcpy(color, "yellow");
							else if(strcmp(cat,"@@adverb")==0)
							   strcpy(color, "green");
							else if(strcmp(cat,"@@conjunction")==0)
							   strcpy(color, "darkseagreen");
							else if(strcmp(cat,"@@preposition")==0)
							   strcpy(color, "peach");
							else if(strcmp(cat,"@@determiner")==0)
                                                           strcpy(color, "red");
 							else
							   strcpy(color, "black");

  fprintf(fp,"<font color=\"%s\">@%s::%s<br\\>", color, cat, mng1);
						}

@@[A-Za-z_-]*::[A-Za-z\/{}\(\)0-9!?\[\].:'_-]*         {	len1=strcspn(yytext, ":");
                                                        strncpy(cat, yytext, len1);
                                                        cat[len1]='\0';

                                                        s1=strchr(yytext, ':')+2;
							len=strlen(s1);
							strncpy(mng, s1, len);
							mng1=wx_utf8(mng);
                                                        if(strcmp(cat,"@@noun")==0)
                                                           strcpy(color, "cadetblue");
                                                        else if(strcmp(cat,"@@verb")==0)
                                                           strcpy(color, "lightpink");
                                                        else if(strcmp(cat,"@@adjective")==0)
                                                           strcpy(color, "yellow");
                                                        else if(strcmp(cat,"@@adverb")==0)
                                                           strcpy(color, "green");
                                                        else if(strcmp(cat,"@@conjunction")==0)
                                                           strcpy(color, "darkseagreen");
                                                        else if(strcmp(cat,"@@preposition")==0)
                                                           strcpy(color, "peach");
                                                        else if(strcmp(cat,"@@determiner")==0)
                                                           strcpy(color, "red");
							else
							   strcpy(color, "black");

  fprintf(fp,"<font color=\"%s\">@%s::%s<br\\>", color, cat, mng1);
  fprintf(fp,"<\\/div\\>'\n\t\tvar text = document.getElementById(a).innerHTML;\n\t\tif(text){\n\t\t\tvar mngshabd = document.getElementById(\"hnd\");\n\t\t\tmngshabd.innerHTML = '<h3>' + a + '</h3>' + text;\n\t\t}\n\t\telse {\n\t\t\tvar mngshabd = document.getElementById(\"hnd\");\n\t\t\tmngshabd.innerHTML = '<h3>' + a + '</h3>' + 'Word not found';\n\t\t}\n}\n\n");

                                                }
%%


main(int argc, char* argv[])
{
fp=fopen(argv[1],"a");
yylex();
fclose(fp);
}
    
