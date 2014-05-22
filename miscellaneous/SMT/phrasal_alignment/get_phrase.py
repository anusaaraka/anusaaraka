#Programme written by Roja (17-04-14)
#This programme takes the shortest path generated from the graph along with the value matched in manual sentence.
#Aligment is done based on the shortest path.
#In 'count_dict.txt' no: of times key is repeated is stored.
#If count of the key is 1 then, aligning them first.
#While aligning the aligned key and values are removed from english and hindi sentences.
#When count of the key is greater than one, the value of the key is matched with the left over words in the hindi sentence
#Picking the key-value pair when the value is exactly matched in the left over words.
#Thus alignment is done.
#If any words are left in english or in manual sentences then these are stored in left-over-words.txt
#RUN:: python get_phrase.py hnd graph match-value.txt align_eng.txt left-over-words.txt
#O/p : align_eng.txt		(alignment file)
#      left-over-words.txt	(words left in english or manual sentence are stored)       

import sys
h_input = open(sys.argv[1],"r")
hi_file = h_input.readlines()
m_input = open(sys.argv[2],"r")
m_file  = m_input.readlines()
a_out   = open(sys.argv[3],"w")

c_file = open('count_dict.txt', 'w')

#### Storing no: of times the keys occurring in match-value.txt 
dic = {}
for line in m_file:
	if ';~~~~~~~~~~\n' in line:
		for key in sorted(dic):
			c_file.write('%s\t%s\n' % (key, dic[key]))
		c_file.write(line)
		dic = {}
	else:
		lst = line.split()
		if lst[0] not in dic:
			dic[lst[0]] = 1 
		else:
			dic[lst[0]] = 	dic[lst[0]] + 1

c_file.close()

c_dic = open('count_dict.txt', 'r')
c_dic_file  = c_dic.readlines()
left_over = open(sys.argv[3], 'w')

#Function to delete an item. 
def del_item(Str, List):
        if Str in List:
                List.pop(List.index(Str))
        return List


sent_count = 0
flag = 0
align_dic = {} 

pre_key = ''
cur_key = ''
pre_val = ''
cur_val = ''
new_val = ''
hi_sent = hi_file[0]   #to use del_item function 0th sentence is checked outside.
hi_sent_tmp = hi_sent[1:-2].strip()
hi_lst = hi_sent_tmp.split('_')
for line in m_file:
	if 'Construction mismatch' in line:
		print line.strip()
	elif ';~~~~~~~~~~\n' in line :
		for key in sorted(align_dic):
			v = align_dic[key].split('\t')
			print v[1] + '\t' + v[2] + '\t' + str(key) + ' ' + v[0]
                print line.strip()
		left_over.write("(hindi_left_over_words\t%s" % ' '.join(hi_lst))
		left_over.write(")\n;~~~~~~~~~~\n")
		align_dic = {}
		if sent_count < len(hi_file)-1:
			sent_count += 1
			hi_sent = hi_file[sent_count]   #picking manual sentence based on sentence no:
			hi_sent_tmp = hi_sent[1:-2].strip()
			hi_lst = hi_sent_tmp.split('_')
	else:
		lst = line.split()
		for each_count in c_dic_file:
			if ';~~~~~~~~~~\n' in each_count:
				pass
			else:
				flag = 0
				c_lst = each_count.strip().split('\t')
				if int(c_lst[1]) == 1 and c_lst[0] == lst[0]:
					key = lst[2]  
					val = lst[3] + '\t' + lst[0] + '\t' + lst[1]
					align_dic[int(key)] = val
#					print '###', lst[0] + '\t' + lst[1] + '\t' + lst[2] + ' ' + lst[3]
					aligned_hnd = lst[1].split('_')
					for j in aligned_hnd:
						del_item(j, hi_lst)	
				elif int(c_lst[1]) >= 1 and c_lst[0] == lst[0]:
					hindi_phrase = lst[1][1:-1].split('_')
					for item in hindi_phrase:
						if item in hi_lst:
							flag = 1
						else:
							flag = 0
					if flag == 1:
						key = lst[2] + ' '  + lst[3]
						val = lst[0] + '\t' + lst[1]
						if key not in align_dic:
							k = key.split()
                                                        v = k[1] + '\t' + val
                                                        align_dic[int(k[0])] = v
#							print '&&&', k[0], v
							aligned_hnd = lst[1].split('_')
	                                        	for j in aligned_hnd:
        	                                        	del_item(j, hi_lst)
						else:
							cur_key = key
							cur_val = val
							if pre_key == cur_key:
								if len(pre_val) >= len(cur_val):
									new_val = pre_val
								else:
									new_val = cur_val
							pre_key = cur_key
							pre_val = cur_val
							k = pre_key.split()
							v = k[1] + '\t' + new_val
							align_dic[int(k)] = v
#							print '@@@', k[0], v
							if len(new_val) > 1:
								v = new_val.split('\t')
								aligned_hnd = v[1].split('_')
								for j in aligned_hnd:
        		                                        	del_item(j, hi_lst)
#						print '@@@', lst[0] + '\t' + lst[1] + '\t' + lst[2] + ' ' + lst[3]
