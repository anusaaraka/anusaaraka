flex  $1.l
bison --yacc -d $1.y
gcc -g lex.yy.c y.tab.c -o  $1
