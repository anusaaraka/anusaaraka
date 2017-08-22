 cd $1
 
 sh $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/convert_transliterate_file_to_fact_format.sh ../transliterated_words_for_align > transliterated_words_list.dat 

 rm  -f word_alignment_tmp.dat  word_alignment.dat facts_for_eng_align_html parser_alignment.dat dependency_debug_input.txt 

	myclips -f $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/run_H_gen_sen_eng.bat >> $2.error 

 cat  para_sent_id_info.dat original_word.dat word.dat punctuation_info.dat sd_chunk.dat cat_consistency_check.dat padasuthra.dat root.dat  revised_preferred_morph.dat lwg_info.dat hindi_meanings_with_grp_ids.dat GNP_agmt_info.dat id_Apertium_output.dat catastrophe.dat  > facts_for_eng_html

 if [ "$4" == "general" ] ; then
	cat facts_for_eng_html English_sentence.dat word_alignment_tmp.dat word_alignment.dat parser_alignment.dat manual_hindi_sen.dat  >> facts_for_eng_align_html
 else
 	sed "s/position-eng-hnd-eng_ids/position_hi_en-eng-hnd-eng_ids/g" mapped3-hi-en.dat > mapped3-hi-en1.dat
 	cat facts_for_eng_html English_sentence.dat word-alignment.dat word-alignment-hi-en.dat word_alignment_tmp.dat word_alignment.dat parser_alignment.dat manual_hindi_sen.dat mapped3.dat mapped3-hi-en1.dat >> facts_for_eng_align_html
 fi

 #================ word alignment file =======================

 cat word_align.dat >> $HOME_anu_tmp/tmp/$2_tmp/word_alignment.txt

 #============= automatic meanings/relations files =============================
 cat proper_noun_mngs.dat >> $HOME_anu_tmp/tmp/$2_tmp/proper_noun_mngs_tmp.txt
 cat multi_proper_noun_mngs.dat >> $HOME_anu_tmp/tmp/$2_tmp/multi_proper_noun_mngs_tmp.txt
 cat parser_align_percent_info.dat >> $HOME_anu_tmp/tmp/$2_tmp/parser_align_percent_info.txt
 cat alignment_percent_info.dat >> $HOME_anu_tmp/tmp/$2_tmp/alignment_percent_info_tmp.txt
 cat suggested_dic_mngs.dat >> $HOME_anu_tmp/tmp/$2_tmp/suggested_dic_mngs.txt
 
# echo "--------------- $3" >> $HOME_anu_tmp/tmp/$2_tmp/trans_match.txt
# cat trans_match.dat >> $HOME_anu_tmp/tmp/$2_tmp/trans_match.txt

 if [ -s "new_hindi_parser_relations.dat" ]; then
	echo "$3	got_new_hindi_parser_relations" >> $HOME_anu_tmp/tmp/$2_tmp/hindi_parser_info.txt
 else
	echo "$3	not_aligned"  >> $HOME_anu_tmp/tmp/$2_tmp/hindi_parser_info.txt
 fi

 grep "eng_msg_printed\|hnd_msg_printed" $2.error > sen
 if [ -s "sen" ]; then
	echo $3 >> $HOME_anu_tmp/tmp/$2_tmp/left_over_sen.txt
 fi
	

 grep -B2 "FALSE\|halted" $2.error > err_msg 
 cat err_msg
