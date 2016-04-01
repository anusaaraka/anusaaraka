#Written by Shirisha Manju (04-03-16)
#To get hindi root and tam information from conLL format.
#python get_hnd_root_and_tam_info.py conLL_input root_and_tam
##########################################################################################
import sys

fr = open(sys.argv[2], 'w')

for line in open(sys.argv[1]):
	if line == '\n':
		fr.write(';~~~~~~~~~~\n')
	else:
		lst = line.strip().split('\t')
		lst1 = lst[5].split('|')
		lst2 = lst1[6].split('-')
		if lst2[1] == '':
			tam = '-'
		else:
			tam = lst2[1]
#		print lst[2][0]
		if lst[2][0] != '&':  # to avoid punct info
			fr.write('(id-word-root-tam	' + lst[0] + '\t' + lst[1] + '\t' + lst[2] + '\t' + tam + ')\n')
