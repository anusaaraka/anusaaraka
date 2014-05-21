#Program written by Roja (21-03-14)
#For a given key-value, if value is present in the manual translation then pick that key-value pair.
#Each such key-value pairs are sent as an input to short.py 
#short.py programe is used to generate the shortest path for a given sentence.
#Creating graph format and generating graph related code written by Sukhada.
#RUN: python match_value_in_hnd.py  manual_file  key-val.txt graph eng_file > match-value.txt 

import sys
import networkx as nx
from short import shortest_path
from short import bfs

MG = nx.MultiGraph()

h_input = open(sys.argv[1],"r")
hi_file = h_input.readlines()
g_file = open(sys.argv[3], "w")
e_input =  open(sys.argv[4],"r")
e_file = e_input.readlines()
sent_count=0
pre_line = ''
cur_line = ''
graph_dict = {}
multi_graph = [] 
multi_graph_file = open("multi-graph-inp", "w")
multi_graph_file.write("MG.add_weighted_edges_from([");
e_k=[]
graph_file = open("graph_err", "w")

for line in open(sys.argv[2]): #argv[2] is dictionary
	hi_sent = hi_file[sent_count]
	e_sent = e_file[sent_count]
        e_lst = e_sent.split()
	pre_line = cur_line
	cur_line = line
	if ';~~~~~~~~~~\n' == line:
		k_v_index = pre_line.split()
		graph_file.write('%s' % graph_dict)
		graph_file.write("\n")
		try:
				graph_output = shortest_path(graph_dict, '1', k_v_index[-1])
				g_file.write(str(graph_output) + "\n")
		except:
				g_file.write("Construction mismatch\n")
		graph_dict = {}
		e_k=[]
                sent_count += 1
		multi_graph_file.write("])");
		GG=nx.Graph()
		for n,nbrs in MG.adjacency_iter():
			for nbr,edict in nbrs.items():
				minvalue=min([d['weight'] for d in edict.values() ])
				GG.add_edge(n,nbr, weight = minvalue)
#		print(nx.shortest_path(GG,1,6))
		multi_graph_file.write("\n;~~~~~~~~~~\n")
		multi_graph_file.write("MG.add_weighted_edges_from([");
		print ';~~~~~~~~~~';
	else:
		lst=line.split('\t')
		if '/' in lst[1]:
			hnd_mng=lst[1].split('/')
			for i in hnd_mng:
				if i in hi_sent:
#					print '***', len(lst), lst[0], i, lst[2].strip(), lst[3].strip() 
					print lst[0], i, lst[2].strip(), lst[3].strip() 
					e_k.append(lst[0])
					start_pos = lst[2].strip()
					multi_graph_file.write('(%s,%s,1),' %  (start_pos, lst[3].strip()))
					if start_pos not in multi_graph:
						multi_graph.append(start_pos)
					if lst[3].strip() not in multi_graph:
                                                multi_graph.append(lst[3].strip())
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
				multi_graph_file.write("(%s,%s,1)," %  (lst[2].strip(), lst[3].strip()))
				e_k.append(lst[0])
				graph_dict[lst[2].strip()] = [lst[3].strip()]
				#graph_dict[int(lst[2].strip())] = [lst[3].strip()]
#		                l = line.split('\t') 


#_precisely_     _yaWArWawA_se_/_yahIM_/_pariSuxXa_/_yaWArWawA_	2
#for k in graph_dict:
#	print k, graph_dict[k]


