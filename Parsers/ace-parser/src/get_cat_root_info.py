#Programme to get category, word and root information from Ace parser
#Written by Roja (12-02-15)
import sys

word_fp = open(sys.argv[2], 'w')
root_fp = open(sys.argv[3], 'w')
cat_fp = open(sys.argv[4], 'w')

sent = []
parserid_dic = {}
count = 0
start_count = 0 
end_count = 0

def print_dbg_info(pid, word, root, cat):
	try:
		word_fp.write('(id-word\t%s\t%s)\n' % (pid, word))
		root_fp.write('(id-root\t%s\t%s)\n' % (pid, root))
		cat_fp.write('(id-cat_coarse\t%s\t%s)\n' % (pid, cat))
	except ValueError:
		print 'throws exception at' , parserid_dic[sent[int(ids[0])+6:int(ids[1][:-2])+6]]

rel_dic = {}

#To get word id
for line in open(sys.argv[1]):
	if line.startswith('SENT:'):
		sent = line.strip()
	 	lst = sent.split()
#		print	lst
		for i in range(1, len(lst)):
			count += 1
			end_count = start_count	+ len(lst[i])
			word_id	= str(start_count) + ':' + str(end_count)
			parserid_dic[word_id] =	count
			start_count = end_count	+ 1
#		print sent
	if 'LBL' in line:
		if 'RELS:' in line:
			line = line[7:]
		lst = line.split('LBL:')
		each = lst[0].split('<')
		word_id = each[1][:-2]
		if '"' in each[0][3]:
			relation_name = each[0][5:-1]
		elif '_' in each[0][3]:
			relation_name = each[0][4:]
		else:
			relation_name = each[0][3:]
		if word_id not in rel_dic:
			rel_dic[word_id] = relation_name
		else:
			rel_dic[word_id] = rel_dic[word_id] + "^" + relation_name 

#for key in rel_dic:
#	print key, rel_dic[key]

relation_names = ['parg', 'udef', 'def', 'poss', 'pron', 'pronoun', 'nominalization']

dic = {}

for key in sorted(parserid_dic):
	ids = key.split(':') 
	parser_word = sent[int(ids[0])+6:int(ids[1])+6] 
	if key in rel_dic:
		if '^' not in rel_dic[key]:
			root = rel_dic[key].split('_')
			if root[0] not in relation_names:
				if '/' in root[0]: #He [ladles] it with a large wooden spoon. 
					lst = root[0].split('/')
					root[1] = lst[1]
				dic[int(parserid_dic[key])] =  parser_word + ':' + root[0] + ':' + root[1]
		else:
			rels = rel_dic[key].split('^')
			for item in rels:
				root = item.split('_')
				if root[0] not in relation_names:
					if '/' in root[0]:   #The [blacksmith] made an assay of iron ore.
						lst = root[0].split('/')
						root[1] = lst[1]
					dic[int(parserid_dic[key])] =  parser_word + ':' + root[0] + ':' + root[1]
			if parserid_dic[key] not in dic:
				dic[int(parserid_dic[key])] =  parser_word + ':' + parser_word + ':' + '-'
	else:
		dic[int(parserid_dic[key])] =  parser_word + ':' + parser_word  + ':' + '-'

#To get the info in sorted order
for key in sorted(dic):
	val = dic[key].split(':')
	print_dbg_info(key, val[0], val[1], val[2])
