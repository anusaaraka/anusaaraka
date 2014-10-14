MYPATH=$HOME_anu_tmp/tmp

cd $MYPATH/$1_tmp/$2

echo " "

sed 's/(Eng_sen / Eng sen : /g' English_sentence.dat | sed 's/)//g'  > eng_sent

cat eng_sent >> slot_debug_input.txt

sed 's/(manual_hin_sen//g' manual_hindi_sen.dat | sed 's/)//g' > man_sent

wx_utf8 < man_sent >  man_sent_wx
wx_utf8 < hindi_sentence.dat > hindi_sentence_wx.dat 

sed 's/^/ Anu : /g'  hindi_sentence_wx.dat >> slot_debug_input.txt
sed 's/^/ Manual sen : /g' man_sent_wx >>  slot_debug_input.txt 

python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/align_debug/print_matrix.py slot_debug_input.txt  English_sentence.dat  manual_word.dat > $1_table
perl $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/align_debug/create-html-table.pl < $1_table >$HOME/$1_table1.html
sed -e 's/<TD>\(.*\)BGCOLOR="#CCFFFF"/<TD BGCOLOR="#CCFFFF" > \1 /g' < $HOME/$1_table1.html | sed -e 's/<TD>\(.*\)BGCOLOR="#DFA800"/<TD BGCOLOR="#DFA800"> \1 /g' > $HOME/$1_$2_table.html

firefox $HOME/$1_$2_table.html
