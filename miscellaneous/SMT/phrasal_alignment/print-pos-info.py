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
		print '(manual_id-wrd-cat\t%s\t%s\t%s)' % (sent_count, lst[0], lst[1].strip())
	
