#Programme written by Roja (11-04-13)
#This programme maps ids according to word ids.
#Punctuation doesn't get an id here.
#RUN: python mapping.py mapped.txt > mapped.txt1
#I/p: mapped.txt ( o/p of map-ids.py)
#O/p: mapped.txt1

import sys
punct_lst = [ ")", "(" , "$" , "," , "." , ":" , ";" "?", "!", "'", "=" , "\"" ,"\n" ]
count=0
new_ids_lst=[]
new_ids_str=''
for line in open(sys.argv[1]):
	if ';~~~~~~~~~~\n' in line:
		print line.strip()
		new_ids_lst=[]
		new_ids_str=''
		count=0
	elif 'Construction mismatch' in line:
		print line.strip()
	else:
		new_ids_lst=[]
		lst = line.split('\t')
		ids = lst[4][:-2].split()
		eng_lst = lst[2][1:-1].split('_')
		for i in range(0, len(eng_lst)):
			new_ids_str=''
			if eng_lst[i] in punct_lst:
				count=count+1
				ids[i] = int(ids[i]) - count
				new_ids_lst.append(ids[i])
			else:
				ids[i] = int(ids[i]) - count
				new_ids_lst.append(ids[i])
		new_ids_str = ' '.join(str(e) for e in new_ids_lst)
		print lst[0] + '\t' + lst[1] + '\t' + lst[2] + '\t' + lst[3] + '\t' + new_ids_str + ')'
		
	
