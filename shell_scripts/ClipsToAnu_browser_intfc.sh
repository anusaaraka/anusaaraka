
cd $2/tmp/$1_tmp/
 if [ "$4" = "REMOVE_TITLE" ] ;  ##Added if-else loop to differentiate b/w server and local   
    then
 $HOME/timeout 300 myclips -f $HOME_anu_test/Anu_clp_files/run_html.bat > $2/tmp/$1_tmp/xml.err
 perl $HOME_anu_test/Anu_src/hnd_translation.pl $1 $2 $4 

else
 timeout 300 myclips -f $HOME_anu_test/Anu_clp_files/run_html.bat > $2/tmp/$1_tmp/xml.err
 perl $HOME_anu_test/Anu_src/hnd_translation.pl $1 $2  

fi

###Added by Roja (13-07-11) To handle abbrevations in Browsers.
sh $HOME_anu_test/bin/replace-abbrevations.sh $2/tmp/$1_tmp/$1_tmp.html $2/tmp/$1_tmp/$1_tmp1.html 
sh $HOME_anu_test/bin/replace-abbrevations.sh $2/tmp/$1_tmp/$1_tran_tmp.html $2/tmp/$1_tmp/$1_tran_tmp1.html
sh $HOME_anu_test/bin/replace-abbrevations.sh $2/tmp/$1_tmp/$1_trnsltn_tmp.html $2/tmp/$1_tmp/$1_trnsltn_tmp1.html

##replacing non ascii characters in html files Added by Roja (26-06-12)
$HOME_anu_test/Anu_src/replace_nonascii-chars.out $2/tmp/$1_tmp/$1_tmp1.html $3/$1.html
$HOME_anu_test/Anu_src/replace_nonascii-chars.out $2/tmp/$1_tmp/$1_tran_tmp1.html $3/$1_tran.html

###Added by Mahalaxmi. (3-05-12) To transliterate proper nouns in Browsers.
#sh $2/tmp/$1_tmp/proper_nouns_utf8.sh $2/tmp/$1_tmp/$1_tmp2.html > $3/$1.html
#sh $2/tmp/$1_tmp/proper_nouns_utf8.sh $2/tmp/$1_tmp/$1_tran_tmp2.html > $3/$1_tran.html

wx_utf8 $2/tmp/$1_tmp/$1_trnsltn_tmp1.html > $2/tmp/$1_tmp/$1_trnsltn_tmp2.html

##replacing non ascii characters in translation file Added by Roja (26-06-12)
$HOME_anu_test/Anu_src/replace_nonascii-chars.out $2/tmp/$1_tmp/$1_trnsltn_tmp2.html $3/$1_trnsltn.html

#sh $2/tmp/$1_tmp/proper_nouns_utf8.sh $2/tmp/$1_tmp/$1_trnsltn_tmp3.html > $3/$1_trnsltn.html
