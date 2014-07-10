#python gdbm-fetch.py Word-to-Word-dict.txt  mapped.txt
import sys
left_over = open(sys.argv[4], 'w')
hi_file = open(sys.argv[3], 'r')
hi_sent = hi_file.read()
sent_count = 0
###Function to delete an item from a list
###Below Function written by Sukhada
def del_item(Str, List):
        if Str in List:
                List.pop(List.index(Str))
        return List


e_h_w_dict = {}
for line in open(sys.argv[1]):
    lst = line.split('\t')
    e_h_w_dict[lst[0]] = lst[1].strip()
hi_lst = []
new_hi_lst = []
align_dic = {}
new_left_lst = []
flag = 0 
hi_s_l = hi_sent[1:-2].split('_')

def replace_item(Str, List):
	for index, item in enumerate(List):
		if Str == item:
			List[index] = 'REPLACED'
	return List

for line in open(sys.argv[2]):
        if 'NO PATH' in line:
		flag = 1
	else:
		flag = 0
		k = line.split('\t') #(position-eng-hnd-eng_ids	1	_More_precisely_,_a_	_aXika_yaWArWawA_se_,_@a_	1 2 2 3)
		eng_lst = k[2][1:-1].split('_')
		key = k[2] + k[3]
#		ids = k[4][:-2].split()        #to get ids
		ids = k[4].split()        #to get ids
		h_id = k[5][:-2].split()
#		hi_lst.append(k[3].split('_')[1:-1])
		hi_lst = k[3].split('_')[1:-1]
		new_hi_lst = k[3].split('_')[1:-1]
		for keys in e_h_w_dict.keys():
			if key == keys:
				val = e_h_w_dict[keys].split(',*SUKH*')#More***0 =EQ= aXika,*SUKH* precisely***1 =EQ= yaWArWawA,*SUKH* ,***2 =EQ= ,,*SUKH* a***3 =EQ= @a,*SUKH*
				del val[-1]
				for i in range(0, len(val)):
					eng_key_val = val[i].strip().split(' =EQ= ')
					if '_' in eng_key_val[0]:
						new_key = eng_key_val[0].split('_')
						for k in range(0, len(new_key)):
							pos = new_key[k].split('***')
							if k == len(new_key)-1:
								v = pos[0] +  '\t' +  eng_key_val[1] 
								align_dic[int(ids[int(pos[1])])] = v
#								print eng_key_val[1]
								del_item(eng_key_val[1], hi_lst)
							else:
								v = pos[0] +  '\t' +  '-' 
								align_dic[int(ids[int(pos[1])])] =  v 

					else:
						pos = eng_key_val[0].split('***')
						v = pos[0] + '\t' + eng_key_val[1] 
						align_dic[int(ids[int(pos[1])])] =  v
#						print '#######', eng_key_val[1]


if flag == 1:
	print '(eng-hnd-eng_ids NO PATH)'
	left_over.write('NO PATH');
	align_dic = {}
	flag = 0
else:
	for key in sorted(align_dic):
#		print key, '==============',  align_dic[key]
		v = align_dic[key].split('\t')
		if '####' in v[1]:
			print  '(anu_id-anu_mng-man_mng ' + '\t' + str(key) + '\t' + v[0] + '\t' +  '-'  +  ')'
		else:
			print  '(anu_id-anu_mng-man_mng ' + '\t' + str(key) + '\t' +  v[0] + '\t' + v[1] +  ')'
		if '_' in v[1]:
			new_v = v[1].split('_')
			for i in range(0, len(new_v)):
				if new_v[i] in hi_s_l:
					new_left_lst.append(new_v[i])
		else:
			if v[1] in hi_s_l:
				new_left_lst.append(v[1])
	for j in range(0, len(new_left_lst)):
		if new_left_lst[j] in hi_s_l:
			replace_item(new_left_lst[j], hi_s_l);
#	print hi_s_l
	for k in  range(0, len(hi_s_l)-1, 2):
		if hi_s_l[k+1] != 'REPLACED':
			left_over.write('%s %s %s**,**' %   (hi_s_l[k] , hi_s_l[k+1],  hi_s_l[k+2]))
	left_over.write('\n')
