#Programme written by Roja (17-04-14)
#This programme takes the shortest path generated from the graph along with the value matched in manual sentence.
#Aligment is done based on the shortest path.
#While aligning the aligned key and values are removed from english and hindi sentences.
#When count of the key is greater than one, the value of the key is matched with the left over words in the hindi sentence
#Picking the key-value pair when the value is exactly matched in the left over words.
#Thus alignment is done.
#If any words are left in english or in manual sentences then these are stored in left-over-words.txt
#RUN:: python get_phrase.py hnd graph match-value.txt align_eng.txt left-over-words.txt
#O/p : align_eng.dat		(alignment file)
#      left-over-words.dat	(words left in english or manual sentence are stored)       

import sys
h_input = open(sys.argv[1],"r")
hi_file = h_input.readlines()
s_input = open(sys.argv[2],"r")
s_file  = s_input.readlines()
m_input = open(sys.argv[3], 'r')
m_file  = m_input.readlines()

left_over = open(sys.argv[4], 'w')

#Function to delete an item. 
def del_item(Str, List):
        if Str in List:
                List.pop(List.index(Str))
	return List

def longest_str(pre_key, pre_val, cur_key, cur_val, longest_line):
	if pre_key == cur_key:
		if len(pre_val) >= len(cur_val):
			longest_line =  pre_val
			pre_val = pre_val
		else:
			longest_line = cur_val
			pre_val = cur_val
		pre_key = cur_key
		return longest_line

#def replace_item(Str, List):
#	for index, item in enumerate(List):
#		if Str == item:
#			List[index] = 'REPLACED'
#	return List

sent_count = 0
flag = 0
align_dic = {} 

pre_key = ''
cur_key = ''
pre_val = ''
cur_val = ''
longest_line = ''
hi_sent = hi_file[0]   #to use del_item function 0th sentence is checked outside.
hi_sent_tmp = hi_sent[1:-2].strip()
hi_lst = hi_sent_tmp.split('_')
flag1 = 0 
for line in s_file:
	if 'NO' in line:
		s_lst = line.split('\t')
		if int(s_lst[1]) == 1  and s_lst[2].strip() == 'NO':
			flag1 = 1
	else:
		flag1 = 0
		s_lst = line.split('\t')
		for each_count in m_file:
			flag = 0
			lst = each_count.strip().split()
#			print s_lst[1] , s_lst[2].strip(), lst[0]
			if int(s_lst[1]) == 1 and s_lst[2].strip() == lst[0]:
				key = lst[2]  
				val = lst[3] + '\t' + lst[4] + '\t' + lst[5] + '\t' + lst[0] + '\t' + lst[1]
				align_dic[int(key)] = val
#				print '###', lst[0] + '\t' + lst[1] + '\t' + lst[2] + ' ' + lst[3]
				aligned_hnd = lst[1][1:-1].split('_')
#				print aligned_hnd 
				for j in aligned_hnd:
					del_item(j, hi_lst)
			else:
				flag = 0 
				if int(s_lst[1]) >= 1 and s_lst[2].strip() == lst[0]:
					hindi_phrase = lst[1][1:-1].split('_')
					for item in hindi_phrase:
						if item in hi_lst:
							flag = 1
						else:
							flag = 0
						if flag == 1:
							key = lst[2] + ' '  + lst[3]
							val = lst[4] + '\t' + lst[5] + '\t' + lst[0] + '\t' + lst[1]
							new_k = key.split()
							if int(new_k[0]) not in align_dic.keys():
                        	                	        v = new_k[1] + '\t' + val
                                	                	align_dic[int(new_k[0])] = v
#								print '%%', new_k[0]
								aligned_hnd = lst[1][1:-1].split('_')
#								print aligned_hnd 
	                                        		for j in aligned_hnd:
        		                                       		del_item(j, hi_lst)
							else:
								cur_key = key
								cur_val = val
								if pre_key == cur_key:
									longest_str(pre_key, pre_val, cur_key, cur_val, longest_line)
									pre_key = cur_key
									pre_val = longest_line
									pre_val = cur_val
								pre_key = cur_key
								pre_val = cur_val
								k = pre_key.split()
#								print '&&', k
								v = k[1] + '\t' + pre_val 
								align_dic[int(k[0])] = v
#								print '%%%', k[0], v 
								if len(pre_val) > 1:
									v = pre_val.split('\t')
									aligned_hnd = v[1][1:-1].split('_')
#									print aligned_hnd 
									for j in aligned_hnd:
	        		        	                               	del_item(j, hi_lst)
##						print '@@@', lst[0] + '\t' + lst[1] + '\t' + lst[2] + ' ' + lst[3]

if flag1 == 1:
	left_over.write("(hindi_left_over_words\tNO PATH)\n");
	print 'NO PATH'
else:
	for key in sorted(align_dic):
		v = align_dic[key].split('\t')
		print v[3] + '\t' + v[4] + '\t' + str(key) + ' ' + v[0] + '\t' + v[1]  + ' ' + v[2]
	left_over.write("(hindi_left_over_words\t%s" % ' '.join(hi_lst))
	left_over.write(")")
