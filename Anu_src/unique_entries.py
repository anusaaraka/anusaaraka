#Written by Roja (14-09-15)
#Programme to unique dictionary entries
#Ex::	abstract_noun	amUrwa
#	abstract_noun	sArAMSa/sAra/amUrwa
#O/p::	abstract_noun	amUrwa/sArAMSa/sAra
#RUN::	python unique_entries.py  <input-file> <output-file>
#Ex::	python unique_entries.py sample sample_out

import sys

dic = {}
uniq_dic = open(sys.argv[2], 'w')

for line in open(sys.argv[1]):
	if '#' in line[0]:
		uniq_dic.write('%s' % line) #Storing Commented lines in the dic
	else:
		lst = line.strip().split('\t')
		if lst[0] not in dic: #To unique key 
			dic[lst[0]] = lst[1]
		else:
			dic[lst[0]] = dic[lst[0]] + '/' + lst[1]
		

for key in sorted(dic):
	new_lst = []
	if '/' not in dic[key]:
		uniq_dic.write('%s\t%s\n' % (key, dic[key]))
	else:
		lst = dic[key].split('/') #To unique value (mng)
		for each in lst:
			if each not in new_lst:
				new_lst.append(each)
		uniq_dic.write('%s\t%s\n' % (key, '/'.join(new_lst)))
		
 
