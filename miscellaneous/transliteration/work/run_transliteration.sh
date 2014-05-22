 #sed 's/(word-nertype\t//g' $1/$2_tmp/ner.txt | sed 's/\t.*//g' > $1/$2_tmp/proper_nouns_list1
# sort -u $1/$2_tmp/proper_nouns_list1 > $1/$2_tmp/proper_nouns_list_sort 
# tr '[A-Z]' '[a-z]' < $1/$2_tmp/proper_nouns_list_sort > $1/$2_tmp/proper_nouns_list
 sort -u $1/$2_tmp/proper_nouns_list > $1/$2_tmp/proper_nouns_list_sort
 cp $1/$2_tmp/proper_nouns_list_sort $1/$2_tmp/proper_nouns_list
 sh transliteration-script.sh $1/$2_tmp proper_nouns_list 2> /dev/null

 #To get proper noun gdbm (17-06-13) For alignmnet work purpose
 paste $1/$2_tmp/proper_nouns_list_sort  $1/$2_tmp/proper_nouns_list.wx > $1/$2_tmp/transliterated_words_list
# rm -f $HOME_anu_test/Anu_databases/transliterate_proper_nouns.gdbm
# $HOME_anu_test/Anu_data/create-gdbm.pl $HOME_anu_test/Anu_databases/transliterate_proper_nouns.gdbm < $1/$2_tmp/transliterated_words_list

#Added below two commands by Roja(04-02-13). I.M.E of Hindi writers (Development park). 
 sed 's/[-]/-@/g' $1/$2_tmp/proper_nouns_list | sed 's/[.]/\.@/g'> $1/$2_tmp/proper_nouns_list1
 mv $1/$2_tmp/proper_nouns_list1 $1/$2_tmp/proper_nouns_list

 wx_utf8 < $1/$2_tmp/proper_nouns_list.wx > $1/$2_tmp/proper_nouns_list.utf8
# paste $1/$2_tmp/proper_nouns_list $1/$2_tmp/proper_nouns_list.wx |sed 's/\(.*\)\t\(.*\)/@PropN-\1-PropN\t\2/g'|uniq  > $1/$2_tmp/proper_nouns.txt
 paste $1/$2_tmp/proper_nouns_list $1/$2_tmp/proper_nouns_list.utf8 |sed 's/\(.*\)\t\(.*\)/@PropN-@\1@-@PropN\t\2/g'|uniq  > $1/$2_tmp/proper_nouns_utf8.txt

  
 echo "sed 's/dummy_sed//g' < \$1 " > $1/$2_tmp/dummy_sed_fact
 #sed  "s/\(.*\)\t\(.*\)/| sed 's\/\1\/\2\/g' /g" < $1/$2_tmp/proper_nouns.txt |sed 's/@/[@]\*/g' | sed 's/| $//g' > $1/$2_tmp/proper_nouns_tmp.txt
 sed  's/\(.*\)\t\(.*\)/| sed "s\/\1\/\2\/g" /g' < $1/$2_tmp/proper_nouns_utf8.txt |sed 's/@/[\\@]\*/g' | sed 's/| $//g' > $1/$2_tmp/proper_nouns_utf8_tmp.txt
 
 #cat $1/$2_tmp/dummy_sed_fact $1/$2_tmp/proper_nouns_tmp.txt |tr '\n' ' '  > $1/$2_tmp/proper_nouns.sh
 cat $1/$2_tmp/dummy_sed_fact $1/$2_tmp/proper_nouns_utf8_tmp.txt |tr '\n' ' ' >  $1/$2_tmp/proper_nouns_utf8_tmp.sh

 sed "s/\./\\\./g"  $1/$2_tmp/proper_nouns_utf8_tmp.sh   > $1/$2_tmp/proper_nouns_utf8.sh
 rm $1/$2_tmp/proper_nouns_list.utf8 $1/$2_tmp/proper_nouns_utf8.txt $1/$2_tmp/dummy_sed_fact $1/$2_tmp/proper_nouns_utf8_tmp.txt $1/$2_tmp/proper_nouns_list_tmp-clean-word $1/$2_tmp/proper_nouns_list_intermediate_out $1/$2_tmp/proper_nouns_utf8_tmp.sh 
