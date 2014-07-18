MYPATH=`pwd`
#rm -rf $1/phrasal_error

echo "Map english offsets with Word ids" >> $1/phrasal_error
python map-eng-offset.py $1/key-hi-en_tmp.dat $1/map-hi-en.dat  $1/map-wrd-id-hi-en.dat >  $1/key-hi-en.dat

echo "extracting values for the given keys"   >> $1/phrasal_error
./gdbm-fetch.out  hi-en/Hin-Eng-dic.gdbm  $1/key-hi-en.dat > $1/key-val-hi-en.dat

echo "searching values in hindi sentence"  >> $1/phrasal_error
python match_value_in_hnd.py  $1/hnd  $1/key-val-hi-en.dat $1/graph_input-hi-en $1/eng_tok_org $1/graph_output-hi-en $1/english_left_over-hi-en.dat > $1/match-value-hi-en.dat  2>> $1/phrasal_error

echo "Phrase alignment" >> $1/phrasal_error

echo "Getting hindi offsets"  >> $1/phrasal_error
sh get_mul_pat.sh  $1/match-value-hi-en.dat  $HOME_anu_test/multifast-v1.0.0/src/extract_hindi_key.c 2>> $1/phrasal_error
cd $HOME_anu_test/multifast-v1.0.0/src
rm -f extract_key_in_hindi_phrase extract_key_in_hindi_phrase.o
make >> $1/phrasal_error
sed 's/^_//g'  $1/hnd | sed 's/_$//g' | sed 's/_/ /g'  > $1/hnd-tmp
./extract_key_in_hindi_phrase $1/hnd-tmp  $1/map_hindi_offsets-hi-en.dat > $1/key_hindi_phrase-hi-en.dat  2>> $1/phrasal_error
python $MYPATH/map-hindi-offset.py  $1/key_hindi_phrase-hi-en.dat $1/map_hindi_offsets-hi-en.dat $1/match-value-hi-en.dat > $1/match-value-with-hindi-wrdid-hi-en.dat 2>> $1/phrasal_error

cd $MYPATH
var=`cat $1/graph_output-hi-en`

if [ "'$var'" == "'NO PATH'" ] ; then
#        echo '(NO PATH)' >> $1/phrasal_error
	touch $1/word-alignment-hi-en.dat
	echo "(hindi_left_over_words	NO PATH)" > $1/left-over-words-hi-en.dat 
	touch $1/left-hi-en 
	touch $1/mapped3-hi-en.dat 
else
	python print_shortest_path.py $1/match-value-with-hindi-wrdid-hi-en.dat  $1/graph_output-hi-en > $1/shortest-path-value-hi-en.dat  2>> $1/phrasal_error
	python get_phrase.py  $1/shortest-path-value-hi-en.dat  $1/hnd2 $1/left-over-words1-hi-en.dat  $1/left-over-words-hi-en.dat> $1/align_eng-hi-en.dat 2>> $1/phrasal_error
	python map_eng_offset-to_wrdids.py  $1/align_eng-hi-en.dat  $1/map-wrd-id-hi-en.dat > $1/mapped-hi-en.dat  2>> $1/phrasal_error
	python  map-wrd-offset-anu-ids.py $1/mapped-hi-en.dat   > $1/mapped-1-hi-en.dat  2>> $1/phrasal_error
	echo "Word alignment" >> $1/phrasal_error
	python get_word_align.py hi-en/Word-to-word-hi-en.txt   $1/mapped-hi-en.dat $1/hnd2 $1/left-hi-en  $1/left1-hi-en > $1/wrd-to-wrd-hi-en.txt1  2>> $1/phrasal_error
	echo "Aligning left over words" >> $1/phrasal_error
#	python align-left-over-wrds.py  $1/wrd-to-wrd-hi-en.txt1  $1/hnd  $1/left-hi-en $1/left-over-words-hi-en.dat $1/align_left_over_wrds-hi-en.dat > $1/wrd-to-wrd-hi-en.dat 2>> $1/phrasal_error
	python mapping.py $1/wrd-to-wrd-hi-en.txt1 > $1/mapped1-hi-en.dat 2>> $1/phrasal_error

#===================================== Mapping punctuations in alignment ===========================================
	./replace-punctuation.out < $1/mapped1-hi-en.dat  > $1/mapped2-hi-en.dat
	./replace-punctuation.out < $1/mapped-1-hi-en.dat  > $1/mapped3-hi-en.dat

	sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g'   $1/mapped2-hi-en.dat  | sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g' | sed 's/(anu_id-anu_mng-man_mng/(eng_id-eng_wrd-man_wrd/g'  > $1/word-alignment-hi-en.dat

fi
