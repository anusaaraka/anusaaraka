#Map English offsets with Word
#RUN:  python map-eng-offset.py   key_tmp.dat   map.dat  >  key.dat  

import sys
map_f = open(sys.argv[2], 'r') #map.dat
map_file = map_f.readlines()

new_map_f = open(sys.argv[3], 'w')

for line in open(sys.argv[1]): #key.dat
	lst = line.split('\t')
	key = lst[2] + ' ' + lst[3][:-2]
	for each in map_file:
		each_lst = each.split('\t')
		v = each_lst[1].split()
		len1 = len(v)
		if key == each_lst[0]:
			print lst[0] + '\t' + lst[1] + '\t' + v[0] + '\t' + str(int(v[len1-1])+1) + ')'
			new_map_f.write('%s %s\t%s' % (v[0], str(int(v[len1-1])+1), each_lst[1]))
		
