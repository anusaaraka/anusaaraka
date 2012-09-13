 
 sh transliteration-script.sh $1/$2_tmp proper_nouns_list 2> /dev/null
 
 wx_utf8 < $1/$2_tmp/proper_nouns_list.wx > $1/$2_tmp/proper_nouns_list.utf8
# paste $1/$2_tmp/proper_nouns_list $1/$2_tmp/proper_nouns_list.wx |sed 's/\(.*\)\t\(.*\)/@PropN-\1-PropN\t\2/g'|uniq  > $1/$2_tmp/proper_nouns.txt
 paste $1/$2_tmp/proper_nouns_list $1/$2_tmp/proper_nouns_list.utf8 |sed 's/\(.*\)\t\(.*\)/@PropN-@\1-@PropN\t\2/g'|uniq  > $1/$2_tmp/proper_nouns_utf8.txt
 
 echo "sed 's/dummy_sed//g' < \$1 " > $1/$2_tmp/dummy_sed_fact
 #sed  "s/\(.*\)\t\(.*\)/| sed 's\/\1\/\2\/g' /g" < $1/$2_tmp/proper_nouns.txt |sed 's/@/[@]\*/g' | sed 's/| $//g' > $1/$2_tmp/proper_nouns_tmp.txt
 sed  "s/\(.*\)\t\(.*\)/| sed 's\/\1\/\2\/g' /g" < $1/$2_tmp/proper_nouns_utf8.txt |sed 's/@/[@]\*/g' | sed 's/| $//g' > $1/$2_tmp/proper_nouns_utf8_tmp.txt
 
 #cat $1/$2_tmp/dummy_sed_fact $1/$2_tmp/proper_nouns_tmp.txt |tr '\n' ' '  > $1/$2_tmp/proper_nouns.sh
 cat $1/$2_tmp/dummy_sed_fact $1/$2_tmp/proper_nouns_utf8_tmp.txt |tr '\n' ' ' >  $1/$2_tmp/proper_nouns_utf8.sh

 rm $1/$2_tmp/proper_nouns_list.utf8 $1/$2_tmp/proper_nouns_utf8.txt $1/$2_tmp/dummy_sed_fact $1/$2_tmp/proper_nouns_utf8_tmp.txt $1/$2_tmp/proper_nouns_list_tmp-clean-word $1/$2_tmp/proper_nouns_list_intermediate_out 
 #rm $1/$2_tmp/proper_nouns_list.utf8 $1/$2_tmp/proper_nouns_utf8.txt $1/$2_tmp/dummy_sed_fact $1/$2_tmp/proper_nouns.txt $1/$2_tmp/proper_nouns_tmp.txt $1/$2_tmp/proper_nouns_utf8_tmp.txt $1/$2_tmp/proper_nouns_list_tmp-clean-word $1/$2_tmp/proper_nouns_list_intermediate_out 
