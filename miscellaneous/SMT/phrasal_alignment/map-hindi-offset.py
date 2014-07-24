import sys
map_f = open(sys.argv[2], 'r') #map_hindi_offsets.dat
map_file = map_f.readlines()

align_phrase = open(sys.argv[3], 'r') #match-value.dat
align_file = align_phrase.readlines()

for line in open(sys.argv[1]): #key_hindi_phrase.dat
	lst = line.split('\t')
	key = lst[2] + ' ' + lst[3][:-2]
	for each in map_file:
		each_lst = each.split('\t')
		v = each_lst[1].split()
		len1 = len(v)
		if key == each_lst[0]:
#			print key
			for i in align_file:
				p_lst = i.split()
				if p_lst[1] == lst[1]:
					print p_lst[0] + '\t' + p_lst[1] + '\t' + p_lst[2] + ' ' + p_lst[3].strip() + '\t' + v[0] + ' ' +  str(int(v[len1-1])+1)
		
