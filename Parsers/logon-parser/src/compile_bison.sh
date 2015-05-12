flex  $1.l
bison --yacc -d -v -t $1.y
gcc -g  lex.yy.c y.tab.c -o  $1
#/home/mahalaxmi/mydata/FlexandBison/bison_debugger/gramdiag-0.5a/gramdiag  y.output > report

