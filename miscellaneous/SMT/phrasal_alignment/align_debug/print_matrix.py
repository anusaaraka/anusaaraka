import sys

rows = 0; cols = 0
row_col_dict = {}; lst = []

for line in open(sys.argv[1]):
    if  line.startswith(' Eng sen : "'):
                e_sent = ' '.join(line.split())
    if  line.startswith(' Manual sen : '):
                hin_sent = ' '.join(line.split())
    if  line.startswith(' Anu : '):
                anu_sent = ' '.join(line.split())
    if line.startswith(' anu_eng_order : '):
        lst = line.split(',')
        rows = int(lst[0][17:])
        cols =  int(lst[1])

print '<th colspan="', cols, '">', '<style type="text/css"> div {text-align: left;}</style><div>', e_sent, '</div> </th>'
print '<th colspan="', cols, '">', '<style type="text/css"> div {text-align: left;}</style><div>', anu_sent, '</div> </th>'
print '<th colspan="', cols, '">', '<style type="text/css"> div {text-align: left;}</style><div>', hin_sent, '</div> </th>'

#=========== Displaying info =============================
#-------------- man words ---------------------------
man_wrds = {}
for line in file(sys.argv[3]):
	tmp = line[:-2].split()
	man_wrds[int(tmp[1])] = " ".join(tmp[2:])

print '<th colspan="', cols, '">','<FONT COLOR=#FF3333>', '<style type="text/css"> div {text-align: left;}</style><div>', man_wrds, '</div> </th>'
print '\t'


#---------- eng words --------------------
eng_wrds = {}

for line in file(sys.argv[2]):
        tmp = line.split()
        tmp1 = tmp[1:-1]
        for i in range(1,len(tmp1)+1):
                eng_wrds[i] = tmp1[i-1]


print '<th colspan="', cols, '">','<FONT COLOR=#FF3333>', '<style type="text/css"> div {text-align: left;}</style><div>', eng_wrds, '</div> </th>'
print '\t'


#=============== Display column info -------------------

print '\t',
for key in  eng_wrds.keys():
       print '<span style="font-weight: bold;">', key, '</span>\t',
print

#============ Displaying row info ==================================
h_wrds = {}
for line in file(sys.argv[1]):
	if line.startswith('heuristics  '):
		tmp = line.split()	
		tmp1 = tmp[1:]
		for i in xrange(len(tmp1)):
	                h_wrds[i] = tmp1[i]
#to get man word info
lst1 = []
for line in file(sys.argv[1]):
	if line.startswith('manual_sen_length :'):
		lst1 = line.split(":")
		man_length = lst1[1]
		
count = 1
while (count <= int(man_length)):
	str1 = str(count)+"_info"
	for line in file(sys.argv[1]):
		if line.startswith(str1):
			tmp0 = line.split()
			tmp = tmp0[1].split(",")
			row=tmp[2].strip()
			man_id = (tmp[0])
			anu_id = int(tmp[1])-1
			col= str(man_id)+ "_"+str(anu_id)
			if row in row_col_dict.keys():
				val = row_col_dict[row]
				val.append(col)
				row_col_dict[row]=val
			else:	
				row_col_dict[row]=[col]
#			print row_col_dict
	count = count + 1

lst2 = [ ]
for r in range(rows):
	print '<b>', '<FONT COLOR=purple>', h_wrds[r], '</FONT>', '</b>\t', 
	for c in range(cols):
		if h_wrds[r]  in row_col_dict.keys():	
			lst2 = row_col_dict[h_wrds[r]] 
			man_wrd_ids = []
			for val_col in lst2:
				vc_lst = val_col.split('_')
				if c == int(vc_lst[1]):
					man_wrd_ids.append(vc_lst[0])
			if man_wrd_ids != []:
				print '<FONT COLOR=brown>','<b>','/ '.join(man_wrd_ids),'</b>', '\t',
			else:
				print '.\t',
		else:
			print '.\t',	
	print


# --- To print no match cases -------------
no_match_list = [ ]
for line in file(sys.argv[1]):
        if line.startswith('no_match_found'):
		lst3 = line.split()	
		no_match_list.append(lst3[1])

if no_match_list != []:
	print '<th colspan="', cols, '">', '<style type="text/css"> div {text-align: left;}</style><div>','<FONT COLOR=red>','no_match_found :',' / '.join(no_match_list), '</FONT>','</div> </th>'


#---- To print parser original tree info------------
tree= [ ]
tree_info_dict = {};
for line in file(sys.argv[1]):
	if line.startswith('('):
#	if line.startswith('( ('):
#	if line.startswith('(ROOT (S'):
		tmp=line.strip()
		tree= tmp.split('_')
#		print tree, "-----------"
		for key in  eng_wrds.keys():
#			print tree_info_dict[key]
##			if key in 
			tree_info_dict[key]=tree[key-1]

#print tree_info_dict
print '\t',
for c in range(1, cols+1):
	print '<FONT COLOR=blue>','<b>',tree_info_dict[c],'</b>', '\t',

print '\t',

#--------------- To print tree after removing paren -----------
print '\t',
tree1 = " " 
for c in range(1, cols+1):
	tree1 = tree_info_dict[c]
	lcount= tree1.count('(')
	rcount= tree1.count(')')
	count= lcount - rcount
	if count > 0:
		t1=tree1[:-rcount]
#		print t1, "---------"
		print '<FONT COLOR=blue>','<b>',t1[rcount:],'</b>', '\t',
#		print '<FONT COLOR=blue>','<b>',t1[rcount+1:],'</b>', '\t',
	else:
#		t1=tree1[lcount+1:]
		t1=tree1[lcount:]
#		print t1, "---------"
		print '<FONT COLOR=blue>','<b>',t1[:-lcount],'</b>', '\t',








#str1=' '
#	print lcount, rcount , count
#	if count < 0:
#		for j in range(-count):
#			str1= str1+')' 
#		print '<FONT COLOR=blue>','<b>',c, str1,'</b>', '\t',
#	else:
#		for j in range(count):
#			print '<FONT COLOR=blue>','<b>','(', '</b>',
#		print '<FONT COLOR=blue>','<b>', c,'</b>', '\t',
