cut -f2 $1 >$1.tmp
cut -f1 $1 >$1.tmp1
cut -f3 $1 >$1.tmp2
$HOME_anu_test/miscellaneous/SMT/MINION/alignment/replace_wrd_with_id.out $1.tmp1 $1.tmp2 $1.tmp1.intermediate $1.tmp2.intermediate
paste $1.tmp1.intermediate $1.tmp2.intermediate >$1.tmp3

sed -n '1h;2,$H;${g;s/\n/ /g;p}'  $1.tmp | sed 's/<Sentence id="1">//g' | sed 's/<\/Sentence>//g' |sed 's/((/(position-cat-man_grp_mng\t/g' | sed 's/))/\t)\n/g' | sed -e 's/^[ ]*//g' > $1.tmp4

sed 's/[0-9]*[.][0-9]*.*//g' $1.tmp3 | sed 's/^xx//g' | sed 's/^yy//g' | sed 's/<Sentence id="1">.*//g' | sed 's/<\/Sentence>//g' |sed 's/^\t//g' |sed '/^$/d' > $1.tmp5

paste $1.tmp4 $1.tmp5 > $1.tmp6

sed 's/\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)/\1\t\4\t\5\t\2\t-\t-\3/g' $1.tmp6 | sed 's/PSP:?/PSP/g' |sed 's/\(.\)?/\1 @PUNCT-QuestionMark/g' | sed 's/\(.\),/\1 @PUNCT-Comma/g' |  sed 's/\(.\)\([^0-9]\)\./\1\2 @PUNCT-Dot/g' | sed 's/\(.\)``/\1 @PUNCT-DoubleQuote/g' | sed "s/\(.\)' '/\1 @PUNCT-DoubleQuote/g" | sed 's/\(.\);/\1 @PUNCT-Semicolon/g' | sed 's/\(.\):/\1 @PUNCT-Colon/g' |  sed "s/\(.\)[\'\`\']/\1 @PUNCT-SingleQuote/g" | sed 's/\(.\)[\[(]/\1 @PUNCT-OpenParen/g' | sed 's/[])]\(.\)/\1 @PUNCT-ClosedParen/g' | sed 's/\(.\)!/\1 @PUNCT-Exclamation/g' |  sed 's/\(.\)"/\1 @PUNCT-DoubleQuote/g'   > $1.tmp7

#sed 's/\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)/\1\t\4\t\5\t\2\t-\t-\3/g' $1.tmp6 | sed 's/PSP:?/PSP/g' |sed 's/\(.\)?/\1 @PUNCT-QuestionMark/g' | sed 's/\(.\),/\1 @PUNCT-Comma/g' |  sed 's/\(.\)\([^0-9]\)\./\1\2 @PUNCT-Dot/g' | sed 's/\(.\)``/\1 @PUNCT-DoubleQuote/g' | sed "s/\(.\)' '/\1 @PUNCT-DoubleQuote/g" | sed 's/\(.\);/\1 @PUNCT-Semicolon/g' | sed 's/\(.\):/\1 @PUNCT-Colon/g' |  sed "s/\(.\)[\'\`\']/\1 @PUNCT-SingleQuote/g" | sed 's/\(.\)[\[(]/\1 @PUNCT-OpenParen/g' | sed 's/[])]\(.\)/\1 @PUNCT-ClosedParen/g' | sed 's/\(.\)!/\1 @PUNCT-Exclamation/g' | sed 's/\(.\)\$/\1 @SYM-Dollar/g' | sed 's/\(.\)"/\1 @PUNCT-DoubleQuote/g' | sed 's/\(.\)[+]/\1 @SYM-Plus/g' | sed 's/\(.\)=/\1 @SYM-EqualTo/g' | sed 's/\(.\)%/\1 @SYM-Percent/g' | sed 's/\(.\)β/\1 @SYM-Beta/g'  > $1.tmp7
paste $1.tmp $1.tmp3 > $1.tmp8

sed 's/<Sentence id="1">//g' $1.tmp8| sed 's/<\/Sentence>//g' |sed 's/((.*//g' | sed 's/))//g' | sed -e 's/^[ ]*//g' |sed 's/\(.*\)\t\(.*\)\t\(.*\)/(man_id-word-cat\t\2\t\1\t\3)/g' | sed 's/(man_id-word-cat\t\t\t)//g' > $1.tmp8.intermediate

sed 's/\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)/\1\t\4\t\5\t\2\t-\t-\3/g' $1.tmp8.intermediate | sed 's/PSP:?/PSP/g' | sed 's/\(.\)?/\1 @PUNCT-QuestionMark/g' | sed 's/\(.\),/\1 @PUNCT-Comma/g' |  sed 's/\(.\)\([^0-9]\)\./\1\2 @PUNCT-Dot/g' | sed 's/\(.\)``/\1 @PUNCT-DoubleQuote/g' | sed "s/\(.\)' '/\1 @PUNCT-DoubleQuote/g" | sed 's/\(.\);/\1 @PUNCT-Semicolon/g' | sed 's/\(.\):/\1 @PUNCT-Colon/g' |  sed "s/\(.\)[\'\`\']/\1 @PUNCT-SingleQuote/g" | sed 's/\(.\)[([]/\1 @PUNCT-OpenParen/g' | sed 's/[])]\(.\)/\1 @PUNCT-ClosedParen /g' | sed 's/\(.\)!/\1 @PUNCT-Exclamation/g' |  sed 's/\(.\)"/\1 @PUNCT-DoubleQuote/g' | tr -d '\n' | sed 's/)/)\n/g'   > manual_word_tmp.dat

#sed 's/\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)/\1\t\4\t\5\t\2\t-\t-\3/g' $1.tmp8.intermediate | sed 's/PSP:?/PSP/g' | sed 's/\(.\)?/\1 @PUNCT-QuestionMark/g' | sed 's/\(.\),/\1 @PUNCT-Comma/g' |  sed 's/\(.\)\([^0-9]\)\./\1\2 @PUNCT-Dot/g' | sed 's/\(.\)``/\1 @PUNCT-DoubleQuote/g' | sed "s/\(.\)' '/\1 @PUNCT-DoubleQuote/g" | sed 's/\(.\);/\1 @PUNCT-Semicolon/g' | sed 's/\(.\):/\1 @PUNCT-Colon/g' |  sed "s/\(.\)[\'\`\']/\1 @PUNCT-SingleQuote/g" | sed 's/\(.\)[([]/\1 @PUNCT-OpenParen/g' | sed 's/[])]\(.\)/\1 @PUNCT-ClosedParen /g' | sed 's/\(.\)!/\1 @PUNCT-Exclamation/g' | sed 's/\(.\)\$/\1 @SYM-Dollar/g' | sed 's/\(.\)"/\1 @PUNCT-DoubleQuote/g' | tr -d '\n' | sed 's/)/)\n/g' | sed 's/\(.\)=/\1 @SYM-EqualTo/g' | sed 's/\(.\)[+]/\1 @SYM-Plus/g' | sed 's/\(.\)%/\1 @SYM-Percent/g' | sed 's/\(.\)β/\1 @SYM-Beta/g' > manual_word_tmp.dat

cut -f1  $1.tmp3 |sed -n '1h;2,$H;${g;s/\n/))/g;p}'|sed 's/<Sentence id="1">//g' | sed 's/<\/Sentence>//g' |sed 's/^))/(head_id-grp_ids\t/g' |sed 's/))))/\n(head_id-grp_ids\t/g' |sed 's/))/ /g' | sed 's/$/)/g' |sed 's/(head_id-grp_ids\t)//g' > manual_ids_tmp.dat

cut -f2-4 $1 > $1.intermediate
paste $1.tmp1.intermediate $1.intermediate > $1.tmp9
