import sys

count = 1 
new_str = ''
for line in open(sys.argv[1]):
	lst = line[1:-1].strip().split('_')
	for each in lst:
		new_str = new_str + '_' + str(count) + '_' + each
		count +=1
	print new_str

