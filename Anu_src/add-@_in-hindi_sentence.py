#Programme to mark '@' after '-' in a word only if a word starts with '@'
#Ex: One can reach kumbhalgarh by road from udaipur (84km) and ranakpur which is 18km from kumbhalgarh.
#    (84km  -> is represented as PUNCT-OpenParen\@PropN-84km-PropN              

import sys
fr = open(sys.argv[1], 'r')
fw = open(sys.argv[2], 'w')
f = fr.readlines()
for line in xrange(len(f)):
        wordlist = f[line].split()
	for word in wordlist:
 	  if (word.startswith('@') or word.startswith('\@') or word.startswith('PUNCT-OpenParen\@')) and (('-' in word) or ('.' in word)) and ('.'  not in word[-1]):
            wrd = word.split('-')
            new_wrd = '-@'.join(wrd)
            wordlist.insert(wordlist.index(word), new_wrd)
            wordlist.remove(word)
        new_list = ' '.join(wordlist)
        fw.write('%s\n' %  new_list)
