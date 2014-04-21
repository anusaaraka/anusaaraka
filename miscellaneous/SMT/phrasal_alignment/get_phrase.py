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
g_input = open(sys.argv[2],"r")
g_file  = g_input.readlines()
m_input = open(sys.argv[3],"r")
m_file  = m_input.readlines()
a_out   = open(sys.argv[4],"w")

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
left_over = open(sys.argv[5], 'w')
sent_count = 0
flag = 0 
align_dic = {}
tmp_dic = {}
eng_key_lst = []
for line in m_file:
	graph_out = g_file[sent_count]  #picking graph o/p based on sentence no:
        hi_sent = hi_file[sent_count]   #picking manual sentence based on sentence no:
        hi_sent_tmp = hi_sent[1:-2].strip()
        hi_lst = hi_sent_tmp.split('_')
        new_line = graph_out[2:-3]
        g_lst = new_line.split("', '")
        if 'Construction mismatch' in graph_out:
                flag = 1
	if ';~~~~~~~~~~\n' in line:
		if flag == 1:
                        a_out.write("Construction mismatch\n")
		for key in sorted(align_dic):
			hnd = align_dic[key][1:-1].split('_')
#			print hnd, hi_lst, len(hnd)
			eng = key.split()
                        for j in hnd:
                                if j in hi_lst:
                                        for index, item in enumerate(hi_lst):
                                                if j == item:
                                                        del hi_lst[index]
							break
			for k in eng:
                                if k in eng_key_lst:
                                        for index, item in enumerate(eng_key_lst):
                                                if k == item:
                                                        del eng_key_lst[index]
							break
		for each_count in c_dic_file:
			if ';~~~~~~~~~~\n' in each_count:
                        	pass
			else:
				c_lst = each_count.strip().split('\t')
				for i in range(0, len(eng_key_lst)):
					for each_key in tmp_dic.keys():
						l = tmp_dic[each_key].split()
						if l[0] == eng_key_lst[i] and eng_key_lst[i] == c_lst[0] and int(c_lst[1]) > 1:
							val = l[1].split('/')
							for each_val in range(0, len(val)):
								if  val[each_val][1:-1] in hi_lst:
#									print eng_key_lst[i], val[each_val], each_key
									v = eng_key_lst[i] + '\t' + val[each_val]
									align_dic[each_key] = v
						                        if val[each_val][1:-1] in hi_lst:
						                        	for index, item in enumerate(hi_lst):
                                                					if val[each_val][1:-1] == item:
						                                        	del hi_lst[index]
                                                						break 
		for key in sorted(align_dic):			
			a_out.write(align_dic[key] + '\t' +  key + '\n')
                a_out.write(line)
		sent_count += 1
		align_dic = {}
		tmp_dic = {}
		eng_key_lst = []
		flag = 0 
		left_over.write('(english_left_over_wrds\t%s)\n(hindi_left_over_words\t%s)\n' % (' '.join(eng_key_lst), ' '.join(hi_lst)))
		left_over.write(';~~~~~~~~~~\n')
	else:
		for i in range(0,len(g_lst)-1):
			lst = line.split()
			if g_lst[i] == lst[2] and g_lst[i+1] == lst[3].strip():
				k = lst[2] + ' ' + lst[3]
				v = lst[0] + '\t' + lst[1] 
				if k in tmp_dic.keys():
					val = tmp_dic[k]
					if v not in val:
		        	                val = val + '/' + lst[1]
						v = val
                			        tmp_dic[k] = v
				else:
					tmp_dic[k] = v
				if lst[0] not in eng_key_lst:
			        	eng_key_lst.append(lst[0])
				for each_count in c_dic_file:
					if ';~~~~~~~~~~\n' in each_count:
						pass
					else:
						c_lst = each_count.strip().split('\t')
						if lst[0] == c_lst[0] and int(c_lst[1]) == 1:
							v = lst[0] + '\t' + lst[1]
							k = lst[2] + ' ' + lst[3]
							align_dic[k] = v
	
