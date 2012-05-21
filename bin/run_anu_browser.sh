#/bin/sh

  if [ "$5" = "REMOVE_TITLE" ] ;
    then  
  echo "(REMOVE_TITLE_FROM_HTML)" >> $3/tmp/$2_tmp/1.1/facts_for_eng_html
  echo "(REMOVE_TITLE_FROM_HTML)" >> $3/tmp/$2_tmp/1.1/facts_for_tran_html
  fi


 sh $1/shell_scripts/ClipsToAnu_browser_intfc.sh $2 $3 $4 $5 #Added $5 by Roja(04-01-12) 
 echo "<html><body>" > $4/$2.txt.html
 cat $3/$2 >>$4/$2.txt.html
 echo "</body></html>" >> $4/$2.txt.html

 cp $3/$2 $3/tmp/$2_tmp/
 sh $1/shell_scripts/frame.sh $2 $4
 sh $1/shell_scripts/frame_tran.sh $2 $4

 mkdir $3/tmp/$2_tmp/anu_html
 #cp $1/Browser/img.php $1/Browser/val.js $3/tmp/$2_tmp/anu_html/
 cp $1/Browser/img.php  $3/tmp/$2_tmp/anu_html/

 cd $1/Browser
 cp -r help/*htm $4/help/
# cp cautions.js $4
 cd src
# cp *.html *.js *.css $4
 cp style.css english_hindi.css script.js open.js english_hindi.js shabdanjali.js rows.html help.html popup.css effects.js prototype.js dragdrop.js popup.js cautions.js english_hindi_tran.js english_hindi_tran.css $4

