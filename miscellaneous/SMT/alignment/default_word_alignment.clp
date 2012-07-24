(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deffunction assert_control_fact(?fact_name $?ids)
                (loop-for-count (?i 1 (length $?ids))
                                (bind ?j (nth$ ?i $?ids))
                                (if (eq ?fact_name mng_has_been_aligned) then
                                (assert (mng_has_been_aligned ?j))
                                else if (eq ?fact_name mng_has_been_filled) then
                                (assert (mng_has_been_filled ?j)))
                 )
)

;-------------------------------------------------------------------------------------
(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1  (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)
;-------------------------------------------------------------------------------------

(defrule remove_manual_punct_facts
(declare (salience 1001))
?f<-(manual_id-cat-word-root-vib-grp_ids ?mid ? ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - $?)
=>
	(retract ?f)
        (assert (mng_has_been_aligned ?mid))
)
;-------------------------------------------------------------------------------------

(defrule remove_manual_punct_facts1
(declare (salience 1001))
?f<-(manual_id-cat-word-root-vib-grp_ids ?mid SYM $?)
=>
        (retract ?f)
 	(assert (mng_has_been_aligned ?mid))
)
;-------------------------------------------------------------------------------------
;grouping potential fact [same anu_word mapping with different manual_words]
;(defrule grp_potential_fact
;(declare (salience 505))
;?f<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
;?f1<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid1)
;(test (neq ?mid ?mid1))
;=>
;	(retract ?f ?f1)
;	(assert (potential_assignment_vacancy_id-candidate_id ?aid - ?mid ?mid1))
;)
;;-------------------------------------------------------------------------------------
;
;
;;grouping potential fact [same manual_word mapping with different anu_words]
;(defrule potential_fact_count1
;(declare (salience 504))
;?f<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
;?f1<-(potential_assignment_vacancy_id-candidate_id ?aid1 ?mid)
;(test (neq ?aid ?aid1))
;=>
;        (retract ?f ?f1)
;        (assert (potential_assignment_vacancy_id-candidate_id ?aid ?aid1 - ?mid))
;)
;;-------------------------------------------------------------------------------------
;
;;Remove the potential fact if any of the mapping length is 0
;(defrule rm_potential_assignment_fact0
;(declare (salience 503))
;?f<-(potential_assignment_vacancy_id-candidate_id $?aids - $?mids)
;(test (or (eq (length $?aids) 0) (eq (length $?mids) 0))) 
;=>
;        (retract ?f)
;)
;;-------------------------------------------------------------------------------------
;;If any of the anu word has been filled , remove that id from potential assignment fact
;;"For example, the same law of gravitation (given by Newton) describes the fall of an apple to the ground, the motion of the moon around the earth and the motion of planets around the sun. "
;;उदाहरण के लिए , समान गुरुत्वाकर्षण का नियम ( जिसे न्यूटन ने प्रतिपदित किया ) पृथ्वी पर किसी सेब का गिरना , पृथ्वी के परितः चन्द्रमा की परिक्रमा तथा सूर्य के परितः ग्रहों की गति जैसी परिघटनाओं की व्याख्या करता है .
;(defrule rm_potential_assignment_fact
;(declare (salience 503))
;?f<-(potential_assignment_vacancy_id-candidate_id $?aids - $?mids)
;?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?id $? - ? $?)
;(test (member$ ?id $?aids))
;(mng_has_been_filled ?id)
;=>
;	(retract ?f)
;        (bind $?aids (delete-member$ $?aids ?id))
;	(assert (potential_assignment_vacancy_id-candidate_id $?aids - $?mids)) 
;)
;
;;-------------------------------------------------------------------------------------
;;If any of the  manual word has been aligned , remove that id from potential assignment fact
;(defrule rm_potential_assignment_fact1
;(declare (salience 503))
;?f<-(potential_assignment_vacancy_id-candidate_id $?aids - $?mids)
;?f1<-(anu_id-anu_mng-sep-man_id-man_mng ? $? - ?id $?)
;(test (member$ ?id $?mids))
;(mng_has_been_aligned ?id)
;=>
;        (retract ?f)
;        (bind $?mids (delete-member$ $?mids ?id))
;        (assert (potential_assignment_vacancy_id-candidate_id $?aids - $?mids))
;)
;
;
;;-------------------------------------------------------------------------------------
;;If due to the above rules if potential fact becomes one-to-one mapping and still then make alignment b/w that two words.
;;"A precise definition of this discipline is neither possible nor necessary. "
;;isa viRaya kI yaWArWa pariBARA xenA na wo saMBava hE Ora na hI AvaSyaka .
;(defrule assign_using_potential_assignment_fact
;(declare (salience 502))
;?f<-(potential_assignment_vacancy_id-candidate_id ?aid - ?mid)
;(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $? - $? - $?grp_ids)
;(id-Apertium_output ?aid $?anu_mng)
;(not (mng_has_been_filled ?aid))
;(not (mng_has_been_aligned ?mid))
;(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mng))
;=>
;        (retract ?f)
;        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?grp_ids))
;        (assert_control_fact mng_has_been_aligned $?grp_ids)
;        (assert (id-confidence_level ?mid 3))
;)
;;-------------------------------------------------------------------------------------
;;aligning using neighbouring slot [which have already been aligned] information [Here neighbourhood is -]
;;This rule is to check if the previous word is "-".
;(defrule assign_poten_fact_using_neighbour_hood
;(declare (salience 501))
;?f<-(potential_assignment_vacancy_id-candidate_id $?pre ?aid1 $?pos - ?mid)
;(head_id-grp_ids ?m_h_id $? ?mid $?)
;(not (mng_has_been_aligned ?mid))
;(hindi_id_order $? ?aid ?aid0 ?aid1 $?)
;(id-Apertium_output ?aid1 $?anu_mng1)
;(id-Apertium_output ?aid0);Usually for determiners 
;(test (neq (length $?anu_mng1) 0))
;(manual_id-cat-word-root-vib-grp_ids ? ? $?word - $? - $? - $?mid_pre ?mid $?mid_pos)
;(head_id-grp_ids ?m_h_id1&:(eq ?m_h_id1 (- ?m_h_id 1)) $?pre1 ?mid2 $?pos1)
;(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ? $? ?mid2 $?)
;(not (mng_has_been_filled ?aid1))
;=>
;	(retract ?f)
;        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid $?mid_pre ?mid $?mid_pos))
;        (assert_control_fact mng_has_been_aligned $?mid_pre ?mid $?mid_pos)
;        (assert_control_fact mng_has_been_filled ?aid1)
;        (assert (id-confidence_level (nth$ 1 (create$ $?mid_pre ?mid $?mid_pos)) 3))
;)
;;-------------------------------------------------------------------------------------
;;aligning using neighbouring slot [which have already been aligned] information.
;(defrule assign_poten_fact_using_neighbour_hood1;[left_neighbour word is aligned]
;(declare (salience 501))
;?f<-(potential_assignment_vacancy_id-candidate_id $?pre ?aid1 $?pos - ?mid)
;(head_id-grp_ids ?m_h_id $? ?mid $?)
;(not (mng_has_been_aligned ?mid))
;(hindi_id_order $? ?aid ?aid1 $?)
;(id-Apertium_output ?aid1 $?anu_mng1)
;(test (neq (length $?anu_mng1) 0))
;(manual_id-cat-word-root-vib-grp_ids ? ? $?word - $? - $? - $?mid_pre ?mid $?mid_pos)
;(head_id-grp_ids ?m_h_id1&:(eq ?m_h_id1 (- ?m_h_id 1)) $?pre1 ?mid2 $?pos1)
;(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ? $? ?mid2 $?)
;(not (mng_has_been_filled ?aid1))
;=>
;        (retract ?f)
;        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid $?mid_pre ?mid $?mid_pos))
;        (assert_control_fact mng_has_been_aligned $?mid_pre ?mid $?mid_pos)
;        (assert_control_fact mng_has_been_filled ?aid1)
;        (assert (id-confidence_level (nth$ 1 (create$ $?mid_pre ?mid $?mid_pos)) 3))
;)       
;;-------------------------------------------------------------------------------------
;;aligning using neighbouring slot [which have already been aligned] information.
;(defrule assign_poten_fact_using_neighbour_hood2 ;[right_neighbour word is aligned]
;(declare (salience 501))
;?f<-(potential_assignment_vacancy_id-candidate_id $?pre ?aid1 $?pos - ?mid)
;(head_id-grp_ids ?m_h_id $? ?mid $?)
;(not (mng_has_been_aligned ?mid))
;(hindi_id_order $? ?aid1 ?aid $?)
;(id-Apertium_output ?aid1 $?anu_mng1)
;(test (neq (length $?anu_mng1) 0))
;(manual_id-cat-word-root-vib-grp_ids ? ? $?word - $? - $? - $?mid_pre ?mid $?mid_pos)
;(head_id-grp_ids ?m_h_id1&:(eq ?m_h_id1 (- ?m_h_id 1)) $?pre1 ?mid2 $?pos1)
;(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ? $? ?mid2 $?)
;(not (mng_has_been_filled ?aid1))
;=>
;        (retract ?f)
;        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid $?mid_pre ?mid $?mid_pos))
;        (assert_control_fact mng_has_been_aligned $?mid_pre ?mid $?mid_pos)
;        (assert_control_fact mng_has_been_filled ?aid1)
;        (assert (id-confidence_level (nth$ 1 (create$ $?mid_pre ?mid $?mid_pos)) 3))
;)
	
;-------------------------------------------------------------------------------------
;
(defrule single_verb_group_match
(declare (salience 502))
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?mid)
(not (mng_has_been_aligned ?mid))
(manual_id-node-word-root-tam ?m_h_id VGF $?man_mng - $? - $?)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?mng)
(head_id-grp_ids ?m_h_id $?pre ?mid $?pos)
(id-Apertium_output ?aid $?anu_mng)
(test (> (length $?anu_mng) 0))
=>
  	(retract ?f)       
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mng $?pre ?mid $?pos))
        (assert_control_fact mng_has_been_aligned $?pre ?mid $?pos)
        (assert (id-confidence_level ?mid 3))
)
;-------------------------------------------------------------------------------------
;If part[Partial] of the word is matched and tam is exact
(defrule partial_verb_group_match
(declare (salience 501))
(manual_id-node-word-root-tam ?m_h_id VGF $? $?mng $? - $? - $?tam)
(head_id-grp_ids ?m_h_id ?mid $?grp_ids)
(not (mng_has_been_aligned ?mid))
(id-Apertium_output ?aid $?anu_mng)
(not (mng_has_been_filled ?aid))
(e_tam-id-dbase_name-mng ? ? ? $?tam)
(test (and (> (length $?anu_mng) 0)(> (length $?mng) 0)))
(test (subsetp $?mng $?anu_mng))
=>
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid ?mid $?grp_ids))
        (assert_control_fact mng_has_been_aligned ?mid $?grp_ids)
        (assert_control_fact mng_has_been_filled ?aid)
        (assert (id-confidence_level ?mid 3))
)
;-------------------------------------------------------------------------------------
;doing alignment with exact tam match.
(defrule verb_group_match_with_tam
(declare (salience 500))
(manual_id-node-word-root-tam ?m_h_id VGF $? - $? - $?tam)
(head_id-grp_ids ?m_h_id ?mid $?grp_ids)
(not (mng_has_been_aligned ?mid))
(id-Apertium_output ?aid $?anu_mng)
(not (mng_has_been_filled ?aid))
(e_tam-id-dbase_name-mng ? ? ? $?tam)
(test (> (length $?anu_mng) 0))
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid ?mid $?grp_ids))
        (assert_control_fact mng_has_been_aligned ?mid $?grp_ids)
        (assert_control_fact mng_has_been_filled ?aid)
        (assert (id-confidence_level ?mid 3))
)

;-------------------------------------------------------------------------------------
;look for synonyms in hindi wordnet
(defrule lookup_man_word_in_hindi_wordnet
(declare (salience 500))
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?word - $?h_root - $?)
(not (mng_has_been_aligned ?mid))
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?h_root))) "FALSE"))
(id-org_wrd-root-dbase_name-mng ? ? ?e_root ? $?mng)
(id-root ?aid ?e_root)
(not (mng_has_been_filled ?aid))
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?mng))) "FALSE"))
(id-Apertium_output ?aid $?anu_mng)
(test (> (length $?anu_mng) 0))
=>
        (bind ?dic_val (gdbm_lookup "hindi_wordnet_dic1.gdbm" (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?h_root)))))
        (bind ?dic_val (remove_character "/" ?dic_val " "))
        (if (neq ?dic_val "FALSE") then 
	    (if (and (member$ $?h_root ?dic_val)(member$ $?mng ?dic_val)) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid ?mid))
	        (assert_control_fact mng_has_been_aligned ?mid)
        	(assert_control_fact mng_has_been_filled ?aid)
 	        (assert (id-confidence_level ?mid 3))
            )
        )
)
;-------------------------------------------------------------------------------------
;If vibakthi has been left out then move that vibakthi along with root
(defrule combine_noun_and_vib
(declare (salience 500))
(manual_id-cat-word-root-vib-grp_ids ?mid ~VM $?noun - $? -  $?vib - ?mid $?pre ?mid1 $?pos)
(test (neq $?vib 0))
(not (mng_has_been_aligned ?mid1))
(mng_has_been_aligned ?mid)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_grp_mng)
?f1<-(id-confidence_level ?mid ?conf_lvl)
=>
	(retract ?f ?f1)
        (assert_control_fact mng_has_been_aligned $?pre ?mid1 $?pos)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid ?mid $?pre ?mid1 $?pos))
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level ?mid ?conf_lvl))
)
;-------------------------------------------------------------------------------------
;If tam part has been left out then move that tam along with verb root
(defrule combine_verb_and_tam
(declare (salience 500))
(manual_id-node-word-root-tam ?m_h_id VGF $?man_mng - $? - $?)
(head_id-grp_ids ?m_h_id $?pre ?mid1 $?pos)
(not (mng_has_been_aligned ?mid1))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?man_grp)
(test (member$ ?mid2 (create$ $?pre ?mid1 $?pos)))
?f1<-(id-confidence_level ?mid2 ?conf_lvl)
=>
        (retract ?f ?f1)
        (assert_control_fact mng_has_been_aligned $?pre ?mid1 $?pos)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - (nth$ 1 (create$ $?pre ?mid1 $?pos)) $?pre ?mid1 $?pos))
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level (nth$ 1 (create$ $?pre ?mid1 $?pos)) ?conf_lvl))
)
;-------------------------------------------------------------------------------------
;
(defrule fix_using_sen_order
(declare (salience 200))
(manual_id-cat-word-root-vib-grp_ids ?mid2 ? $?m_word2 - $? - $? - $?)
(not (mng_has_been_aligned ?mid2))
(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid1 $?)
(anu_id-anu_mng-sep-man_id-man_mng ?aid3 $?anu_mng3 - ?mid3 $?)
(mng_has_been_filled ?aid1)
(mng_has_been_filled ?aid3)
(test (or (eq ?mid2 (+ ?mid1 1))(eq ?mid2 (- ?mid3 1))))
(hindi_id_order $?pre ?aid1 ?aid2 ?aid3 $?pos)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid2 $?))
(id-Apertium_output ?aid2 $?anu_mng2)
(not (mng_has_been_filled ?aid2))
(test (> (length $?anu_mng2) 0))
=>
       (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid2 $?anu_mng2 - ?mid2 ?mid2))
       (assert (mng_has_been_aligned ?mid2))
       (assert (mng_has_been_filled ?aid2))
       (assert (id-confidence_level ?mid2 3))
)
;-------------------------------------------------------------------------------------
(defrule fix_using_sen_order1
(declare (salience 200))
(manual_id-cat-word-root-vib-grp_ids ?mid2 ? $?m_word2 - $? - $? - $?)
(not (mng_has_been_aligned ?mid2))
(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid1 $?)
(mng_has_been_filled ?aid1)
(head_id-grp_ids ?m_hid2 $? ?mid2 $?)
(head_id-grp_ids ?m_hid1&:(eq ?m_hid1 (- ?m_hid2 1))  $? ?mid1 $?)
(hindi_id_order $?pre ?aid1 ?aid2 ?aid3 $?pos)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid2 $?))
(id-Apertium_output ?aid2 $?anu_mng2)
(id-Apertium_output ?aid3)
(not (mng_has_been_filled ?aid2))
(test (> (length $?anu_mng2) 0))
=>
       (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid2 $?anu_mng2 - ?mid2 ?mid2))
       (assert (mng_has_been_aligned ?mid2))
       (assert (mng_has_been_filled ?aid2))
       (assert (id-confidence_level ?mid2 3))
)
;-------------------------------------------------------------------------------------
;"We can broadly [describe] physics as a study of the basic laws of nature and their manifestation in different natural phenomena. "
;मोटे तौर पर हम भौतिकी का वर्णन प्रकृति के मूलभूत नियमों का अध्ययन तथा विभिन्न प्राकृतिक परिघटनाओं में इनकी अभिव्यक्ति के रूप में कर सकते हैं .
;If any word is left out check if that word is part of verb in anusaaraka then move the word to that group.
(defrule single_verb_group_match1
(declare (salience 400))
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?mid)
(manual_id-cat-word-root-vib-grp_ids ?mid1 ? $?mng - $? - $? - $?)
(not (mng_has_been_aligned ?mid1))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng)
(id-Apertium_output ?aid $?anu_mng)
(test (> (length $?anu_mng) 0))
(test (subsetp $?mng $?anu_mng))
=>
        (retract ?f)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid ?mid1 $?man_mng))
        (assert_control_fact mng_has_been_aligned ?mid1)
        (assert (id-confidence_level ?mid 3))
)
;-------------------------------------------------------------------------------------
;Moving the left out adjectives with the next adjective/noun
(defrule mv_JJ_to_next_JJ_or_NN
(declare (salience 100))
(manual_id-cat-word-root-vib-grp_ids ?mid JJ $?mng - $? - $? - $?grp)
(not (mng_has_been_aligned ?mid))
(manual_id-cat-word-root-vib-grp_ids ?mid1 JJ|NN $? - $? - $? - $?)
(test (eq ?mid1 (+ ?mid 1)))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid1 $?man_mng)
?f1<-(id-confidence_level ?mid1 ?conf_lvl)
=>
	(retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?grp $?man_mng))
        (assert_control_fact mng_has_been_aligned $?grp)
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level ?mid ?conf_lvl))
)

;-------------------------------------------------------------------------------------
;Using anusaaraka hindi order , if next word is not alligned and next slot is not filled [but vibakthi is same for both the cases then align those words]
(defrule chk_for_left_out_word_with_vib
(declare (salience -300))
(manual_id-cat-word-root-vib-grp_ids ?mid1 ? $? - $? - $?vib - $?grp_ids)
(pada_info (group_head_id ?aid1)(preposition ?vib_id))
(id-org_wrd-root-dbase_name-mng ? ? ?v_root ? $?vib)
(id-root ?vib_id ?v_root)
(not (mng_has_been_aligned ?mid1))
(not (mng_has_been_filled ?aid1))
(hindi_id_order $? ?aid ?aid1 $?)
(mng_has_been_filled ?aid)
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng)
(head_id-grp_ids ?m_hid $? ?mid $?)
(head_id-grp_ids ?m_hid1&:(eq ?m_hid1 (+ ?m_hid 1)) $? ?mid1 $?)
(id-Apertium_output ?aid1 $?anu_mng1)
(test (> (length $?anu_mng1) 0))
=>
        (assert_control_fact mng_has_been_aligned  $?grp_ids)
        (assert_control_fact mng_has_been_filled ?aid1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid1 $?grp_ids))
        (assert (id-confidence_level ?mid1 3))
)


;-------------------------------------------------------------------------------------
;Using anusaaraka hindi order , moving the left out word along with the group [manual_grouping]
(defrule chk_for_left_out_word_within_man_grp_match
(declare (salience -310))
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?m_word - $? - $? - $?grp)
(manual_id-cat-word-root-vib-grp_ids ?mid1 ? ?m_word1 - $? - $? - $?)
(not (mng_has_been_aligned ?mid))
(mng_has_been_aligned ?mid1)
(head_id-grp_ids ?m_hid $?grp_ids)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid1 $?man_mng)
(test (and (member$ ?mid $?grp_ids)(member$ ?mid1 $?grp_ids)))
(hindi_id_order $? ?aid ?aid1 $?)
(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?)
?f1<-(id-confidence_level ?mid1 ?conf_lvl)
=>
	(retract ?f ?f1)
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level ?mid1 ?conf_lvl))
	(assert_control_fact mng_has_been_aligned $?grp)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid1 $?grp $?man_mng))
)
;-------------------------------------------------------------------------------------
;moving the left out word along with the group [manual_grouping]
(defrule chk_for_left_out_word_within_grp_match1
(declare (salience -320))
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?m_word - $? - $? - $?grp)
(not (mng_has_been_aligned ?mid))
(mng_has_been_aligned ?mid1)
(head_id-grp_ids ?m_hid $?grp_ids)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?pre ?mid1 $?pos)
(test (and (member$ ?mid $?grp_ids)(member$ ?mid1 $?grp_ids)))
?f1<-(id-confidence_level ?mid2 ?conf_lvl)
=>
        (retract ?f ?f1)
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level ?mid2 ?conf_lvl))
        (assert_control_fact mng_has_been_aligned $?grp)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?grp $?pre ?mid1 $?pos))
)
;-------------------------------------------------------------------------------------
;moving the left out word to the nearest group [manual_grouping]
(defrule chk_for_left_out_word2
(declare (salience -330))
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?m_word - $? - $? - $?grp)
(head_id-grp_ids ?m_hid $?pre ?mid $?)
(not (mng_has_been_aligned ?mid))
(head_id-grp_ids ?m_hid1&:(eq ?m_hid1 (+ ?m_hid 1)) $? ?mid1 $?)
(mng_has_been_aligned ?mid1)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ? $? ?mid1 $?)
(hindi_id_order $? ?aid ?aid1 $?)
(not (mng_has_been_filled ?aid))
(id-Apertium_output ?aid $?anu_mng)
(test (> (length $?anu_mng) 0))
=>
        (assert (id-confidence_level ?mid 3))
        (assert_control_fact mng_has_been_aligned $?grp)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?grp))
)
;-------------------------------------------------------------------------------------
;Removing all the rules before firing "mv_left_out_grp_with_next_word".
(defrule undef_previous_rules
(declare (salience -335))
=>
	(undefrule remove_manual_punct_facts)
	(undefrule remove_manual_punct_facts1)
	(undefrule grp_potential_fact)
	(undefrule potential_fact_count1)
	(undefrule rm_potential_assignment_fact0)
	(undefrule rm_potential_assignment_fact)
	(undefrule rm_potential_assignment_fact1)
	(undefrule assign_using_potential_assignment_fact)
	(undefrule assign_poten_fact_using_neighbour_hood)
	(undefrule assign_poten_fact_using_neighbour_hood1)
	(undefrule single_verb_group_match)
	(undefrule partial_verb_group_match)
	(undefrule verb_group_match_with_tam)
	(undefrule lookup_man_word_in_hindi_wordnet)
	(undefrule combine_noun_and_vib)
	(undefrule combine_verb_and_tam)
	(undefrule fix_using_sen_order)
	(undefrule fix_using_sen_order1)
	(undefrule single_verb_group_match1)
	(undefrule mv_JJ_to_next_JJ_or_NN)
	(undefrule chk_for_left_out_word_within_man_grp_match)
	(undefrule chk_for_left_out_word_with_vib)
	(undefrule chk_for_left_out_word_within_grp_match1)
)

;-------------------------------------------------------------------------------------
;
(defrule mv_left_out_grp_with_next_word
(declare (salience -340))
(manual_id-word-cat ?mid ? ~VIB)
(head_id-grp_ids ?m_hid $? ?mid $?)
(not (mng_has_been_aligned ?mid))
(head_id-grp_ids ?m_hid1&:(eq ?m_hid1 (+ ?m_hid 1)) $? ?mid1 $?)
(mng_has_been_aligned ?mid1)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?hid $?pre1 ?mid1 $?pos1)
?f1<-(id-confidence_level ?hid ?conf_lvl)
=>
        (retract ?f ?f1)
	(assert_control_fact mng_has_been_aligned ?mid)
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level ?hid ?conf_lvl))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?hid ?mid $?pre1 ?mid1 $?pos1))
)
;-------------------------------------------------------------------------------------

;(defrule single_filled_and_single_aligned_fact_left
;(declare (salience -320))
;(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $? - $? - $?grp_ids)
;(mng_has_been_aligned ?mid)
;(not (mng_has_been_aligned ?))
;(mng_has_been_filled ?aid)
;(not (mng_has_been_filled ?))
;(id-Apertium_output ?aid $?anu_mng1)
;=>
;	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng1 - ?mid $?grp_ids))
;)
;-------------------------------------------------------------------------------------
;Sorting in assending order after alignment 
; 3 4 2 1 ==>  1 2 3 4
(defrule sort_manual_ids
(declare (salience -400))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_grp)
(not (manua_id_sorted ?mid))
=>
	(retract ?f)
        (bind $?man_grp (sort > $?man_grp))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_grp))
	(assert (manua_id_sorted ?mid))
)

;-------------------------------------------------------------------------------------
;Replacing the id with word.
(defrule replace_id_with_word
(declare (salience -500))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?pre ?id $?pos)
?f1<-(manual_id-word-cat ?id ?h_mng ?)
=>
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar -)) then
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?pre $?pos))
        else
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?pre ?h_mng $?pos)))
)

;-------------------------------------------------------------------------------------
