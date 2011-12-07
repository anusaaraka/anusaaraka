
cd $2/tmp/$1_tmp/
myclips -f $HOME_anu_test/Anu_clp_files/run_create_xml_file.bat > $2/tmp/$1_tmp/xml.err

###Added by Roja (13-07-11) To handle abbrevations in Browsers.
sh $HOME_anu_test/bin/abbr_browser.sh $2/tmp/$1_tmp/$1_tmp.html $3/$1.html

cd $HOME_anu_test/Anu_src/
perl hnd_translation.pl $1 $2

####Added by Roja (13-07-11) To handle abbrevations in Browsers.
sh $HOME_anu_test/bin/abbr_browser.sh $2/tmp/$1_tmp/$1_trnsltn_tmp.html $3/$1_trnsltn.html
