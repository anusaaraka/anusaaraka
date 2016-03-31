 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/check_for_best_match_in_multi-word.clp"))
 (load ?*path*)
 (load-facts "multi_word_expressions.dat")
 (load-facts "proper_noun_dic.dat")
 (load-facts "domain.dat")
 (assert (index 1))
 (assert (English-list))
 (run)
 (save-facts "multi_word_expressions.dat" local ids-cmp_mng-head-cat-mng_typ-priority ids-phy_cmp_mng-head-cat-mng_typ-priority)
 (clear)
 ;-----------------------------------------------------------------------
 ; remove adverb from sentence temporarily for lwg grouping (e.g He has been frequently coming.)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/word_without_adverb.bclp"))
 (bload ?*path*)
 (load-facts "original_word.dat")
 (assert (Current_id 1))
 (open "word_info_w_adv.dat" rm_advp_fp "w")
 (run)
 (close rm_advp_fp)
 (clear)
 ;--------------------------------------------------------------------------------
 ;Removing subscripts from link word (e.g Running is good for health -> health.n-u -> health)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/removing_subscripts.clp"))
 (load ?*path*)
 (load-facts "link_numeric_word_tmp.dat")
 (load-facts "linkid_word_tmp.dat")
 (open "linkid_word_tmp1.dat" l_wrd_fp "a")
 (open "link_numeric_word_tmp1.dat" l_nu_w_fp "a")
 (open "linkid_cat_tmp.dat" l_cat_fp "w")
 (run)
 (clear)
 ;--------------------------------------------------------------------------------
 ; join words with apostrophe to single word. (e.g This is Ram's book -> Ram's (single word))
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/combining_apostrophe.bclp"))
 (bload ?*path*)
 (load-facts "link_numeric_word_tmp1.dat")
 (load-facts "linkid_word_tmp1.dat")
 (load-facts "link_relation_info_tmp.dat")
 (open "linkid_word.dat" l_fp "w")
 (open "link_numeric_word.dat" l_n_w_fp "w")
 (open "link_relation_info_tmp1.dat" l_r_fp "w")
 (run)
 (clear)
 ;--------------------------------------------------------------------------------
 ; mapping between parser-generated id and original word id
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/parserid_wordid_mapping.bclp"))
 (bload ?*path*)
 (load-facts "link_numeric_word.dat")
 (load-facts "original_word.dat")
 (open "parserid_wordid_mapping.dat" link_word_fp "w")
 (run)
 (clear)
 ;--------------------------------------------------------------------------------
 ; mapping between lwg-id and original id (e.g He has been frequently coming -> has been coming -> 2,3,4 -> 2,3,5)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/lwgid_wordid_mapping.bclp"))
 (bload ?*path*)
 (load-facts "original_word.dat")
 (load-facts "word_info_w_adv.dat")
 (open "lwgid_wordid_mapping.dat" lid_wrdid_fp "w")
 (run)
 (close lid_wrdid_fp)
 (clear)
 ;-------------------------------------------------------------------------------- 
 ; Determine pos category from link parser
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/link_category.bclp"))
 (bload ?*path*)
 (load-facts "link_relation_info_tmp1.dat")
 (load-facts "link_name_expand.dat")
 (load-facts "linkid_word.dat")
 (load-facts "linkid_cat_tmp.dat")
 (load-facts "word2.dat")
 (load-facts "original_word.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "ner.dat")
 (open "linkid_cat.dat" link_cat_fp "w")
 (run)
 (clear)
 ;---------------------------------------------------------------------------------
 ;  Determine number from link parser
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/link_number.clp"))
 (load ?*path*)
 (load-facts "link_relation_info_tmp1.dat")
 (load-facts "link_name_expand.dat")
 (load-facts "linkid_word.dat")
 (run)
 (save-facts "link_number_tmp.dat" local  parser_id-number-src)
 (clear)
 ;-----------------------------------------------------------------------------------
 ; check consistency of pos between parser and apertium (priority to parser)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/cat_rule.bclp"))
 (bload ?*path*)
 (load-facts "pos_cat.dat")
 (load-facts "linkid_cat.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (open "parser_pos_cat.dat" cat_fp "w")
 (run)
 (clear)
 ;-----------------------------------------------------------------------------------
 ; Determine root of each word after cat consistency 
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/root_rule.bclp"))
 (bload ?*path*)
 (load-facts "parser_pos_cat.dat")
 (load-facts "morph.dat")
 (load-facts "original_word.dat")
 (load-facts "morph_root_tobe_choosen.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (open "root_tmp.dat" rt_fp "w")
 (open "preferred_morph_tmp.dat" pre_fp "w")
 (run)
 (clear)
 ;-----------------------------------------------------------------------------------
 ; Generate lwg from both parser and default lwg database.
 (load "global_path.clp")
 (defglobal ?*path1* = ?*path*)
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/load_lwg_rules.clp"))
 (batch* ?*path*)
 (load-facts "linkid_word.dat")
 (assert (run_parser_lwg_rules))
 (assert (run_old_lwg_rules))
 (run)
 (clear)
 ;-------------------------------------------------------------------------------------
 ; Create panini relation from chunker data. (presently it is not used)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/chunk_relation_rules.clp"))
 (batch* ?*path*)
 (load-facts "link_numeric_word.dat")
 (load-facts "chunk.dat")
 (open "chunk_relations.dat" chnk_rel_fp "a")
 (run)
 (close chnk_rel_fp)
 (clear)
 ;-------------------------------------------------------------------------------------
 ; Convert link relation to panini relation 
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/link_relation_rules.bclp"))
 (bload ?*path*)
 (load-facts "link_name_expand.dat")
 (load-facts "lwg_info_tmp.dat")
 (load-facts "link_relation_info_tmp1.dat")
 (load-facts "linkid_cat.dat")
 (load-facts "linkid_word.dat")
 (load-facts "root_tmp.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "original_word.dat")
 (open "relations_tmp.dat" open-file "w")
 (open "relations_debug.dat" debug_fp "w")
 (open "word.dat" open-word "a")
 (open "original_word.dat" open-orign "a")
 (open "hindi_meanings_tmp.dat" hmng_fp "w")
 (run)
 (clear)
 ;------------------------------------------------------------------------------------
 ; Identify idioms and replace it with hindi meaning.
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/idiomatic_expressions.bclp"))
 (bload ?*path*)
 (load-facts "linkid_word.dat")
 (load-facts "link_relation_info_tmp1.dat")
 (load-facts "link_name_expand.dat")
 (open "idiomatic_expr_tmp.dat" id_exp_fp "a")
 (open "meaning_has_been_decided_tmp.dat" mng_fp "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; Check cosistency of lwg both from parser and default database.
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/lwg_consistency_check.bclp"))
 (bload ?*path*)
 (load-facts "lwg_info_tmp.dat")
 (load-facts "word.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (open "lwg_differences.dat" lwg_diff_fp "a")
 (open "revised_lwg_info.dat" revised_lwg_fp "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; mapping parser id back to original word id (e.g P1 -> 1)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/parser_id_mapping.bclp"))
 (bload ?*path*)
 (load-facts "revised_lwg_info.dat")
 (load-facts "original_word.dat")
 (load-facts "root_tmp.dat")
 (load-facts "preferred_morph_tmp.dat")
 (load-facts "relations_tmp.dat")
 (load-facts "idiomatic_expr_tmp.dat")
 (load-facts "parser_pos_cat.dat")
 (load-facts "meaning_has_been_decided_tmp.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "chunk_relations.dat")
 (load-facts "link_number_tmp.dat")
 (open "root.dat" root_fp "a")
 (open "idiomatic_expr.dat" id_expr_fp "a")
 (open "preferred_morph.dat" pre_morph_fp "a")
 (open "lwg_info.dat" lwg_fp "a")
 (open "relations.dat" file "a")
 (open "relations_tmp1.dat" file1 "a")
 (open "meaning_has_been_decided.dat" mng_dcd_fp "a")
 (open "cat_consistency_check.dat" cat_cons_fp "a")
 (open "number_tmp.dat" num_fp "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; Generate hindi Pada for the sentence.
 ; with in paxa ordering (e.g to reach your potential --> hindi ((your) (potential)(to reach))
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/pada.clp"))
 (load ?*path*)
 (load-facts "relations_tmp1.dat")
 (load-facts "to_be_included_in_paxa.dat")
 (load-facts "word.dat")
 (load-facts "lwg_info.dat")
 (load-facts "cat_consistency_check.dat")
 (open "pada_info_debug.dat" pada_info_debug "a")
 (open "agmt_control_fact.dat" agmt_cntrl_fp "a")
 (open "pada_control_fact.dat" pada_cntrl_fp "a")
 (run)
 (facts)
 (save-facts "pada_id_info.dat" local  pada_info)
 (clear)
 ;================================ TRANSFER MODULE ===================================================
 ;~~~~~~~~~~~~~~~~~~~~WSD MODULE ~~~~~~~~~~~~~~~~~~~~~~~~~~
 (defmodule MAIN (export ?ALL)
                 (export deftemplate ?ALL))
 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "word.dat")
 (load-facts "original_word.dat")
 (load-facts "root.dat")
 (load-facts "relations.dat")
 (load-facts "lwg_info.dat")
 (load-facts "pada_id_info.dat")
 (load-facts "morph.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "preferred_morph.dat")
 (load-facts "punctuation_info.dat")
 (load* "global_path.clp")
 (load-facts "sand_box.dat")
 (load-facts "domain.dat")
 (defmodule WSD_MODULE (export ?ALL)
                       (import MAIN ?ALL)
                       (import MAIN deftemplate ?ALL))
 (set-current-module WSD_MODULE)
 (bind ?path1 (str-cat ?*path* "/Anu_clp_files/wsd_meaning.clp"))
 (bind ?path2 (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/"))
 (defglobal ?*prov_dir* = ?path2)
 (defglobal ?*wsd_dir* = "anusaaraka/WSD/wsd_rules/canonical_form_wsd_rules/")
 (load* ?path1)
 (open "debug_file.dat" wsd_fp "a")
 (focus WSD_MODULE)
 (run)
 (focus WSD_MODULE)
 (undefrule *)
 (defrule retract_cntrl_fact
 (declare (salience -9999))
 ?f0<-(file_loaded ?id)
 =>
 (retract ?f0)
 )
 (run)
 (focus WSD_MODULE)
 (save-facts "wsd_facts_output.dat" local)
 (clear)
 ;----------------------------------------------------------------------
 ; take prefered morph according to wsd root
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/preferred_morph_consistency_check.bclp"))
 (bload ?*path*)
 (load-facts "root.dat")
 (load-facts "preferred_morph.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "morph.dat")
 (open "revised_preferred_morph.dat" morph_cons_fp "w")
 (open "revised_root.dat" rev_rt_fp "w")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; Generate tam for all verbs
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/tam_id.bclp"))
 (bload ?*path*)
 (load-facts "lwg_info.dat")
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "revised_preferred_morph.dat")
 (load-facts "morph.dat")
 (load-facts "original_word.dat")
 (open "tam_id.dat" tam_id_fp "w")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; tam disambiguation in wsd rule
 (defmodule MAIN (export ?ALL))
 (load-facts "revised_root.dat")
 (load-facts "word.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "relations.dat")
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "tam_id.dat")
 (load-facts "revised_preferred_morph.dat")
 (load-facts "original_word.dat")
 (load* "global_path.clp")
 (load-facts "sand_box.dat")
 (load-facts "domain.dat")
 (defmodule WSD_TAM_MODULE (export ?ALL)
                       (import MAIN ?ALL))
 (set-current-module WSD_TAM_MODULE)
 (bind ?path1 (str-cat ?*path* "/Anu_clp_files/wsd_tam_meaning.clp"))
 (bind ?wsd_path (str-cat "anusaaraka" "/WSD/wsd_rules/canonical_form_wsd_rules/"))
 (bind ?path2 (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/"))
 (defglobal ?*prov_dir* = ?path2)
 (defglobal ?*wsd_dir* = ?wsd_path)
 (load ?path1)
 (focus WSD_TAM_MODULE)
 (run)
 (focus WSD_TAM_MODULE)
 (undefrule *)
 (defrule retract_cntrl_fact
 (declare (salience -9999))
 ?f0<-(file_loaded ?id)
 =>
 (retract ?f0)
 )
 (run)
 (focus WSD_TAM_MODULE)
 (save-facts "wsd_tam_facts_output.dat" local)
 (clear)
 ;----------------------------------------------------------------------
 ; tam consistency check (more weightage to wsd then default)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/tam_meaning.bclp"))
 (bload ?*path*)
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "lwg_info.dat")
 (load-facts "tam_id.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "pada_id_info.dat")
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "debug_file.dat")
 (open "wsd_tam_facts_output.dat" wsd_tam_fact_fp "a")
 (run)
 (save-facts "hindi_tam_info.dat" local pada_info conj_head-left_head-right_head)
 (close wsd_tam_fact_fp)
 (clear)
 ;----------------------------------------------------------------------
 ; Generate hindi meaning for every english word (priority -> compl.sen, compound,wsd,default etc..)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/hindi_meaning.bclp"))
 (bload ?*path*)
 (load-facts "cat_consistency_check.dat")
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "sen_phrase.dat")
 (load-facts "multi_word_expressions.dat")
 (load-facts "proper_noun_dic.dat")
 (load-facts "revised_root.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "lwg_info.dat")
 (load-facts "idiomatic_expr.dat")
 (load-facts "original_word.dat")
 (load-facts "word.dat")
 (load-facts "domain.dat")
 (open "proper_nouns.dat" p_noun "w")
 (open "hindi_meanings_tmp.dat" fp "a")
 (open "hindi_meanings_with_grp_ids_tmp.dat" fp1 "w")
 (open "catastrophe.dat" fp2 "w")
 (assert (default-cat)) 
 (run)
 (close p_noun)
 (clear)
 ;----------------------------------------------------------------------
 ; modify the hindi verb root to causative form (e.g KAnA_kilA --> KAnA-KilavA)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/causative_verb_mng.bclp"))
 (bload ?*path*)
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "lwg_info.dat")
 (load-facts "original_word.dat")
 (load-facts "hindi_meanings_tmp.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "cat_consistency_check.dat")
 (open "hindi_meanings_tmp1.dat" caus_mng_fp "w")
 (run)
 (clear)
 ;=================================  LANGUAGE GENERATION MODULE =================================
 ; Determine gender of all hindi words
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/gender_info.bclp"))
 (bload ?*path*)
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "original_word.dat")
 (load-facts "hindi_meanings_tmp1.dat")
 (open "gender_tmp.dat" gen_fp "w")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; Determine viBakwi for each pada taking information from wsd,tam,shasthi-pronouns
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/vibakthi.bclp"))
 (bload ?*path*)
 (assert (load_yA_tams_with_ne))
 (load-facts "hindi_meanings_tmp1.dat")
 (load-facts "pada_control_fact.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "hindi_tam_info.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "multi_word_expressions.dat")
 (load-facts "word.dat")
 (load-facts "revised_root.dat")
 (open "vib_debug.dat" vib_debug_fp "w")
 (open "pada_control_fact.dat" p_c_fact "a")
 (run)
 (save-facts "vibakthi_info.dat" local pada_info conj_head-left_head-right_head)
 (close vib_debug_fp)
 (close p_c_fact)
 (clear)
 ;----------------------------------------------------------------------
 ; Decide the verb agreement with padas.
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/agreement.bclp"))
 (bload ?*path*)
 (assert (load_yA_tams))
 (load-facts "vibakthi_info.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "agmt_control_fact.dat")
 (load-facts "hindi_meanings_tmp1.dat")
 (load-facts "original_word.dat")
 (open "verb_agreement.dat" agrmt_fp "w")
 (open "agreement_debug.dat" agrmt_db "w")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; Determine the number of each word.
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/number.bclp"))
 (bload ?*path*)
 (load-facts "number_tmp.dat")
 (load-facts "word.dat")
 (load-facts "revised_preferred_morph.dat")
 (load-facts "verb_agreement.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "lwg_info.dat")
 (load-facts "relations_tmp1.dat")
 (run)
 (save-facts "number.dat" local id-number-src)
 (clear)
 ;--------------------------------------------------------------------------
 ; intra-paxa aggreement (e.g A fat boy -> ek motA ladakA)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/GNP_agreement.bclp"))
 (bload ?*path*)
 (load-facts "vibakthi_info.dat")
 (load-facts "verb_agreement.dat")
 (load-facts "original_word.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "number.dat")
 (load-facts "gender_tmp.dat")
 (load-facts "hindi_meanings_tmp1.dat")
 (load-facts "pada_control_fact.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "template_tam_meaning.dat")
 (open "GNP_errors.txt" err_fp "w")
 (open "GNP_debug.dat" gnp_fp "w")
 (open "gender.dat" gender_fp "w")
 (run)
 (save-facts "GNP_agmt_info.dat" local pada_info conj_head-left_head-right_head)
 (close gnp_fp)
 (close gender_fp)
 (clear)
 ;-------------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/pada_prawiniXi.clp"))
 (load ?*path*)
 (load-facts "GNP_agmt_info.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "lwg_info.dat")
 (open "pada_point_debug.dat" pada_point_debug "a")
 (run)
 (save-facts "pada_info.dat" local current_id-group_members id-current_id prep_id-relation-anu_ids )
 (clear)
 ;-------------------------------------------------------------------------------
 ; Across paxa ordering
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/hindi_position.bclp"))
 (bload ?*path*)
 (load-facts "word.dat")
 (load-facts "lwg_info.dat")
 (load-facts "Eng_id_order.dat")
 (load-facts "punctuation_info.dat")
 (load-facts "pada_info.dat")
 (open "hin_pos_debug.dat" hin_pos_debug "a")
 (run)
 (save-facts "hindi_id_order_tmp.dat" local hindi_id_order)
 (save-facts "hindi_position.dat" local pada_info)
 (clear)
 ;---------------------------------------------------------------------------------
 ; Adding extra hindi word and reorder the hindi sentence (e.g Are you going ?  -> kyA Aap jA rahe ho ?)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/hindi_sent_reorder.bclp"))
 (bload ?*path*)
 (load-facts "relations_tmp1.dat")
 (load-facts "word.dat")
 (load-facts "revised_root.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "GNP_agmt_info.dat")
 (load-facts "hindi_id_order_tmp.dat")
 (load-facts "lwg_info.dat")
 (load-facts "parser_type.dat")
 (open "hindi_id_reorder_debug.dat" h_id_reorder_fp "a")
 (open "hindi_punctuation.dat" h_fp "a")
 (run)
 (save-facts "hindi_id_order.dat" local hindi_id_order)
 (close h_fp)
 (clear)
 ;--------------------------------------------------------------------------
 ; prepare Apertium input for final hindi word generation.
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/prepare_apertium_input.bclp"))
 (bload ?*path*)
 (assert (load_facts))
 (load-facts "word.dat")
 (load-facts "lwg_info.dat")
 (load-facts "original_word.dat")
 (load-facts "GNP_agmt_info.dat")
 (load-facts "hindi_meanings_tmp1.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "hindi_id_order.dat")
 (load-facts "verb_agreement.dat")
 (load-facts "number.dat")
 (load-facts "gender.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "revised_preferred_morph.dat")
 (load-facts "tam_id.dat")
 (open "id_Apertium_input.dat" fp5 "w")
 (open "apertium_input_debug.dat" aper_debug "w")
 (open "GNP_errors.txt" err_fp1 "w")
 (run)
 (clear)
 ;--------------------------------------------------------------------------
 ; For html output generate paxasUwra layer for each word.
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/padasuthra.bclp"))
 (bload ?*path*)
 (load-facts "original_word.dat")
 (load-facts "word.dat")
 (load-facts "revised_root.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "hindi_meanings_tmp1.dat")
 (open "padasuthra.dat" paxasUwra_fp "w")
 (run)
 (close paxasUwra_fp)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (defglobal ?*path1* = ?*path*)
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/catastrophe.clp"))
 (load ?*path*)
 (bind ?*path1* (str-cat ?*path1* "/Anu_clp_files/idioms.clp"))
 (load ?*path1*)
 (load-facts "word.dat")
 (load-facts "lwg_info.dat")
 (load-facts "relations.dat")
 (load-facts "root.dat")
 (load-facts "punctuation_info.dat")
 (load-facts "revised_preferred_morph.dat")
 (assert (comma_list ))
 (assert (index 1))
 (assert (English-list))
 (open "catastrophe.dat" catas_fp "a")
 (run)
 (clear)
 ;--------------------------------------------------------------------------
 (exit)
 ;--------------------------------------------------------------------------
