MYPATH=`pwd`
rm -rf $1/phrasal_error
echo "extracting values for the given keys"   >> $1/phrasal_error
./gdbm-fetch.out  en-hi-gdbm-dict.gdbm  $1/key.dat > $1/key-val.dat  2>> $1/phrasal_error
echo "searching values in hindi sentence"  >> $1/phrasal_error
python match_value_in_hnd.py  $1/hnd  $1/key-val.dat $1/graph_input $1/eng_tok_org $1/graph_output $1/english_left_over.dat > $1/match-value.dat 2>> $1/phrasal_error
echo "Phrase alignment" >> $1/phrasal_error
python print_shortest_path.py $1/match-value.dat  $1/graph_output > $1/shortest-path-value.dat 2>> $1/phrasal_error
python count.py $1/shortest-path-value.dat $1/count_dict.dat  $1/count_dict_with_length.dat 2>> $1/phrasal_error
sh sort.sh $1/count_dict_with_length.dat $1/sorted_file.dat  2>> $1/phrasal_error
python get_phrase.py  $1/hnd  $1/sorted_file.dat $1/shortest-path-value.dat $1/left-over-words.dat > $1/align_eng.dat 2>> $1/phrasal_error
python map-eng-offset.py  $1/align_eng.dat  $1/map.dat > $1/mapped.dat 2>> $1/phrasal_error
echo "Word alignment" >> $1/phrasal_error
python get_word_align.py Word-to-Word-dict.txt   $1/mapped.dat $1/hnd $1/left > $1/wrd-to-wrd.txt1 2>> $1/phrasal_error
echo "Aligning left over words" >> $1/phrasal_error  2>> $1/phrasal_error
python align-left-over-wrds.py  $1/wrd-to-wrd.txt1  $1/hnd  $1/left $1/left-over-words.dat $1/align_left_over_wrds.dat > $1/wrd-to-wrd.dat 2>> $1/phrasal_error
python mapping.py $1/wrd-to-wrd.dat > $1/mapped1.dat 2>> $1/phrasal_error

#===================================== Mapping punctuations in alignment ===========================================
./replace-punctuation.out < $1/hnd > $1/hnd1
./replace-punctuation.out < $1/mapped1.dat  > $1/mapped2.dat

#sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g'  $1/hnd1 | sed 's/_/ /g' | sed 's/  / /g'| sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/\([^0-9]\)\.)\n/\1 PUNCT-Dot)\n/g;p}'| sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g'  | sed 's/nonascii/@nonascii/g' > $1/one_sen_per_line_manual_hindi_sen.txt


sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g'   $1/mapped2.dat  | sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g' | sed 's/nonascii/@nonascii/g'  > $1/word-alignment.dat

