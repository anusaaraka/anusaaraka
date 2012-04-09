
cd $2/tmp/$1_tmp/
 if [ "$4" = "REMOVE_TITLE" ] ;  ##Added if-else loop to differentiate b/w server and local   
    then
$HOME/timeout 300 myclips -f $HOME_anu_test/Anu_clp_files/run_eng_ord_html.bat > $2/tmp/$1_tmp/xml.err
$HOME/timeout 300 myclips -f $HOME_anu_test/Anu_clp_files/run_eng_ord_html.bat > $2/tmp/$1_tmp/xml.err
perl $HOME_anu_test/Anu_src/hnd_translation.pl $1 $2 $4 

else
 timeout 300 myclips -f $HOME_anu_test/Anu_clp_files/run_eng_ord_html.bat > $2/tmp/$1_tmp/xml.err
 timeout 300 myclips -f $HOME_anu_test/Anu_clp_files/run_hin_ord_html.bat >> $2/tmp/$1_tmp/xml.err
 perl $HOME_anu_test/Anu_src/hnd_translation.pl $1 $2  

fi
 

###Added by Roja (13-07-11) To handle abbrevations in Browsers.
sh $HOME_anu_test/bin/abbr_browser.sh $2/tmp/$1_tmp/$1_tmp.html $3/$1.html
sh $HOME_anu_test/bin/abbr_browser.sh $2/tmp/$1_tmp/$1_tran_tmp.html $3/$1_tran.html
sh $HOME_anu_test/bin/abbr_browser.sh $2/tmp/$1_tmp/$1_trnsltn_tmp.html $3/$1_trnsltn.html
