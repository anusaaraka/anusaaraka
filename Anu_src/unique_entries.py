#Written by Roja (14-09-15)
#Programme to unique dictionary entries
#Ex::	abstract_noun	amUrwa
#	abstract_noun	sArAMSa/sAra
#O/p::	abstract_noun	amUrwa/sArAMSa/sAra
#RUN::	python unique_entries.py  <input-file> <output-file>
#Ex::	python unique_entries.py sample sample_out

import sys

dic = {}
uniq_dic = open(sys.argv[2], 'w')

for line in open(sys.argv[1]):
	lst = line.strip().split('\t')
	if lst[0] not in dic:
		dic[lst[0]] = lst[1]
	else:
		dic[lst[0]] = dic[lst[0]] + '/' + lst[1]
		

for key in sorted(dic):
	uniq_dic.write('%s\t%s\n' % (key, dic[key]))
 
