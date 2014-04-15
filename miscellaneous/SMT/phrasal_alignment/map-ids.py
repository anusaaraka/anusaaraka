#Programme written by Sukhada
#This programme maps offset values with word ids.
#RUN: python map-ids.py  align_eng.txt  map.txt mapped.txt
#I/p1: align_eng.txt (o/p of replace_val_trn.py programe)
#I/p2: map.txt       (o/p of extract_key_using_multifast) 
#O/p: mapped.txt    

import sys
from collections import OrderedDict

fr1 = open(sys.argv[1], 'r')
f1 = fr1.readlines()
fr2 = open(sys.argv[2], 'r')
f2 = fr2.readlines()
fw = open(sys.argv[3], 'w')
all_entries = {}

out_l = []
gr_l = []
lst = []

for i in xrange(len(f1)):
	if f1[i].startswith(';~~~~~~~'):
		out_l.append(lst)
		lst = []
	else:
		lst.append(f1[i])

for i in xrange(len(f2)):
	if f2[i].startswith(';~~~~~~~'):
		gr_l.append(lst)
		lst = []
	else:
		lst.append(f2[i])


def make_int(List):
	int_list = []
	for i in List:
		int_list.append(int(i))
	return int_list


def make_str(List):
	str_list = []
	for i in List:
		str_list.append(str(i))
	return ' '.join(str_list)




for s in range( len(gr_l)) : 
	out_d = {}
	gr_d = {}
	for i in range(len(gr_l[s])):
		if out_l[s] != ['Construction mismatch\n']:
			for j in gr_l[s]:
				lst = j.split('\t')
				gr_d[lst[0]] = lst[1].strip().split()

	for i in range(len(out_l[s])):
		if out_l[s] != ['Construction mismatch\n']:
			lst = []
			for j in out_l[s]:
				lst = j.split('\t')
				out_d[lst[0] + '\t' + lst[1]] = make_int(lst[2].strip().split())
		if out_l[s] == ['Construction mismatch\n']:
			fw.write('(eng-hnd-eng_ids Construction mismatch)\n')

	od_out_d = OrderedDict(sorted(out_d.items(), key=lambda(k,v):(v,k)))
	position = 0
	for key in od_out_d:
		position += 1
		fw.write('(position-eng-hnd-eng_ids\t%d\t%s\t%s)\n' % (position, key, make_str(gr_d[make_str(make_int(od_out_d[key]))]))) 
	fw.write(';~~~~~~~~~~\n')


