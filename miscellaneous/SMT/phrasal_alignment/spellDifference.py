import sys
file1 = open(sys.argv[1],'r')
file2 = open(sys.argv[2],'r')
def compare(string1, string2, no_match_c=' ', match_c='|'):
    if len(string2) < len(string1):
        string1, string2 = string2, string1
#	print string1,string2
    result = ''
    n_diff = 0
    i = 0
    l1 = len(string2)-1
    diff = len(string2)-len(string1)
    for j in range(0,len(string1)):
       result
       if i<=l1:
	if string2[i]==string1[j]:
           	    result += match_c
		    i = i+1			
       	else: 
		    i = i+1
		    result += no_match_c
		    result
		    n_diff +=1	
		    if i-j<=diff:										
			    if string2[i] == string1[j]:
				result += match_c
				i = i+1
				continue
  			    else:
				if i<l1:
				  i = i+1
				  result1=result
				  result += no_match_c
				  n_diff +=1
				  if string2[i]==string1[j]:
					result += match_c
					i=i+1
				  else:
					n_diff = n_diff-1 
					i=i-1
  					result = result1
    if i== l1:
		result += no_match_c
		n_diff +=1
				
    if i != l1:
	        delta = len(string2)-i
	        result += delta * no_match_c
	        n_diff += delta
    return (result, n_diff)

def main():
    DEBUG = False
    if len(sys.argv) > 3:
        DEBUG = True
    lines1 = file1.readlines() 
    lines2 = file2.readlines()
    for i in range(0,len(lines1)):
	       
        line1 = lines1[i].strip()
	line2 = lines2[i].strip()
	word1 = line1.split()
	word2 = line2.split()
	for j in range(0,len(word1)):
		string1 = word1[j]
		string2 = word2[j]
#		print string1
#		print string2
		l = len(string1)
       		result, n_diff = compare(string1, string2, no_match_c='_')
        	if n_diff <= l/2:
#			print ( string1 + "," + string2 + "\t suggested word match with diff-----------------------------------------------: %d difference(s)." % n_diff)
			print '(correct_word-wrong_word-difference ' + '\t' +  string1 + '\t' +  string2 +  '\t' + str(n_diff) + ')'
#		else:
#			print '(correct_word-wrong_word-difference ' + '\t' +  string1 + '\t' + string2 + '\t' + str(n_diff) + ')'
        	#	print (string1 + "," + string2 +  " \t suggested word does not match as the diff is : %d difference(s)." % n_diff)
		if DEBUG:
                	print (string1)
                	print (result)
               		print (string2)

main()

