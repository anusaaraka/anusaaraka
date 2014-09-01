import sys
fp1= open(sys.argv[1],"r")
f = fp1.readlines();
var = "# Parse "+sys.argv[2]+" with score "
flag = 0

for i in xrange(len(f)-1):
	# Printing dummy parse when preffered parse not available. (Added by Sukhada 03-05-13)
	if f[i].startswith("(ROOT") and  f[i+1].startswith("(ROOT") and flag == 0:
		print "(ROOT (S ))"
	if var in f[i]:
		print f[i+1],
		flag = 1

"""
for i in xrange(len(f)):
    if var in f[i]:
        print f[i+1],
#        sys.exit()
fp1.close()
"""
