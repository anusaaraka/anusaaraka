rm *.o lex.yy.c myclips
flex wx_utf8.lex
gcc -c *.c
gcc *.o -lfl -lgdbm -lm -lrt -o myclips
