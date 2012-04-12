#/bin/sh
 timeout 300 myclips -f $HOME_anu_test/miscellaneous/SMT/alignment/browser/run_hin_align_html.bat > $3/tmp/$2_tmp/xml.err

 sh $HOME_anu_test/bin/abbr_browser.sh $3/tmp/$2_tmp/$2_align_tmp.html $4/$2_align.html
 
 #sh $1/shell_scripts/ClipsToAnu_browser_intfc.sh $2 $3 $4 $5 #Added $5 by Roja(04-01-12) 
 
 cp $HOME_anu_test/miscellaneous/SMT/alignment/browser/hindi_alignment.css $HOME_anu_test/miscellaneous/SMT/alignment/browser/hindi_alignment.js $4
