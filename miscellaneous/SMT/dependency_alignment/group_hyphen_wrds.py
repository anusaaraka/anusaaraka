#Written by Roja(01-03-16)
#Programme to group hyphenated words.
#ilparser splits hyphenated words. Ex: #xina - rAwa
#Grouping splitted hyphenated words . Ex: #xina-rAwa  and storing information of the head.
#RUN: python group_hyphen_wrds.py  conLL_input > conLL_output
##############################################################################################
import sys

f = open(sys.argv[1], 'r')
fr = f.readlines()

dic = {}
map_dic = {}
count = 0
flag = 0 
grouped_id_lst = []

for i in range(0, len(fr)):
	flag = 0
	if fr[i] == '\n':
		for key in sorted(map_dic):
			val = map_dic[key].split('\t')
			if key in dic:
				if int(val[6]) in dic: #maksvela-samIkaraNa
					print str(dic[key])  + '\t' + val[1] + '\t' +  val[2] + '\t' +  val[3] + '\t' +  val[4] + '\t' + val[5] + '\t' + str(dic[int(val[6])]) + '\t' +  val[7] + '\t' + val[8] + '\t' + val[9]
				else:
					print str(dic[key])  + '\t' + val[1] + '\t' +  val[2] + '\t' +  val[3] + '\t' +  val[4] + '\t' + val[5] + '\t' + val[6] + '\t' +  val[7] + '\t' + val[8] + '\t' + val[9]	
		print fr[i].strip()
		dic = {}
		map_dic = {}
		grouped_id_lst = []
		count = 0 
	else:
		lst = fr[i].strip().split('\t')
		prev_lst = fr[i-1].strip().split('\t')
		if fr[i+1] != '\n':
			nxt_lst = fr[i+1].strip().split('\t')
		if lst[1] != '-'  and  nxt_lst[1] != '-':
			if int(lst[0]) not in dic and lst[0] not in grouped_id_lst:
				dic[int(lst[0])] = int(lst[0]) - count
				map_dic[int(lst[0])] = '\t'.join(lst)
		elif lst[1] == '-':
			if prev_lst[6] == nxt_lst[0]:  #xina - rAwa
				count += 2
				dic[int(nxt_lst[0])] = int(nxt_lst[0]) - count
				wrd = prev_lst[1] + lst[1] + nxt_lst[1]
				root = prev_lst[2] + lst[1] + nxt_lst[2]
				nxt_lst[1] = wrd
				nxt_lst[2] = root
				map_dic[int(nxt_lst[0])] = '\t'.join(nxt_lst)
				grouped_id_lst.append(prev_lst[0])
			elif prev_lst[0] == nxt_lst[6] :
				if int(prev_lst[0]) == 1:
					dic[int(prev_lst[0])] = int(prev_lst[0]) #kaBI - kaBI
				else:
					dic[int(prev_lst[0])] = int(prev_lst[0]) - count #yaxA - kaxA 
				wrd = prev_lst[1] + lst[1] + nxt_lst[1]
				root = prev_lst[2] + lst[1] + nxt_lst[2]
				prev_lst[1] = wrd
				prev_lst[2] = root
				map_dic[int(prev_lst[0])] = '\t'.join(prev_lst)
				grouped_id_lst.append(nxt_lst[0])
				count += 2
			elif lst[0] == prev_lst[6] and lst[0] == nxt_lst[6]: #jEse - jEse
				count += 1   #here '-' is head so decreasing count only 1 to get prev id
				dic[int(lst[0])] = int(lst[0]) - count
				wrd = prev_lst[1] + lst[1] + nxt_lst[1]
				root = prev_lst[2] + lst[1] + nxt_lst[2]
				lst[1] = wrd
				lst[2] = root
				map_dic[int(lst[0])] = '\t'.join(lst)
				grouped_id_lst.append(prev_lst[0])
				grouped_id_lst.append(nxt_lst[0])
				count += 1 #as we decrease two ids so increamenting count again.
			else:# hE - samAna
				dic[int(prev_lst[0])] = int(prev_lst[0]) - count
				map_dic[int(prev_lst[0])] = '\t'.join(prev_lst)
				dic[int(lst[0])] = int(lst[0]) - count
				map_dic[int(lst[0])] = '\t'.join(lst)
			
			
