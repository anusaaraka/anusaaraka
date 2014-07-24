#Programe written by Roja (10-04-14)
#This programme maps a group alignment to word to word alignment.
#RUN: python map-wrd-to-wrd.py  mapped.txt1 w-w-phrase_dict >  wrd-to-wrd.txt
#I/p1: mapped.txt1 (O/p of mapping.py)
#I/p2: w-w-phrase_dict  (word to word alignment extracted from phrase table)
#O/p:  wrd-to-wrd.txt

import sys
d = open(sys.argv[2], "r")
df= d.readlines()
count = 0
dic = {}
 
for line in open(sys.argv[1]):
	lst = line.split('\t') #Ex: (position-eng-hnd-eng_ids	1	_More_precisely_,_a_	_aXika_yaWArWawA_se_,_@a_	1 2 2 3)
	if ';~~~~~~~~~~\n' in line:
		print line.strip()
	elif 'NO PATH' in line:
		print line.strip()
	else:
		for item in df:
			each  = item.split('\t') #_More_precisely_,_a_	_aXika_yaWArWawA_,_@a_	_aXika_yaWArWawA_se_,_@a_
			ids = lst[4][:-2].split()
			if lst[2] == each[0] and lst[3] == each[2].strip():
#				print lst[2], lst[3], each[0], each[2].strip()
				key=lst[2][1:-1].split('_')
				hnd_key=each[1][1:-1].split('_')
				group_lst = lst[3][1:-1].split('_')
				gr_lst = lst[3][1:-1].split('_')
#				print '####################', key, hnd_key, group_lst, len(key), len(hnd_key), len(group_lst)
				if len(key) == len(hnd_key) and len(key) == len(group_lst):
#					print '####################', line.strip()
					for i in range(0, len(key)):
						if hnd_key[i] == '#####':
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], '-' + ')'
						else:
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], hnd_key[i] + ')'
				elif len(key) == len(hnd_key) and len(key) != len(group_lst): #Ex: to add 'se' to the previous word
					for k in hnd_key:
		                                if k in group_lst:
		                                        for index, item in enumerate(group_lst):
		                                                if k == item:
		                                                        del group_lst[index]
                		                                        break
					for each in group_lst:
						for index, item in enumerate(gr_lst):
							if each == item:
								for i in range(0, len(hnd_key)):
									if gr_lst[index-1] == hnd_key[i]:
										hnd_key[i] =  gr_lst[index-1] + '_' + gr_lst[index] 
					for i in range(0, len(key)):
						if hnd_key[i] == '#####':
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], '-' + ')'
						else:
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], hnd_key[i] + ')'
								
				else: #Ex: employing_Newton's_second_law_of_motion
#					print '++++++++++++++++++++', line.strip()
					count=0
					for i in range(0, len(key)):
                                                if hnd_key[i+count] == '#####':
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], '-' + ')'
						elif "'s" in key[i]:
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], hnd_key[i+count] + '_' + hnd_key[i+1+count] + ')'
							count=count+1
						else:
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], hnd_key[i+count] + ')'
