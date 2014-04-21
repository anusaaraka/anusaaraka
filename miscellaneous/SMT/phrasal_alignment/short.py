from collections import deque

def bfs(g, start):
    queue, enqueued = deque([(None, start)]), set([start])
    while queue:
        parent, n = queue.popleft()
        yield parent, n
        new = set(g[n]) - enqueued
        enqueued |= new
        queue.extend([(n, child) for child in new])

def shortest_path(g, start, end):
    parents = {}
    for parent, child in bfs(g, start):
        parents[child] = parent
        if child == end:
            revpath = [end]
            while True:
                parent = parents[child]
                revpath.append(parent)
                if parent == start:
                    break
                child = parent
            return list(reversed(revpath))
    return None # or raise appropriate exception

if __name__ == '__main__':
    # a sample graph

#    graph = {'0': ['1', '2', '3'],
#                '1': ['3'],
#                '2': ['4'],
#                '3': ['4'],
#                '4': []}
#
#    graph = {	'1': ['6', '16'],
#	'6': ['16'],
#	'16': ['18'],
#	'18': ['20'],
#	'20': ['23'],
#	'23': ['27'],
#	'27': ['40', '43'],
#	'40': ['43', '47'],
#	'43': ['47'],
#	'47': ['54', '57'],
#	'54': ['57'],
#	'57': ['62'],
#	'62': ['65', '69', '76'],
#	'65': ['69', '76'],
#	'69': ['76'],
#}

    print(shortest_path(graph, '1', '76'))
#    	print(shortest_path(graph, '16', '20'))

#    print(shortest_path(graph, '0', '3'))

