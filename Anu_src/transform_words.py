import sys, os, commands
f = open(sys.argv[1],"r")
fr = open(sys.argv[2],"r")
fw = open(sys.argv[3],"w")
wt = open(sys.argv[4],"w")
tr_wrds=[]; tr_sent=''
punc_list = ["-", "[", "]", "{", "}", "<", ">", '.', "!", "/", "=", "?", "(", "'", ",", ":", ";", ")"]

for i in fr.readlines():
     line = i.split()
     tr_wrds.append(line[0])

file_p=0
for i in f.readlines():
    sent = ''
    file_p=0
    pos=''
    if ' then ' in i:
	s=i.split(' then ')
 	s[0].strip()
	sent=s[0]+', then '+ s[1]
	sent_wrds = sent.split()
	i = sent
    else:
	sent_wrds = i.split()
	sent = i
    for each in xrange(len(sent_wrds)):
        if sent_wrds[each] in tr_wrds:
  	    f1 = open('jnk',"w")
	    a = i.strip()
	    f1.write(sent)
	    f1.close()
	    s = commands.getoutput("sh $HOME_anu_test/bin/stanford_pos.sh jnk")
	    ss = s.split('\n')
            pos=ss[2]
    ss=pos.split()
    for j in range(len(ss)):
	    if '-LRB-' in ss[j]:
	           ss[j] = '(-LRB-'
            if '-RRB-' in ss[j]:
                   ss[j] = ')-RRB-'
	    if 'her_PRP' in ss[j] or 'Her_PRP' in ss[j] or 'like_VBP' in ss[j]:
		strng = ss[j].split()
 	        for k in range(len(strng)):
		    a = strng[k].split('_')
		    if a[0] == 'her' and a[1] == 'PRP$':
				ss[j]='his_PRP$'
                                wt.write("(id-original_word-transformed_word\t%s\ther\this)\n"%(j+1))
                                file_p=1
		    if a[0] == 'Her' and a[1] == 'PRP$':
				ss[j]='His_PRP$'
				wt.write("(id-original_word-transformed_word\t%s\ther\this)\n"%(j+1))
				file_p=1
		    if a[0] == 'her' and a[1] == 'PRP':
				ss[j]='him_PRP'
        	                file_p=1
                	        wt.write("(id-original_word-transformed_word\t%s\ther\thim)\n"%(j+1))
		    if a[0] == 'Her' and a[1] == 'PRP':
				ss[j]='Him_PRP'
				file_p=1
				wt.write("(id-original_word-transformed_word\t%s\ther\thim)\n"%(j+1))
		    if a[0] == 'like' and a[1] == 'VBP':
                                ss[j]='love_VBP'
                                file_p=1
                                wt.write("(id-original_word-transformed_word\t%s\tlike\tlove)\n"%(j+1))
    tr_sent=''
    for each in xrange(len(ss)):
	st=ss[each].split('_')
	if st[0] in punc_list:
		tr_sent=tr_sent.rstrip()+st[0]+' '
	else:
		tr_sent=tr_sent+st[0]+' '
    fw.write(tr_sent)
    wt.write(';changed words\n')
    wt.write(';~~~~~~~~~~\n')
    if file_p == 0 and tr_sent == '':
        fw.write(i)
fw.close()
wt.close()
