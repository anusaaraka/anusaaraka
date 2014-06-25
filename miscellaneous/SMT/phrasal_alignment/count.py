#Programme written by Roja (17-04-14)
#This programme takes the shortest path values generated from the graph
#RUN: python count.py shortest-path-value.dat count_dict.dat  count_dict_with_length.dat 
#In 'count_dict.txt' no: of times key is repeated is stored.
#In 'count_dict_with_length.dat' length of the phrase is stored along with information in 'count_dict.txt'

import sys
m_input = open(sys.argv[1],"r")
m_file  = m_input.readlines()
c_file = open(sys.argv[2], 'w')

#### Storing no: of times keys occurring in shortest-path-value.dat
dic = {}
new_dic1 = {}
for line in m_file:
	lst = line.split()
	if lst[0] not in dic:
		dic[lst[0]] = 1 
	else:
		dic[lst[0]] = 	dic[lst[0]] + 1


for key in sorted(dic):
	if len(key) not in new_dic1.keys():
		v = str(dic[key]) + '\t' +  key
		new_dic1[int(len(key))] = v
	else:
		v = new_dic1[int(len(key))] + '\t' +  str(dic[key]) + '\t' +  key
		new_dic1[int(len(key))] =  v


for each in new_dic1:
	c_file.write('%s\t%s\n' % (each, new_dic1[each]))

c_file.close()


c_dic = open(sys.argv[2], 'r')
c_dic_file  = c_dic.readlines()

c_dic_l = open(sys.argv[3], 'w')

#Storing each phrase with its length and no: of times the phrase occurs
for each in c_dic_file:
	lst = each.split('\t')
	if len(lst) == 3:
		c_dic_l.write(each)
	else:
		for i in range(0, len(lst)-1, 2):
			c_dic_l.write('%s\t%s\t%s\n' % (lst[0], lst[i+1], lst[i+2].strip()))
