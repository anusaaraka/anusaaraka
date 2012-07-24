$HOME_anu_test/miscellaneous/SMT/MINION/minion-0.13/bin/minion -printsolsonly minion_input.txt > minion_output.dat
$HOME_anu_test/miscellaneous/SMT/MINION/alignment/line_count.out minion_output.dat > line_count
paste line_count minion_output.dat > minion_sol_tmp.dat
sed 's/^/(word-slot_matrix /g' minion_sol_tmp.dat | sed 's/$/)/g' > minion.dat
