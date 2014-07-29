#This program is written by Sukhada (27-04-14).
# The arguments this program takes are:	
#	1 :  phrase_table
#	2 :  source language
#	3 :  target language
#To Run: python create_SL-TL_dict_using_phrase_table.py <phrase-table-file> <SL> <TL>
#   Ex.: python create_SL-TL_dict_using_phrase_table.py  phrase-table  en  hi

# Sample Input:  and trivalent dopants ||| wrisaMyojaka waWA ||| (1) (0) (0) ||| (1,2) (0) ||| 0.2 0.19655605...
# Output: 
#		and***0 =EQ= waWA,*SUKH* trivalent***1_dopants***2 =EQ= wrisaMyojaka,*SUKH*
# The output for the command: python create_SL-TL_dict_using_phrase_table.py  phrase-table hi en
# would be:  
#		wrisaMyojaka***0 =EQ= trivalent_dopants,*SUKH* waWA***1 =EQ= and,*SUKH*

# The output is written in a file named based on "<SL>-<TL>_dict.txt". For example the output file for the above command would be: en-hi_dict.txt

import sys
SL = sys.argv[2]
TL = sys.argv[3]
outf = SL + '-' + TL + '_dict.txt'
fw = open(outf, 'w')
for line in open(sys.argv[1]):
	data = line.split(" ||| ")
	hi_position = data[3].split()
	mydic = []
	if SL.lower() == 'en':
		sl = data[0].split()
		tl = data[1].split()
		pos_lst = data[2].split()
	else:
		sl = data[1].split()
		tl = data[0].split()
		pos_lst = data[3].split()
	for pos_id in pos_lst:
	    if pos_id != 'DONE':
		tmp = ''
		if pos_lst.count(pos_id) > 1 and pos_id[1:-1] != '' and "," not in pos_id and pos_id[1:-1] != '()':  #and trivalent dopants ||| wrisaMyojaka waWA ||| (1) (0) (0) ||| ...
			mysl = []
			for i in range(pos_lst.index(pos_id), len(pos_lst)):
				if pos_lst[i] == pos_id:
					tmp = sl[i] + '***' + str(i)
					mysl.append(tmp)
					pos_lst[i] = 'DONE'
			keyval = '_'.join(mysl) + ' =EQ= ' + tl[int(pos_id[1:-1])] + ',*SUKH*'
			mydic.append(keyval)
		elif pos_id[1:-1] == '':  # to a low ||| nimna ||| () () (0) ||| ...
			keyval = sl[pos_lst.index(pos_id)] + '***' + str(pos_lst.index(pos_id)) + ' =EQ= ####,*SUKH*'
			pos_lst[pos_lst.index(pos_id)] = 'DONE'
			mydic.append(keyval)
		elif "," in pos_id:       # Note ||| XyAna xIjie ||| (0,1) ||| ... 
			mytl = [] 
			vals = pos_id[1:-1].split(",")
			for i in vals:
				tmp = tl[int(i)]
				mytl.append(tmp)
			keyval = sl[pos_lst.index(pos_id)] + '***' + str(pos_lst.index(pos_id)) + ' =EQ= ' + '_'.join(mytl) + ',*SUKH*'
			mydic.append(keyval)
 		else:			  # length 2.308 ||| lambAI 2.308 ||| (0) (1) ||| ...
			keyval = sl[pos_lst.index(pos_id)] + '***' + str(pos_lst.index(pos_id)) + ' =EQ= ' + tl[int(pos_id[1:-1])] + ',*SUKH*'
			mydic.append(keyval)
	fw.write('%s\n' % ' '.join(mydic))


