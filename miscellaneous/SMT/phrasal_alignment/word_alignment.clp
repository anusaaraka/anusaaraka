(defglobal ?*count* = 0)
(defglobal ?*fp* = dic_fp1)


(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

(deftemplate  database_info(slot meaning (default 0))(multislot components (default 0))(slot root (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (slot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))
;-------------------------------------------------------------------------------------
(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)
;-------------------------------------------------------------------------------------
(deffunction assert_control_fact(?fact_name $?ids)
                (loop-for-count (?i 1 (length $?ids))
                                (bind ?j (nth$ ?i $?ids))
                                (if (eq ?fact_name mng_has_been_aligned) then
                                        (assert (mng_has_been_aligned ?j))
                                else (if (eq ?fact_name mng_has_been_filled) then
                                        (assert (mng_has_been_filled ?j))
                                else (if (eq ?fact_name rm_aligned_fact) then
                                        (assert (rm_aligned_fact ?j))
                                else (if (eq ?fact_name rm_filled_fact) then
                                        (assert (rm_filled_fact ?j)))))
                                )
                 )
)
;-------------------------------------------------------------------------------------
;Counts the number of verbs of anusaaraka sentence
(defrule verb_count_of_anu
(declare (salience 1001))
(pada_info (group_cat VP)(group_head_id  ?vid))
?f<-(anu_verb_count-verbs ?anu_verb_count $?verbs)
(test (eq (member$ ?vid $?verbs) FALSE))
=>
        (retract ?f)
        (bind ?anu_verb_count (+ ?anu_verb_count 1))
        (bind $?verbs (create$ $?verbs ?vid))
        (assert (anu_verb_count-verbs ?anu_verb_count $?verbs))
)
;-------------------------------------------------------------------------------------
;Counts the number of verbs of manual sentence
(defrule verb_count_of_manual
(declare (salience 1001))
;(manual_id-node-word-root-tam  ?vid   VGF $?)
(chunk_name-chunk_ids-words VGF ?mid $? - $?)
?f<-(man_verb_count-verbs ?man_verb_count $?verbs)
(test (eq (member$ ?mid $?verbs) FALSE))
=>
        (retract ?f)
        (bind ?man_verb_count (+ ?man_verb_count 1))
        (bind $?verbs (create$ $?verbs ?mid))
        (assert (man_verb_count-verbs ?man_verb_count $?verbs))
)
;-------------------------------------------------------------------------------------

(defrule get_current_word
(manual_word_info (head_id ?mid))
(not (manual_word_info (head_id ?mid1&:(< ?mid1 ?mid)))) 
=>
        (assert (current_id ?mid))
        (bind ?*count* 0)
        (assert (count_fact 0))
)
;-------------------------------------------------------------------------------------
(defrule update_count_fact
(declare (salience 903))
(current_id ?mid)
?f<-(count_fact ?count)
?f1<-(update_count_fact ?new_count)
=>
        (retract ?f ?f1)
        (assert (count_fact ?new_count))
)
;-------------------------------------------------------------------------------------
;(defrule exact_match_for_multi_word_using_dic
;(declare (salience 902))
;(current_id ?mid)
;(manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib)(group_ids $?grp_ids))
;(id-multi_word_expression-dbase_name-mng ? $?eng_mwe ? $?mng)
;(multi_word_expression-grp_ids $?eng_mwe $?ids ?aid)
;(id-root ?aid ?root)
;(not (prov_assignment ?aid ?mid))
;=>
;        (bind ?*count* (+ ?*count* 1))
;        (assert (update_count_fact ?*count*))
;        (assert (anu_ids-sep-manual_ids ?aid - $?grp_ids))
;        (assert (man_id-src-root ?mid exact ?root))
;        (assert (prov_assignment ?aid ?mid))
;)
;-------------------------------------------------------------------------------------
(defrule exact_match_with_anu_output ;[manual word match with vib]
(declare (salience 901))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib)(group_ids $?grp_ids))
(id-Apertium_output ?aid $?mng $?vib)
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?root exact_match exact_match_with_anu_output))
        (assert (prov_assignment ?aid ?mid))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Modern communication has its roots in the [19] th and [20] th century in the work of scientists like J.C. Bose, F.B. Morse, G. Marconi and Alexander Graham Bell. 
;AXunika saFcAra kI jadeM [19] vIM waWA [20] vIM SawAbxiyoM meM sara jagaxISa canxra bosa, ePa.bI. morsa, jI mArkonI waWA alekjeNdara grAhma bela ke kArya xvArA dAlI gaIM.
;Note :NO PATH
(defrule anu_exact_match_for_nos
(declare (salience 900))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?mng)(group_ids $?grp_ids))
(test (numberp ?mng))
(id-Apertium_output ?aid ?mng1)
(test (neq (str-index "@" ?mng1) FALSE))
(test (eq (string-to-field (sub-string 2 (length ?mng1) ?mng1)) ?mng))
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?root exact_match anu_exact_match_for_nos))
        (assert (prov_assignment ?aid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule exact_match_with_anu_output1 ;[manual word match]
(declare (salience 900))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(group_ids $?grp_ids))
(id-Apertium_output ?aid $?mng)
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?root exact_match exact_match_with_anu_output1))
        (assert (prov_assignment ?aid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule lookup_man_word_in_hindi_wordnet
(declare (salience 890))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?word)(root $?r)(group_ids $?grp_ids))
(man_word-root-cat $?word $?h_root ?)
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?h_root))) "FALSE"))
(database_info (components ?mng) (root ?e_root))
;(id-org_wrd-root-dbase_name-mng ? ? ?e_root ? ?mng)
(id-root ?aid ?e_root)
(id-original_word ?aid ?e_word)
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng))) "FALSE"))
(test (eq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?h_root))) (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng)))))
(not (prov_assignment ?aid ?mid))
=>
        (bind ?dic_val (gdbm_lookup "hindi_wordnet_dic1.gdbm" (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?h_root)))))
        (bind ?dic_val (remove_character "/" ?dic_val " "))
        (printout t "----------" ?dic_val "---------" crlf)
        (bind ?cnt 1)
        (if (neq ?dic_val "FALSE") then
        (printout ?*fp* "(synset_id-org_wrd-root-dbase_name-mng  "(gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?h_root)))"  "?e_word" "?e_root"  hindi_wordnet_dic1.gdbm " (implode$ ?dic_val) ")" crlf)
        (bind ?cnt 1)
            (if (and (member$ $?h_root ?dic_val)(member$ ?mng ?dic_val)) then
                (bind ?*count* (+ ?*count* 1))
                (assert (update_count_fact ?*count*))
                (assert (anu_ids-sep-manual_ids ?aid - $?grp_ids))
                (assert (prov_assignment ?aid ?mid))
                (assert (man_id-root-src-rule_name ?mid ?e_root hindi_wordnet_dic1.gdbm lookup_man_word_in_hindi_wordnet))
            )
        )
)
;-------------------------------------------------------------------------------------
;Check for manual word and vibakthi match in the dictionary
(defrule word_and_vib_match_using_dic
(declare (salience 870))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?noun)(root $?r)(vibakthi $?vib)(group_ids $?grp_ids))
(database_info (components $?noun) (root ?e_noun))
(database_info (components $?vib) (root ?e_vib))
;(id-org_wrd-root-dbase_name-mng ? ? ?e_noun ?db_name1 $?noun)
;(id-org_wrd-root-dbase_name-mng ? ? ?e_vib ?db_name2 $?vib)
(id-root ?e_noun_id ?e_noun)
(id-root ?e_vib_id ?e_vib)
(pada_info (group_head_id  ?e_noun_id)(preposition ?e_vib_id))
(not (prov_assignment ?e_noun_id ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?e_noun_id - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?e_noun dictionary word_and_vib_match_using_dic))
        (assert (prov_assignment ?e_noun_id ?mid))
)
;-------------------------------------------------------------------------------------
(defrule root_and_vib_match_using_dic1
(declare (salience 870))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?word)(root $?r)(vibakthi $?vib)(group_ids $?grp_ids))
(man_word-root-cat $?word $?noun ?)
(test (neq $?vib 0))
(database_info (components $?noun) (root ?e_noun))
(database_info (components $?vib) (root ?e_vib))
;(id-org_wrd-root-dbase_name-mng ? ? ?e_noun ? $?noun)
;(id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib)
(id-root ?e_noun_id ?e_noun)
(id-root ?e_vib_id ?e_vib)
(pada_info (group_head_id  ?e_noun_id)(preposition ?e_vib_id))
(not (prov_assignment ?e_noun_id ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?e_noun_id - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?e_noun dictionary root_and_vib_match_using_dic1))
        (assert (prov_assignment ?e_noun_id ?mid))
)
;-------------------------------------------------------------------------------------
;Check for manual  word match in the dictionary
(defrule noun-word_with_0_vib
(declare (salience 850))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(group_ids $?gids))
(database_info (components $?mng) (root ?e_word))
;(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?mng)
(id-root ?eid ?e_word)
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - $?gids))
        (assert (man_id-root-src-rule_name ?mid ?e_word dictionary noun-word_with_0_vib))
        (assert (prov_assignment ?eid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule noun-word_with_0_vib1
(declare (salience 850))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?word)(group_ids $?gids))
(man_word-root-cat $?word $?mng ?)
(database_info (components $?mng) (root ?e_word))
;(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?mng)
(id-root ?eid ?e_word)
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - $?gids))
        (assert (man_id-root-src-rule_name ?mid ?e_word dictionary noun-word_with_0_vib1))
        (assert (prov_assignment ?eid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule noun-word_with_vib-pres-and-no-match
(declare (salience 840))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?noun)(root $?w)(vibakthi $?vib)(group_ids $?grp_ids)) (manual_word_info (head_id ?mid) (word $?w)(root $?noun)(vibakthi $?vib)(group_ids $?grp_ids)))
(test (neq $?vib -))
(database_info (components $?noun) (root ?e_word))
;(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?noun)
(id-root ?eid ?e_word)
(id-root ?e_vib_id ?e_vib)
(pada_info (group_head_id  ?eid)(preposition ?e_vib_id))
(not (database_info (components $?vib) (root ?e_vib)))
;(not (id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib))
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?e_word dictionary noun-word_with_vib-pres-and-no-match))
        (assert (prov_assignment ?eid ?mid))
)
;-------------------------------------------------------------------------------------
;If only one verb is present in both the manual and anusaaraka sentences then make direct alignment.
(defrule single_verb_group_match_with_anu
(declare (salience 878))
(current_id ?mid)
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?mid)
(manual_word_info (head_id ?mid) (word $?verb_mng)(root $?v_root)(group_ids $?grp_ids))
(id-Apertium_output ?aid $?anu_mng)
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid -  $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?root single_verb_match single_verb_group_match_with_anu))
        (assert (prov_assignment ?aid ?mid))

)
;-------------------------------------------------------------------------------------
;Check for manual verb[root] and tam match in the dictionary
; The strong nuclear force binds protons and neutrons in a nucleus.  
(defrule verb_match_using_dic
(declare (salience 880))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?verb_mng)(root $?v_root)(vibakthi $?tam)(group_ids $?grp_ids))
(database_info (components $?v_root) (root ?root))
;(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?v_root)
;(e_tam-id-dbase_name-mng ?e_tam ? ? $?tam)
(tam_database_info (e_tam ?e_tam) (meaning $?tam))
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?root dictionary verb_match_using_dic))
        (assert (prov_assignment ?aid ?mid))
)

;-------------------------------------------------------------------------------------
(defrule verb_with_only_root_match_using_dic
(declare (salience 879))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?verb_mng)(root $?v_root)(group_ids $?grp_ids))
(database_info (components $?v_root) (root ?root))
;(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?v_root)
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?root dictionary verb_with_only_root_match_using_dic))
        (assert (prov_assignment ?aid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule check_match_with_english_word
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?word)(group_ids $?grp_ids))
(test (neq (str-index @ (implode$ (create$ $?word))) FALSE))
(or (id-word ?eid $?word1)(id-original_word ?eid $?word1))
;(test (or (eq (explode$ (str-cat  @ (implode$ (create$ $?word1)))) $?word) (eq (string-to-field (str-cat (sub-string 1 (- (str-index @ (implode$ (create$ $?word))) 1) (implode$ (create$ $?word))) (sub-string (+ (str-index @ (implode$ (create$ $?word))) 1) (length $?word) (implode$ (create$ $?word))))) (string-to-field (implode$ (create$ $?word1))))))
(test (eq (explode$ (str-cat  @ (implode$ (create$ $?word1)))) $?word))
(id-root ?eid ?e_root)
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?e_root english_word_match check_match_with_english_word))
        (assert (prov_assignment ?eid ?mid))
)


;check_match_with_english_word and check_match_with_english_word1 are the same rules just the test condition differs [?word and $?word] 
;As I was getting problem in test condition I handled it in a seperate rule.
;need to improve the rule. 
(defrule check_match_with_english_word1
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?word)(root $?r)(group_ids $?grp_ids))
(test (neq (str-index @ (implode$ (create$ ?word))) FALSE))
(or (id-word ?eid ?word1)(id-original_word ?eid ?word1))
(test (or (eq ?word1 ?word) (eq (string-to-field (str-cat (sub-string 1 (- (str-index @ (implode$ (create$ ?word))) 1) ?word) (sub-string (+ (str-index @ (implode$ (create$ ?word))) 1) (length (implode$ (create$ ?word))) ?word))) ?word1)))
(id-root ?eid ?e_root)
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?e_root english_word_match check_match_with_english_word1))
        (assert (prov_assignment ?eid ?mid))
)

;Eng Sen :: My name is Kular.
;Anu translation :: मेरा नाम कुलार है.
;Man translation :: मेरा नाम कुलार है .
(defrule check_match_with_transliterate_mng
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?word)(group_ids $?grp_ids))
(word-transliterate_mng ?lwc_word ?word)
(id-HM-source ?eid ?trans_mng transliterate_mng)
(id-Apertium_output ?eid ?trans_mng)
(id-root ?eid ?e_root)
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - $?grp_ids))
        (assert (man_id-root-src-rule_name ?mid ?e_root transliterate_match check_match_with_transliterate_mng))
        (assert (prov_assignment ?eid ?mid))
)



;-------------------------------------------------------------------------------------
(defrule replace_id_with_word
(declare (salience -501))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre ?id $?pos)
?f1<-(manual_id-word ?id ?h_mng)
(not (mng_inserted-head ?id ?mid))
(test (neq (length $?anu_mng) 0))
=>
        (assert (mng_inserted-head ?h_mng ?mid))
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar -)) then
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre $?pos))
        else
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre ?h_mng $?pos)))
)
;-------------------------------------------------------------------------------------
(defrule check_count_1
(declare (salience -50))
?f<-(current_id ?mid)
(count_fact 1)
?f2<-(anu_ids-sep-manual_ids $?aids - $?mids)
?f3<-(prov_assignment ?aid ?mid)
(test (member$ ?aid $?aids))
(id-Apertium_output ?aid $?anu_mng)
(test (member$ ?mid $?mids))
=>
        (retract ?f2)
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -)))
        (bind $?man_grp (create$ ))
        (assert_control_fact mng_has_been_aligned $?mids)
        (assert_control_fact mng_has_been_filled $?aids)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids))
)
;-------------------------------------------------------------------------------------
(defrule check_count_value_gt_than_1
(declare (salience -50))
?f<-(current_id ?mid)
(count_fact ?count)
(test (> ?count 1))
?f2<-(anu_ids-sep-manual_ids $?aids - $?mids)
?f3<-(prov_assignment ?aid ?mid)
(test (and (member$ ?mid $?mids)(member$ ?aid $?aids)))
=>
         (retract ?f2)
         (assert (potential_assignment_vacancy_id-candidate_id ?aid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule check_count_value_0
(declare (salience -200))
?f<-(current_id ?hid)
?f1<-(count_fact ?count)
?f2<-(manual_word_info (head_id ?hid))
=>
        (retract ?f ?f1 ?f2)
)
;-------------------------------------------------------------------------------------
(defrule get_left_out_slots
(declare (salience -500))
(hindi_id_order $? ?aid $?)
(not (mng_has_been_filled ?aid))
(id-word ?aid ?word)
?f<-(left_out_slots $?los)
?f1<-(left_out_slots_ids $?los_ids)
(test (eq (member$ ?aid $?los_ids) FALSE))
=>
	(retract ?f ?f1)
	(assert (left_out_slots $?los ?word))
	(assert (left_out_slots_ids $?los_ids ?aid))
)
;-------------------------------------------------------------------------------------
