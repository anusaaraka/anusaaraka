
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

##replacing non ascii characters in html files Added by Roja (26-06-12)
$HOME_anu_test/Anu_src/replace_nonascii-chars.out $2/tmp/$1_tmp/$1_tmp1.html $2/tmp/$1_tmp/$1_tmp2.html
$HOME_anu_test/Anu_src/replace_nonascii-chars.out $2/tmp/$1_tmp/$1_tran_tmp1.html $2/tmp/$1_tmp/$1_tran_tmp2.html

#Replacing SYMBOL-NAME etc with original Symbols in html files. Added by Roja(18-10-12) 
sort -u Symbols.txt_tmp > Symbols.txt    
echo "dummy_sed	" >>   Symbols.txt
sed 's/^/sed \"s\//g'  Symbols.txt  |  sed 's/\t/\//g' |sed 's/$/\/g\" /g' |  sed -n '1h;2,$H;${g;s/\n/ /g;p}' | sed 's/g\"/g\" $1 /' | sed 's/ sed/| sed/g'   > Symbols.sh 
sed 's/@SYMBOL/SYMBOL/g'  $2/tmp/$1_tmp/$1_tmp2.html   | sed "s/\([_>'\"]\)SYMBOL/\1 SYMBOL/g" |  sed "s/SYMBOL-\([A-Z\-]*\)/SYMBOL-\1 /g"      | sh Symbols.sh  > $2/tmp/$1_tmp/$1_tmp3.html
sed 's/@SYMBOL/SYMBOL/g'  $2/tmp/$1_tmp/$1_tran_tmp2.html    | sh Symbols.sh  > $2/tmp/$1_tmp/$1_tran_tmp3.html

###Added by Mahalaxmi. (3-05-12) To transliterate proper nouns in Browsers.
sh $2/tmp/$1_tmp/proper_nouns_utf8.sh $2/tmp/$1_tmp/$1_tmp3.html > $3/$1.html
sh $2/tmp/$1_tmp/proper_nouns_utf8.sh $2/tmp/$1_tmp/$1_tran_tmp3.html > $3/$1_tran.html

##replacing non ascii characters in translation file Added by Roja (26-06-12)
$HOME_anu_test/Anu_src/replace_nonascii-chars.out $2/tmp/$1_tmp/$1_trnsltn_tmp.html $2/tmp/$1_tmp/$1_trnsltn_tmp1.html

sh $HOME_anu_test/bin/replace-abbrevations.sh $2/tmp/$1_tmp/$1_trnsltn_tmp1.html $2/tmp/$1_tmp/$1_trnsltn_tmp2.html

#Replacing SYMBOL-NAME etc with original Symbols in translation file. Added by Roja(18-10-12) 
sed 's/@SYMBOL/SYMBOL/g'  $2/tmp/$1_tmp/$1_trnsltn_tmp2.html | sh Symbols.sh  > $2/tmp/$1_tmp/$1_trnsltn_tmp3.html

wx_utf8 < $2/tmp/$1_tmp/$1_trnsltn_tmp3.html > $2/tmp/$1_tmp/$1_trnsltn_tmp4.html

sh $2/tmp/$1_tmp/proper_nouns_utf8.sh $2/tmp/$1_tmp/$1_trnsltn_tmp4.html > $3/$1_trnsltn.html
