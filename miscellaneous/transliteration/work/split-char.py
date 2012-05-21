#To run: python split-char.py INPUT_FILE > OUTPUT_FILE

import sys
for i in file(sys.argv[1]):
	for char in i:
		print char,

