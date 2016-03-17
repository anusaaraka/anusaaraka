#Programme to extract morph info from ConLL format
#morph info is in sixth field
#mapping morph info to parsito morph info
#RUN: python extract_morph_info.py input > output

import sys

case = ''
vib  = ''
psd  = ''
chunkId = ''
pers = ''
num  = ''
tam  = ''
sem  = ''
cp   = ''
gen  = ''

for line in open(sys.argv[1]):
	if line == '\n':
		print line.strip()
		case = ''
		vib  = ''
		psd  = ''
		chunkId = ''
		pers = ''
		num  = ''
		tam  = ''
		sem  = ''
		cp   = ''
		gen  = ''
	else:
		lst = line.strip().split('\t')
#		print lst
		morph_info = lst[5].split('|')
		case = morph_info[0][5:]
		vib  = morph_info[1][4:]
		psd  = morph_info[2][4:]
		chunkId = morph_info[3][8:]
		pers = morph_info[4][5:]
		num  = morph_info[5][4:]
		tam  = morph_info[6][4:]
		sem  = morph_info[7][4:]
		cp   = morph_info[8][4:]
		gen  = morph_info[9][4:]

		#map gender info :
		if gen == 'f':
			gen = 'Fem'
		elif gen == 'm':
			gen = 'Masc'
		elif gen == 'any':
			gen = 'Neut'
		else:
			gen = ''

		#map number info:
		if num == 'sg':
			num = 'Sing'
		elif num == 'pl':
			num = 'Plur'
		else:
			num = ''
		
		#map case info:
		if vib == 'kA':
			case = 'Gen'
		else:
			case = 'Nom'
	
		if case != '' and num != '' and gen != '' and pers !='':	
			print 'Case=' + case + '|' + 'Number='  +  num + '|' + 'Gender=' + gen + '|' + 'Person=' +  pers 
		elif num == '' and gen == '' and pers == '':
			print '_'
		elif num == '' or gen == '' or pers == '':
			if num == '':
				print 'Case=' + case + '|' + 'Gender=' + gen + '|' + 'Person=' +  pers
			elif gen == '':
				print 'Case=' + case + '|' + 'Number=' + num + '|' + 'Person=' +  pers
			elif pers == '':
				print 'Case=' + case + '|' + 'Number='  +  num + '|' + 'Gender=' + gen
			else:
				print 'Case=' + case 
