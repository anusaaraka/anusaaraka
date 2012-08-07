import sys 
min_input = open(sys.argv[1],"r")
fr = min_input.readlines()
m_o = open("minion_output.dat", "w")
start_c = 0

for line in xrange(len(fr)-2):
	if 'Solution found with Value:' in fr[line]:
		start_c = line

if start_c == 0: 
	for line in xrange(start_c, len(fr)-2):
		lst = fr[line].split()
		if len(lst) > 1:
			m_o.write(fr[line])

if start_c > 0: 
	for line in xrange(start_c+1, len(fr)-2):
                lst = fr[line].split()
                if len(lst) > 1:
			m_o.write(fr[line])

