#Written by Roja(21-07-17)
#RUN:: python get_transliterate_wrd.py <eng_file> <hnd_file> <sound_dic>
#Ex::  python get_transliterate_wrd.py  eng hnd  Sound_dic.txt
#DEBUG NOTATIONS: 
#                 '^^^' --> "Relevent_dictionary_entry(i.e. Current_eng) and its mapping" 
#                 '%%'  --> "
#                 '**'  --> "
#As this programme used inside clips..so only single sentence left over words are present so eng_lst and hnd_lst directly instead of appending words.
#################################################################################
import sys

eng_lst = []
hnd_lst = []

for line in open(sys.argv[1]): 
	eng_lst = line.strip().split()

for line in open(sys.argv[2]):
	hnd_lst = line.strip().split()
	

sound_dic = {}
stack = []
eng_index = 0
hnd_index = 0

#Sound dic:
for line in open(sys.argv[3]):
	sound_lst = line.strip().split('\t')
	sound_dic[sound_lst[0]] = sound_lst[1]

#Function to check keys in sound dic with each char
def check_key_in_dic(char):
	lst = []
	for key in sound_dic.keys():
		if key.startswith(char):
			lst.append(key)
	return lst


#Function to check sound present in target word:
def check_sound_in_tgt(s_lst, e_index, h_index, eng, hnd):
	ind = []
	for k in range(0, len(s_lst)):
		if s_lst[k] == hnd[h_index:h_index+len(s_lst[k])]:
			if k == len(s_lst)-1 :
				h_index = h_index + len(s_lst[k])
				stack.append(eng + ' ' + s_lst[k] + ' ' +  str(e_index) + ' ' + str(h_index))
			else:
				j = h_index + len(s_lst[k])
				stack.append(eng + ' ' + s_lst[k] + ' ' +  str(e_index) + ' ' + str(j))
		if s_lst[k] == '-': #To handle silent words
			stack.append(eng + ' ' + s_lst[k] + ' ' +  str(e_index) + ' ' + str(h_index))
#	print 'Stack is ' , stack
	if stack != []:
		pair = stack.pop()
		ind = pair.split()
	else:	#If stack empty then return indexes passed to the function
		ind.append(e_index)
		ind.append(h_index)
	return ind #return eng and hnd indexes

def check_transliterate(eng, hnd):
  eng_index = 0
  count = 0
  hnd_index = 0
  str1 = []
  str2 = []
  partial_eng_match = []
  partial_hnd_match = []
  max_eng_len = 0
  max_hnd_len = 0
  ind = 0
  o = ''
  stack = []

  while eng_index < len(eng):
	count += 1
	e = eng[eng_index]
	eng_keys = check_key_in_dic(e)
	for each in eng_keys:
	#VC	if each in eng and each in sound_dic :
		if (each == eng[eng_index:eng_index+len(each)]) : 
#			print '^^^', e , eng_index, hnd_index, eng_keys
			s = sound_dic[each].split('/')
			ind = eng_index
			eng_index = eng_index + len(each)
			prev_h_index = hnd_index
			prev_h_w = ''
			o = check_sound_in_tgt(s, eng_index, hnd_index, each, hnd)
			l =  o
			if len(l) == 4:
				eng_index = int(l[2])
				hnd_index = int(l[3])
#				print '%%', eng_index, hnd_index, str1, str2, l
				#To get string partial or transliterate string
				prev_h_w = l[1]
				if len(str1) > eng_index-1:
					str1[eng_index-1] = l[0]
				else:
					if len(l[0]) > 1:
						for each in l[0]:
							str1.append(each)
					else:
						str1.append(l[0])
					if max_eng_len < eng_index:
#VC                                             print("rAma:: max_eng_len =", max_eng_len)
                                                max_eng_len = eng_index
#VC                                             print("hari:: max_eng_len =", max_eng_len)
                                                partial_eng_match = str1
				if len(str2) > hnd_index-1:
					str2[hnd_index-1] = l[1]
					#print 'Current hnd is ', str2
				else:
					if len(l[1]) > 1 and l[1] != '-':
#						print len(l[1]) , len(str2), hnd_index
						for i in range(0, len(l[1])):
							if len(str2) <= hnd_index-1:
								str2.append(l[1][i])
							else:
								str2[hnd_index-1] = l[1][i]
					#		print '**Current hnd is ', str2
					elif l[1] != '':
						str2.append(l[1])
						if max_hnd_len < hnd_index:
							max_hnd_len = hnd_index
							partial_hnd_match = str2
#						print '**Current hnd is ', str2
			else:
#				print '$$', eng_index, hnd_index, str1, str2, l, prev_h_index
				eng_index = ind
				#hnd_index = int(l[1])
				hnd_index = int(prev_h_index)
	if count > max_eng_len+10 and stack == []: #To stop while loop assuming maximum index+10 len
		break
	o = ''.join(str1) + ' ' + ''.join(str2) + ' ' + ''.join(partial_eng_match) + ' ' + ''.join(partial_hnd_match)
  #VC print("returned o=", o)
  return o
#####################
for eng in eng_lst:
	for hnd in hnd_lst:
                out= check_transliterate(eng.lower(), hnd)
#		print '^^^', out, len(out), eng, hnd
		if out != None and type(out) == str:
			o = out.split()
			if len(o) == 4:
				if o[0] == eng.lower() and o[1] == hnd:
#				if o[0] == eng and o[1] == hnd:
					print '(eng_word-tran_word ' , o[0], o[1],  ')'
					#print '(transliterate-word ' , o[0], o[1],  ')'
					break
				elif o[0] == eng.lower() and o[1] + 'a' == hnd:  #VC
#				elif o[0] == eng and o[1] + 'a' == hnd:
#				elif o[1] + 'a' == hnd:
#					print  '(transliterate-word ', o[0] , o[1] + 'a', ')'
					print  '(eng_word-tran_word ', o[0] , o[1] + 'a', ')'
					break
			break
