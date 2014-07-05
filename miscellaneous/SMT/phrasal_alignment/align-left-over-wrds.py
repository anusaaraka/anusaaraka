import sys
hi_file = open(sys.argv[2], 'r')
hi_sent = hi_file.readlines()

left_over_file = open(sys.argv[3], 'r')
left_over = left_over_file.readlines()

left_file = open(sys.argv[4], 'r')
left = left_file.readlines()

al_left_file = open(sys.argv[5], 'w')

left_dic = {}
##Phrase level left over words:
count = 0
for each in left:
	if '(hindi_left_over_words	)' in each:
		left_dic[count] = ' '
		count +=1
	else:
		lst = each.split()
		left_dic[count] = lst[1:-1]
		count +=1

vib = ['baje', 'Bara_meM', 'iXara-uXara', 'kA', 'ke', 'ke_anxara', 'ke_bAhara', 'ke_bAre_meM', 'ke_bAxa', 'ke_bIca', 'ke_bIca_meM', 'ke_binA', 'ke_cAroM_ora', 'ke_jEsA', 'ke_kAraNa', 'ke_liye', 'ke_lie', 'ke_nAma_se', 'ke_nIce', 'ke_nikata', 'ke_pakRa_meM ', 'ke_pAsa', 'ke_pICe', 'ke_prawi_prema_ke_kAraNa', 'ke_samparka_meM', 'ke_sAWa', 'ke_Upara', 'ke_usa_pAra', 'ke_viRaya_meM', 'ke_viruxXa', 'ke_xOrAna', 'ke_xvArA', 'kI', 'kI_apekRA', 'kI_ora', 'kI_waraha', 'ko', 'lagaBaga', 'meM', 'meM_se', 'mqwyu_uparAnwa', 'ne', 'para', 'se', 'se_lagA_huA', 'se_pahale', 'vAlA', 'waka', 'xvArA']

verb_list = ['karawA', 'howA', 'karawI', 'howI', 'karawe', 'howe']

def del_item(Str, List):
        if Str in List:
                List.pop(List.index(Str))
        return List

def replace_item(Str, List):
	for index, item in enumerate(List):
		if Str == item:
			List[index] = 'REPLACED'
	return List  	
	
#sent_count = int(sys.argv[4])
align_dic = {}
flag = 0 
sent_count = 0
for line in open(sys.argv[1]):
	if '\t' in line:
		lst = line[:-2].split('\t') #(anu_id-anu_mng-man_mng	1	More	aXika)
		key = lst[1]
		val = lst[2] + '\t' + lst[3]
		align_dic[int(key)] = val
	if 'NO PATH' in line:
		print line.strip()
		flag = 1	

hi_s = hi_sent[sent_count]   #to use del_item function 0th sentence is checked outside.
hi_s_l = hi_s[1:-1].strip().split('_')
phrase_left_over_lst = left_dic[sent_count]
left_over_lst = left_over[sent_count]
left_lst = left_over_lst.strip().split('**,**')
new_lst = []
for key in sorted(align_dic):
	val = align_dic[key].split('\t')   #More	aXika
	phrase_len = len(phrase_left_over_lst)
	for index, item in enumerate(hi_s_l):
		for j in range(0, phrase_len):
			if phrase_left_over_lst[j] == item:
				if phrase_left_over_lst[j] in verb_list:
#					print '***', phrase_left_over_lst[j]
					if hi_s_l[index-1] == val[1]:
						v = val[0] + '\t' + val[1] + '_' + phrase_left_over_lst[j]
						align_dic[int(key)] = v
						new_lst.append(phrase_left_over_lst[j])
						replace_item(phrase_left_over_lst[j], phrase_left_over_lst)
				elif  phrase_left_over_lst[j] in vib:
#					print '***', phrase_left_over_lst[j]
					if hi_s_l[index-1] == val[1]:
						v = val[0] + '\t' + val[1] + '_' + phrase_left_over_lst[j]
						align_dic[int(key)] = v
#						print '###', key, v
						new_lst.append( phrase_left_over_lst[j])
						replace_item(phrase_left_over_lst[j], phrase_left_over_lst)
#		print  '%%%', phrase_left_over_lst
		word_len = len(left_lst)
		for i in range(0, word_len):
			if left_lst[i] == item:
				if left_lst[i] in vib:
					if hi_s_l[index-1] == val[1]:
						v = val[0] + '\t' + val[1] + '_' + left_lst[i]
						align_dic[int(key)] = v
#						print '$$$', key, v
						replace_item(left_lst[i], left_lst)
				else:
					if hi_s_l[index] == left_lst[i]:
						if  hi_s_l[index-1] == val[1]: 	  #Comparing with previous word in hindi sentence
								if val[1] == '-':
									tmp_v = align_dic[int(key-1)].split('\t')
									if  hi_s_l[index-2] == tmp_v[1]: #Comparing with two words previous in hindi sentence
										v = align_dic[key+1].split('\t')
										new_v = v[0] + '\t' +  left_lst[i]
										align_dic[int(key+1)] = new_v
#										print '@@@', key, new_v
										replace_item(left_lst[i], left_lst)
						else:
								val = align_dic[key].split('\t')
#								print '***', val
								if val[1] == '-':
									tmp_v = align_dic[int(key)].split('\t')
									if  hi_s_l[index-2] == tmp_v[1]: #Comparing with two words previous in hindi sentence
										v = align_dic[key+1].split('\t')
										new_v = v[0] + '\t' +  left_lst[i]
										align_dic[int(key+1)] = new_v
										replace_item(left_lst[i], left_lst)
								elif '_' in val[1]:
									v = val[1].split('_')
									if hi_s_l[index-1] == v[1] and hi_s_l[index-2] == v[0]:
#										print int(key+1), v[1], v[0]
										tmp_v = align_dic[int(key+1)].split('\t')
										if tmp_v[1] == '-':
											 new_v =  tmp_v[0] + '\t' + left_lst[i]
											 align_dic[int(key+1)] = new_v
											 replace_item(left_lst[i], left_lst)
										else:
											new_v = val[0] + '\t' +  val[1] + '_' + left_lst[i]
											align_dic[int(key)] = new_v
											replace_item(left_lst[i], left_lst)


	print '(anu_id-anu_mng-man_mng' + '\t' + str(key) + '\t' + align_dic[key] + ')'
al_left_file.write('After applying huristics:\n@phrase_left_@over_@words:::\t')
for each in phrase_left_over_lst:
	if each != 'REPLACED':
		al_left_file.write(' %s '  % each)
al_left_file.write('@word_left_@over_@words:::\t')
for each in left_lst:
	if each != 'REPLACED':
		al_left_file.write(' %s '  % each)
