#This program removes duplicate meanings from the meaning list
#Written by Sukhada (12-2-12)
#To run: python remove_dup_entry_frm_IITB_nd_Shabda.py INPUT_FILE >OUTPUT_FILE

import sys
for line in open(sys.argv[1]):
	lst = line.split()
#	lst1= lst.split    
	wrd_lst = lst[1].split('/')
	new_lst = []
	for wrd in wrd_lst:
		if wrd not in new_lst:
			new_lst.append(wrd)
	my_wrd_lst = ''
	for each in new_lst:
		my_wrd_lst = my_wrd_lst + '/' + each
	mng = my_wrd_lst[1:]
	my_mng = lst[0] + '\t' + mng
	print my_mng
