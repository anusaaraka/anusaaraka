import sys
map_f = open(sys.argv[2], 'r')
map_file = map_f.readlines()

count = 1 
for line in open(sys.argv[1]):
	lst = line.split('\t')
	for each in map_file:
		each_lst = each.split('\t')
		if lst[2].strip() == each_lst[0]:
			print '(position-eng-hnd-eng_ids' + '\t' + str(count) + '\t' + lst[0] + '\t' + lst[1] + '\t' +  each_lst[1].strip() + '\t' + lst[3].strip() + ')'
			count += 1
		elif 'NO PATH' in line:
			print line
