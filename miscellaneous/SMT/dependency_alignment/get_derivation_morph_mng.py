#Programme to get derivational morph info
import sys
import gdbm 

dbm =  gdbm.open(sys.argv[1], 'r')

#dic = {}
derivational_dic = {}

	
def unique_mng(mng):
	new_lst = []
	lst = mng.split('/')
	for i in range(0, len(lst)):
		if lst[i] not in new_lst:
			new_lst.append(lst[i])
	return '/'.join(new_lst)
		
		

#To get derivational morph dic
for line in open(sys.argv[2]):
	lst = line.strip().split(' - ')
	wrd = lst[0]
	derivational_lst = lst[1].split(',')
	for i in range(0, len(derivational_lst)):
		#new_key =  derivational_lst[i] + '_' + 'noun'
		new_key =  derivational_lst[i] 
		if new_key in dbm:
			val = dbm[new_key];
			new_val = unique_mng(val)
			if wrd not in derivational_dic:
				derivational_dic[wrd] = new_val
			else:
				new_val = derivational_dic[wrd] + '/' + val
				new_vals = unique_mng(new_val)
				derivational_dic[wrd] = new_vals
#		else:
#			derivational_dic[wrd] = 'Word not found'

#To print derivational morph dic
for key in sorted(derivational_dic):
	print key + '\t' + derivational_dic[key]
