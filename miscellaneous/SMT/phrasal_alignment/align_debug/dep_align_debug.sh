PRES_PATH=`pwd`
MYPATH=$HOME_anu_tmp/tmp/$1_tmp

#------------- For Parser tree purpose -----------------------
cd $MYPATH/$2

sed 's/(Eng_sen / Eng sen : /g' English_sentence.dat | sed 's/)//g'  > eng_sent

cat eng_sent >> dependency_debug_input.txt

sed 's/(manual_hin_sen//g' manual_hindi_sen.dat | sed 's/)//g' > man_sent

wx_utf8 < man_sent >  man_sent_wx_tmp
wx_utf8 < hindi_sentence.dat > hindi_sentence_wx.dat 

sed  's/PUNCT-Dot/\./g' man_sent_wx_tmp |  sed 's/PUNCT-DotDotDot/.../g' | sed 's/PUNCT-DotDoubleQuote/."/g'| sed  's/PUNCT-Comma/,/g'| sed  's/PUNCT-Hyphen/-/g'| sed  's/PUNCT-Semicolon/;/g'|sed  's/PUNCT-Colon/:/g'|sed  "s/PUNCT-SingleQuote/'/g" |sed  's/PUNCT-DoubleQuote/"/g'| sed 's/PUNCT-QuestionMark/?/g' |sed 's/PUNCT-Exclamation/!/g'| sed 's/PUNCT-OpenParen/(/g' |sed 's/PUNCT-ClosedParen/)/g' | sed 's/PUNCT-OpenClosedParen/()/g' | sed 's/PUNCT-ClosedParenDot/)\./g' | sed 's/PUNCT-OpenClosedParenComma/(),/g'| sed "s/PUNCT-SingleQuoteComma/',/g" | sed "s/PUNCT-TwoSingleQuotes/''/g" | sed 's/ABBR-ThatIs/i.e./g' | sed 's/ABBR-Example/e.g./g' | sed 's/ABBR-USA/U.S.A./g' | sed 's/ABBR-US/U.S./g' | sed 's/ABBR-UK/U.K./g' | sed 's/ABBR-AD/A.D./g' | sed 's/ABBR-aka/a.k.a/g'| sed 's/ABBR-Dot/./g' | sed 's/PUNCT-HyphenHyphen/—/g' | sed 's/\([\\@ ]*\)SYMBOL-\([A-Z12-]+\)/ \1SYMBOL-\2 /g' |  $HOME_anu_test/Anu/stdenglish/replace-mapping-symbols.out > man_sent_wx

sed 's/^/ Anu : /g'  hindi_sentence_wx.dat >> dependency_debug_input.txt
sed 's/^/ Manual sen : /g' man_sent_wx >>  dependency_debug_input.txt 

python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/align_debug/print_dependency_matrix.py dependency_debug_input.txt eng_parser_grp_rel_ids.dat eng_parser_grp_rel_wrds.dat hindi_parser_grp_rel_ids.dat hindi_parser_grp_rel_wrds.dat > $1_table

perl $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/align_debug/create-html-table.pl < $1_table >$HOME/$1_table1.html
sed -e 's/<TD>\(.*\)BGCOLOR="#CCFFFF"/<TD BGCOLOR="#CCFFFF" > \1 /g' < $HOME/$1_table1.html | sed -e 's/<TD>\(.*\)BGCOLOR="#DFA800"/<TD BGCOLOR="#DFA800"> \1 /g' > $HOME/$1_$2_table.html

firefox $HOME/$1_$2_table.html
