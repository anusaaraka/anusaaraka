#Programme to create wsd dictionary from wsd clp file
#Written by Roja(17-10-19)
#RUN: python3 create_wsd_dic.py  $HOME_anu_provisional_wsd_rules/see.clp
##########################################################################

import sys, re

fname_with_path = str(sys.argv[1])
fname = fname_with_path.split('/')[-1]
#print(fname)
clp_file = str(sys.argv[1]+".clp")
f = open(clp_file, 'r')
fr = f.readlines()


cur_rule = []
flag = 0
wsd_dic = {}
#sub = ['id-wsd_root_mng', 'id-wsd_word_mng', 'affecting_id-affected_ids-wsd_group_root_mng', 'affecting_id-affected_ids-wsd_group_word_mng']
sub = ['id-wsd_root_mng', 'id-wsd_word_mng'] 

def add_data_in_dic(dic, key, val):
    if key not in dic:
        dic[key] = val
    elif(val not in dic[key].split('/')):
        dic[key] = dic[key] + '/' + val


def return_key(lst, val):
   for i in range(0, len(lst)):
      if(val in lst[i]):
         return i 

def return_key_using_rt_or_wrd_fact(lst, var):
    for i in range(0, len(lst)):
        if('id-root' in lst[i] or 'id-word' in lst[i]):
            if(var in lst[i]):
                return i
def check_substring(lst, sub):
  for each in lst:
    if sub in each:
       return each

def get_rule_info(lst):
	#print('Rule is ', lst)
	if(check_substring(lst, 'id-wsd_root_mng')):
		o = check_substring(lst, 'id-wsd_root_mng')
		if o != None:
			index = return_key(lst, 'id-wsd_root_mng')
			mng = lst[index].split()[3][:-2]
			add_data_in_dic(wsd_dic, fname, mng)
#			print(index, mng)
	elif(check_substring(lst, 'id-wsd_word_mng')):
		o = check_substring(lst, 'id-wsd_word_mng')
		if o != None:
			index = return_key(lst, 'id-wsd_word_mng')
			mng = lst[index].split()[3][:-2]
			add_data_in_dic(wsd_dic, fname, mng)
#			print(index, mng)


#for line in open(sys.argv[1]):
for line in open(clp_file):
	a=line
	line=re.sub(r';.*', ' ', a)
	if(line.startswith(';')):
		flag = 0
	elif(line.startswith('(defrule')):
		cur_rule.append(line)
		flag = 1
	elif( (line.startswith(')')) or (line.startswith('))')) ):
		#print('Current rule is ', cur_rule)
		get_rule_info(cur_rule)
		flag = 0
		cur_rule = []
	elif(flag==1 and not line.startswith(';')):
		cur_rule.append(line)
	else:
		pass


for key in sorted(wsd_dic):
	print(key+'\t'+wsd_dic[key])
