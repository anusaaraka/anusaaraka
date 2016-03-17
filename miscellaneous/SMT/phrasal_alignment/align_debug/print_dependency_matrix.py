import sys,commands

def convert_wx_to_utf(wrd):
	my_cmd1 = 'echo  ' + wrd + '>tmp'
        out = commands.getoutput(my_cmd1)
        my_cmd = 'wx_utf8 <  tmp '
        utf_wrd = commands.getoutput(my_cmd)
	return utf_wrd 

def print_err_msg(file_name, name):
	if len(file_name) == 0:
		print '<FONT COLOR=dark pink><b>' + name + '  file is empty. Please check!!</b></FONT>'


file_name = ''

eng_par = open(sys.argv[2], 'r')
eng_par_file = eng_par.readlines()
file_name = str(sys.argv[2])
print_err_msg(eng_par_file, file_name)

cols = 1

align_info = {}

no_match_lst = []

for line in open(sys.argv[1]):
    if  'Eng sen :' in line:
                e_sent = ' '.join(line.split())
    if  'Manual sen :' in line :
                hin_sent = ' '.join(line.split())
    if  'Anu :' in line:
                anu_sent = ' '.join(line.split())
    if '_info' in line:
		lst = line.strip().split('\t')
		align_info[int(lst[0][:-5])] = int(lst[1])
    if 'No match found' in line:
		lst = line.strip().split('=')
		no_match_lst.append(lst[1].strip())

print '<th colspan="', cols, '">', '<style type="text/css"> div {text-align: left;}</style><div>', '<FONT COLOR=green>', e_sent, '</FONT></div> </th>'
print '<th colspan="', cols, '">', '<style type="text/css"> div {text-align: left;}</style><div>', '<FONT COLOR=green>', anu_sent, '</FONT></div> </th>'
print '<th colspan="', cols, '">', '<style type="text/css"> div {text-align: left;}</style><div>', '<FONT COLOR=green>', hin_sent, '</FONT></div> </th>'


#=============== Display column info -------------------


e_parser_rel_wrd = open(sys.argv[3], 'r')
e_parser_file_wrd = e_parser_rel_wrd.readlines()
file_name = str(sys.argv[3])
print_err_msg(e_parser_file_wrd, file_name)

e_wrd_dic = {}
e_wrd_head_lst = []

for i in range(0, len(eng_par_file)):
	lst = eng_par_file[i].strip().split(' ')
	ids = lst[len(lst)-1][:-1]
	e_wrd_head_lst.append(ids)
	for j in range(0, len(e_parser_file_wrd)):
		if i == j:
			e_wrd_lst = e_parser_file_wrd[j].strip().split('\t')
			e_wrds = e_wrd_lst[3][:-2]
			key = e_wrd_lst[1] + '-' + lst[2]
			#e_wrd_dic[key] = ids + '\t' + e_wrds + '\t{' +  e_wrd_lst[1] + ' ' +  e_wrd_lst[2] + '}'
			e_wrd_dic[key] = ids + '\t' + e_wrds + '\t' +  e_wrd_lst[1] + '\t' +  e_wrd_lst[2] 


#============ Displaying row info ==================================
h_wrds = {}
h_parser_rel = open(sys.argv[4], 'r')
h_parser_file = h_parser_rel.readlines()
file_name = str(sys.argv[4])
print_err_msg(h_parser_file, file_name)

h_parser_rel_wrd = open(sys.argv[5], 'r')
h_parser_file_wrd = h_parser_rel_wrd.readlines()
file_name = str(sys.argv[5])
print_err_msg(h_parser_file_wrd, file_name)

rows = len(h_parser_file)
for i in range(0, len(h_parser_file)):
	lst = h_parser_file[i].strip().split(' ')
	ids = lst[len(lst)-1][:-1]
	for j in range(0, len(h_parser_file_wrd)):
		if i == j:
			wrd_lst = h_parser_file_wrd[j].strip().split('\t')
			wrds = wrd_lst[3][:-2]
			h_wrds[i] = ids + '\t' + wrds + '\t' + wrd_lst[1] + '\t' + wrd_lst[2] 

#Displaying matrix 

flag = 0

for r in sorted(h_wrds):
	flag = 0
	#Displaying rows:
	lst = h_wrds[r].split('\t')
	ls = lst[2].split(':')
	
	#To get hindi words in utf8
	utf_wrd = convert_wx_to_utf(lst[1])
	if lst[3] == '0':
		utf_wrd1 = '0'
	else:
		utf_wrd1 = convert_wx_to_utf(lst[3])
	if len(ls) != 1:
		utf_wrd2 = convert_wx_to_utf(ls[1])
		new_lst = ls[0]+ ':' + utf_wrd2
	else :
		new_lst = ls[0]
		
	print '<b><FONT COLOR=purple>' + utf_wrd + ' {</FONT>' + '<FONT COLOR=blue>' + new_lst + '</FONT>   ' + '<FONT COLOR=purple>' + str(utf_wrd1) + '}</FONT></b>\t',
	
	#Displaying columns:
	for key in sorted(align_info):
		if int(lst[0]) == key:
			for eng_key in sorted(e_wrd_dic):
				eng_key_lst = e_wrd_dic[eng_key].split('\t')
				if align_info[key] == int(eng_key_lst[0]):
					print '<b><FONT COLOR=brown>' +  eng_key_lst[1] + '  {</FONT>' + '<FONT COLOR=blue>' +  eng_key_lst[2] + '</FONT>' + '  <FONT COLOR=brown>' + eng_key_lst[3] + '}</FONT></b>',
					flag = 1
	if flag != 1:
		print '.', 
	print
print 

#To print no match :

for key in sorted(e_wrd_dic):
	eng_key_lst = e_wrd_dic[key].split('\t')
	if no_match_lst != []:
		for each in no_match_lst:
#			print each, eng_key_lst[0]
			if eng_key_lst[0] == each:
				print '<th colspan="' + str(cols) + '">' + '<style type="text/css"> div {text-align: left;}</style><div>' + '<FONT COLOR=red>' + 'no_match_found : </FONT><FONT COLOR=brown><b>' + eng_key_lst[1] + ' {</FONT>' + '<FONT COLOR=blue>' +  eng_key_lst[2] + '</FONT>' + '<FONT COLOR=brown>  ' + eng_key_lst[3] + '}</b></div> </th>'

