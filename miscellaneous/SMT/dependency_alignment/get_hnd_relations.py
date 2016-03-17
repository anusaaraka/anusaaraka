#Written by Roja (02-03-16)
#To get hindi relations from conLL format.
#python get_hnd_relations.py  conLL_input rels
##########################################################################################
import sys

fr = open(sys.argv[2], 'w')

wrd = {}
dic = {}

for line in open(sys.argv[1]):
	if line == '\n':
		for key in sorted(dic):
			val = dic[key].split('\t')
			if val[1] != '0':
#				fr.write('(relation_name-relation_ids-relation_wrds	' +  val[0] + '\t' + val[1] + '  ' +  val[2] + '\t' + wrd[int(val[1])] + '\t' + wrd[int(val[2])] + ')\n')
				fr.write('(relation_name-rel_ids	' +  val[0] + '\t' + val[1] + '  ' +  val[2] + ')\n')
				
			else:
#				fr.write('(relation_name-relation_ids-relation_wrds	' +  val[0] + '\t' + val[1] + '  ' +  val[2] + '\t' + val[1] + '\t' + wrd[int(val[2])] + ')\n')
				fr.write('(relation_name-rel_ids	' +  val[0] + '\t' + val[1] + '  ' +  val[2] + ')\n')
		wrd = {}
		dic = {}
		fr.write(';~~~~~~~~~~\n')
	else:
		lst = line.strip().split('\t')
		wrd[int(lst[0])] = lst[1]
		dic[int(lst[0])] = lst[7] + '\t' + lst[6] + '\t' + lst[0] 
