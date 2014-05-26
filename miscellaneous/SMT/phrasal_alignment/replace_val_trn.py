#Programme written by Roja (22-03-14)
#This programme takes the shortest path generated from the graph along with the value matched in manual sentence.
#Thus aligment is done based on the shortest path.
#RUN:  python replace_val_trn.py  manual_file graph  match-value.txt > align_eng.txt 
#TODO:restricted words need to be enhanced.

import sys
h_input = open(sys.argv[1],"r")
hi_file = h_input.readlines()
g_input = open(sys.argv[2],"r")
g_file  = g_input.readlines()
m_input = open(sys.argv[3],"r")
m_file  = m_input.readlines()
sent_count=0
restricted_wrd = ['_a_', '_is_', '_the_', '_,_', 'with']

prev_key = ''
prev_line = ''
remaining_h_l=''
line = [] 
dic = {}
flag=0


for each in m_file:
	flag=0
	graph_out = g_file[sent_count]
	hi_sent = hi_file[sent_count]
	hi_sent_tmp = hi_sent[1:-2]
	hi_lst = hi_sent_tmp.split('_')
	new_line = graph_out[2:-3]
	lst = new_line.split("', '")
	if 'Construction mismatch\n' in graph_out:
		flag = 1	
	if ';~~~~~~~~~~\n' in each:
		for key in sorted(dic):
			v = dic[key].split()
			hnd = v[1][1:-1].split('_')
			for j in hnd:
				if j in hi_lst:
					for index, item in enumerate(hi_lst):
						if j == item:
                                                	del hi_lst[index]
		for key in sorted(dic):
			v = dic[key].split()
			if v[1] == '-':
				print "%s\t%s\t%s" % (v[0], str('/'.join(hi_lst)), key)
			else:
				print "%s\t%s" % (dic[key], key)
		if flag == 1:
			print "Construction mismatch"
		print ';~~~~~~~~~~'
		sent_count += 1
		dic = {}
	else:
		flag = 0
		match_lst = each.split()
		cur_key = match_lst[0]
		cur_line = each
		for i in range(0,len(lst)-1):
			if lst[i] == match_lst[2] and lst[i+1] == match_lst[3].strip():
				if match_lst[0] in restricted_wrd:
					left_k =  match_lst[2] + ' ' + match_lst[3]
					left_v = match_lst[0] + '	-' 
					remaining_h_l.join(match_lst[1])
					dic[left_k] = left_v
				elif match_lst[1] in hi_sent and match_lst[0] not in restricted_wrd:
#					print '&&&', prev_key, cur_key, len(prev_line), len(cur_line)
					if prev_key == cur_key and len(prev_line) >= len(cur_line):
						line = prev_line.strip()
					elif prev_key == cur_key and len(prev_line) < len(cur_line):
						line = cur_line.strip()
					else:
						line = each.strip()
					l = line.split()
					val = l[0] + '	' + l[1] 
					k = l[2] + ' ' + l[3]
					dic[k] = val
				else:
					dic[match_lst[0]] = match_lst[1]
	prev_key = match_lst[0] 
	prev_line = each
