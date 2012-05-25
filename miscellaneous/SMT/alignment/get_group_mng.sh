cut -f2 $1 >$1.tmp
cut -f1 $1 >$1.tmp1
cut -f3 $1 >$1.tmp2
paste $1.tmp1 $1.tmp2 >$1.tmp3
sed -n '1h;2,$H;${g;s/\n/ /g;p}'  $1.tmp | sed 's/<Sentence id="1">//g' | sed 's/<\/Sentence>//g' |sed 's/((/(position-cat-man_grp_mng\t/g' | sed -n '1h;2,$H;${g;s/))/\t)\n/g;p}' | sed -e 's/^[ ]*//g' > $1.tmp4

sed 's/[0-9]*[.][0-9]*.*//g' $1.tmp3 | sed 's/^xx//g' | sed 's/^yy//g' | sed 's/<Sentence id="1">.*//g' | sed 's/<\/Sentence>//g' |sed 's/^\t//g' |sed '/^$/d' > $1.tmp5

paste $1.tmp4 $1.tmp5 > $1.tmp6

sed 's/\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)/\1\t\4\t\5\t\2\t-\t-\3/g' $1.tmp6 | sed 's/\(.\)?/\1 @PUNCT-QuestionMark/g' | sed 's/\(.\),/\1 @PUNCT-Comma/g' |  sed 's/\(.\)\([^0-9]\)\./\1\2 @PUNCT-Dot/g' | sed 's/\(.\)``/\1 @PUNCT-DoubleQuote/g' | sed "s/\(.\)' '/\1 @PUNCT-DoubleQuote/g" | sed 's/\(.\);/\1 @PUNCT-Semicolon/g' | sed 's/\(.\):/\1 @PUNCT-Colon/g' |  sed "s/\(.\)[\'\`\']/\1 @PUNCT-SingleQuote/g" | sed 's/\(.\)(/\1 @PUNCT-OpenParen/g' | sed 's/)\(.\)/\1 @PUNCT-ClosedParen/g' | sed 's/\(.\)!/\1 @PUNCT-Exclamation/g' | sed 's/\(.\)\$/\1 @SYM-Dollar/g'   > $1.tmp7

# sed 's/\(.\)(/\1left_paren/g' | sed 's/)\(.\)/\1right_paren /g' | 

