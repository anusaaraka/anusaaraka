/* This programme converts wx to utf8 */
/* Added by Roja (07-09-12) 	      */

ROM_WORD @[A-Za-z0-9]+

%x consonant

%%
{ROM_WORD}	{	printf("%s", yytext+1);	}

A	{	printf("आ");	}
E	{	printf("ऐ");	}
I	{	printf("ई");	}
O	{	printf("औ");	}
U	{	printf("ऊ");	}
Q	{	printf("ॠ");	}
a	{	printf("अ");	}
e	{	printf("ए");	}
i	{	printf("इ");	}
o	{	printf("ओ");	}
u	{	printf("उ");	}
q	{	printf("ऋ");	}
aM	{	printf("अं");	}
aH	{	printf("अः");	}
oY	{	printf("ऑ");	}

<consonant>A	{	printf("ा");	BEGIN INITIAL;	}
<consonant>E	{	printf("ै");	BEGIN INITIAL;	}
<consonant>I	{	printf("ी");	BEGIN INITIAL;	}
<consonant>O	{	printf("ौ");	BEGIN INITIAL;	}
<consonant>U	{	printf("ू");	BEGIN INITIAL;	}
<consonant>Q	{	printf("ॄ");	BEGIN INITIAL;	}
<consonant>a	{	printf("");	BEGIN INITIAL;	}
<consonant>e	{	printf("े");	BEGIN INITIAL;	}
<consonant>i	{	printf("ि");	BEGIN INITIAL;	}
<consonant>o	{	printf("ो");	BEGIN INITIAL;	}
<consonant>u	{	printf("ु");	BEGIN INITIAL;	}
<consonant>q	{	printf("ृ");	BEGIN INITIAL;	}
<consonant>oY	{	printf("ॉ");	BEGIN INITIAL;	}
H		{	printf("ः");	BEGIN INITIAL;	}
M		{	printf("ं");	BEGIN INITIAL;	}
z		{	printf("ँ");	BEGIN INITIAL;	/*}
Z		{	printf("़");	BEGIN INITIAL;	*/}
<consonant>Z	{	printf("़");	BEGIN consonant;	}


k	{	printf("क"); BEGIN consonant;	}
K	{	printf("ख"); BEGIN consonant;	}
g	{	printf("ग"); BEGIN consonant;	}
G	{	printf("घ"); BEGIN consonant;	}
f	{	printf("ङ"); BEGIN consonant;	}
c	{	printf("च"); BEGIN consonant;	}
C	{	printf("छ"); BEGIN consonant;	}
j	{	printf("ज"); BEGIN consonant;	}
J	{	printf("झ"); BEGIN consonant;	}
F	{	printf("ञ"); BEGIN consonant;	}
t	{	printf("ट"); BEGIN consonant;	}
T	{	printf("ठ"); BEGIN consonant;	}
d	{	printf("ड"); BEGIN consonant;	}
D	{	printf("ढ"); BEGIN consonant;	}
N	{	printf("ण"); BEGIN consonant;	}
w	{	printf("त"); BEGIN consonant;	}
W	{	printf("थ"); BEGIN consonant;	}
x	{	printf("द"); BEGIN consonant;	}
X	{	printf("ध"); BEGIN consonant;	}
n	{	printf("न"); BEGIN consonant;	}
p	{	printf("प"); BEGIN consonant;	}
P	{	printf("फ"); BEGIN consonant;	}
b	{	printf("ब"); BEGIN consonant;	}
B	{	printf("भ"); BEGIN consonant;	}
m	{	printf("म"); BEGIN consonant;	}
y	{	printf("य"); BEGIN consonant;	}
r	{	printf("र"); BEGIN consonant;	}
l	{	printf("ल"); BEGIN consonant;	}
v	{	printf("व"); BEGIN consonant;	}
S	{	printf("श"); BEGIN consonant;	}
R	{	printf("ष"); BEGIN consonant;	}
s	{	printf("स"); BEGIN consonant;	}
h	{	printf("ह"); BEGIN consonant;	}
lY	{	printf("ळ");	BEGIN consonant;	}

<consonant>k       {       printf("्क"); BEGIN consonant;   }
<consonant>K       {       printf("्ख"); BEGIN consonant;   }
<consonant>g       {       printf("्ग"); BEGIN consonant;   }
<consonant>G       {       printf("्घ"); BEGIN consonant;   }
<consonant>f       {       printf("्ङ"); BEGIN consonant;   }
<consonant>c       {       printf("्च"); BEGIN consonant;   }
<consonant>C       {       printf("्छ"); BEGIN consonant;   }
<consonant>j       {       printf("्ज"); BEGIN consonant;   }
<consonant>J       {       printf("्झ"); BEGIN consonant;   }
<consonant>F       {       printf("्ञ"); BEGIN consonant;   }
<consonant>t       {       printf("्ट"); BEGIN consonant;   }
<consonant>T       {       printf("्ठ"); BEGIN consonant;   }
<consonant>d       {       printf("्ड"); BEGIN consonant;   }
<consonant>D       {       printf("्ढ"); BEGIN consonant;   }
<consonant>N       {       printf("्ण"); BEGIN consonant;   }
<consonant>w       {       printf("्त"); BEGIN consonant;   }
<consonant>W       {       printf("्थ"); BEGIN consonant;   }
<consonant>x       {       printf("्द"); BEGIN consonant;   }
<consonant>X       {       printf("्ध"); BEGIN consonant;   }
<consonant>n       {       printf("्न"); BEGIN consonant;   }
<consonant>p       {       printf("्प"); BEGIN consonant;   }
<consonant>P       {       printf("्फ"); BEGIN consonant;   }
<consonant>b       {       printf("्ब"); BEGIN consonant;   }
<consonant>B       {       printf("्भ"); BEGIN consonant;   }
<consonant>m       {       printf("्म"); BEGIN consonant;   }
<consonant>y       {       printf("्य"); BEGIN consonant;   }
<consonant>r       {       printf("्र"); BEGIN consonant;   }
<consonant>l       {       printf("्ल"); BEGIN consonant;   }
<consonant>v       {       printf("्व"); BEGIN consonant;   }
<consonant>S       {       printf("्श"); BEGIN consonant;   }
<consonant>R       {       printf("्ष"); BEGIN consonant;   }
<consonant>s       {       printf("्स"); BEGIN consonant;   }
<consonant>h       {       printf("्ह"); BEGIN consonant;   }
<consonant>lY	{	printf("्ळ");	BEGIN consonant;	}

<consonant>([ ]|\n|[^a-zA-Z])	{	printf("्");	ECHO; BEGIN INITIAL;	}

%%
