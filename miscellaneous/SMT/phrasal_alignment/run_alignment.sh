MYPATH=`pwd`
rm -rf $1/phrasal_error

sed 's/^/_/g' $1/eng_tok_org | sed 's/ $/_/g' | sed 's/ /_/g' > $1/eng_tok_org1
python  print-ids.py $1/eng_tok_org1  > $1/eng_tok_org2
python  print-ids.py $1/hnd  > $1/hnd2

echo "Map english offsets with Word ids" >> $1/phrasal_error
python map-eng-offset.py $1/key_tmp.dat $1/map.dat  $1/map-wrd-id.dat >  $1/key.dat

echo "extracting values for the given keys"   >> $1/phrasal_error
./gdbm-fetch.out  en-hi-gdbm-dict.gdbm  $1/key.dat > $1/key-val.dat  2>> $1/phrasal_error

echo "searching values in hindi sentence"  >> $1/phrasal_error
python match_value_in_hnd.py  $1/hnd  $1/key-val.dat $1/graph_input $1/eng_tok_org $1/graph_output $1/english_left_over.dat > $1/match-value.dat 2>> $1/phrasal_error

echo "Phrase alignment" >> $1/phrasal_error
./replace-punctuation.out < $1/hnd > $1/hnd1

echo "Getting hindi offsets"  >> $1/phrasal_error
sh get_mul_pat.sh  $1/match-value.dat  $HOME_anu_test/multifast-v1.0.0/src/extract_hindi_key.c 2>> $1/phrasal_error
cd $HOME_anu_test/multifast-v1.0.0/src
rm -f extract_key_in_hindi_phrase extract_key_in_hindi_phrase.o
make >> $1/phrasal_error
sed 's/^_//g'  $1/hnd | sed 's/_$//g' | sed 's/_/ /g'  > $1/hnd-tmp
./extract_key_in_hindi_phrase $1/hnd-tmp  $1/map_hindi_offsets.dat > $1/key_hindi_phrase.dat  2>> $1/phrasal_error
python $MYPATH/map-hindi-offset.py  $1/key_hindi_phrase.dat $1/map_hindi_offsets.dat $1/match-value.dat > $1/match-value-with-hindi-wrdid.dat 2>> $1/phrasal_error

cd $MYPATH
var=`cat $1/graph_output`

if [ "'$var'" == "'NO PATH'" ] ; then
	touch $1/word-alignment.dat
	echo "@Phrase @level @left @over @words::	@NO @PATH" > $1/left-over-words.dat    
	echo "@Phrase @level @left @over @words::	@NO @PATH" > $1/left-over-words1.dat    
	echo "@Phrase @level @left @over @words::	@NO @PATH" > $1/total-left-over1.dat    
        echo "@NO @PATH"	> $1/left
	touch $1/align_left_over_wrds.dat
else
	python print_shortest_path.py $1/match-value-with-hindi-wrdid.dat  $1/graph_output > $1/shortest-path-value.dat 2>> $1/phrasal_error
	python get_phrase.py  $1/shortest-path-value.dat  $1/hnd2 $1/left-over-words1.dat  $1/left-over-words.dat> $1/align_eng.dat 2>> $1/phrasal_error
	python map_eng_offset-to_wrdids.py  $1/align_eng.dat  $1/map-wrd-id.dat > $1/mapped.dat 2>> $1/phrasal_error
	python  map-wrd-offset-anu-ids.py $1/mapped.dat  > $1/mapped-1.dat  2>> $1/phrasal_error
	echo "Word alignment" >> $1/phrasal_error
	python get_word_align.py Word-to-Word-dict.txt   $1/mapped.dat $1/hnd2 $1/left $1/left1 > $1/wrd-to-wrd.txt1 2>> $1/phrasal_error
	echo "Aligning left over words" >> $1/phrasal_error  2>> $1/phrasal_error
#	python align-left-over-wrds.py  $1/wrd-to-wrd.txt1  $1/hnd  $1/left $1/left-over-words.dat $1/align_left_over_wrds.dat > $1/wrd-to-wrd.dat 2>> $1/phrasal_error
	python mapping.py $1/wrd-to-wrd.txt1 > $1/mapped1.dat 2>> $1/phrasal_error

#===================================== Mapping punctuations in alignment ===========================================
	./replace-punctuation.out < $1/mapped1.dat  > $1/mapped2.dat
	./replace-punctuation.out < $1/mapped-1.dat  > $1/mapped3.dat

	sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g'   $1/mapped2.dat  | sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g' | sed 's/nonascii/@nonascii/g'  > $1/word-alignment.dat

#=============================== Displaying left over words at each level ============================================
	cat $1/left-over-words1.dat > $1/total-left-over1.dat
	echo "" >>  $1/total-left-over1.dat
fi
	sed -i 's/\*\*,\*\*/ /g'  $1/left
	echo "@Word @level @left @over @Words::" >> $1/total-left-over1.dat
	cat $1/left >> $1/total-left-over1.dat
	sed -i 's/(hindi_left_over_words//g' $1/total-left-over1.dat 
	sed -i 's/)$//g' $1/total-left-over1.dat
	wx_utf8 < $1/total-left-over1.dat > $1/tmp
	$HOME_anu_test/Anu_src/replace_nonascii-chars.out $1/hnd2 $1/hnd3
	wx_utf8 < $1/hnd3 > $1/hnd4
	cat $1/hnd4 $1/english_left_over.dat   $1/tmp > $1/total-left-over.dat 
	wx_utf8 < $1/align_left_over_wrds.dat >> $1/total-left-over.dat
	echo "Phrasal Alignment EN-HI completed" >> $1/phrasal_error	
