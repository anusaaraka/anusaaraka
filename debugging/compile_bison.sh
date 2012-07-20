flex  constituency_parse.l
bison --yacc -d constituency_parse.y
gcc -g lex.yy.c y.tab.c -o  constituency_parse
