import sys
import pdb

h_f = open(sys.argv[2])
hnd = h_f.read()
h_s = hnd[1:-2].split('_')

l_o = open(sys.argv[3], 'w')
l_o1 = open(sys.argv[4], 'w')

#ll = '_1_sUrya_2_se_3_kisI_4_graha_5_ko_6_milAne_7_vAlI_8_reKA_9_samAna_10_samaya_11_anwarAloM_12_meM_13_samAna_14_kRewraPala_15_prasarpa_16_karawI_17_hE_18_._19_'[1:-1].split('_')

def replace_str(List, Start_point, End_point):
	s_ind = 0
	e_ind = 0
	if  List.index(Start_point)  and  List.index(Start_point) % 2 == 0:
		s_ind = List.index(Start_point)
	if  List.index(End_point)  and  List.index(End_point) % 2 == 0:
		e_ind = List.index(End_point)
	if e_ind != 0:
		del[List[s_ind+1:e_ind-1]]
		List[s_ind+1] = 'REPLACED'
		return List

#print replace_str(ll, '3', '10')


align_dic = {}
new_sent = [] 
s_count = 1 
e_count = 0 
slots_filled = []

for line in open(sys.argv[1]):
	lst = line.strip().split('\t')
	k = lst[2]
	v = lst[3] + '\t' + lst[0] + '\t' + lst[1]
	if k not in align_dic:
		align_dic[k] = v 
	else:
		if len(align_dic[k]) < len(v) :
			align_dic[k] = v

for key in sorted(align_dic):
	v = align_dic[key].split('\t')
	print v[1] + '\t' + v[2] + '\t' + key + '\t' + v[0]
	h_key = v[0].split()
	if h_key[0] in h_s and h_key[1] in h_s:
		new_sent = replace_str(h_s, h_key[0], h_key[1])
		slots_filled.append(h_key[0])
		slots_filled.append(h_key[1])
#		print '&&', slots_filled, new_sent
		h_s = new_sent
	else:
		if h_key[0] not in h_s: #_intervals_of_time_	_samAna_samaya_anwarAloM_	15 18	9 12
			for i in range(0, len(slots_filled), 2):
				if int(h_key[0]) in range(int(slots_filled[i]), int(slots_filled[i+1])): 
					diff = int(slots_filled[i+1]) - int(h_key[0])
					h_key[0] = int(h_key[0]) + diff
		if h_key[1] not in h_s:  #_equation_	_samIkaraNa_meM_	5 6	3 5
			for i in range(0, len(slots_filled), 2):
				if int(h_key[1]) in range(int(slots_filled[i]), int(slots_filled[i+1])):
					diff =  int(h_key[1]) - int(slots_filled[i]) 
					h_key[1] = int(h_key[1]) - diff
#		print h_key[0], h_key[1], h_s
		new_sent = replace_str(h_s, str(h_key[0]), str(h_key[1]))
		h_s = new_sent


#To print left over words:
l_o.write('@Phrase_@level_@left_@over_@words::\t')
l_o1.write('@Phrase_@level_@left_@over_@words::\t')
for i in range(0, len(h_s)-1, 2):
	if h_s[i+1] != 'REPLACED':
		l_o.write( '%s %s %s ' % (h_s[i] , h_s[i+1], h_s[i+2]))
		l_o1.write( '%s ' %  h_s[i+1])
#print h_s
