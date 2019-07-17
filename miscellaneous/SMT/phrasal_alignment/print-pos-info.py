#Programe to print tagger information in facts format
#Written by Roja(21-07-14)
import sys

sent_count = 0 
for line in open(sys.argv[1]):
	lst = line.split('\t')
	if lst[0] == '':
		print ';~~~~~~~~~~'
		sent_count = 0
	else:
		lst = line.split('\t')
		sent_count += 1
		if lst[0]== '(':
			lst[0] = 'PUNCT-OpenParen'
		if lst[0]== ')':
			lst[0] = 'PUNCT-ClosedParen'
		if lst[0]== ';':
			lst[0] = 'PUNCT-Semicolon'
		if lst[0]== '"':
			lst[0] = 'PUNCT-DoubleQuote'
	#added below entries by Manju
		if lst[0]== '?':
			lst[0] = 'PUNCT-QuestionMark'
		if lst[0]== '=':
			lst[0] = 'SYMBOL-EQUAL-TO'
		if lst[0]== '|':
			lst[0] = 'SYMBOL-VERTICAL-LINE'
		if lst[0]== '/':
			lst[0] = 'SYMBOL-SLASH'
		if lst[0]=='~':
			lst[0] = 'SYMBOL-TELDA' 
		print '(manual_id-wrd-cat\t%s\t%s\t%s)' % (sent_count, lst[0], lst[1].strip())
	
