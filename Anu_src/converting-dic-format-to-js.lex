/*Program to Display Default Dictionary in ".js" format.*/
/*Added by Roja (16-02-11).*/

%{
char eng_wrd[1000], cat[1000], mng[1000], color[1000], *s1, *s2;
int len, len1;
%}


%%
[A-Za-z0-9.!{}'_-]*\t@				{	len=strcspn(yytext, "\t");
                                                        strncpy(eng_wrd, yytext, len);
                                                        eng_wrd[len]='\0';
						        printf("function fetchdict%s(a) {\n\t\tvar contentshabd = document.getElementById('content');\n\t\tvar content1shabd = document.getElementById('content1dict');\n\t\tcontent1shabd.innerHTML ='<div id=\"hnd\"/>';\n\t\tcontentshabd.innerHTML = '<div id=\"%s\"\\>", eng_wrd, eng_wrd);
	}


@@[a-z]*::[A-Za-z\/{}\(\)0-9!?\[\]'_-]*@	{	len=strcspn(yytext, ":");
							strncpy(cat, yytext, len);
							cat[len]='\0';
							
							s1=strchr(yytext, ':')+2;
							len1=strcspn(s1, "@");
							strncpy(mng,s1,len1);
							mng[len1]='\0';

							if(strcmp(cat,"@@noun")==0)
							   strcpy(color, "cadetblue");
							if(strcmp(cat,"@@verb")==0)
							   strcpy(color, "lightpink");
							if(strcmp(cat,"@@adjective")==0)
							   strcpy(color, "lightgolden");
							if(strcmp(cat,"@@adverb")==0)
							   strcpy(color, "aquamarine");
							if(strcmp(cat,"@@conjunction")==0)
							   strcpy(color, "darkseagreen");
							if(strcmp(cat,"@@preposition")==0)
							   strcpy(color, "peach");
							if(strcmp(cat,"@@determiner")==0)
                                                           strcpy(color, "red");

  printf("<font color=\"%s\">@%s::%s<br\\>", color, cat, mng);
						}

@@[a-z]*::[A-Za-z\/{}\(\)0-9!?\[\]'_-]*         {	len1=strcspn(yytext, ":");
                                                        strncpy(cat, yytext, len1);
                                                        cat[len1]='\0';

                                                        s1=strchr(yytext, ':')+2;
                                                        if(strcmp(cat,"@@noun")==0)
                                                           strcpy(color, "cadetblue");
                                                        if(strcmp(cat,"@@verb")==0)
                                                           strcpy(color, "lightpink");
                                                        if(strcmp(cat,"@@adjective")==0)
                                                           strcpy(color, "lightgolden");
                                                        if(strcmp(cat,"@@adverb")==0)
                                                           strcpy(color, "aquamarine");
                                                        if(strcmp(cat,"@@conjunction")==0)
                                                           strcpy(color, "darkseagreen");
                                                        if(strcmp(cat,"@@preposition")==0)
                                                           strcpy(color, "peach");
                                                        if(strcmp(cat,"@@determiner")==0)
                                                           strcpy(color, "red");

  printf("<font color=\"%s\">@%s::%s<br\\>", color, cat, s1);
  printf("<\\/div\\>'\n\t\tvar text = document.getElementById(a).innerHTML;\n\t\tif(text){\n\t\t\tvar mngshabd = document.getElementById(\"hnd\");\n\t\t\tmngshabd.innerHTML = '<h3>' + a + '</h3>' + text;\n\t\t}\n\t\telse {\n\t\t\tvar mngshabd = document.getElementById(\"hnd\");\n\t\t\tmngshabd.innerHTML = '<h3>' + a + '</h3>' + 'Word not found';\n\t\t}\n}\n\n");

                                                }
%%
