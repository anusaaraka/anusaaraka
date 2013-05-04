$HOME_anu_test/miscellaneous/SMT/MINION/minion-0.13/bin/minion -findallsols -timelimit 120 minion_input.txt > minion_output_tmp.dat

grep "Sol" minion_output_tmp.dat > minion_output_tmp1.dat

sed 's/Sol: //g' minion_output_tmp1.dat | sed -n '1h;2,$H;${g;s/\n/  /g;p}' | sed 's/ Solution Number: [0-9]*  /\n /g' | sed 's/^/(hindi_multi_order /g' | sed 's/ $/)/g'  | sed '$d'  > minion_output_tmp2.dat
 
while read line
 do
        echo $line > minion_output.dat
        cat minion_output.dat multiple_mngs.dat >> minion_facts.dat
        myclips -f $HOME_anu_test/Anu_clp_files/run_multiple_sen.bat >> $1.error
	rm minion_facts.dat minion_output.dat
 done < minion_output_tmp2.dat

