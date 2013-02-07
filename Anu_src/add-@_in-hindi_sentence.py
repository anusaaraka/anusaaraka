#Programme to mark '@' after '-' in a word only if a word starts with '@'
#Ex: Its velocity-time graph is as shown in Fig. 3.11. 
#    Fig.  -> is represented as \@PropN-fig.-PropN              
#    Avoided adding '@' in SYMBOL-NAME words. Ex: 3.11 -> 3SYMBOL-DOT11

import sys
fr = open(sys.argv[1], 'r')
fw = open(sys.argv[2], 'w')
f = fr.readlines()
for line in xrange(len(f)):
        wordlist = f[line].split()
	for word in wordlist:
 	  if (word.startswith('@') or word.startswith('\@') or word.startswith('PUNCT-OpenParen\@')) and (('-' in word) or ('.' in word)) and ('.'  not in word[-1]) and ('SYMBOL' not in word):
            wrd = word.split('-')
	    c = 0
	    each_item = ''
	    for each_item in wrd:
		#if '.' in each_item and not each_item.endswith('.') :
		if '.' in each_item :
			each_item_lst = each_item.split('.')
			if len(each_item_lst) > 1 and each_item_lst[-1] != '@':
				each_item =  '.@'.join(each_item_lst)
				wrd[c] = each_item
		c += 1
            new_wrd = '-@'.join(wrd)
            wordlist.insert(wordlist.index(word), new_wrd)
            wordlist.remove(word)
        new_list = ' '.join(wordlist)
	pre_char = ''
	cur_char = ''
	new_str = ''
	for char in new_list:
		pre_char = cur_char
		cur_char = char	
		if pre_char =='@' and cur_char == '@' :
			pass
		else:
			new_str = new_str + char
        fw.write('%s\n' %  new_str)
