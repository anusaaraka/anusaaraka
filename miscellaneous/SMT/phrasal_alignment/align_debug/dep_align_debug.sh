PRES_PATH=`pwd`
MYPATH=$HOME_anu_tmp/tmp/$1_tmp

#------------- For Parser tree purpose -----------------------
cd $MYPATH/$2

sed 's/(Eng_sen / Eng sen : /g' English_sentence.dat | sed 's/)//g'  > eng_sent

cat eng_sent >> dependency_debug_input.txt

sed 's/(manual_hin_sen//g' manual_hindi_sen.dat | sed 's/)//g' > man_sent

wx_utf8 < man_sent >  man_sent_wx
wx_utf8 < hindi_sentence.dat > hindi_sentence_wx.dat 

sed 's/^/ Anu : /g'  hindi_sentence_wx.dat >> dependency_debug_input.txt
sed 's/^/ Manual sen : /g' man_sent_wx >>  dependency_debug_input.txt 

python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/align_debug/print_dependency_matrix.py dependency_debug_input.txt eng_parser_grp_rel_ids.dat eng_parser_grp_rel_wrds.dat hindi_parser_grp_rel_ids.dat hindi_parser_grp_rel_wrds.dat > $1_table
#python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/align_debug/print_dependency_matrix.py dependency_debug_input.txt English_sentence.dat  manual_word.dat hindi_parser_mod_rel_ids.dat hindi_parser_mod_rel_wrds.dat eng_parser_mod_rel_ids.dat eng_parser_mod_rel_wrds.dat > $1_table
perl $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/align_debug/create-html-table.pl < $1_table >$HOME/$1_table1.html
sed -e 's/<TD>\(.*\)BGCOLOR="#CCFFFF"/<TD BGCOLOR="#CCFFFF" > \1 /g' < $HOME/$1_table1.html | sed -e 's/<TD>\(.*\)BGCOLOR="#DFA800"/<TD BGCOLOR="#DFA800"> \1 /g' > $HOME/$1_$2_table.html

firefox $HOME/$1_$2_table.html
