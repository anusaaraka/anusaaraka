%{
#include<string.h>
char str[1000];
int len=0;
%}
%%
^[{(\[]*(Adj|Adm|Adv|Asst|Bart|Bldg|Brig|Bros|Capt|Cmdr|Col|Comdr|Con|Cpl|DR|Dr|Ens|Gen|Gov|Hon|Hosp|Insp|Jr|Lt|MM|MR|MRS|MS|Maj|Messrs|Mlle|Mme|Mr|Mrs|Ms|Msgr|Op|Ord|Pfc|Ph|Prof|Pvt|Rep|Reps|Res|Rev|Rt|Sen|Sens|Sfc|Sgt|Sr|Supt|Surg|v|vs|[A-Z])[.] {
				len=strlen(yytext);
				strncpy(str,yytext,len-1);
				str[len-1]='\0';
				printf("%sABBR-Dot", str);}	
			
[ {(\[]+(Adj|Adm|Adv|Asst|Bart|Bldg|Brig|Bros|Capt|Cmdr|Col|Comdr|Con|Cpl|DR|Dr|Ens|Gen|Gov|Hon|Hosp|Insp|Jr|Lt|MM|MR|MRS|MS|Maj|Messrs|Mlle|Mme|Mr|Mrs|Ms|Msgr|Op|Ord|Pfc|Ph|Prof|Pvt|Rep|Reps|Res|Rev|Rt|Sen|Sens|Sfc|Sgt|Sr|Supt|Surg|v|vs|[A-Z])[.] {
                                len=strlen(yytext);
                                strncpy(str,yytext,len-1);
                                str[len-1]='\0';
                                printf("%sABBR-Dot", str);}	
%%
main()
{
 yylex();
}

