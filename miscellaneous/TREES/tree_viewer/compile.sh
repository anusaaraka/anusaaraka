bash compile_bison.sh
flex mapping-punctuations.lex
gcc -o mapping-punctuations.out lex.yy.c -lfl
