cut -f2 $1 >$1.tmp
cut -f1 $1 >$1.tmp1
cut -f3 $1 >$1.tmp2
paste $1.tmp1 $1.tmp2 >$1.tmp3
sed -n '1h;2,$H;${g;s/\n/ /g;p}' $1.tmp |sed 's/<Sentence id="1"> //g' | sed 's/<\/Sentence>//g' |sed 's/ (( /(position-cat-man_grp_mng\t/g'| sed 's/( /left_paren /g' |sed 's/ ) / right_paren /g' |sed -n '1h;2,$H;${g;s/ ))/\t)\n/g;p}'  > $1.tmp4
sed 's/[0-9]*[.][0-9]*.*//g' $1.tmp3 | sed 's/<Sentence id="1">.*//g' | sed 's/<\/Sentence>//g' |sed 's/^\t//g' |sed '/^$/d' > $1.tmp5
paste $1.tmp4 $1.tmp5 > $1.tmp6
sed 's/\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)/\1\t\4\t\5\t\2\t-\t-\3/g' $1.tmp6 > $1.tmp7

