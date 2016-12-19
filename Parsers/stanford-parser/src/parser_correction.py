# Program to correct the stanford parser output
# Written by Shirisha Manju 18/10/16

import sys
import re

penn = open(sys.argv[1],"r")
penn1 = penn.readlines()

morph = open(sys.argv[2],"r")
morph1 = morph.readlines()

uncountable = open(sys.argv[3],"r")
uncountable1 = uncountable.read()

for i in range(1, len(penn1)):
	line1 = penn1[i].strip()
	line2 = morph1[i-1].strip()
#================================ structure correction =======================================
	# May I attend a seminar, Sir?   May I come in Sir? What do you do sir? May I attend Bal Sabha, sir?
	if re.findall(r'\(NP \((NNP|NN) (Sir|sir)\)\)\)\) \(. \?\)',line1):
#		print "rule1"
		line1 = re.sub('\(NP \((NNP|NN) (Sir|sir)\)\)\)\)',r')) (S (NP (\1 \2)))',line1)
	# What is the duration [of these courses sir]? Could you suggest the names [of some Institutes sir]? 
	if '(NN sir))))) (. ?)' in line1:
#		print "rule2"
		line1 = re.sub('\(NN sir\)\)\)\)\)', ')))) (S (NP (NN sir)))',line1)
	#Could you suggest me some course sir? 
	if '(NN sir)))) (. ?)' in line1:
#		print "rule03"
		line1 = re.sub('\(NN sir\)\)\)\)', '))) (S (NP (NN sir)))',line1)
	#Which way is the office madam?
	if '(NN madam))) (. ?)' in line1:
#		print "rule3"
		line1 = re.sub('\(NN madam\)\)\)', ')) (S (NP (NN madam)))', line1)

#===================== category corrections =====================================================
	# He observes [the fast] of Ramadan. In the evening the people break [their fast]. Suggested by Rajini 1-10-16
	if re.findall(r'\((DT|PRP\$) \w+\) \(JJ fast\)',line1):
		#print "rule4"
		line1 = re.sub('\((DT|PRP\$) (\w+)\) \(JJ fast\)', r'(\1 \2) (NN fast)', line1)
	#In all the old diseases one should [fast] in some form. I do the fast a couple times a year. 
	if re.findall(r'\((MD|DT) \w+\) \(ADVP \(RB fast\)',line1):
		#print "rule5"
		line1 = re.sub('\((MD|DT) (\w+)\) \(ADVP \(RB fast\)', r'(\1 \2) (NP (NN fast)', line1)
	# He cut himself a [great] thick slice of cake. Suggested by Bhagyashri Kulkarni 14-9-16
	if re.findall(r'\(JJ great\) \(JJ' , line1):
		#print "rule6"
		line1 = re.sub('\(JJ great\) \(JJ', '(RB great) (JJ',line1)
	# [Does] Lata come to your house?	Suggested by Chaitanya Sir 17-09-16
	if re.findall(r'\(ROOT \(SQ \(NNP (Does|Do)\)',line1):
		#print "rule7"
		line1 = re.sub('\(ROOT \(SQ \(NNP (Does|Do)\)', r'(ROOT (SQ (VB \1)',line1)
	# May I come [in] Sir?
	if re.findall(r'\((VBP|VB|VBD) \w+\) \(PP \(IN \w+\) \)\)',line1):
		#print "rule8"
		line1 = re.sub('\((VBP|VB|VBD) (\w+)\) \(PP \(IN (\w+)\) \)\)', r'(\1 \2) (PRT (RP \3) ))',line1)
	# Ice gets [formed]. 		Suggested by Chaitanya Sir 11-08-16
	if re.findall(r'\(VBZ (gets|get|getting)\) \(ADJP \(VBN \w+\)\)\)', line1):
		#print "rule 9"
		line1 = re.sub('\(VBZ (gets|get|getting)\) \(ADJP \(VBN (\w+)\)\)\)', r'(VBZ \1) (VP (VBN \2)))' , line1)
	# They are [educated]. 		Suggested by Chaitanya Sir 11-08-16
	if re.findall(r'\(VBP \w+\) \(ADJP \(VBN \w+\)\)\)', line1):
		#print "rule 10"
		line1 = re.sub('\(VBP (\w+)\) \(ADJP \(VBN (\w+)\)\)\)', r'(VBP \1) (ADJP (JJ \2)))' , line1)
	#Yes madam. Believe me madam it is our economy pack. In which area sir? Good evening sir.
	if re.findall(r'\(VP \((VBP|VB) (madam|Madam|Sir|sir)', line1):
#		print "rule 11"
		line1 = re.sub(r'\(VP \((VBP|VB) (madam|Madam|Sir|sir)', r'(NP (NN \2', line1)
	# [Talk] respectfully with elders. Suggested by Chaitanya Sir 19-10-16
	# An article is compulsory if noun is singular and countable
	if re.findall(r'\(ROOT \(NP \(NP \(NN \w+\)',line1):
		m = line2.split('$') 
		m1 = m[0].split('/')
#		print  m1[1][len(m1[0])-1:], m1[1][:len(m1[0])-1].lower()
		if m1[1][len(m1[0])-1:] == '<n><sg>' and m1[1][:len(m1[0])-1].lower() not in uncountable1.split(): # check singular and countable
			if len(m1) > 2:
				if m1[2][len(m1[0])-1:].startswith("<vblex>"):					   # check verb form exists
					line1 = re.sub('\(ROOT \(NP \(NP \(NN (\w+)\)' ,r'(ROOT (S (VP (VB \1)',line1)
	print line1 


