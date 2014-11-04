#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "clips.h"
#include <stddef.h>

char halanta[4]={"्"};
char con_hnd_hal[][7]=
{{"आ"},{"भ्"},{"छ्"},{"ढ्"},{"ऐ"},{"ञ्"},{"घ्"},{"ः"},{"ई"},{"झ्"},{"ख्"},{""},{"ं"},{"ण्"},{"औ"},{"फ्"},{"ॠ"},{"ष्"},{"श्"},{"ठ्"},{"ऊ"},{""},{"थ्"},{"ध्"},{""},{"़"},{""},{""},{""},{""},{""},{""},{"अ"},{"ब्"},{"च्"},{"ड्"},{"ए"},{"ङ्"},{"ग्"},{"ह्"},{"इ"},{"ज्"},{"क्"},{"ल्"},{"म्"},{"न्"},{"ओ"},{"प्"},{"ऋ"},{"र्"},{"स्"},{"ट्"},{"उ"},{"व्"},{"त्"},{"द्"},{"य्"},{"ँ"}};
char con_hnd[][4]=
{{"आ"},{"भ"},{"छ"},{"ढ"},{"ऐ"},{"ञ"},{"घ"},{"ः"},{"ई"},{"झ"},{"ख"},{""},{"ं"},{"ण"},{"औ"},{"फ"},{"ॠ"},{"ष"},{"श"},{"ठ"},{"ऊ"},{""},{"थ"},{"ध"},{""},{"़"},{""},{""},{""},{""},{""},{""},{"अ"},{"ब"},{"च"},{"ड"},{"ए"},{"ङ"},{"ग"},{"ह"},{"इ"},{"ज"},{"क"},{"ल"},{"म"},{"न"},{"ओ"},{"प"},{"ऋ"},{"र"},{"स"},{"ट"},{"उ"},{"व"},{"त"},{"द"},{"य"},{"ँ"}};
char vow_hnd_matra[][4] = {{"ा"},{""},{""},{""},{"ै"},{""},{""},{"ः"},{"ी"},{""},{""},{""},{"ं"},{""},{"ौ"},{""},{"ॄ"},{""},{""},{""},{"ू"},{""},{""},{""},{""},{"़"},{""},{""},{""},{""},{""},{""},{""},{""},{""},{""},{"े"},{""},{""},{""},{"ि"},{""},{""},{""},{""},{""},{"ो"},{""},{"ृ"},{""},{""},{""},{"ु"},{""},{""},{""},{""},{"ँ"}};
char alphebet_info[][4] = {{"vow"},{"con"},{"con"},{"con"},{"vow"},{"con"},{"con"},{"vow"},{"vow"},{"con"},{"con"},{""},{"vow"},{"con"},{"vow"},{"con"},{"vow"},{"con"},{"con"},{"con"},{"vow"},{""},{"con"},{"con"},{""},{"vow"},{""},{""},{""},{""},{""},{""},{"vow"},{"con"},{"con"},{"con"},{"vow"},{"con"},{"con"},{"con"},{"vow"},{"con"},{"con"},{"con"},{"con"},{"con"},{"vow"},{"con"},{"vow"},{"con"},{"con"},{"con"},{"vow"},{"con"},{"con"},{"con"},{"con"},{"vow"}};

char *utf8_string;
char *returnValue;  //Assigning returnValue;

void * wx_utf8(char *wx_string)  //Changed from char * to void * as in Reverse() in apg.pdf
{
      wx_string = RtnLexeme(1);
      if (ArgCountCheck("wx_utf8",EXACTLY,1) == -1)
      { return(AddSymbol(""));}

	//+1 is added to add a null character (same as Reverse() in apg.pdf)
        //6 is added for a consonant with halant case Ex: क्  (क takes 3 bytes and halant takes 3 bytes)
	utf8_string = malloc(6*strlen(wx_string)+1);
        if (utf8_string == NULL) { printf("Can't allocate memory for utf8_string\n"); exit;}

	
int i=0,j=0,k=0,l=0,m=0,con_ind=0,vow_ind=0,next_vow_ind=0,first_vow_ind=0,flag_con,flag_vow,flag_first_vow,next_flag_vow;
char ch,ch_next,ch_next_next;
while(*(wx_string+i) != '\0') {
	ch=(*(wx_string+i));
	ch_next = (*(wx_string+i+1));
	ch_next_next=(*(wx_string+i+1+1));
	flag_con=0;
	flag_vow=0;
	next_flag_vow=0;
	flag_first_vow=0;
	
	if(((ch >= 'A') && (ch <= 'Z')) || ((ch >= 'a') && (ch <= 'z'))){
         k = ch - 65;
         l= ch_next - 65;
         m = ch_next_next - 65;
 //        printf("k---%d\nl---%d\nm---%d\n",k,l,m);
                 if(strcmp(alphebet_info[k],"con")== 0){con_ind=k;flag_con=1;}
		 if(strcmp(alphebet_info[k],"vow")== 0){first_vow_ind=k;flag_first_vow=1;}
		 if(strcmp(alphebet_info[l],"vow")== 0){vow_ind=l;flag_vow=1;}
		 if(strcmp(alphebet_info[m],"vow")==0){next_vow_ind=m;next_flag_vow=1;}
		/* check after a consonant , there is a vowel,
		 then output the corresponding utf8 character */
/*		for(k=0;k<=32;k++){if(con_eng[k] == ch){con_ind=k;flag_con=1;}}
		for(k=0;k<=15;k++){if(vow_eng[k] == ch){first_vow_ind=k;flag_first_vow=1;}}
		for(k=0;k<=15;k++){if(vow_eng[k] == ch_next){vow_ind=k;flag_vow=1;}}
		for(k=0;k<=15;k++){if(vow_eng[k] == ch_next_next){next_vow_ind=k;next_flag_vow=1;}}*/

		if((flag_con) &&(flag_vow)){
			if(ch_next == 'a'){
				sprintf(utf8_string+j,"%s",con_hnd[con_ind]);
				j=j+3;
				i=i+2;
			}
			else if(ch_next == 'Z'){
				if(next_flag_vow){
					sprintf(utf8_string+j,"%s",con_hnd[con_ind]);
					j=j+3;
					sprintf(utf8_string+j,"%s",vow_hnd_matra[vow_ind]);
					j=j+3;

					if(ch_next_next != 'a'){
						sprintf(utf8_string+j,"%s",vow_hnd_matra[next_vow_ind]);
						j=j+3;
					}
					i=i+3;
				}				
				else{ 
					sprintf(utf8_string+j,"%s",con_hnd[con_ind]);
					j=j+3;
					sprintf(utf8_string+j,"%s",vow_hnd_matra[vow_ind]);
					j=j+3;
					sprintf(utf8_string+j,"%s",halanta);
					j=j+3;
					i=i+2;
				}	
			}
  			//for cases "soYPtaveyara" "सॉफ्टवेयर"
                        //Modified below code by Roja(18-01-12) to handle words like "joYna", "soYPtaveyara" etc.
                        //original code inside 'else if' is commented and added below code.
			else if((ch_next == 'o') && (ch_next_next == 'Y')){  /*Changed "ch_next == 'o'" to "ch_next == 'O'"
                                                                               (Suggested by Chaitanya Sir) 25-01-12*/
                                        sprintf(utf8_string+j,"%s",con_hnd[con_ind]);
	                                j=j+3;
				//	sprintf(utf8_string+j,"ॉ",con_hnd[con_ind]);
					sprintf(utf8_string+j,"ॉ", vow_hnd_matra[vow_ind]);
					j=j+3;
				//    	i=i+2;
					i=i+3;
					
			}
			else{
				sprintf(utf8_string+j,"%s",con_hnd[con_ind]);
				j=j+3;
				sprintf(utf8_string+j,"%s",vow_hnd_matra[vow_ind]);
				j=j+3;
				i=i+2;
			}
		}
		else if((flag_first_vow)){
			sprintf(utf8_string+j,"%s",con_hnd[first_vow_ind]);
			j=j+3;
			i=i+1;
			flag_first_vow=0;
		}
		else if(flag_con){
			sprintf(utf8_string+j,"%s",con_hnd_hal[con_ind]);
			j=j+6;
			i=i+1;
		}
		else {
			sprintf(utf8_string+j,"%c",ch);
			j = j+1;
			i++;
		}
	}
	else {
	      /*for non-ascii characters print as it is*/
                if (ch == '@')
                {
                sprintf(utf8_string+j,"%c",ch);
                j = j+1;
                i++;
                while(((ch_next >= 'A') && (ch_next <= 'Z')) || ((ch_next >= 'a') && (ch_next <= 'z')) || (ch_next == '-')||((ch_next >= '0') && (ch_next <= '9')))
                {
                sprintf(utf8_string+j,"%c",ch_next);
                j = j+1;
                i++;
                  ch_next=(*(wx_string+i));
                }

                }
                else
                {
                sprintf(utf8_string+j,"%c",ch);
                j = j+1;
                i++;}

              }

}
//To free utf8_string (Refer Reverse() in apg.pdf)
returnValue = AddSymbol(utf8_string);
free(utf8_string);
return(returnValue);
}

/*int main(int argc ,char *argv[])
{
  int bytes_read;
  int nbytes = 10000;
  char *my_string;
  //int count;
//count=0;
 if (argv[1] == NULL){exit(0); }
 else printf("%s\n",wx_utf8(argv[1]));

while(1){
  my_string = (char *) malloc (nbytes + 1);
if (my_string == NULL) { printf("Can't allocate memory\n"); exit;}

  bytes_read = getline (&my_string, &nbytes, stdin);

  if (bytes_read == -1){exit(0); }
  else {printf("%s",wx_utf8(my_string));
//	count++;
//        printf("count=%d\n",count);
	free(utf8_string); }
  free(my_string);
}
 free (utf8_string);
  return 0;
}*/
