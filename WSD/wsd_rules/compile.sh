flex $1.lex 
gcc -g -o $1.out lex.yy.c -lfl $2
