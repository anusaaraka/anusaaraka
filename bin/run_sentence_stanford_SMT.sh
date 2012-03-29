
 if ! [ -d $4/tmp/$1_tmp/$2 ] ; then
    echo "Sentence $2 does not exist in $1"
    exit
 fi

 MYPATH=$4/tmp

 cd $MYPATH/$1_tmp/$2
 echo "(defglobal ?*path* = $HOME_anu_test)" > global_path.clp
 echo "(defglobal ?*provisional_wsd_path* = $HOME_anu_provisional_wsd_rules)" >> global_path.clp
 echo "(Parser_used Stanford-Parser)" >> parser_type.dat
 
 cd $HOME_anu_test/Anu_src/
 ./constituency_parse $MYPATH/$1_tmp/$2/E_constituents_info_tmp.dat  $MYPATH/$1_tmp/$2/Node_category_tmp.dat < $MYPATH/$1_tmp/$2/sd-lexicalize_info.dat

 cd $MYPATH/$1_tmp/$2
 myclips -f $HOME_anu_test/Anu_clp_files/run_modules_std.bat >  $1.error
 
 cd $HOME_anu_test/Anu_src/
 perl   FinalGenerate.pl $HOME_anu_test/bin/hi.gen.bin  $HOME_anu_test/Anu_databases/AllTam.gdbm  $MYPATH/ $1 $2 $HOME_anu_test/bin/hi.morf.bin < $MYPATH/$1_tmp/$2/id_Apertium_input.dat > $MYPATH/$1_tmp/$2/id_Apertium_output1.dat

sed -e 's/#//g' $MYPATH/$1_tmp/$2/id_Apertium_output1.dat > $MYPATH/$1_tmp/$2/id_Apertium_output.dat

 cd $MYPATH/$1_tmp/$2

 sh $HOME_anu_test/miscellaneous/SMT/alignment/get_group_mng.sh shallow_parser_output.dat
 $HOME_anu_test/miscellaneous/SMT/alignment/get_tam_info.out shallow_parser_GNP_info.dat < shallow_parser_output.dat > /dev/null

 cp $MYPATH/$1_tmp/underscore_hyphen_replace_info.txt  $MYPATH/$1_tmp/$2/underscore_hyphen_replace_info.dat
 myclips -f $HOME_anu_test/miscellaneous/SMT/alignment/run_H_gen_SMT.bat >> $1.error
 
 cat  para_sent_id_info.dat original_word.dat word.dat punctuation_info.dat sd_chunk.dat cat_consistency_check.dat padasuthra.dat root.dat  revised_preferred_morph.dat parserid_wordid_mapping.dat lwg_info.dat relations.dat hindi_meanings.dat GNP_agmt_info.dat id_Apertium_output.dat  hindi_id_order.dat position.dat hindi_punctuation.dat catastrophe.dat English_sentence.dat >>$MYPATH/$1_tmp/$2/all_facts

 cat eng_id_in_hin_ord.dat >> $MYPATH/$1_tmp/$1_ordered_file
 cp hindi_sentence.dat hindi_sentence_tmp.dat

 sh $HOME_anu_test/bin/abbr.sh

 sh $HOME_anu_test/miscellaneous/SMT/alignment/count.sh 
 cp hindi_sentence1.dat  hindi_sentence.dat

# cat hin_eng_sent.dat

 cat  hindi_sentence.dat
 cat  percentage.dat
 echo "(hin_sen " > hindi_sentence_SMT_tmp.dat 
 cat hindi_sentence.dat >> hindi_sentence_SMT_tmp.dat
 echo ")" >> hindi_sentence_SMT_tmp.dat
 sed 's/&/\&amp;/g' hindi_sentence_SMT_tmp.dat|sed -e s/\'/\\\'/g |sed 's/\"/\&quot;/g'  >hindi_sentence_SMT.dat


# echo "(hin_sen " > manual_hin_sen_SMT_tmp.dat
# cat manual_hindi_sen.dat >> manual_hin_sen_SMT_tmp.dat
# echo ")" >> manual_hin_sen_SMT_tmp.dat
# sed 's/&/\&amp;/g' manual_hin_sen_SMT_tmp.dat|sed -e s/\'/\\\'/g |sed 's/\"/\&quot;/g'  >manual_hin_sen_SMT.dat

 grep -B2 "FALSE" $1.error >> errors.txt
 cat errors.txt

# sh $HOME_anu_test/miscellaneous/SMT/get_group_mng.sh shallow_parser_output.dat
# $HOME_anu_test/miscellaneous/SMT/get_tam_info.out shallow_parser_GNP_info.dat < shallow_parser_output.dat > /dev/null 

 #for sentence by sent analysis for web debugging tutorial
# cat English_sentence.dat >> $MYPATH/$1_tmp/sent-by-sent
# cat  hindi_sentence.dat | $HOME_anu_test/Anu_src/file-wx_utf8.out | sed -e '1,$s/\\@//g
# 1,$s/#//g' >> $MYPATH/$1_tmp/sent-by-sent
# echo "" >> $MYPATH/$1_tmp/sent-by-sent
#
# myclips -f $HOME_anu_test/Anu_clp_files/user_info.bat > /dev/null
# mv user_wsd_info.dat $MYPATH/$1_$2_user_wsd_info.dat
#
# sed  's/LB /(/g' $MYPATH/$1_tmp/$2/rev_constituency_tree.dat |sed 's/RB /)/g' |sed 's/RB)$/))/g'> $MYPATH/$1_tmp/$2/rev_constituency_tree1.dat
#cat $MYPATH/$1_tmp/$2/rev_constituency_tree1.dat >>$MYPATH/$1_tmp/rev_constituency_tree2.dat
