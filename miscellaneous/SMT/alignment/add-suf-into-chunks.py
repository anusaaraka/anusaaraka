# This program adds suffixes to their chunks. This takes two file as input: 1. original sentence file, 2. shallow parser output of the original sentences
# Written by Sukhada (03-04-12)
# To run:  python add-suf-into-chunks.py original_sentence_file shallow_parser_output_file > OUTPUT-FILE

import sys

fr = open(sys.argv[1], 'r') #original sentence file
f = fr.readlines()
shallow_p = open(sys.argv[2], 'r') # shallow parser output file
sp = shallow_p.readlines()

c = 0
chunk_starts = 0
sent_c = 0
chunk_count = 0
wrd_c = 0
dum_suf = []
suf = []
punc_list = ["-",  "]",  "}",  ">", "!", "/", ".", "=", "?", "'", ",", ":", ";", ")"]
#punc_list = ["-", "[", "]", "{", "}", "<", ">", "!", "/", ".", "=", "?", "(", "'", ",", ":", ";", ")"]
suf_printed = 0
lst=[]
mystr=''
for line in xrange(len(sp)):
	print sp[line],
	mylst = sp[line].split()
	if line < len(sp)-1:
		lst = sp[line+1].split()
	if sp[line].startswith("<Sentence id="):
		orig_sent = f[sent_c].split()
		sent_c += 1
	if sp[line].startswith("</Sentence>"):
		chunk_count = 0
		c = 0
	if "((" in sp[line] and '_' in sp[line]:
		chunk_starts = 1
		dum_suf = sp[line].split('head=')
		suf = dum_suf[0].split('_')
	if "((" in sp[line] :
		chunk_count += 1
	if "))" in sp[line]:
		chunk_starts = 0
		suf = []
		wrd_c = 0
	if  "((" not in sp[line] and "))" not in sp[line] and not sp[line].startswith("<Sentence id=") and not sp[line].startswith("</Sentence>"):
		c += 1
	if len(suf) >= 1 and '))' in sp[line+1] and len(mylst) > 2 and mylst[1] not in punc_list:
		for each in xrange(len(suf)-1):
			mystr = str(chunk_count) + '.' + str(wrd_c+1) + '\t' + orig_sent[c] + '\t'
			print mystr
			c += 1

	if len(suf) >= 1 and len(lst) > 2 and lst[1] in punc_list:
		for each in xrange(len(suf)-1):
			mystr = str(chunk_count) + '.' + str(wrd_c+1) + '\t' + orig_sent[c] + '\t'
			print mystr
			c += 1

	if chunk_starts == 1:
		wrd_c += 1

