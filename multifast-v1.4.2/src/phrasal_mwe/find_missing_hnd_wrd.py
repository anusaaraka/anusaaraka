#python find_missing_hnd_wrd.py  $1.txt1 $1.txt > missing_wrds.txt
#where $1.txt is the output of check_hindi_words_only.c 
#Written by Roja(31-08-17)
#########################################################
import sys

f = open(sys.argv[1], 'r')
hnd_lst = f.read()


punct_lst = ['.', '"', '`', '(', ')', '[', ']', '{', '}', '?', '!', ';', '\'', ':' , ',', '/', '@', '$', '&', '*', '%', '+', '=', '-', '>', '<', '|', '^', '~']
#punct_lst = ['.', '"', '`', '(', ')', '[', ']', '{', '}', '?', '!', ';', '\'', ':' , ',', '/', '@', '$', '&', '*', '%', '+', '=', '-']

missing_wrd_lst = []

for line in open(sys.argv[2]):
	wrd = line[:-2]
#	print wrd
	if wrd not in hnd_lst and wrd not in punct_lst and not wrd.isdigit():
#	if wrd not in hnd_lst and wrd not in punct_lst:
		print "(" + "wrong_word" + '\t' + wrd + ')'
