MYPATH=$HOME_anu_tmp
echo "extracting keys from english sentence"
$HOME_anu_test/multifast-v1.0.0/src/extract_key_using_multifast $1 $MYPATH/tmp/$3_tmp/map.txt > $MYPATH/tmp/$3_tmp/key.txt 
echo "extracting values for the given keys"
./gdbm-fetch.out  en-hi-gdbm-dict.gdbm  $MYPATH/tmp/$3_tmp/key.txt > $MYPATH/tmp/$3_tmp/key-val.txt
echo "searching values in hindi sentence"
python match_value_in_hnd.py  $2  $MYPATH/tmp/$3_tmp/key-val.txt $MYPATH/tmp/$3_tmp/graph $1 > $MYPATH/tmp/$3_tmp/match-value.txt 
echo "Phrase alignment"
python print_shortest_path.py $MYPATH/tmp/$3_tmp/match-value.txt  $MYPATH/tmp/$3_tmp/graph > $MYPATH/tmp/$3_tmp/shortest-path-value.txt
python get_phrase.py  $2  $MYPATH/tmp/$3_tmp/shortest-path-value.txt $MYPATH/tmp/$3_tmp/left-over-words.txt > $MYPATH/tmp/$3_tmp/align_eng.txt
python map-ids.py  $MYPATH/tmp/$3_tmp/align_eng.txt  $MYPATH/tmp/$3_tmp/map.txt $MYPATH/tmp/$3_tmp/mapped.txt
echo "Word alignment"
python get_word_align.py Word-to-Word-dict.txt   $MYPATH/tmp/$3_tmp/mapped.txt $MYPATH/tmp/$3_tmp/hnd $MYPATH/tmp/$3_tmp/left > $MYPATH/tmp/$3_tmp/wrd-to-wrd.txt1
echo "Aligning left over words"
sh split.sh $MYPATH/tmp/$3_tmp/wrd-to-wrd.txt1
sh align.sh $MYPATH/tmp/$3_tmp 
python mapping.py $MYPATH/tmp/$3_tmp/wrd-to-wrd.txt > $MYPATH/tmp/$3_tmp/mapped.txt1

#===================================== Mapping punctuations in alignment ===========================================
./replace-punctuation.out < $MYPATH/tmp/$3_tmp/hnd > $MYPATH/tmp/$3_tmp/hnd1
./replace-punctuation.out < $MYPATH/tmp/$3_tmp/mapped.txt1  > $MYPATH/tmp/$3_tmp/mapped.txt2

sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g'  $MYPATH/tmp/$3_tmp/hnd1 | sed 's/_/ /g' | sed 's/  / /g'| sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/\([^0-9]\)\.)\n/\1 PUNCT-Dot)\n/g;p}'| sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g'   > $MYPATH/tmp/$3_tmp/one_sen_per_line_manual_hindi_sen.txt


sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g'   $MYPATH/tmp/$3_tmp/mapped.txt2  | sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g'  > $MYPATH/tmp/$3_tmp/word-alignment.txt

#sed 's/,/ PUNCT-Comma /g' $MYPATH/tmp/$3_tmp/hnd |  sed 's/?/ PUNCT-QuestionMark /g' | sed 's/``/ PUNCT-DoubleQuote /g' | sed "s/''/ PUNCT-DoubleQuote /g" | sed 's/;/ PUNCT-Semicolon  /g' | sed 's/:/ PUNCT-Colon /g' |  sed "s/[\'\`\']/ PUNCT-SingleQuote /g" | sed 's/"/ PUNCT-DoubleQuote /g' | sed 's/(/ PUNCT-OpenParen /g' | sed 's/)/ PUNCT-ClosedParen /g' | sed 's/!/ PUNCT-Exclamation /g' | sed 's/{/ PUNCT-LeftCurlyBrace /g' | sed 's/}/ PUNCT-RightCurlyBrace /g' | sed 's/\[/ PUNCT-LeftSquareBracket /g' | sed 's/]/ PUNCT-RightSquareBracket /g' | sed 's/=/ SYMBOL-EQUAL-TO /g' | sed 's/+/ SYMBOL-PLUS /g' | sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g' | sed 's/_/ /g' | sed 's/  / /g'| sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/\([^0-9]\)\.)\n/\1 PUNCT-Dot)\n/g;p}'| sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g'   > $MYPATH/tmp/$3_tmp/one_sen_per_line_manual_hindi_sen.txt

#sed 's/,/ PUNCT-Comma /g' $MYPATH/tmp/$3_tmp/mapped.txt1 |  sed 's/?/ PUNCT-QuestionMark /g' | sed 's/``/ PUNCT-DoubleQuote /g' | sed "s/''/ PUNCT-DoubleQuote /g" | sed 's/ ;/  PUNCT-Semicolon  /g' | sed 's/:/ PUNCT-Colon /g' |  sed "s/[\'\`\']\([^s]\)/ PUNCT-SingleQuote \1/g" | sed 's/"/ PUNCT-DoubleQuote /g' | sed 's/\([ \t]\)(/\1  PUNCT-OpenParen /g' | sed 's/\([ \t]\))\([^$]\)/\1  PUNCT-ClosedParen \2/g' | sed 's/\([\t ]\)))$/\1  PUNCT-ClosedParen )/g'|  sed 's/\([\t ]\))_/\1  PUNCT-ClosedParen _/g' | sed 's/!/ PUNCT-Exclamation /g' | sed 's/{/ PUNCT-LeftCurlyBrace /g' | sed 's/}/ PUNCT-RightCurlyBrace /g' | sed 's/\[/ PUNCT-LeftSquareBracket /g' | sed 's/]/ PUNCT-RightSquareBracket /g' | sed 's/=/ SYMBOL-EQUAL-TO /g' | sed 's/+/ SYMBOL-PLUS /g' | sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g' > $MYPATH/tmp/$3_tmp/word-alignment.txt
 
