#Programme written by Roja (11-04-13)
#This programme maps ids according to word ids.
#Punctuation doesn't get an id here.
#RUN: python mapping.py mapped.txt > mapped.txt1
#I/p: wrd-to-wrd.txt ( o/p of  gdbm-fetch.py)
#O/p: mapped.txt1

import sys
#punct_lst = [ ")", "(" , "$" , "," , "." , ":" , ";" "?", "!", "'", "=" , "\"" ,"\n" ]
punct_lst = [ ")", "(" , "," , "." , ":" , ";" ,  "?", "!", "'", "\"" , "{", "}", "[", "]", "\n" ]
count=0
new_ids_lst=[]
new_ids_str=''
for line in open(sys.argv[1]):
	if 'NO PATH' in line:
		print line.strip()
	else:
		new_ids_lst=[]
		lst = line.split('\t') #(anu_id-anu_mng-man_mng         1       More    aXika)
		ids = lst[1]
		eng_lst = lst[2]
		new_ids_str=''
		if eng_lst in punct_lst:
			count=count+1
			ids = int(ids) - count
			new_ids_lst.append(ids)
		else:
			ids = int(ids) - count
			new_ids_lst.append(ids)
		new_ids_str = ' '.join(str(e) for e in new_ids_lst)
		print lst[0] + '\t' + new_ids_str + '\t' + lst[2] + '\t' + lst[3].strip()
