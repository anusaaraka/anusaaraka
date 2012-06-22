(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deffunction assert_control_fact(?fact_name $?ids)
                (loop-for-count (?i 1 (length $?ids))
                                (bind ?j (nth$ ?i $?ids))
                                (if (eq ?fact_name mng_has_been_aligned) then
	                                (assert (mng_has_been_aligned ?j))
                                else (if (eq ?fact_name mng_has_been_filled) then
        	                        (assert (mng_has_been_filled ?j))
                                else (if (eq ?fact_name prov_mng_has_been_aligned) then
                	                (assert (prov_mng_has_been_aligned ?j))
                                else (if (eq ?fact_name prov_mng_has_been_filled) then
                        	        (assert (prov_mng_has_been_filled ?j)))))
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
(test (eq (member$ ?vid $?verbs) FALSE))
=>
	(retract ?f)
        (bind ?man_verb_count (+ ?man_verb_count 1))
        (bind $?verbs (create$ $?verbs ?vid))
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
(declare (salience 9022))
(current_id ?mid)
?f<-(count_fact ?count)
?f1<-(update_count_fact ?new_count)
=>
	(retract ?f ?f1)
        (assert (count_fact ?new_count))
)

;-------------------------------------------------------------------------------------
(defrule exact_match_with_aper_output ;[manual group match]
(declare (salience 901))
(current_id ?mid)
(manual_id-node-word-root-tam ?h_mid ? $?mng - $? - $?)
(head_id-grp_ids ?h_mid ?mid $?grp)
(id-Apertium_output ?aid $?mng)
(not (prov_assignment ?aid ?mid))
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?mng))
        (assert_control_fact prov_mng_has_been_aligned ?mid $?grp)
        (assert_control_fact prov_mng_has_been_filled ?aid)
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (printout t "count = " ?*count* crlf)
        (assert (anu_ids-sep-manual_ids ?aid - ?mid $?grp))
        (assert (prov_assignment ?aid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule exact_match_with_aper_output1 ;[manual word match]
(declare (salience 900))
(current_id ?mid)
(manual_id-word-cat ?mid $?mng ?)
(id-Apertium_output ?aid $?mng)
(not (prov_assignment ?aid ?mid))
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?mng))
        (assert_control_fact prov_mng_has_been_aligned ?mid)
        (assert_control_fact prov_mng_has_been_filled ?aid)
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (printout t "count = " ?*count* crlf)
        (assert (anu_ids-sep-manual_ids ?aid - ?mid))
)
;-------------------------------------------------------------------------------------
;If only one verb is present in both the manual and anusaaraka sentences then make direct alignment.
(defrule single_verb_group_match
(declare (salience 890))
(current_id ?mid)
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?m_h_id)
(manual_id-node-word-root-tam ?m_h_id VGF $?man_mng - $? - $?)
(head_id-grp_ids ?m_h_id ?mid $?grp)
(id-Apertium_output ?aid $?anu_mng)
(not (prov_assignment ?aid ?mid))
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng))
        (assert_control_fact prov_mng_has_been_aligned ?mid $?grp)
        (assert_control_fact prov_mng_has_been_filled ?aid)
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (printout t "count = " ?*count* crlf)
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
(id-Apertium_output ?aid $?anu_mng)
(test (> (length $?anu_mng) 0))
(id-root ?aid ?root)
(not (prov_assignment ?aid ?mid))
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid  $?anu_mng - ?mid  $?v_root $?tam))
        (assert_control_fact prov_mng_has_been_aligned ?mid $?grp_ids)
        (assert_control_fact prov_mng_has_been_filled ?aid)
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (printout t "count = " ?*count* crlf)
        (assert (anu_ids-sep-manual_ids ?aid - ?mid $?grp_ids))
        (assert (prov_assignment ?aid ?mid))
)

;-------------------------------------------------------------------------------------
;Check for manual word and vibakthi match in the dictionary
(defrule word_and_vib_match_using_dic
(declare (salience 870))
(current_id ?mid)
(or (manual_id-cat-word-root-vib-grp_ids ?mid ? $?noun - $? - $?vib - $?grp_ids) (manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?noun - $?vib - $?grp_ids))
(test (neq $?vib 0))
(id-org_wrd-root-dbase_name-mng ? ? ?e_noun ? $?noun)
(id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib)
(id-root ?e_noun_id ?e_noun)
(id-root ?e_vib_id ?e_vib)
(id-Apertium_output ?e_noun_id $?anu_mng)
(pada_info (group_head_id  ?e_noun_id)(preposition ?e_vib_id))
(not (prov_mng_has_been_aligned ?mid))
(not (prov_mng_has_been_filled ?e_noun_id))
(not (prov_assignment ?aid ?mid))
=>
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?e_noun_id  $?anu_mng - ?mid  $?noun $?vib))
        (assert_control_fact prov_mng_has_been_aligned $?grp_ids)
        (assert_control_fact prov_mng_has_been_filled ?e_noun_id)
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (printout t "count = " ?*count* crlf)
        (assert (anu_ids-sep-manual_ids ?e_noun_id - $?grp_ids))
        (assert (prov_assignment ?e_noun_id ?mid))
)

;-------------------------------------------------------------------------------------
;Check for manual  word match in the dictionary
(defrule noun-word_with_0_vib
(declare (salience 850))
(current_id ?mid)
(or (manual_id-cat-word-root-vib-grp_ids ?mid ? $?mng - $? - 0 - $?)(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?mng - 0 - $?))
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?mng)
(id-root ?eid ?e_word)
(id-Apertium_output ?eid $?anu_mng)
(not (prov_mng_has_been_aligned ?mid))
(not (prov_mng_has_been_filled ?eid))
(not (prov_assignment ?aid ?mid))
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?eid  $?anu_mng - ?mid  $?mng))
        (assert_control_fact prov_mng_has_been_aligned ?mid)
        (assert_control_fact prov_mng_has_been_filled ?eid)
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (printout t "count = " ?*count* crlf)
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
(not (manual_id-cat-word-root-vib-grp_ids ?mid1&:(neq ?mid1 ?mid) ? $?noun - $? - $? - $?))
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?noun)
(not (id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib))
(id-root ?eid ?e_word)
(id-root ?e_vib_id ?e_vib)
(id-Apertium_output ?eid $?anu_mng)
(pada_info (group_head_id  ?eid)(preposition ?e_vib_id))
(not (prov_mng_has_been_aligned ?mid))
(not (prov_mng_has_been_filled ?eid))
(not (prov_assignment ?aid ?mid))
=>
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?eid  $?anu_mng - ?mid  $?noun $?vib))
        (assert_control_fact prov_mng_has_been_aligned $?grp_ids)
        (assert_control_fact prov_mng_has_been_filled ?eid)
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (printout t "count = " ?*count* crlf)
        (assert (anu_ids-sep-manual_ids ?eid - $?grp_ids))
        (assert (prov_assignment ?eid ?mid))
)

;-------------------------------------------------------------------------------------
(defrule check_match_with_english_word
(declare (salience 830))
(current_id ?mid)
(manual_id-cat-word-root-vib-grp_ids ?mid ? ?word - $? - $? - $?)
(or (id-word ?eid ?word)(id-original_word ?eid ?word))
(id-Apertium_output ?eid $?anu_mng)
(not (prov_mng_has_been_aligned ?mid))
(not (prov_mng_has_been_filled ?eid))
(not (prov_assignment ?aid ?mid))
=>
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?eid  $?anu_mng - ?mid  ?word))
        (assert_control_fact prov_mng_has_been_aligned ?mid)
        (assert_control_fact prov_mng_has_been_filled ?eid)
        (bind ?*count* (+ ?*count* 1))
        (assert (update_count_fact ?*count*))
        (printout t "count = " ?*count* crlf)
        (assert (anu_ids-sep-manual_ids ?eid - ?mid))
        (assert (prov_assignment ?eid ?mid))
)
;-------------------------------------------------------------------------------------
(defrule check_count_1
(declare (salience -50))
?f<-(current_id ?hid)
(count_fact 1)
?f1<-(manual_id-cat-word-root-vib-grp_ids ?hid $?)
(anu_ids-sep-manual_ids $?aids - $?mids)
(test (member$ ?hid $?mids))
=>
        (retract ?f1 ?f)
        (assert_control_fact mng_has_been_aligned $?mids)
        (assert_control_fact mng_has_been_filled $?aids)
        (assert (id-confidence_level ?hid 8))
;        (printout t "count_value ----"?*count* crlf)
        (assert (provisional_id ?hid))
)
;-------------------------------------------------------------------------------------

(defrule check_count_value_gt_than_1
(declare (salience -50))
?f<-(current_id ?hid)
(count_fact ?count)
(test (> ?count 1))
?f1<-(manual_id-cat-word-root-vib-grp_ids ?hid $?)
(anu_ids-sep-manual_ids $?aid - $?mids)
(test (member$ ?hid $?mids))
=>
        (retract ?f1 ?f)
        (assert (anu_ids-sep-potential_assignments  $?aid - $?mids))
 ;       (printout t "count_value   ^^^"?*count* crlf)
        (assert (potential_id ?hid))
)
;-------------------------------------------------------------------------------------

(defrule check_count_value_0
(declare (salience -100))
?f<-(current_id ?hid)
(count_fact 0)
?f1<-(manual_id-cat-word-root-vib-grp_ids ?hid $?)
=>
        (retract ?f ?f1)
  ;      (printout t "count_value   %%%%"?*count* crlf)
)
;-------------------------------------------------------------------------------------

(defrule rm_potential_fact
(declare (salience -200))
(potential_id ?hid)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?hid $?man_mng1)
=>
	(retract ?f)
	(assert (potential_assignment_vacancy_id-candidate_id ?aid ?hid)) 
)
;-------------------------------------------------------------------------------------
(defrule combine_group 
(declare (salience -100))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid1 $?man_mng1)
(test (neq ?mid ?mid1))
?f2<-(id-confidence_level ?mid 8)
?f3<-(id-confidence_level ?mid1 8)
=>
        (retract ?f ?f1)
        (if (< ?mid ?mid1) then (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng $?man_mng1))
                                (assert (id-confidence_level ?mid 7))
		           else (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid1 $?man_mng1 $?man_mng))
                                (assert (id-confidence_level ?mid1 7))
        )
)

