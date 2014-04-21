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
for line in open(sys.argv[1]):
	lst = line.split('\t')
	if ';~~~~~~~~~~\n' in line:
		print line.strip()
	elif 'Construction mismatch' in line:
		print line.strip()
	else:
		for item in df:
			each  = item.split('\t')
			ids = lst[4][:-2].split()
			if lst[2] == each[0] and lst[3] == each[2].strip():
				key=lst[2][1:-1].split('_')
				hnd_key=each[1][1:-1].split('_')
				if len(key) == len(hnd_key):
			#		print '####################', line.strip()
					for i in range(0, len(key)):
						if hnd_key[i] == '#####':
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], '-' + ')'
						else:
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], hnd_key[i] + ')'
				else: #Ex: employing_Newton's_second_law_of_motion
			#		print '++++++++++++++++++++', line.strip()
					count=0
					for i in range(0, len(key)):
                                                if hnd_key[i+count] == '#####':
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], '-' + ')'
						elif "'s" in key[i]:
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], hnd_key[i+count] + '_' + hnd_key[i+1+count] + ')'
							count=count+1
						else:
							print '(anu_id-anu_mng-man_mng ' + ids[i], key[i], hnd_key[i+count] + ')'
	
