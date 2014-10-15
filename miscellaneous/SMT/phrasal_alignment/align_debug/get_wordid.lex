%{
char *p, str[1000];
int len, count=0;
%}

%%

[(][A-Z$-_]*[ ][a-zA-Z0-9.',-_]*[)]  {  len = strcspn(yytext, " ");
					strncpy(str, yytext, len);
					str[len]='\0';
					count++;
					printf("%s P%d)", str, count);
				}

\n				{	count = 0;	printf("\n;~~~~~~~~~~\n");
				}

%%
