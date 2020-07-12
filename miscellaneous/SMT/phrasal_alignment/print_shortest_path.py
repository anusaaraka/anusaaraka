# python  print-shortest-path.py ~/GIT/tmp_anu_dir/tmp/i31_tmp/match-value.txt ~/GIT/tmp_anu_dir/tmp/i31_tmp/graph > mul-out
import sys
m_input = open(sys.argv[1], "r")
m_file = m_input.readlines()
g_input = open(sys.argv[2], "r")
g_file = g_input.readlines()

sent_count = 0
flag = 0
for line in m_file:
    graph_out = g_file[sent_count]
#	graph_val = graph_out[2:-3]
    graph_val = graph_out[1:-1]
#        g_lst = graph_val.split("', '") #while using short.py uncomment this
    g_lst = graph_val.split(", ")
    if 'NO PATH' in graph_out:
        flag = 1
    else:
        for i in range(0, len(g_lst)-1):
            lst = line.split()
            if g_lst[i] == lst[2] and g_lst[i+1] == lst[3].strip():
                print(line, end=' ')

if flag == 1:
    print('NO PATH')
