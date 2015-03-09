#Programme to map relations extracted from mrs output of Ace parser
#Written by Roja (21-02-15)
import sys

rel_fp = open(sys.argv[5], 'w')

word = {}
cat = {}
tense = {}

for each in open(sys.argv[4]):
	lst = each.split('\t')	
	tense[lst[0]] = lst[1].strip()

for each in open(sys.argv[2]):
	lst = each.split('\t')
	word[lst[1]] = lst[2][:-2]
	
for each in open(sys.argv[3]):
	lst = each.split('\t')
	cat[lst[1]] = lst[2][:-2]	

def print_rel_info(relation_name, id1, id2):
	if id2 != '0':
		print '(' + relation_name + '\t' + id1 + '\t' + id2 + ')'

def print_rel_info_in_anu(relation_name, prep_id, id1, id2):
	if id2 != '0':
		rel_fp.write('(prep_id-relation-anu_ids\t%s\t%s\t%s\t%s)\n' % (prep_id, relation_name, id1, id2))

def check_for_infinitive(tense, verb_id):
	sense = tense[lst[0]].split()
	if sense[1] == 'untensed' and sense[3] == 'indicative':                         
		if word[str(int(verb_id)-1)] == 'to':
			print_rel_info('to-infinitive', str(int(verb_id)-1), verb_id)
			print_rel_info_in_anu('to-infinitive', '-', str(int(verb_id)-1), verb_id)

def check_value_in_dic(value, dic):
	a = dic.values()
	if value in dic.values(): #I will give [up] smoking. 
		for key in dic:
			if dic[key] == value:
				return key
	else:
		for i in range(0, len(dic.values())):   #[There] really was only one possibility.
			if dic.values()[i].lower() == value:
				key = i+1
				return str(key)

arg3 = ''
arg0 = ''

prep_list = ['up', 'out', 'down']

for line in open(sys.argv[1]):
	if '\t' in line:
		lst = line.split('\t')
		args = lst[1].split()
		if '_p_rel' in lst[0] or '_p_temp_rel' in lst[0]:
			if 'p_temp_rel' in lst[0]:
				prep = lst[0][:-11]
			else:
				prep = lst[0][:-6]
			if arg3 != '' and args[2] == arg3:
				if cat[arg0] == 'v' or cat[args[5]] == 'VBZ':
					relation_name = 'kriyA-' + prep + '_saMbanXI'
				else:
					relation_name = 'viSeRya-' + prep + '_saMbanXI'
				print_rel_info(relation_name, arg0, args[8])
				print_rel_info_in_anu(relation_name, args[2], arg0, args[8])
				arg3 = ''
				arg0 = ''
			else:
				if args[5] in cat:
					if cat[args[5]] == 'v' or cat[args[5]] == 'VBZ':
						relation_name = 'kriyA-' + prep + '_saMbanXI'
					else:
						relation_name = 'viSeRya-' + prep + '_saMbanXI'
#					print '***', relation_name
					print_rel_info(relation_name, args[5], args[8])
					print_rel_info_in_anu(relation_name, args[2], args[5], args[8])
		elif '_a_1' in lst[0]:
			if args[5] in cat:
				if cat[args[5]] == 'v'  or cat[args[5]] == 'VBZ':
					relation_name = 'kriyA-kriyA_viSeRaNa'
				else:
					relation_name = 'viSeRya-viSeRaNa'
				print_rel_info(relation_name, args[5], args[2])
				print_rel_info_in_anu(relation_name, '-', args[5], args[2])
		elif 'poss_rel' in lst[0]:
			print_rel_info('viSeRya-RaRTI_viSeRaNa', args[5], args[8])
			print_rel_info_in_anu('viSeRya-RaRTI_viSeRaNa', '-', args[5], args[8])
		elif '_v_1_rel' in lst[0]: 
			print_rel_info('kriyA-subject', args[2], args[5])
			print_rel_info_in_anu('kriyA-subject', '-', args[2], args[5])
			if len(args) > 6:
				print_rel_info('kriyA-object', args[2], args[8])
				print_rel_info_in_anu('kriyA-object', '-', args[2], args[8])
			#If ARG3 in lst[0]:
			if len(args) == 12:
				arg3 = args[11]
				arg0 = args[2]
			#To check to infinitive:
			if lst[0] in tense:
				check_for_infinitive(tense, args[2])
		elif 'compound_rel' in lst[0]:
			print_rel_info('samAsa_viSeRya-samAsa_viSeRaNa', args[5], args[8])
			print_rel_info_in_anu('samAsa_viSeRya-samAsa_viSeRaNa', '-', args[5], args[8])
		elif 'be_v_id_rel' in lst[0]:
			print_rel_info('subject-subject_samAnAXikaraNa', args[5], args[8])
			print_rel_info_in_anu('subject-subject_samAnAXikaraNa', '-', args[5], args[8])
			print_rel_info('kriyA-subject', args[2], args[5])
			print_rel_info_in_anu('kriyA-subject', '-', args[2], args[5])
			if len(args) > 6:
				print_rel_info('kriyA-object', args[2], args[8])
				print_rel_info_in_anu('kriyA-object', '-', args[2], args[8])
		elif 'be_v_there_rel' in lst[0]:
			rel = lst[0].split('_')
			print_rel_info('kriyA-aBihiwa', args[2], args[5])
			print_rel_info_in_anu('kriyA-aBihiwa', '-', args[2], args[5])
			if len(rel) == 4:
				key = check_value_in_dic(rel[2], word)
				if key != None:
					print_rel_info('kriyA-dummy_subject', args[2], key)
					print_rel_info_in_anu('kriyA-dummy_subject', '-', args[2], key)
		elif '_v_' in lst[0]: #If you use that strategy, he will [wipe] you [out].
			rel = lst[0].split('_')
			#To get phrasal verb relation:
			if len(rel) == 4:
				key = check_value_in_dic(rel[2], word)
				if key != None:
					print_rel_info('kriyA-upasarga', args[2], key) # I will [give up] smoking.
					print_rel_info_in_anu('kriyA-upasarga', '-', args[2], key)
			print_rel_info('kriyA-subject', args[2], args[5])
			print_rel_info_in_anu('kriyA-subject', '-', args[2], args[5])
			if len(args) > 6:
				print_rel_info('kriyA-object', args[2], args[8])
				print_rel_info_in_anu('kriyA-object', '-', args[2], args[8])
			#If ARG3 in lst[0]:
			if len(args) == 12:
				arg3 = args[11]
				arg0 = args[2]
			#To check to infinitive:
			if lst[0] in tense:
				check_for_infinitive(tense, args[2])
		elif '_n_of_rel' in lst[0]: #He heard the [sound of rain] from the kitchen. 
			rel = lst[0].split('_')
			if len(rel) == 4:
				key = check_value_in_dic(rel[2], word)
				if key != None:
					print_rel_info('viSeRya-of_saMbanXI', args[2], args[5])
					print_rel_info_in_anu('viSeRya-of_saMbanXI', key, args[2], args[5])
		elif 'neg_rel' in lst[0]: #It [is not] a good manner to eat alone.
			print_rel_info('kriyA-kriyA_niReXaka', args[2], args[5])
			print_rel_info_in_anu('kriyA-kriyA_niReXaka', '-', args[2], args[5])
