#Program written by Roja (21-03-14)
#RUN: python match_value_in_hnd.py  hnd  key-val.dat graph_input eng_tok_org graph_output english_left_over.dat > match-value.dat

#Algorithm::
#For a given key-value, if value is present in the manual translation then pick that key-value pair.
#Each such key-value pairs are sent as an input to short.py 
#short.py programe is used to generate the shortest path for a given sentence.
#Creating graph format and generating graph related code and delete_item function written by Sukhada.


import sys
from short import shortest_path
from short import bfs

h_input = open(sys.argv[1],"r")
hi_file = h_input.readlines()
g_file = open(sys.argv[5], "w")
e_input =  open(sys.argv[4],"r")
e_file = e_input.readlines()
sent_count=0
graph_dict = {}
e_k=[]
index = ''
graph_file = open(sys.argv[3], "w")

#Function to delete an item. 
def del_item(Str, List):
	if Str in List:
		List.pop(List.index(Str))
	return List

e_sent = e_file[sent_count]
e_lst = e_sent.split()

for line in open(sys.argv[2]): #argv[2] is dictionary
	hi_sent = hi_file[sent_count]
	lst=line.split('\t')
	if '/' in lst[1]:
		hnd_mng=lst[1].split('/')
		for i in hnd_mng:
			if i in hi_sent:
				print lst[0], i, lst[2].strip(), lst[3].strip()
				eng_phrase_lst = lst[0][1:-1].split('_')
				for i in eng_phrase_lst:
					del_item(i, e_lst) 
				e_k.append(lst[0])
				start_pos = lst[2].strip()
				#start_pos = int(lst[2].strip())
				if start_pos in graph_dict.keys():
					val = graph_dict[start_pos]
					if lst[3].strip() not in val:
						val.append(lst[3].strip())
						graph_dict[start_pos] = val
				else:
					graph_dict[start_pos] = [lst[3].strip()]
	else:
		hnd_mng=lst[1].strip()
		if hnd_mng in hi_sent:
			print lst[0], hnd_mng, lst[2].strip(), lst[3].strip()
			eng_phrase_lst = lst[0][1:-1].split('_')
			for i in eng_phrase_lst:
				del_item(i, e_lst)
			e_k.append(lst[0])
			graph_dict[lst[2].strip()] = [lst[3].strip()]
	if 'Word not found' not in line:
		index = lst[3].strip()

#Print graph
graph_file.write('%s' % graph_dict)
graph_file.write("\n")
#Get shortest path
try:
	graph_output = shortest_path(graph_dict, '1', index)
	g_file.write(str(graph_output) + "\n")
except:
	g_file.write("NO PATH\n")


### Printing english left over words:
### If NO PATH then english words are left
english_left = open(sys.argv[6], 'w')
english_left.write('English_left_over_words:::\t')

for i in e_lst:
	english_left.write('%s ' % i)

english_left.write('\n')
english_left.close()
