 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/prawiniXi.clp"))
 (load ?*path*)
 (load-facts "E_constituents_info_tmp2.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "sd_word.dat")
 (run)
 (save-facts "prawiniXi.dat" local head_id-prawiniXi_id-grp_ids prawiniXi_id-Node)
 (clear)
 ;----------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/English_sentence.bclp"))
 (bload ?*path*)
 (load-facts "word.dat")
 (load-facts "vibakthi_info.dat")
 (load-facts "punctuation_info.dat")
 (load-facts "hindi_id_order.dat")
 (open "hin_eng_sent.dat" e_sen_fp "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/hindi_sentence.bclp"))
 (bload ?*path*)
 (load-facts "word.dat")
 (load-facts "parser_type.dat")
 (load-facts "id_Apertium_output.dat")
 (load-facts "hindi_id_order.dat")
 (load-facts "hindi_punctuation.dat")
 (load-facts "punctuation_info.dat")
 (load-facts "original_word.dat")
 (load-facts "underscore_hyphen_replace_info.dat")
 (open "hindi_sentence.dat" h_sen_fp "a")
 (run)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/eng_hin_pos.clp"))
 (load ?*path*)
 (load-facts "Eng_id_order.dat")
 (load-facts "hindi_id_order.dat")
 (load-facts "lwg_info.dat")
 (load-facts "GNP_agmt_info.dat")
 (load-facts "hindi_meanings.dat")
 (load-facts "hindi_meanings_tmp1.dat")
 (load-facts "original_word.dat")
 (load-facts "id_Apertium_output.dat")
 (assert (index 1))
 (assert (English_Sen))
 (open "position.dat" pos_fp "a")
 (run)
 (close pos_fp)
 (clear)
 ;--------------------------------------------------------------------------
 (exit)

