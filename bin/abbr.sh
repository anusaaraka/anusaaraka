####Any changes done in stdenglish/abbrevation.lex should be updated here and also in replace-abbrevations.sh 


sed 's/(Eng_sen \"//g' English_sentence.dat | sed  's/\")//g' |sed 's/&quot;/\"/g'|  sed 's/\&amp;/&/g' |sed 's/ABBR-ThatIs/i.e./g' | sed 's/ABBR-Example/e.g./g' | sed 's/ABBR-USA/U.S.A./g' | sed 's/ABBR-US/U.S./g' | sed 's/ABBR-UK/U.K./g' | sed 's/ABBR-AD/A.D./g' | sed 's/ABBR-aka/a.k.a/g'| sed 's/ABBR-Dot/./g' | sed 's/PUNCT-DotDotDot/.../g' |  sed "s/ABBR-SingleQuote/'/g" | sed 's/PUNCT-HyphenHyphen/—/g' 

#sed 's/[\@ ]*SYM-Percent/%/g'| sed 's/SYM-Sharp /#/g'| sed 's/SYM-Dollar /$/g'| sed 's/SYM-EmDash/—/g' |sed 's/SYM-Plus/+/g' | sed 's/SYM-EqualTo/=/g'

cat  hindi_sentence.dat | sed 's/PUNCT-DotDotDot/.../g' | sed 's/PUNCT-DotDoubleQuote/."/g'| sed  's/PUNCT-Comma/,/g'| sed  's/PUNCT-Hyphen/-/g'| sed  's/PUNCT-Dot/\./g'|sed  's/PUNCT-Semicolon/;/g'|sed  's/PUNCT-Colon/:/g'|sed  "s/PUNCT-SingleQuote/'/g" |sed  's/PUNCT-DoubleQuote/"/g'| sed 's/PUNCT-QuestionMark/?/g' |sed 's/PUNCT-Exclamation/!/g'| sed 's/PUNCT-OpenParen/(/g' |sed 's/PUNCT-ClosedParen/)/g' | sed 's/PUNCT-OpenClosedParen/()/g' | sed 's/PUNCT-ClosedParenDot/)\./g' | sed 's/PUNCT-OpenClosedParenComma/(),/g'| sed "s/PUNCT-SingleQuoteComma/',/g" | sed "s/PUNCT-TwoSingleQuotes/''/g" | sed 's/ABBR-ThatIs/i.e./g' | sed 's/ABBR-Example/e.g./g' | sed 's/ABBR-USA/U.S.A./g' | sed 's/ABBR-US/U.S./g' | sed 's/ABBR-UK/U.K./g' | sed 's/ABBR-AD/A.D./g' | sed 's/ABBR-aka/a.k.a/g'| sed 's/ABBR-Dot/./g' | sed 's/PUNCT-HyphenHyphen/—/g' > hindi_sentence_tmp.dat
#sed 's/ \\@SYM-Percent/%/g'

#sed 's/[\@ ]*SYM-Percent/%/g' | sed 's/SYM-Dollar /$/g'| sed 's/SYM-Sharp /#/g' | sed 's/SYM-EmDash/—/g' | sed 's/SYM-Plus/+/g' | sed 's/SYM-EqualTo/=/g' |
cat  hindi_sentence_tmp.dat |  sed -e 's/\\@//g' | sed 's/@//g'  > hindi_sentence1.dat
