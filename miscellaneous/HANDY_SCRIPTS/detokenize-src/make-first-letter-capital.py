# This program makes the first letter capital of each sentence.
# Written by Sukhada (15-10-11)
# To run:  python make-first-letter-capital.py  INPUT-FILE  OUTPUT-FILE

import sys
alfa = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

fw = open(sys.argv[2], 'w')
for sent in file(sys.argv[1]):
    flag = 0
    mystr = ''
    for i in sent:
	if i.lower() in alfa and flag != 1 and not sent.startswith('1') and not sent.startswith('2') and not sent.startswith('3') and not sent.startswith('4') and not sent.startswith('5') and not sent.startswith('6') and not sent.startswith('7') and not sent.startswith('8') and not sent.startswith('9') and not sent.startswith('0') and not sent.startswith('$') and not sent.startswith('<'):
		mystr = mystr + i.upper()
		flag = 1
	else:
		mystr = mystr + i
    fw.write(mystr)

