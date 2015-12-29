
 if ! [ -d $4/tmp/$1_tmp/$2 ] ; then
    echo "Sentence $2 does not exist in $1"
    exit
 fi

 MYPATH=$4/tmp

 cd $MYPATH/$1_tmp/$2
 echo "(defglobal ?*path* = $HOME_anu_test)" > global_path.clp
 echo "(defglobal ?*provisional_wsd_path* = $HOME_anu_provisional_wsd_rules)" >> global_path.clp
 echo "(Parser_used Stanford-Parser)" >> parser_type.dat
 echo "(Domain $5)" >> domain.dat
 echo "(hindi_parser $7)" >> hindi_parser.dat
 
 cd $HOME_anu_test/Anu_src/
 ./constituency_parse $MYPATH/$1_tmp/$2/E_constituents_info_tmp.dat  $MYPATH/$1_tmp/$2/Node_category_tmp.dat < $MYPATH/$1_tmp/$2/sd-lexicalize_info.dat

 cd $MYPATH/$1_tmp/$2
 myclips -f $HOME_anu_test/Anu_clp_files/run_modules_std.bat >  $1.error
 #Following two files are added to handle PropN fact and SYMBOL facts in layered o/p 
 python $HOME_anu_test/Anu_src/add-@_in-hindi_sentence.py hindi_meanings_tmp1.dat hindi_meanings.dat
 python $HOME_anu_test/Anu_src/add-@_in-hindi_sentence.py hindi_meanings_with_grp_ids_tmp1.dat hindi_meanings_with_grp_ids.dat
 
 cd $HOME_anu_test/Anu_src/
 perl   FinalGenerate.pl $HOME_anu_test/bin/hi.gen.bin  $HOME_anu_test/Anu_databases/AllTam.gdbm  $MYPATH/ $1 $2 $HOME_anu_test/bin/hi.morf.bin < $MYPATH/$1_tmp/$2/id_Apertium_input.dat > $MYPATH/$1_tmp/$2/id_Apertium_output1.dat

 cd $MYPATH/$1_tmp/$2
 python $HOME_anu_test/Anu_src/add-@_in-hindi_sentence.py  id_Apertium_output1.dat id_Apertium_output2.dat
 sed -e 's/#//g' $MYPATH/$1_tmp/$2/id_Apertium_output2.dat > $MYPATH/$1_tmp/$2/id_Apertium_output.dat

 cp $MYPATH/$1_tmp/underscore_hyphen_replace_info.txt  $MYPATH/$1_tmp/$2/underscore_hyphen_replace_info.dat
 #myclips -f $HOME_anu_test/Anu_clp_files/run_H_gen_sen.bat >> $1.error
 myclips -f $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/run_H_gen_sen.bat >> $1.error
  
 cat  para_sent_id_info.dat original_word.dat word.dat punctuation_info.dat sd_chunk.dat cat_consistency_check.dat padasuthra.dat root.dat  revised_preferred_morph.dat parserid_wordid_mapping.dat lwg_info.dat relations.dat hindi_meanings.dat GNP_agmt_info.dat id_Apertium_output.dat  hindi_id_order.dat position.dat hindi_punctuation.dat catastrophe.dat English_sentence.dat word-alignment.dat >>$MYPATH/$1_tmp/$2/all_facts

 cat  para_sent_id_info.dat original_word.dat word.dat punctuation_info.dat sd_chunk.dat cat_consistency_check.dat padasuthra.dat root.dat  revised_preferred_morph.dat lwg_info.dat hindi_meanings.dat GNP_agmt_info.dat id_Apertium_output.dat catastrophe.dat  >$MYPATH/$1_tmp/$2/facts_for_eng_html 
 cat facts_for_eng_html English_sentence.dat word-alignment.dat word_alignment.dat manual_ids.dat manual_hindi_sen.dat >> $MYPATH/$1_tmp/$2/facts_for_eng_align_html

 cat  para_sent_id_info.dat word.dat sd_chunk.dat position.dat hindi_punctuation.dat >>$MYPATH/$1_tmp/$2/facts_for_tran_html
 cat proper_nouns.dat >> $MYPATH/$1_tmp/proper_nouns_list

 sh $HOME_anu_test/bin/abbr.sh

 python $HOME_anu_test/Anu_src/add-@_in-hindi_sentence.py  hindi_sentence_tmp1.dat hindi_sentence_tmp2.dat

 cat  hindi_sentence_tmp2.dat |  sed -e 's/\\@//g' | sed 's/@//g'  > hindi_sentence.dat
 cat  hindi_sentence.dat
 echo "(hin_sen " > hindi_sentence_SMT_tmp.dat 
 cat hindi_sentence.dat >> hindi_sentence_SMT_tmp.dat
 echo ")" >> hindi_sentence_SMT_tmp.dat
 sed 's/&/\&amp;/g' hindi_sentence_SMT_tmp.dat|sed -e s/\'/\\\'/g |sed 's/\"/\&quot;/g'  >hindi_sentence_SMT.dat

 grep "Warning:" $1.error > error.txt
 sort -u error.txt > errors.txt
 grep -B2 "FALSE" $1.error >> errors.txt

 cat errors.txt

 myclips -f $HOME_anu_test/Anu_clp_files/user_info.bat > /dev/null
 mv user_wsd_info.dat $MYPATH/$1_$2_user_wsd_info.dat
