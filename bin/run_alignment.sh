 cd $1
 myclips -f $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/run_H_gen_sen_eng.bat >> $1.error
 cat  para_sent_id_info.dat original_word.dat word.dat punctuation_info.dat sd_chunk.dat cat_consistency_check.dat padasuthra.dat root.dat  revised_preferred_morph.dat lwg_info.dat hindi_meanings_with_grp_ids.dat GNP_agmt_info.dat id_Apertium_output.dat catastrophe.dat  > facts_for_eng_html

 if ! [[ -a  mapped3.dat ]] ; then
      touch  mapped3.dat
 fi
 
 if ! [[ -a  mapped3-hi-en.dat ]] ; then
      touch  mapped3-hi-en.dat
 fi

 if ! [[ -a  left-over-words.dat ]] ; then
      touch  left-over-words.dat
 fi

 if ! [[ -a  english_left_over.dat ]] ; then
      touch  english_left_over.dat
 fi

 if ! [[ -a  align_left_over_wrds.dat ]] ; then
      touch  align_left_over_wrds.dat
 fi

  sed "s/anu_id-anu_mng-sep-man_id-man_mng_tmp/anu_id-anu_mng-sep-man_id-man_mng_tmp1/g" word_alignment_hi_en_tmp1.dat > word_alignment_hi_en_tmp.dat
 sed "s/position-eng-hnd-eng_ids/position_hi_en-eng-hnd-eng_ids/g" mapped3-hi-en.dat > mapped3-hi-en1.dat

 cat facts_for_eng_html English_sentence.dat word-alignment.dat word-alignment-hi-en.dat word_alignment_tmp.dat word_alignment_hi_en_tmp.dat manual_hindi_sen.dat mapped3.dat mapped3-hi-en1.dat >> facts_for_eng_align_html
