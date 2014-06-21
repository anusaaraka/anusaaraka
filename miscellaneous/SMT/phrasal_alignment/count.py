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
m_input = open(sys.argv[1],"r")
m_file  = m_input.readlines()
c_file = open(sys.argv[2], 'w')

#### Storing no: of times the keys occurring in match-value.txt 
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

for each in c_dic_file:
	lst = each.split('\t')
	if len(lst) == 3:
		c_dic_l.write(each)
	else:
		c_dic_l.write('%s\t%s\t%s\n' % (lst[0], lst[1], lst[2]))
		c_dic_l.write('%s\t%s\t%s\n' % (lst[0], lst[3], lst[4].strip()))

