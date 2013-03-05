# This program takes an input file and runs shallow_parser_hin on one sentence at a time. The output is appended in the file ssf.out
# Written by Sukhada (22-11-11)
# To run:  python run_shallow_parser.py INPUT_FILE

import sys, commands

out_f = sys.argv[1]
out_file = str(out_f) + '.out'
rm_out_file = 'rm ' +  out_file
commands.getoutput(rm_out_file)
run_parser_cmd = "timeout 30 shallow_parser_hin --mode=debug --in_encoding=utf --out_encoding=utf --input=tmp --output=tmp1 "+ " 2>error"

fw1 = open(out_file, 'a')
for i in file(sys.argv[1]):
	fw = open('tmp', 'w')
	fw.write(i)
	fw.close()
	commands.getoutput(run_parser_cmd)
	cat_command = 'echo ' + "';~~~~~~~~~~'" + '>> ' + 'tmp1'
        commands.getoutput(cat_command)
	cat_output = 'cat tmp1 >>' + out_file
	commands.getoutput(cat_output)
	commands.getoutput("rm tmp")
	commands.getoutput("rm tmp1")
fw1.close()
