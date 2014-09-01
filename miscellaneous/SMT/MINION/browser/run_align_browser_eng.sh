#/bin/sh
 timeout 300 myclips -f $HOME_anu_test/miscellaneous/SMT/MINION/browser/run_eng_align_html_phrasal.bat >> $3/tmp/$2_tmp/xml.err

 sh $HOME_anu_test/bin/replace-abbrevations.sh $3/tmp/$2_tmp/$2_eng_align_tmp.html $3/tmp/$2_tmp/$2_eng_align_tmp1.html  

 sed  's/@nonascii/nonascii/g' $3/tmp/$2_tmp/$2_eng_align_tmp1.html > $3/tmp/$2_tmp/$2_eng_align_tmp2.html
 $HOME_anu_test/Anu_src/replace_nonascii-chars.out $3/tmp/$2_tmp/$2_eng_align_tmp2.html $3/tmp/$2_tmp/$2_eng_align_tmp3.html 

 $HOME_anu_test/Anu/stdenglish/replace-mapping-symbols.out < $3/tmp/$2_tmp/$2_eng_align_tmp3.html > $3/tmp/$2_tmp/$2_eng_align_tmp4.html

#Replacing transliteration o/p
 sh $3/tmp/$2_tmp/proper_nouns_utf8.sh $3/tmp/$2_tmp/$2_eng_align_tmp4.html > $4/$2_eng_align.html

 #Generating email related code in alignment html file
 sed '/<!-- Sent Start -->/,/<!-- Sent End -->/d'  $4/$2_eng_align.html > $3/tmp/$2_tmp/$2_eng_align1.html
 var=`wc -l $4/$2.html | awk '{print $1}' `
 var1=$(expr $var - 2)
 sed '1,'$var1' d'  $4/$2_sample2.html >  $3/tmp/$2_tmp/mail
 head -n -2 $3/tmp/$2_tmp/$2_eng_align1.html > $3/tmp/$2_tmp/$2_eng_align2.html
 cat $3/tmp/$2_tmp/$2_eng_align2.html  $3/tmp/$2_tmp/mail  > $4/$2_eng_align1.html
 
 cp $HOME_anu_test/miscellaneous/SMT/MINION/browser/phrasal_alignment.css $HOME_anu_test/miscellaneous/SMT/MINION/browser/phrasal_alignment.js $4
