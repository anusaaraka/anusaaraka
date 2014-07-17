(defglobal ?*fp* = dic_fp1)

(defrule potential_count_of_manual_id
(declare (salience 1500))
;(or (potential_assignment_vacancy_id-candidate_id ?aid1 ?mid) (man_id-anu_id ?mid ?aid1)(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?))
(potential_assignment_vacancy_id-candidate_id ?aid1 ?mid)
(not (man_id-candidate_ids ?mid $?))
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid1))
=>
        (assert (man_id-candidate_ids ?mid))
)
;------------------------------------------------------------------------------------------------------------
(defrule potential_count_of_manual_id1
(declare (salience 1500))
;(or (potential_assignment_vacancy_id-candidate_id ?aid ?mid) (man_id-anu_id ?mid ?aid)(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f<-(man_id-candidate_ids ?mid $?mem)
(test (eq (member$ ?aid $?mem) FALSE))
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid))
=>
        (retract ?f)
        (bind $?mem (sort > (create$ $?mem ?aid)))
        (assert (man_id-candidate_ids ?mid $?mem))
)
;------------------------------------------------------------------------------------------------------------
(defrule potential_count_of_anu_id
(declare (salience 1200))
;(or (potential_assignment_vacancy_id-candidate_id ?aid ?mid1) (anu_id-man_id ?aid ?mid1)(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid1)
(not (anu_id-candidate_ids ?aid $?))
(not (mng_has_been_filled ?aid))
(not (mng_has_been_aligned ?mid1))
=>
        (assert (anu_id-candidate_ids ?aid))
)
;------------------------------------------------------------------------------------------------------------
(defrule potential_count_of_anu_id1
(declare (salience 1200))
;(or (potential_assignment_vacancy_id-candidate_id ?aid ?mid) (anu_id-man_id ?aid ?mid)(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f<-(anu_id-candidate_ids ?aid $?mem)
(test (eq (member$ ?mid $?mem) FALSE))
(id-word ?aid ?word)
(not (mng_has_been_filled ?aid))
(not (mng_has_been_aligned ?mid))
=>
        (retract ?f)
        (bind $?mem (sort > (create$ $?mem ?mid)))
        (assert (anu_id-candidate_ids ?aid $?mem))
)
;------------------------------------------------------------------------------------------------------------
(defrule align_poten_man_id
(declare (salience 1000))
?f<-(man_id-candidate_ids ?mid $?list1 ?aid $?list2)
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid))
(test (or (neq (length $?list1) 0) (neq (length $?list2) 0)))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - $?r - $?vib - $?mids ?id)
(mot-cat-praW_id-largest_group ? NP ? $?grp)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?anu_mng1 - ?mid1 $? )
(test (member$ ?aid $?grp))
(test (member$ ?aid1 $?grp))
(test (eq (+ ?id 1) ?mid1))
(id-Apertium_output ?aid $?anu_mng)
(test (and (neq (length $?r) 0)(neq (length $?vib) 0)(neq (length $?man_mng) 0)))
=>
	(retract ?f ?f1)
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -)))
        (assert (mng_has_been_aligned ?mid))
        (assert (mng_has_been_filled ?aid))
        (assert (phrasal_aligned_mng ?aid  ?mid))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids ?id))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids ?id))
)

(defrule align_poten_man_id1
(declare (salience 1000))
?f<-(man_id-candidate_ids ?mid $?list1 ?aid $?list2)
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid))
(test (or (neq (length $?list1) 0) (neq (length $?list2) 0)))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - $?r - $?vib - $?mids)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?anu_mng1 - ?mid1 $? ?id)
(test (numberp ?id))
(test (eq (+ ?id 1) ?mid))
(mot-cat-praW_id-largest_group ? NP|PP ? $?grp)
(test (member$ ?aid $?grp))
(test (member$ ?aid1 $?grp))
(id-Apertium_output ?aid $?anu_mng)
(test (and (neq (length $?r) 0)(neq (length $?vib) 0)(neq (length $?man_mng) 0)))
=>      
        (retract ?f ?f1)
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -))) 
        (assert (mng_has_been_aligned ?mid))
        (assert (mng_has_been_filled ?aid))
        (assert (phrasal_aligned_mng ?aid  ?mid))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids))
)


(defrule delete_mng_filled
(declare (salience 900))
(phrasal_aligned_mng ?aid  ?mid)
?f<-(anu_id-candidate_ids ?aid1 $?pre ?mid $?pos)
=>
	(retract ?f)
	(assert (anu_id-candidate_ids ?aid1 $?pre $?pos))
)


(defrule align_single_candidate_id
(declare (salience 890))
(anu_id-candidate_ids ?aid ?mid) 
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - $?r - $?vib - $?mids)
(id-Apertium_output ?aid $?anu_mng)
(test (and (neq (length $?r) 0)(neq (length $?vib) 0)(neq (length $?man_mng) 0)))
=>
        (retract ?f1)
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -)))
        (assert (mng_has_been_aligned ?mid))
        (assert (mng_has_been_filled ?aid))
        (assert (phrasal_aligned_mng ?aid ?mid))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids))
)
;------------------------------------------------------------------------------------------------------------
(defrule align_left_over_wrds_using_phrasal_data
(declare (salience -199))
?f<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - $?r - $?vib - $?mids)
(anu_id-anu_mng-man_mng         ?aid    ?a_wrd  $?man_mng)
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid))
(test (and (neq (length  $?r) 0) (neq (length  $?vib) 0)))
(id-original_word ?aid ?a_wrd)
(id-Apertium_output ?aid $?anu_mng)
=>
        (retract ?f)
        (assert (mng_has_been_aligned ?mid))
        (assert (mng_has_been_filled ?aid))
        (assert (phrasal_aligned_mng ?aid  ?mid))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids))
)

;-------------------------------------------------------------------------------------

(defrule replace_id_with_word_for_nos
(declare (salience -500))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre ?id $?pos)
?f1<-(manual_id-word ?id ?h_mng)
(test (numberp ?h_mng))
(phrasal_aligned_mng ?aid  ?mid)
=>
        (retract ?f ?f1)
        (bind ?h_mng (string-to-field (str-cat @ ?h_mng)))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre ?h_mng $?pos))
        
)

(defrule replace_id_with_word
(declare (salience -501))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre ?id $?pos)
?f1<-(manual_id-word ?id $?h_mng)
(phrasal_aligned_mng ?aid  ?mid)
=>
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar)) then
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre $?pos))
        else
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?pre $?h_mng $?pos)))
)
;-------------------------------------------------------------------------------------
(defrule print_to_file
(declare (salience -1000))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?man_mng)
(phrasal_aligned_mng ?aid  ?mid)
=>
	(retract ?f)
        (printout ?*fp* "(anu_id-anu_mng-sep-man_id-man_mng_tmp "?aid" "(implode$ $?anu_mng)" - "?mid" "(implode$ $?man_mng)")" crlf)
)

