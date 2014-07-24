import sys
punct_lst = [ ")", "(" , "$" , "," , "." , ":" , ";" "?", "!", "'", "=" , "\"" ,"\n" ]
count=0

new_ids_lst=[]
new_ids_str = ''

for line in open(sys.argv[1]):
	if 'NO PATH' in line:
		print line.strip()
	else:
		new_ids_lst=[]
		lst = line.split('\t') #(position-eng-hnd-eng_ids    1   _More_precisely_,_a_   _aXika_yaWArWawA_se_,_@a_  1 2 3 4 1 6)
		ids = lst[4].split()
		eng_wrd_lst = lst[2][1:-1].split('_')
		for i in range(0, len(eng_wrd_lst)):
			if eng_wrd_lst[i] in punct_lst:
				count += 1
				ids[i] = int(ids[i]) - count
				new_ids_lst.append(ids[i])
			else:
				ids[i] = int(ids[i]) - count
				new_ids_lst.append(ids[i])
		new_ids_str = ' '.join(str(e) for e in new_ids_lst)
		print lst[0] + '\t' + lst[1] + '\t' + lst[2] + '\t' +  lst[3] + '\t' + new_ids_str + '\t' + lst[5].strip() 	
