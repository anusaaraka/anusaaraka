(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

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
(manual_id-node-word-root-tam  ?vid   VGF $?)
?f<-(man_verb_count-verbs ?man_verb_count $?verbs)
(head_id-grp_ids ?vid ?mid $?)
(test (eq (member$ ?mid $?verbs) FALSE))
=>
	(retract ?f)
        (bind ?man_verb_count (+ ?man_verb_count 1))
        (bind $?verbs (create$ $?verbs ?mid))
        (assert (man_verb_count-verbs ?man_verb_count $?verbs))
)
;-------------------------------------------------------------------------------------
(defglobal ?*count* = 0)

(defrule get_current_word
(manual_id-cat-word-root-vib-grp_ids ?mid $?)
(not (manual_id-cat-word-root-vib-grp_ids ?mid1&:(< ?mid1 ?mid) $?))
=>
        (assert (current_id ?mid))
        (bind ?*count* 0)
        (assert (count_fact 0))
)

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
(defrule exact_match_using_multi_word_dic
(declare (salience 902))
(current_id ?mid)
(multi_word_expression-dbase_name-mng $?e_words ? $?mng)
(multi_word_expression-grp_ids $?e_words $?aids)
(manual_id-node-word-root-tam ?h_mid ? $?mng - $? - $?)
(head_id-grp_ids ?h_mid ?mid $?grp)
(not (prov_assignment ?aid ?mid))
=>
	(bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids $?aids - ?mid $?grp))
        (assert (prov_assignment (nth$ (length $?aids) $?aids) ?mid))
)

(defrule exact_match_using_multi_word_dic2
(declare (salience 902))
(current_id ?mid)
(multi_word_expression-dbase_name-mng $?e_words ? $?mng)
(multi_word_expression-grp_ids $?e_words $?aids)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?mng - $? -$? -$?)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids $?aids - ?mid))
        (assert (prov_assignment (nth$ (length $?aids) $?aids) ?mid))
)

;-------------------------------------------------------------------------------------
(defrule exact_match_with_anu_output ;[manual group match]
(declare (salience 901))
(current_id ?mid)
(manual_id-node-word-root-tam ?h_mid ? $?mng - $? - $?)
(head_id-grp_ids ?h_mid ?mid $?grp)
(id-Apertium_output ?aid $?mng)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - ?mid $?grp))
        (assert (prov_assignment ?aid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule exact_match_with_anu_output1 ;[manual word match]
(declare (salience 900))
(current_id ?mid)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?mng - $? -$? -$?)
(id-Apertium_output ?aid $?mng)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - ?mid))
        (assert (prov_assignment ?aid ?mid))
)
;-------------------------------------------------------------------------------------
;If only one verb is present in both the manual and anusaaraka sentences then make direct alignment.
(defrule single_verb_group_match_with_anu
(declare (salience 890))
(current_id ?mid)
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?mid)
(manual_id-node-word-root-tam ?m_h_id VGF $?man_mng - $? - $?)
(head_id-grp_ids ?m_h_id ?mid $?grp)
(id-Apertium_output ?aid $?anu_mng)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - ?mid $?grp))
        (assert (prov_assignment ?aid ?mid))
     
)
;-------------------------------------------------------------------------------------
;Check for manual verb[root] and tam match in the dictionary
(defrule verb_match_using_dic
(declare (salience 880))
(current_id ?mid)
(manual_id-node-word-root-tam  ?man_g_id   VGF   $?verb_mng - $?v_root - $?tam)
(head_id-grp_ids ?man_g_id ?mid $?grp_ids)
(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?v_root)
(e_tam-id-dbase_name-mng ?e_tam ? ? $?tam)
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - ?mid $?grp_ids))
        (assert (prov_assignment ?aid ?mid))
)

(defrule verb_with_only_root_match_using_dic
(declare (salience 879))
(current_id ?mid)
(manual_id-node-word-root-tam  ?man_g_id   VGF   $?verb_mng - $?v_root - $?)
(head_id-grp_ids ?man_g_id ?mid $?grp_ids)
(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?v_root)
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - ?mid $?grp_ids))
        (assert (prov_assignment ?aid ?mid))
)

(defrule to_infinitive_pada
(declare (salience 879))
(current_id ?mid)
(pada_info (group_head_id ?aid) (group_cat infinitive))
(manual_id-node-word-root-tam  ?man_g_id    ~VGF  $? - $?v_root - $?tam)
(test (or (eq $?tam "isake bAxa meM")(eq $?tam "nA") (eq $?tam "nA ke liye")(eq  $?tam "waka")(eq $?tam "ne") (eq $?tam "ne kI")(eq $?tam "ne kA") (eq $?tam "ne vAlA")(eq $?tam "ne se") (eq $?tam "ne ke liye") (eq $?tam "0 kara")(eq $?tam "ke liye") (eq $?tam "kI ora") (eq $?tam  "se") (eq $?tam "kA")(eq $?tam "meM")(eq $?tam "ke sAmane")(eq $?tam "ke karIba")(eq $?tam "ora")(eq $?tam "ko")))
(head_id-grp_ids ?man_g_id ?mid $?grp_ids)
(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?v_root)
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?aid - ?mid $?grp_ids))
        (assert (prov_assignment ?aid ?mid))
)
;-------------------------------------------------------------------------------------
;Check for manual word and vibakthi match in the dictionary
(defrule word_and_vib_match_using_dic
(declare (salience 870))
(current_id ?mid)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?noun - $? - $?vib - $?grp_ids)
(test (neq $?vib 0))
(id-org_wrd-root-dbase_name-mng ? ? ?e_noun ? $?noun)
(id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib)
(id-root ?e_noun_id ?e_noun)
(id-root ?e_vib_id ?e_vib)
(pada_info (group_head_id  ?e_noun_id)(preposition ?e_vib_id))
(not (prov_assignment ?e_noun_id ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?e_noun_id - $?grp_ids))
        (assert (prov_assignment ?e_noun_id ?mid))
)

(defrule word_and_vib_match_using_dic1
(declare (salience 870))
(current_id ?mid)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?noun - $?vib - $?grp_ids)
(test (neq $?vib 0))
(id-org_wrd-root-dbase_name-mng ? ? ?e_noun ? $?noun)
(id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib)
(id-root ?e_noun_id ?e_noun)
(id-root ?e_vib_id ?e_vib)
(pada_info (group_head_id  ?e_noun_id)(preposition ?e_vib_id))
(not (prov_assignment ?e_noun_id ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?e_noun_id - $?grp_ids))
        (assert (prov_assignment ?e_noun_id ?mid))
)

;-------------------------------------------------------------------------------------
;Check for manual  word match in the dictionary
(defrule noun-word_with_0_vib
(declare (salience 850))
(current_id ?mid)
(manual_id-cat-word-root-vib-grp_ids ?mid ~VM $?mng - $? - 0 - $?)
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?mng)
(id-root ?eid ?e_word)
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - ?mid))
        (assert (prov_assignment ?eid ?mid))
)

(defrule noun-word_with_0_vib1
(declare (salience 850))
(current_id ?mid)
(manual_id-cat-word-root-vib-grp_ids ?mid ~VM $? - $?mng - 0 - $?)
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?mng)
(id-root ?eid ?e_word)
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - ?mid))
        (assert (prov_assignment ?eid ?mid))
)

;-------------------------------------------------------------------------------------
;Check for manual word having vibakthi in the dictionary for which only match for word is found.
(defrule noun-word_with_vib-pres-and-no-match
(declare (salience 840))
(current_id ?mid)
(or (manual_id-cat-word-root-vib-grp_ids ?mid ? $?noun - $? - $?vib - $?grp_ids)(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?noun - $?vib - $?grp_ids))
(test (neq $?vib 0))
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?noun)
(not (id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib))
(id-root ?eid ?e_word)
(id-root ?e_vib_id ?e_vib)
(pada_info (group_head_id  ?eid)(preposition ?e_vib_id))
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - $?grp_ids))
        (assert (prov_assignment ?eid ?mid))
)

;-------------------------------------------------------------------------------------
(defrule check_match_with_english_word
(declare (salience 830))
(current_id ?mid)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?word - $? - $? - $?)
(or (id-word ?eid $?word)(id-original_word ?eid $?word))
(not (prov_assignment ?eid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (assert (anu_ids-sep-manual_ids ?eid - ?mid))
        (assert (prov_assignment ?eid ?mid))
)

;-------------------------------------------------------------------------------------

(defrule exact_match_using_multi_word_dic3
(declare (salience 802))
(current_id ?mid)
(multi_word_expression-dbase_name-mng $?e_words ? $?mng)
(multi_word_expression-grp_ids $?e_words $?aids)
(manual_id-node-word-root-tam ?h_mid ? $?pre $?mng $?pos - $? - $?)
(head_id-grp_ids ?h_mid $?pre_id ?mid $?pos_id)
(test (eq (length $?pre) (length $?pre_id)))
(not (prov_assignment ?aid ?mid))
=>
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
	(bind ?len_pre (length $?pre))
	(bind ?len (length $?mng))
        (bind $?grp (create$ ))
        (loop-for-count (?i 1 ?len)
			(bind ?j (nth$ ?i (create$ ?mid $?pos_id)))
			(bind $?grp (create$ $?grp ?j))
        )
        (assert (anu_ids-sep-manual_ids $?aids - $?grp))
        (assert (prov_assignment (nth$ (length $?aids) $?aids) ?mid))
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
        (bind $?man_grp (create$ ))
        (assert_control_fact mng_has_been_aligned $?mids)
        (assert_control_fact mng_has_been_filled $?aids)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids))              
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids))              
        (assert (id-confidence_level ?mid 8))
)
;-------------------------------------------------------------------------------------

(defrule check_count_value_gt_than_1
(declare (salience -50))
?f<-(current_id ?mid)
(count_fact ?count)
(test (> ?count 1))
?f2<-(anu_ids-sep-manual_ids ?aid - $?mids)
?f3<-(prov_assignment ?aid ?mid)
(test (member$ ?mid $?mids))
=>
         (retract ?f2)
	 (assert (potential_assignment_vacancy_id-candidate_id ?aid ?mid)) 
)
;-------------------------------------------------------------------------------------

(defrule check_count_value_0
(declare (salience -200))
?f<-(current_id ?hid)
?f1<-(count_fact ?count)
?f2<-(manual_id-cat-word-root-vib-grp_ids ?hid $?)
=>
        (retract ?f ?f1 ?f2) 
)


(defrule remove_prov_ass_facts
(declare (salience 2000))
?f1<-(prov_assignment ?aid ?mid)
?f2<-(current_id ?mid1)
(test (neq ?mid ?mid1))
=>
	(retract ?f1)
)
;-------------------------------------------------------------------------------------
(defrule combine_group 
(declare (salience -100))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_ids)
?f4<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?man_ids)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid1 $?man_ids1)
?f5<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid1 $?man_ids1)
(test (neq ?mid ?mid1))
?f2<-(id-confidence_level ?mid 8)
?f3<-(id-confidence_level ?mid1 8)
=>
         (retract ?f ?f1 ?f4 ?f5)
;         (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_ids $?man_ids1))
;         (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?man_ids $?man_ids1))
	 (assert (potential_assignment_vacancy_id-candidate_id ?aid ?mid))
	 (assert (potential_assignment_vacancy_id-candidate_id ?aid ?mid1))
         (assert_control_fact rm_aligned_fact $?man_ids $?man_ids1)
         (assert_control_fact rm_filled_fact ?aid)
)

(defrule rm_man_aligned_fact
(rm_aligned_fact ?mid)
?f<-(mng_has_been_aligned ?mid)
=>
	(retract ?f)
)

(defrule rm_anu_filled_fact
(rm_filled_fact ?aid)
?f<-(mng_has_been_filled ?aid)
=>
        (retract ?f)
)
;-------------------------------------------------------------------------------------
(defrule replace_id_with_word
(declare (salience -500))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre ?id $?pos)
?f1<-(manual_id-word-cat ?id ?h_mng ?)
=>
	(retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar)) then
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre $?pos))
	else
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre ?h_mng $?pos)))
)
