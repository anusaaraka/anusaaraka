#/bin/sh
 timeout 300 myclips -f $HOME_anu_test/miscellaneous/SMT/MINION/browser/run_hin_align_html.bat > $3/tmp/$2_tmp/xml.err

 sh $HOME_anu_test/bin/replace-abbrevations.sh $3/tmp/$2_tmp/$2_align_tmp.html $3/tmp/$2_tmp/$2_align_tmp1.html  

#Replacing nonascii characters in html. Added by Roja(26-06-12)
 sed  's/@nonascii/nonascii/g' $3/tmp/$2_tmp/$2_align_tmp1.html > $3/tmp/$2_tmp/$2_align_tmp2.html
 $HOME_anu_test/Anu_src/replace_nonascii-chars.out $3/tmp/$2_tmp/$2_align_tmp2.html $3/tmp/$2_tmp/$2_align_tmp3.html 

#Replacing SYMBOL-NAME with its original SYMBOL. Added by Roja(18-10-12)
 sort -u $3/tmp/$2_tmp/Symbols.txt_tmp > $3/tmp/$2_tmp/Symbols.txt
 echo "dummy_sed	" >>   $3/tmp/$2_tmp/Symbols.txt
 sed 's/^/sed \"s\//g'  $3/tmp/$2_tmp/Symbols.txt  |  sed 's/\t/\//g' | sed 's/$/\/g\" /g' |  sed -n '1h;2,$H;${g;s/\n/ /g;p}' | sed 's/g\"/g\" $1 /' | sed 's/ sed/| sed/g'   > $3/tmp/$2_tmp/Symbols.sh
 #sed 's/@SYMBOL/SYMBOL/g'  $3/tmp/$2_tmp/$2_align_tmp3.html | sed 's/ SYMBOL/SYMBOL/g' | sed 's/ \///g'  | sed "s/\([_>'\"]\)SYMBOL/\1 SYMBOL/g" | sed "s/SYMBOL-\([A-Z\-]*\)/SYMBOL-\1 /g"  | sh $3/tmp/$2_tmp/Symbols.sh > $3/tmp/$2_tmp/$2_align_tmp4.html
 sed 's/@SYMBOL/SYMBOL/g'  $3/tmp/$2_tmp/$2_align_tmp3.html | sed 's/ \///g'  | sed "s/\([_>'\"]\)SYMBOL/\1 SYMBOL/g" | sed "s/SYMBOL-\([A-Z\-]*\)/SYMBOL-\1 /g"  | sed 's/SYMBOL-DOT /SYMBOL-DOT/g' | sed 's/^SYMBOL/ SYMBOL/g' | sh $3/tmp/$2_tmp/Symbols.sh > $3/tmp/$2_tmp/$2_align_tmp4.html

 sh $3/tmp/$2_tmp/proper_nouns_utf8.sh $3/tmp/$2_tmp/$2_align_tmp4.html > $4/$2_align.html
 
 cp $HOME_anu_test/miscellaneous/SMT/MINION/browser/hindi_alignment.css $HOME_anu_test/miscellaneous/SMT/MINION/browser/hindi_alignment.js $4
