#/bin/sh
 timeout 300 myclips -f $HOME_anu_test/miscellaneous/SMT/alignment/browser/run_hin_align_html.bat > $3/tmp/$2_tmp/xml.err

 sh $HOME_anu_test/bin/replace-abbrevations.sh $3/tmp/$2_tmp/$2_align_tmp.html $3/tmp/$2_tmp/$2_align_tmp1.html 
 sh $3/tmp/$2_tmp/proper_nouns_utf8.sh $3/tmp/$2_tmp/$2_align_tmp1.html > $4/$2_align.html
 
 cp $HOME_anu_test/miscellaneous/SMT/alignment/browser/hindi_alignment.css $HOME_anu_test/miscellaneous/SMT/alignment/browser/hindi_alignment.js $4
