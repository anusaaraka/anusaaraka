#Written by Sukada (23-07-14)
#To run: python create-chunk-facts.py <INPUT_FILE> <PATH-to-create-o/p-file>
#RUN:    python create-chunk-facts.py <Chunk-I/p> <$HOME_anu_tmp/tmp/filename_tmp>
#	 Ex:  python create-chunk-facts.py hnd.chunker.wx $HOME_anu_tp/tmp/i22_tmp
#OUTPUT: $HOME_anu_tmp/tmp/filename_tmp/chunk_info.txt 

#Making chunks
import sys
file_name = sys.argv[2]+'/chunks.tmp'
fw = open(file_name, 'w')

lines = 0
for line in file(sys.argv[1]):
	lst =  line.split('\t')
	if lines == 0  and lst[1].startswith('B-'):#line.strip() == '':
		lines += 1
		fw.write('%s\t%s' % (lst[1].strip().split('-')[1],  lst[0]))
	elif line.strip() == '':
		fw.write('\n')
	elif lst[1].startswith('B-'):
		fw.write('\n%s\t%s' % (lst[1].strip().split('-')[1],  lst[0]))
	else:
		fw.write(' %s ' % lst[0])
fw.close()


#Creating CLIPS facts for the chunks and generating their ids
c = 1
ids = []
new_file = sys.argv[2]+'/chunk_info.txt'
fw1 = open(new_file, 'w')
for line in file(file_name):
	if line.strip() == '':
		c = 1
		ids = []
		fw1.write(';~~~~~~~~~~\n')
	else:
		lst =  line.split()
		start_range = c
		end_range = c + len(lst)-1
		for i in range(start_range, end_range):
			ids.append(str(i))
		c = end_range
		fw1.write('(chunk_name-chunk_ids %s %s)\n' % (lst[0], ' '.join(ids)))
		ids = []
		#Uncomment the following lines to print words and their ids:
		#print '(chunk_name-manual_group-sep-manual_ids',
		#print lst[0], ' '.join(lst[1:]), '\t---\t', ' '.join(ids), ')'
fw1.write(';~~~~~~~~~~\n')
fw1.close()
