#RUN: sh spell_checker_in_hnd.sh <file-name> <output>
#EX:  sh spell_checker_in_hnd.sh Hnd_tok_file.txt missing_wrd.txt
#Output: missing_wrd.txt
#Note: Input file should be Hnd_tokenised file.
#######################################################################


cd $HOME_anu_test/multifast-v1.4.2/src/phrasal_mwe
bash get_multi_word-dic_single.sh hi_IN.dic.wx.sort hi_IN.dic.c 
bash get_words_list.sh $1 $2
sort -u $2/hindi_words > $2/hindi_words1
sed 's/;//g' $2/hindi_words1 | sed 's/~//g' |sed -n '1h;2,$H;${g;s/^[ ]\n//g;p}' > $2/hindi_words.txt
#sed 's/ / \n/g' $1  | sort -u > $1.txt
$HOME_anu_test/multifast-v1.4.2/src/phrasal_mwe/check_hindi_words_only $2/hindi_words.txt > $2/hindi_wrong_words_tmp.txt
python3 find_missing_hnd_wrd.py  $2/hindi_wrong_words_tmp.txt  $2/hindi_words.txt > $2/hindi_wrong_words_tmp1.txt
