import sys

fr = open(sys.argv[1], 'r') #original sentence file
f = fr.readlines()
shallow_p = open(sys.argv[2], 'r') # shallow parser output file
sp = shallow_p.readlines()
punc_list = ["-",  "]",  "}",  ">", "!", "/", ".", "=", "?", "'", ",", ":", ";", ")"]

c = 0
sent_c = 0
dum_suf = []
suf = []
lst=[]
for line in xrange(len(sp)):
	mylst = sp[line].split()
	if sp[line].startswith(";~~~~~~~~~~"): #indicates end of sentence
		print sp[line],
		sent_c += 1
                continue
	if sp[line].startswith("</Sentence>"):
		c = 0
	if "((" in sp[line] and '_' in sp[line]:
            if 'vpos=' in sp[line] and 'head=' in sp[line]:
		dum_suf = sp[line].split('vpos=')
                suf = dum_suf[0].split('_')
                my_cat = dum_suf[0].split(',')
	    if 'vpos=' not in sp[line] and 'head=' in sp[line]:
		dum_suf = sp[line].split('head=')
		suf = dum_suf[0].split('_')
		my_cat = dum_suf[0].split(',')
	if "((" in sp[line] or "))" in sp[line] or sp[line].startswith("<Sentence id=") or sp[line].startswith("</Sentence>"):
		print sp[line],
	if "))" in sp[line]:
		suf = []

	if sp[line].startswith("<Sentence id="):
		orig_sent = f[sent_c].split()
#		sent_c += 1
	
	if  ("((" not in sp[line]) and ("))" not in sp[line]) and (not sp[line].startswith("<Sentence id=")) and (not sp[line].startswith("</Sentence>")):

        #if (len(suf) >= 1) and (c < len(orig_sent)) and (len(my_cat) >= 1) and( len(mylst) >= 1) and (mylst[1] != orig_sent[c]):
		if (len(suf) >= 1) and ( len(mylst) >= 1) and (mylst[1] != orig_sent[c]):
	            if suf[0].endswith('nahIM'):
        	        print 'xx\t', 'nahIM'
                	c += 1
	                del suf[0]
        	    else:
                	for each in xrange(len(suf)-1):
	                    print 'xx\t', orig_sent[c]
        	            c += 1
                	    suf = []

		if mylst[1] == orig_sent[c] :
	            print sp[line],
        	    c += 1

	if len(suf) >= 1 and '))' in sp[line+1] :#and mylst[1] == orig_sent[c]:
	         for each in xrange(len(suf)-1):
        	    print 'yy\t', orig_sent[c]
	            c += 1
        	    continue
