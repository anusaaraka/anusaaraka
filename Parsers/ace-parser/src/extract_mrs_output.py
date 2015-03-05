#Programme to extract mrs from Ace parser
#Written by Roja (10-02-15)
import sys

sent = []
count = 0
start_count = 0
end_count = 0
parserid_dic = {}
handle_dic = {}
event_dic = {}
self_dic = {}
indirect_handle_dic = {}
relation_dic = {}


def check_word_in_dic(arg, word):
        if word in self_dic:
                print arg, word, self_dic[word], 
        elif word in handle_dic:
                print arg, word, handle_dic[word],
        elif word in event_dic:
                print arg, word, event_dic[word],
        elif word in indirect_handle_dic:
		if indirect_handle_dic[word] in handle_dic: #To avoid handle type Key errors added if else loop
	                print arg, word + '->' + indirect_handle_dic[word], handle_dic[indirect_handle_dic[word]],
		else:
			print arg, word + '->' + indirect_handle_dic[word], '0',
        else:
                print arg, word, '0',


for line in open(sys.argv[1]):
	if line.startswith('SENT:'):
		sent = line.strip()
		lst = sent.split()
#		print   lst
		for i in range(1, len(lst)):
			count += 1
			end_count = start_count + len(lst[i])
			word_id = str(start_count) + ':' + str(end_count)
			parserid_dic[word_id] = count
			start_count = end_count + 1
		print sent
	if 'LBL' in line:
		if 'RELS:' in line:
			line = line[7:]
		lst = line.split('LBL:')
		rel = lst[1].split(' ')
		each = lst[0].split('<')
		word_id = each[1][:-2]
		ids = word_id.split(':')
#		print word_id, rel[1], parserid_dic[word_id], sent[int(ids[0])+6:int(ids[1])+7], each[0]
		if '"' in each[0][3]:
			relation_name = each[0][5:-1]
		elif '_' in each[0][3]:
			relation_name = each[0][4:]
		else:
			relation_name = each[0][3:]
		if word_id in parserid_dic: #This loop is neccessary when the word_id not in parserid_dic. To avoid key error.
			handle_dic[rel[1]] = parserid_dic[word_id]
			if rel[3].startswith('e'):
				event_dic[rel[3]] = parserid_dic[word_id]
			elif  rel[2] == 'CARG:':  #He is known as the [Einstein] of India.
				if rel[5].startswith('e'):
					event_dic[rel[5]] = parserid_dic[word_id]
				elif 'ARG1' not in rel:
					self_dic[rel[5]] = parserid_dic[word_id]
			elif 'ARG1' not in rel:
				self_dic[rel[3]] = parserid_dic[word_id]
		if relation_name not in relation_dic:
			value = ''
			key = ''
			if 'ARG1' in line:
				for i in range(0, len(rel)-1):
					if 'ARG' in rel[i]:
						if 'ARG0' in rel[i]:
							key = relation_name + '^' + rel[i] + '^' + rel[i+1]
						else:
							if value == '':
								value = value +  rel[i] + '^' + rel[i+1]
							else:
								value = value + '^' + rel[i] + '^' + rel[i+1]
				relation_dic[key] = value
	if 'HCONS' in line:
		line = line[9:-5]
		lst = line.split(' ')
		for each in range(0, len(lst), 3):
			indirect_handle_dic[lst[each]] = lst[each+2]
#			print lst[each], lst[each+2]

for key in sorted(relation_dic):
	new_key = key.split('^')
	lst = relation_dic[key].split('^')
	print '\n' + new_key[0] + '\t', 
	check_word_in_dic(new_key[1], new_key[2])
	for i in range(0, len(lst), 2):
		 check_word_in_dic(lst[i], lst[i+1])		
