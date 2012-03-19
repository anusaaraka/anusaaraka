/*Program to Display Default Dictionary in ".js" format.*/
/*Added by Roja (16-02-11).*/

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
char eng_wrd[1000], cat[1000], mng[1000], color[1000], *s1, *s2;
int len, len1, len3;
FILE *fp;
%}


%%
[A-Za-z0-9.!{}'_-]*\t@				{	len=strcspn(yytext, "\t");
                                                        strncpy(eng_wrd, yytext, len);
                                                        eng_wrd[len]='\0';
						        fprintf(fp,"@function @fetchdict@%s(@a) {\n\t\t@var @contentshabd = @document.@getElementById('@content');\n\t\t@var @content1shabd = @document.@getElementById('@content1dict');\n\t\t@content1shabd.@innerHTML ='<@div @id=\"@hnd\"/>';\n\t\t@contentshabd.@innerHTML = '<@div @id=\"@%s\"\\>", eng_wrd, eng_wrd);
	}


@@[A-Za-z_-]*::[A-Za-z\/{}\(\)0-9!?\[\].:'_-]*@	{	len=strcspn(yytext, ":");
							strncpy(cat, yytext, len);
							cat[len]='\0';
							
							s1=strchr(yytext, ':')+2;
							len1=strcspn(s1, "@");
							strncpy(mng,s1,len1);
							mng[len1]='\0';

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
							len3=strlen(color);
							color[len3]='\0';
  fprintf(fp,"<@font @color=\"@%s\">@@%s::%s<@br\\>", color, cat, mng);
						}

@@[A-Za-z_-]*::[A-Za-z\/{}\(\)0-9!?\[\].:'_-]*         {	len1=strcspn(yytext, ":");
                                                        strncpy(cat, yytext, len1);
                                                        cat[len1]='\0';

                                                        s1=strchr(yytext, ':')+2;
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
							len3=strlen(color);
                                                        color[len3]='\0';
  fprintf(fp,"<@font @color=\"@%s\">@@%s::%s<@br\\>", color, cat, s1);
  fprintf(fp,"<\\/@div\\>'\n\t\t@var @text = @document.@getElementById(@a).@innerHTML;\n\t\t@if(@text){\n\t\t\t@var @mngshabd = @document.@getElementById(\"@hnd\");\n\t\t\t@mngshabd.@innerHTML = '<@h3>' + @a + '</@h3>' + @text;\n\t\t}\n\t\t@else {\n\t\t\t@var @mngshabd = @document.@getElementById(\"@hnd\");\n\t\t\t@mngshabd.@innerHTML = '<@h3>' + @a + '</@h3>' + '@Word @not @found';\n\t\t}\n}\n\n");

                                                }
%%


main(int argc, char* argv[])
{
fp=fopen(argv[1],"a");
yylex();
//free(mng1);
fclose(fp);
}
