#/bin/sh
 timeout 300 myclips -f $HOME_anu_test/miscellaneous/SMT/MINION/browser/run_hin_align_html.bat > $3/tmp/$2_tmp/xml.err
 timeout 300 myclips -f $HOME_anu_test/miscellaneous/SMT/MINION/browser/run_eng_align_html.bat >> $3/tmp/$2_tmp/xml.err

 sh $HOME_anu_test/bin/replace-abbrevations.sh $3/tmp/$2_tmp/$2_align_tmp.html $3/tmp/$2_tmp/$2_align_tmp1.html  
 sh $HOME_anu_test/bin/replace-abbrevations.sh $3/tmp/$2_tmp/$2_eng_align_tmp.html $3/tmp/$2_tmp/$2_eng_align_tmp1.html  

#Replacing nonascii characters in html. Added by Roja(26-06-12)
 sed  's/@nonascii/nonascii/g' $3/tmp/$2_tmp/$2_align_tmp1.html > $3/tmp/$2_tmp/$2_align_tmp2.html
 sed  's/@nonascii/nonascii/g' $3/tmp/$2_tmp/$2_eng_align_tmp1.html > $3/tmp/$2_tmp/$2_eng_align_tmp2.html
 $HOME_anu_test/Anu_src/replace_nonascii-chars.out $3/tmp/$2_tmp/$2_align_tmp2.html $3/tmp/$2_tmp/$2_align_tmp3.html 
 $HOME_anu_test/Anu_src/replace_nonascii-chars.out $3/tmp/$2_tmp/$2_eng_align_tmp2.html $3/tmp/$2_tmp/$2_eng_align_tmp3.html 

#Replacing mapping symbols with its original SYMBOL. Added by Roja (14-03-13)

# $HOME_anu_test/Anu/stdenglish/replace-mapping-symbols.out < $3/tmp/$2_tmp/$2_align_tmp3.html > $3/tmp/$2_tmp/$2_align_tmp4.html
# $HOME_anu_test/Anu/stdenglish/replace-mapping-symbols.out < $3/tmp/$2_tmp/$2_eng_align_tmp3.html > $3/tmp/$2_tmp/$2_eng_align_tmp4.html

#Replacing transliteration o/p
 sh $3/tmp/$2_tmp/proper_nouns_utf8.sh $3/tmp/$2_tmp/$2_align_tmp3.html > $4/$2_align.html
 sh $3/tmp/$2_tmp/proper_nouns_utf8.sh $3/tmp/$2_tmp/$2_eng_align_tmp3.html > $4/$2_eng_align.html
 
 cp $HOME_anu_test/miscellaneous/SMT/MINION/browser/hindi_alignment.css $HOME_anu_test/miscellaneous/SMT/MINION/browser/hindi_alignment.js $4
 cp $HOME_anu_test/miscellaneous/SMT/MINION/browser/eng_anu_man_hin.css $HOME_anu_test/miscellaneous/SMT/MINION/browser/eng_anu_man_hin.js $4
