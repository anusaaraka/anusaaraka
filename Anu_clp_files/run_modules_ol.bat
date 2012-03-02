 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/compound_phrase.bclp"))
 (bload ?*path*)
 (load-facts "original_word.dat")
 (assert (index 1))
 (assert (English-list))
 (run)
 (save-facts "compound_phrase.dat" local ids-cmp_mng-head-cat-mng_typ)
 (clear)
 ;-----------------------------------------------------------------------
 ; mapping between parser-generated id and original word id
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/ol_parserid_wordid_mapping.bclp"))
 (bload ?*path*)
 (load-facts "ol_resid_wordid_mapping_tmp.dat")
 (load-facts "morph.dat")
 (load-facts "word.dat")
 (load-facts "transformed_word_id.dat")
 (open "ol_resid_wordid_mapping.dat" ol_word_fp1 "a")
 (open "parserid_wordid_mapping.dat" ol_word_fp "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------------
; Determine root of each word after cat consistency
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/root_rule.bclp"))
 (bload ?*path*)
 (load-facts "ol_cat_info.dat")
 (load-facts "morph.dat")
 (load-facts "original_word.dat")
 (load-facts "morph_root_tobe_choosen.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (open "root_tmp.dat" rt_fp "a")
 (open "preferred_morph_tmp.dat" pre_fp "a")
 (run)
 (clear)
 ;-----------------------------------------------------------------------------------
 ;Modifying category
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/modify_ol_cat.bclp"))
 (bload ?*path*)
 (load-facts "ol_original_relation_tmp.dat")
 (load-facts "ol_cat_info.dat")
 (load-facts "ol_nonfinite.dat")
 (load-facts "ol_resid_wordid_mapping.dat")
 (open "ol_cat_info_tmp1.dat" ol_cat_file "a")
 (run)
 (clear)
 ;------------------------------------------------------------------------
 ;Modifying relations 
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/modify_ol_relations.bclp"))
 (bload ?*path*)
 (load-facts "ol_cat_info_tmp1.dat")
 (load-facts "word.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "ol_resid_wordid_mapping.dat")
 (load-facts "ol_original_relation_tmp.dat")
 (load-facts "ol_lwg_res_info.dat")
 (load-facts "ol_pada_tmp.dat")
 (open "ol_relations.dat" ol_rel_file "a")
 (open "ol_relation_debug.dat" ol_rel_debug_file "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ;Desambiguating LWG:
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/lwg_disambiguation.bclp"))
 (bload ?*path*)
 (load-facts "ol_resid_wordid_mapping.dat")
 (load-facts "ol_lwg_res_info.dat")
 (load-facts "root_tmp.dat")
 (open "ol_lwg_info.dat" ol_lwg_fp "a")
 (run)
 (clear)
 ;---------------------To get missing ids of tran level----------------------------------
 ;To finds missing ids in tran3
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/missing_wc.clp"))
 (load ?*path*)
 (load-facts "all_tran_pada.dat")
 (load-facts "resid-word.dat")
 (open "miss_tmp.dat" miss_fp "w")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ;To fill  missing ids in pada made by tran3
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/tmp_pada.clp"))
 (load ?*path*)
 (load-facts "all_tran_pada.dat")
 (load-facts "miss_tmp.dat")
 (open "tmp_pada.dat" tmp_fp "w")
 (open "rev_all_tran.dat" all_tmp_fp "w")
 (run)
 (clear)
 ;-----------------getting files of H_ordering rules-----------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/Ol_constituents_level.clp"))
 (load ?*path*)
 (load-facts "rev_all_tran.dat")
 (load-facts "resid-word.dat")
 (load-facts "ol_lwg_info.dat")
 (load-facts "miss_tmp.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (open "E_constituents_info_tmp.dat" const_fp "w")
 (open "Node_category.dat" node_fp "w")
 (run)
 (clear)
 ;----------------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/ol_cons_in_sd_format.clp"))
 (load ?*path*)
 (load-facts "E_constituents_info_tmp.dat")
 (load-facts "Node_category.dat")
 (load-facts "resid-word.dat")
 (load-facts "rev_all_tran.dat")
 (load-facts "ol_relations.dat")
 (open "E_constituents_info_tmp1.dat" e_const_fp "w")
 (open "Node_category.dat" node_fp1 "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------------------
 ;mapping parser id back to original word id (e.g P1 -> 1)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/ol_parser_id_mapping.bclp"))
 (bload ?*path*)
 (load-facts "ol_lwg_info.dat")
 (load-facts "root_tmp.dat")
 (load-facts "preferred_morph_tmp.dat")
 (load-facts "ol_relations.dat")
 (load-facts "ol_cat_info_tmp1.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "ol_resid_wordid_mapping.dat")
 (load-facts "ol_number.dat")
 (load-facts "E_constituents_info_tmp1.dat")
 (open "root.dat" root_fp "a")
 (open "preferred_morph.dat" pre_morph_fp "a")
 (open "lwg_info.dat" lwg_fp "a")
 (open "relations.dat" file "a")
 (open "relations_tmp1.dat" file1 "a")
 (open "relations_id_map_debug.dat" rel_debug "a")
 (open "cat_consistency_check.dat" cat_cons_fp "a")
 (open "number_tmp.dat" num_fp "a")
 (open "E_constituents_info.dat" e_cons_fp "w")
 (run)
 (clear)
 ;~~~~~~~~~~~~~~~~~~~~WSD MODULE ~~~~~~~~~~~~~~~~~~~~~~~~~~
 (defmodule MAIN (export ?ALL)
                 (export deftemplate ?ALL))
 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "word.dat")
 (load-facts "original_word.dat")
 (load-facts "root.dat")
 (load-facts "relations.dat")
 (load-facts "lwg_info.dat")
 (load-facts "morph.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "preferred_morph.dat")
 (load-facts "sent_type.dat")
 (load* "global_path.clp")
 (defmodule WSD_MODULE (export ?ALL)
                       (import MAIN ?ALL)
                       (import MAIN deftemplate ?ALL))
 (set-current-module WSD_MODULE)
 (bind ?path1 (str-cat ?*path* "/Anu_clp_files/wsd_meaning.clp"))
 (defglobal ?*prov_dir* = ?*provisional_wsd_path*)
 (defglobal ?*wsd_dir* = "anu_testing/WSD/wsd_rules/")
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
 (open "revised_preferred_morph.dat" morph_cons_fp "a")
 (open "revised_root.dat" rev_rt_fp "a")
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
 (open "tam_id.dat" tam_id_fp "a")
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
 (defmodule WSD_TAM_MODULE (export ?ALL)
                       (import MAIN ?ALL))
 (set-current-module WSD_TAM_MODULE)
 (bind ?path1 (str-cat ?*path* "/Anu_clp_files/wsd_tam_meaning.clp"))
 (bind ?wsd_path (str-cat "anu_testing" "/WSD/wsd_rules/"))
 (defglobal ?*prov_dir* = ?*provisional_wsd_path*)
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
 (load-facts "parser_type.dat")
 (load-facts "ol_resid_wordid_mapping.dat")
 (open "pada_info_debug.dat" pada_info_debug "a")
 (open "agmt_control_fact.dat" agmt_cntrl_fp "a")
 (open "pada_control_fact.dat" pada_cntrl_fp "a")
 (run)
 (save-facts "pada_id_info.dat" local  pada_info)
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
 (run)
 (save-facts "hindi_tam_info.dat" local pada_info)
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
 (load-facts "compound_phrase.dat")
 (load-facts "revised_root.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "lwg_info.dat")
 (load-facts "original_word.dat")
 (open "hindi_meanings_tmp.dat" fp "a")
 (open "hindi_meanings_tmp1.dat" fp1 "a")
 (run)
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
 (open "hindi_meanings.dat" caus_mng_fp "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; Determine gender of all hindi words
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/gender_info.bclp"))
 (bload ?*path*)
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "original_word.dat")
 (load-facts "hindi_meanings.dat")
 (open "gender_tmp.dat" gen_fp "a")
 (run)
 (clear)
 ;----------------------------------------------------------------------
 ; Determine viBakwi for each pada taking information from wsd,tam,shasthi-pronouns
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/vibakthi.bclp"))
 (bload ?*path*)
 (assert (load_yA_tams_with_ne))
 (load-facts "hindi_meanings.dat")
 (load-facts "pada_control_fact.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "hindi_tam_info.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "compound_phrase.dat")
 (load-facts "original_word.dat")
 (load-facts "revised_root.dat")
 (run)
 (save-facts "vibakthi_info.dat" local pada_info)
 (clear)
 ;----------------------------------------------------------------------
 ; Decide the verb agreement with padas.
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/agreement.bclp"))
 (bload ?*path*)
 (load-facts "vibakthi_info.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "agmt_control_fact.dat")
 (load-facts "hindi_meanings.dat")
 (load-facts "original_word.dat")
 (open "verb_agreement.dat" agrmt_fp "a")
 (open "agreement_debug.dat" agrmt_db "a")
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
 (load-facts "hindi_meanings.dat")
 (load-facts "pada_control_fact.dat")
 (open "GNP_errors.txt" err_fp "a")
 (open "GNP_debug.dat" gnp_fp "a")
 (open "gender.dat" gender_fp "a")
 (run)
 (save-facts "GNP_agmt_info.dat" local pada_info)
 (close gnp_fp)
 (close gender_fp)
 (clear)
 ;--------------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/H_ordering_rules.clp"))
 (load ?*path*)
 (load-facts "original_word.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "root.dat")
 (load-facts "E_constituents_info.dat")
 (load-facts "Node_category.dat")
 (load-facts "parserid_wordid_mapping.dat")
 (load-facts "parser_type.dat")
 (open "hin_order_debug.dat" order_debug "a")
 (run)
 (save-facts "hindi_id_order_tmp.dat" local hindi_id_order)
 (save-facts "ordered_constituents.dat" local Head-Level-Mother-Daughters)
 (clear)
;-------------------------------------------------------------------------------
 ; Addin extra hindi word and reorder the hindi sentence (e.g Are you going ?  -> kyA Aap jA rahe ho ?)
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
 (load-facts "ordered_constituents.dat")
 (load-facts "Node_category.dat")
 (open "hindi_id_reorder_debug.dat" h_id_reorder_fp "a")
 (run)
 (save-facts "hindi_id_order_tmp1.dat" local hindi_id_order)
 (clear)
 ;--------------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/insert_punctuation.clp"))
 (load ?*path*)
 (load-facts "ordered_constituents.dat")
 (load-facts "Node_category.dat")
 (load-facts "hindi_id_order_tmp1.dat")
 (load-facts "GNP_agmt_info.dat")
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
 (load-facts "hindi_meanings.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "hindi_id_order.dat")
 (load-facts "verb_agreement.dat")
 (load-facts "number.dat")
 (load-facts "gender.dat")
 (load-facts "sen_phrase.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "tam_id.dat")
 (open "id_Apertium_input.dat" fp5 "a")
 (open "apertium_input_debug.dat" aper_debug "a")
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
 (load-facts "hindi_meanings.dat")
 (open "padasuthra.dat" paxasUwra_fp "a")
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
 (assert (comma_list )) 
 (assert (index 1))
 (assert (English-list))
 (run)
 (save-facts "catastrophe.dat" local sen_type-id-phrase)
 ;--------------------------------------------------------------------------
 (exit)
