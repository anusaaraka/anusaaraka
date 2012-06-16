(defglobal ?*score1* = 8)
(defglobal ?*score2* = 7)
(defglobal ?*score3* = 5)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

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
;Checks if a word occurs more than once in the manual sentence and assigning a control fact for that word 
(defrule check_for_more_than_one_poss_with_man_mng
(declare (salience 1000))
(manual_id-word-cat ?id $?word ?)
(manual_id-word-cat ?id1 $?word ?)
(test (neq ?id ?id1))
=>
	(assert (more_than_one_possibility ?id))
	(assert (more_than_one_possibility ?id1))
)

;-------------------------------------------------------------------------------------
;Check for manual verb[root] and tam match in the dictionary
(defrule verb_match_using_dic
(declare (salience 990))
(manual_id-node-word-root-tam  ?man_id   VGF   $?verb_mng - $?v_root - $?tam)
(head_id-grp_ids ?man_id $?grp_ids)
(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?v_root)
(e_tam-id-dbase_name-mng ?e_tam ? hindi_tam_dictionary $?tam)
(id-root ?e_verb_id ?root)
(pada_info (group_head_id  ?e_verb_id))
(not (more_than_one_possibility ?mid))
=>
        (assert (eid-mid-score ?e_verb_id (nth$ 1 $?grp_ids) ?*score1*))
)

;-------------------------------------------------------------------------------------
;Check for manual word and vibakthi match in the dictionary
(defrule word_and_vib_match_using_dic
(declare (salience 980))
(manual_id-word-cat ?mid $?grp_mng ?)
(manual_id-noun-vib-grp_ids ?mid $?noun - $?vib - $?grp_ids)
(id-org_wrd-root-dbase_name-mng ? ? ?e_noun ? $?noun)
(id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib)
(id-word ?e_noun_id ?e_noun)
(id-word ?e_vib_id ?e_vib)
(not (more_than_one_possibility ?mid))
=>
	(assert (eid-mid-score ?e_noun_id ?mid ?*score1*))
)

;-------------------------------------------------------------------------------------
;Check for manual root and vibakthi match in the dictionary
(defrule root_and_vib_match_using_dic 
(declare (salience 970))
(manual_id-word-cat ?mid $? ?)
(id-node-word-root ?mid ? $? - $?noun)
(manual_id-noun-vib-grp_ids ?mid $? - $?vib - $?grp_ids)
(id-org_wrd-root-dbase_name-mng ? ? ?e_noun ? $?noun)
(id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib)
(id-word ?e_noun_id ?e_noun)
(id-word ?e_vib_id ?e_vib)
(not (more_than_one_possibility ?mid))

=>
        (assert (eid-mid-score ?e_noun_id ?mid ?*score1*))
)

;-------------------------------------------------------------------------------------
;Check for manual  word match in the dictionary
(defrule noun-word_with_0_vib
(declare (salience 960))
(manual_id-word-cat ?mid $?mng ?)
(not (manual_id-noun-vib-grp_ids ?mid $?))
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?mng)
(id-word ?eid ?e_word)
(not (more_than_one_possibility ?mid))
=>
        (assert (eid-mid-score ?eid ?mid ?*score1*))
)

;-------------------------------------------------------------------------------------
;Check for manual word having vibakthi in the dictionary for which only match for word is found.
(defrule noun-word_with_vib-pres-and-no-match
(declare (salience 900))
(manual_id-word-cat ?mid $? ?)
(manual_id-noun-vib-grp_ids ?mid $?noun - $?vib - $?grp_ids)
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?noun)
(id-word ?eid ?e_word)
(id-word ?e_vib_id ?e_vib)
(not (id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib))
(not (more_than_one_possibility ?mid))
=>
        (assert (eid-mid-score ?eid ?mid ?*score2*))
)

;-------------------------------------------------------------------------------------
;Check for manual word having vibakthi in the dictionary for which only match for word is found.
(defrule noun-word_with_vib-pres-and-no-match1
(declare (salience 900))
(manual_id-word-cat ?mid $?noun ?)
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?noun)
(id-word ?eid ?e_word)
(id-word ?e_vib_id ?e_vib)
(not (id-org_wrd-root-dbase_name-mng ? ? ?e_vib ? $?vib))
(not (more_than_one_possibility ?mid))
=>
        (assert (eid-mid-score ?eid ?mid ?*score2*))
)

;-------------------------------------------------------------------------------------
;If two different match found for same word[english] then for the exact match  
;Ex:-"For example, the same law of gravitation (given by Newton) describes the fall of an apple to the ground, the [motion 1] of the moon around the earth and the [motion 2] of planets around the sun. "
;uxAharaNa ke lie  @PUNCT-Comma samAna guruwvAkarRaNa kA niyama  @PUNCT-OpenParen jise nyUtana ne prawipaxiwa kiyA  @PUNCT-ClosedParen pqWvI para kisI seba kA giranA  @PUNCT-Comma pqWvI ke pariwaH canxramA kI parikramA waWA sUrya ke pariwaH grahoM kI [gawi] jEsI pariGatanAoM kI vyAKyA karawA hE
;(motion-1 gawi) 
;(motion-2 gawi)
(defrule check_for_group_match
(declare (salience 800))
(mot-cat-head-level-praW_id-first_id-last_id-l_punc-r_punc ? ? ? ? ? ?first ?last $?)
(mot-cat-head-level-praW_id-first_id-last_id-l_punc-r_punc ? ? ? ? ? ?first1 ?last1 $?)
?f<-(eid-mid-score ?eid ?mid ?)
?f1<-(eid-mid-score ?eid1 ?mid ?)
(test (and (neq ?eid ?eid1) (neq ?first ?first1) (neq ?last ?last1)))
(test (or (and (> ?eid ?first) (< ?eid ?last)) (and (> ?eid1 ?first1) (< ?eid1 ?last1))))
=>
	(if (and (> ?eid ?first) (< ?eid ?last)) then (retract ?f)
        else (if (and (> ?eid1 ?first1) (< ?eid1 ?last1)) then (retract ?f1)))
)
;-------------------------------------------------------------------------------------
;If only one verb is present in both the manual and anusaaraka sentences then make direct alignment.
(defrule single_verb_group_match
(anu_verb_count-verbs 1 $?)
(man_verb_count-verbs 1 $?)
(manual_id-node-word-root-tam ?m_h_id VGF $?mng - $? - $?)
(head_id-grp_ids ?m_h_id ?mid $?grp)
(pada_info (group_cat VP)(group_head_id  ?eid))
=>
	(assert (eid-mid-score ?eid ?mid ?*score1*))
        (assert (take_group_mng ?mid))
        ;(assert_mng_decided_fact ?mid $?grp)
)

;-------------------------------------------------------------------------------------
;Check for exact group match b/w manual_group and anu_group
(defrule exact_match_with_aper_output
(declare (salience 100))
(manual_id-node-word-root-tam ?h_mid ? $?mng - $? - $?)
(head_id-grp_ids ?h_mid ?mid $?grp)
(id-Apertium_output ?eid $?mng)
(not (more_than_one_possibility ?mid))
=>
        (assert (eid-mid-score ?eid ?mid ?*score2*))
        (assert (take_group_mng ?mid))
)
;-------------------------------------------------------------------------------------
;Check for exact group match of manual_group with dictionary
(defrule exact_group_match_with_dic
(declare (salience 70))
(manual_id-node-word-root-tam ?h_mid ? $?mng - $? - $?)
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?mng)
(id-root ?eid ?e_word)
(head_id-grp_ids ?h_mid ?mid $?grp)
=>
        (assert (eid-mid-score ?eid ?mid ?*score3*))
        (assert (take_group_mng ?mid))
)

;-------------------------------------------------------------------------------------
;Check for possibility match using manual root 
(defrule get_poss_anu_ids_for_man_rt_thr_dic_match
(declare (salience 60))
(id-node-word-root ?mid ? ?word - ?man_root)
(id-org_wrd-root-dbase_name-mng ? ?e_word ? ? ?man_root)
(id-word ?eid ?e_word)
=>
          (assert (eid-mid-score ?eid ?mid ?*score3*))
)

(defrule get_poss_anu_ids_for_man_rt_thr_dic_match1
(declare (salience 60))
(id-node-word-root ?mid ? ?word - ?man_root)
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? ?man_root)
(id-root ?eid ?e_word)
=>
          (assert (eid-mid-score ?eid ?mid ?*score3*))
)

;-------------------------------------------------------------------------------------
;Check for possibility match using manual word
(defrule get_poss_anu_ids_for_man_word
(declare (salience 50))
(manual_id-word-cat ?mid $?noun ?)
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? $?noun)
(or (id-word ?eid ?e_word)(id-original_word ?eid ?e_word))
=>
        (assert (eid-mid-score ?eid ?mid ?*score3*))
)

(defrule check_match_with_english_word
(declare (salience 50))
(manual_id-word-cat ?mid ?word ?)
(or (id-word ?eid ?word)(id-original_word ?eid ?word))
(not (more_than_one_possibility ?mid))
=>
       (assert (eid-mid-score ?eid ?mid ?*score1*))
)
;-------------------------------------------------------------------------------------
;deciding the alignment based on the highest score [for nouns having vibakthi]
(defrule assert_confidence_lvl_for_noun_vib
(declare (salience -80))
(eid-mid-score ?eid ?mid ?score)
(not (eid-mid-score ?eid ?mid1 ?score1&:(< ?score ?score1)))
(manual_id-noun-vib-grp_ids ?mid $? - $? - $?grp_ids)
(id-Apertium_output ?eid $?mng)
(manual_id-word-cat ?mid $?man_mng ?)
=>
        (assert (id-confidence_level ?mid ?score))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?eid $?mng - ?mid $?man_mng))
        (loop-for-count (?i 1 (length (create$ $?grp_ids)))
                        (bind ?m (nth$ ?i (create$ $?grp_ids)))
                        (assert (alignment_done ?m)))
)

;-------------------------------------------------------------------------------------
;deciding the alignment based on the highest score [for group match]
(defrule assert_confidence_lvl_with_man_grp
(declare (salience -90))
(eid-mid-score ?eid ?mid ?score)
(take_group_mng ?mid)
(not (eid-mid-score ?eid ?mid1 ?score1&:(< ?score ?score1)))
(id-Apertium_output ?eid $?mng)
(manual_id-word-cat ?mid $? ?)
(manual_id-node-word-root-tam ?h_mid ? $?man_mng - $? - $?)
(head_id-grp_ids ?h_mid $? ?mid $?grp)
=>
        (assert (id-confidence_level ?mid ?score))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?eid $?mng - ?mid $?man_mng))
        (loop-for-count (?i 1 (length (create$ ?mid $?grp)))
			(bind ?m (nth$ ?i (create$ ?mid $?grp)))
			(assert (alignment_done ?m)))
)

;-------------------------------------------------------------------------------------
;deciding the alignment based on the highest score 
(defrule assert_confidence_lvl
(declare (salience -100))
(eid-mid-score ?eid ?mid ?score)
(not (eid-mid-score ?eid ?mid1 ?score1&:(< ?score ?score1)))
(id-Apertium_output ?eid $?mng)
(manual_id-word-cat ?mid $?man_mng ?)
(not (take_group_mng ?mid))
=>
        (assert (id-confidence_level ?mid ?score))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?eid $?mng - ?mid $?man_mng))
                        (assert (alignment_done ?mid))

)
;-------------------------------------------------------------------------------------
