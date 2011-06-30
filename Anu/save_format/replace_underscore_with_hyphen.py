#This program replaces _(underscore) by -(hyphen) if that occurs within a word. Ex. Child_abuse is the physical or emotional or sexual mistreatment of children. (from WordNet)
import sys
wrdSub = open(sys.argv[2],"w") #generates file which stores info about the original and hyphenated words
wrdSubSents = open(sys.argv[3],"w") # Generates '<filename>.fmt_split' file

for i in file(sys.argv[1]):
        if '_' in i :
                newwrd = ''
                for char in i:
                        if char == '_':
                                newwrd = newwrd + '-'
                        else:
                                newwrd = newwrd + char
		wrdList = newwrd.split()
		paraIdWrd = wrdList[0].split('.')
		piw = ''
		rest = ''
		origWrd = ''
		for j in paraIdWrd:
			piw = piw + j + '  '
		for k in xrange(1, len(wrdList)):
			rest = rest + wrdList[k] + '  '
		for l in wrdList:
                        if '-' in l:
				for eachchar in l:
					if eachchar == '-':
						origWrd = origWrd + '_'
					else:
						origWrd = origWrd +  eachchar
                wrdSubSents.write(newwrd)
                wrdSub.write("(para_id-sent_id-word_id-original_word-hyphenated_word\t%s\t%s\t%s)\n" % (piw, origWrd, rest))
        else:
                wrdSubSents.write(i)
