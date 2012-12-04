
 if ! [ -d $4/tmp/$1_tmp/$2 ] ; then
    echo "Sentence $2 does not exist in $1"
    exit
 fi

 MYPATH=$4/tmp

 cd $MYPATH/$1_tmp/$2
 echo "(defglobal ?*path* = $HOME_anu_test)" > global_path.clp
 echo "(defglobal ?*provisional_wsd_path* = $HOME_anu_provisional_wsd_rules)" >> global_path.clp
 echo "(Parser_used Open-Logos-Parser)" >> parser_type.dat

#added lwg by sriram

########## start #######
 #rm $MYPATH/$1_tmp/$2/ol_lwg_info.dat
 perl  $HOME_anu_test/Anu_src/lwg_openlogos.pl $MYPATH/$1_tmp/$2/ $MYPATH/$1_tmp/$2/ol-EG-TR.diag  $HOME_anu_test/Anu_databases/ol_vb_root.gdbm > $MYPATH/$1_tmp/$2/tmp $MYPATH/$1_tmp/$2
 grep -v "^$" < $MYPATH/$1_tmp/$2/tmp >$MYPATH/$1_tmp/$2/ol_lwg_res_info.dat

##### for prep finding ##########
perl $HOME_anu_test/Anu_src/ol_prep.pl < $MYPATH/$1_tmp/$2/ol-EG-TR.diag  $MYPATH/$1_tmp/$2
sed -e 's/=/equal_to/g' < $MYPATH/$1_tmp/$2/ol_prep.dat > $MYPATH/$1_tmp/$2/ol_prep.dat_tmp
mv  $MYPATH/$1_tmp/$2/ol_prep.dat_tmp  $MYPATH/$1_tmp/$2/ol_prep.dat

########## end #######
 python $HOME_anu_test/Anu_src/run_openlogos.py $MYPATH/$1_tmp/$2/ol-EG-TR.diag

############### Programms by ANS ################
cd $HOME_anu_test/Anu_src

./all_tran_pada.out  $MYPATH/$1_tmp/$2/ol-EG-TR.diag  $MYPATH/$1_tmp/$2/all_tran_pada.dat
 mv $MYPATH/f_tid-rid.dat $MYPATH/$1_tmp/$2/f_tid-rid.dat

 ./f_range.out   $MYPATH/$1_tmp/$2/ol-EG-TR.diag
 mv $MYPATH/tmp-rel-facts.dat $MYPATH/$1_tmp/$2/tmp-rel-facts.dat
 mv $MYPATH/resid-word.dat    $MYPATH/$1_tmp/$2/resid-word.dat
########## end ###################################

####### added pada by sriram ############
#cp  $MYPATH/$1_tmp/$2/ol_pada_tmp.dat $MYPATH/$1_tmp/$2/ol_pada_tmp-goru.dat
 perl $HOME_anu_test/Anu_src/pada_openlogos.pl < $MYPATH/$1_tmp/$2/ol-EG-TR.diag   $MYPATH/$1_tmp/$2 $MYPATH/$1_tmp/$2/ol_lwg_res_info.dat


if  [ -s $MYPATH/$1_tmp/$2/ol_pada_tmp1.dat ] ; then
  perl  $HOME_anu_test/Anu_src/missing_pada.pl   $MYPATH/$1_tmp/$2
fi

########## end #######

# cat sent_type.dat >>relations.dat
grep -v "^$" < $MYPATH/$1_tmp/$2/ol_pada_tmp.dat > $MYPATH/$1_tmp/$2/ol_pada_tmp-new.dat
if  [ -s $MYPATH/$1_tmp/$2/ol_pada_tmp-new.dat ] ; then
 cd $MYPATH/$1_tmp/$2
 myclips -f $HOME_anu_test/Anu_clp_files/run_modules_ol.bat >  $1.error


  cd $HOME_anu_test/Anu_src/
 perl   FinalGenerate.pl $HOME_anu_test/bin/hi.gen.bin  $HOME_anu_test/Anu_databases/AllTam.gdbm  $MYPATH/ $1 $2 $HOME_anu_test/bin/hi.morf.bin < $MYPATH/$1_tmp/$2/id_Apertium_input.dat > $MYPATH/$1_tmp/$2/id_Apertium_output1.dat

 sed -e 's/#//g' $MYPATH/$1_tmp/$2/id_Apertium_output1.dat  > $MYPATH/$1_tmp/$2/id_Apertium_output.dat


cd $MYPATH/$1_tmp/$2
 cp $MYPATH/$1_tmp/underscore_hyphen_replace_info.txt  $MYPATH/$1_tmp/$2/underscore_hyphen_replace_info.dat
 myclips -f $HOME_anu_test/Anu_clp_files/run_H_gen_sen.bat >> $1.error

fi

if ! [ -s $MYPATH/$1_tmp/$2/ol_pada_tmp-new.dat ] ; then
 sed -e 's/(id-original_word 1/\@/' $MYPATH/$1_tmp/$2/original_word.dat | sed -e 's/)//' | sed -e 's/\s\+//' > $MYPATH/$1_tmp/$2/hindi_sentence.dat
fi

cat para_sent_id_info.dat original_word.dat word.dat punctuation_info.dat chunk.dat cat_consistency_check.dat padasuthra.dat root.dat  revised_preferred_morph.dat parserid_wordid_mapping.dat  ol_numeric_word.dat relations.dat hindi_meanings.dat GNP_agmt_info.dat id_Apertium_output.dat  hindi_id_order.dat position.dat catastrophe.dat English_sentence.dat  >>$MYPATH/$1_tmp/$2/all_facts

cat  para_sent_id_info.dat original_word.dat word.dat punctuation_info.dat chunk.dat cat_consistency_check.dat padasuthra.dat root.dat  revised_preferred_morph.dat lwg_info.dat hindi_meanings.dat GNP_agmt_info.dat id_Apertium_output.dat catastrophe.dat  >>$MYPATH/$1_tmp/$2/facts_for_eng_html

 cat  para_sent_id_info.dat word.dat chunk.dat position.dat >>$MYPATH/$1_tmp/$2/facts_for_tran_html

 cat proper_nouns.dat >> $MYPATH/$1_tmp/proper_nouns_list

 sed -e 's/=/equal_to/g' < all_facts > all_facts_tmp
 mv all_facts_tmp all_facts

 sh $HOME_anu_test/bin/abbr.sh

 python $HOME_anu_test/Anu_src/add-@_in-hindi_sentence.py  hindi_sentence.dat hindi_sentence_tmp.dat
 cp hindi_sentence1.dat  hindi_sentence.dat

 cat  hindi_sentence.dat
 
 grep -B2 "FALSE" $1.error >> errors.txt
 cat errors.txt

#####Commented below lines as sent-by-sent is not used anywhere.
#for sentence by sent analysis for web debugging tutorial
# cat English_sentence.dat >> $MYPATH/$1_tmp/sent-by-sent
# cat  hindi_sentence.dat | $HOME_anu_test/Anu_src/file-wx_utf8.out | sed -e '1,$s/\\@//g
# 1,$s/#//g' >> $MYPATH/$1_tmp/sent-by-sent
# echo "" >> $MYPATH/$1_tmp/sent-by-sent

 myclips -f $HOME_anu_test/Anu_clp_files/user_info.bat > /dev/null
 mv user_wsd_info.dat $MYPATH/$1_$2_user_wsd_info.dat

