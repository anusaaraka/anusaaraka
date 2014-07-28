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
;Eng sen ::- The lens nearest the [object], called the objective, forms a real, inverted, magnified [image] of the [object].
;Man sen ::- बिंब के सबसे निकट के लेंस को अभिदृश्यक ( @objective ) कहते हैं जो बिंब का वास्तविक , उलटा , आवर्धित प्रतिबिंब बनाता है .
;Anu tran ::- लक्ष्य बुलाया, वस्तु निकट, लेन्स वस्तु का एक विशिष्ट, उलटा कर, आवर्धन कर प्रतिबिंब बनाता है.
(defrule align_poten_man_id3
(declare (salience 1002))
?f<-(man_id-candidate_ids ?mid $?list1 ?aid $?list2 ?aid1  $?list3)
?f1<-(man_id-candidate_ids ?mid1 $?list1 ?aid $?list2 ?aid1  $?list3)
?f4<-(man_id-candidate_ids ?mid3 $?list1 ?aid $?list2 ?aid1  $?list3)
(test (and (< ?mid3 ?mid) (< ?mid3 ?mid1)))
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_aligned ?mid1))
(not (mng_has_been_filled ?aid))
(not (mng_has_been_filled ?aid1))
(test (or (neq (length $?list1) 0) (neq (length $?list2) 0)(neq (length $?list3) 0)))
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - $?r - $?vib - $?mids ?id)
?f3<-(manual_id_en_hi-word-root-vib-grp_ids ?mid1 $?man_mng1 - $?r1 - $?vib1 - $?mids1 ?id1)
(mot-cat-praW_id-largest_group ? NP|PP ? $?grp)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid2 $?anu_mng2 - ?mid2 $? )
(test (neq (member$ ?aid $?grp) FALSE))
(test (neq (member$ ?aid1 $?grp) FALSE))
(test (neq (member$ ?aid2 $?grp) FALSE))
(test (eq (+ ?id1 1) ?mid2))
(id-Apertium_output ?aid $?anu_mng)
(id-Apertium_output ?aid1 $?anu_mng1)
(test (and (neq (length $?r) 0)(neq (length $?vib) 0)(neq (length $?man_mng) 0)))
(test (and (neq (length $?r1) 0)(neq (length $?vib1) 0)(neq (length $?man_mng1) 0)))
=>
        (retract ?f ?f1 ?f2 ?f3)
        (if (> ?mid ?mid1) then
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -)))
        (assert (mng_has_been_aligned ?mid))
        (assert (mng_has_been_filled ?aid))
        (assert (phrasal_aligned_mng ?aid  ?mid))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids ?id))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids ?id))
        (if (eq (length $?anu_mng1) 0) then (bind $?anu_mng1 (create$ -)))
        (assert (mng_has_been_aligned ?mid1))
        (assert (mng_has_been_filled ?aid1))
        (assert (phrasal_aligned_mng ?aid1  ?mid1))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid1 $?mids1 ?id1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?anu_mng1 - ?mid1 $?mids1 ?id1)))
)


(defrule align_poten_man_id2
(declare (salience 1001))
?f<-(man_id-candidate_ids ?mid $?list1 ?aid $?list2 ?aid1  $?list3)
?f1<-(man_id-candidate_ids ?mid1 $?list1 ?aid $?list2 ?aid1  $?list3)
(test (< ?mid ?mid1))
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_aligned ?mid1))
(not (mng_has_been_filled ?aid))
(not (mng_has_been_filled ?aid1))
(test (or (neq (length $?list1) 0) (neq (length $?list2) 0)(neq (length $?list3) 0)))
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - $?r - $?vib - $?mids ?id)
?f3<-(manual_id_en_hi-word-root-vib-grp_ids ?mid1 $?man_mng1 - $?r1 - $?vib1 - $?mids1 ?id1)
(mot-cat-praW_id-largest_group ? NP|PP ? $?grp)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid2 $?anu_mng2 - ?mid2 $? )
(test (neq (member$ ?aid $?grp) FALSE))
(test (neq (member$ ?aid1 $?grp) FALSE))
(test (neq (member$ ?aid2 $?grp) FALSE))
(test (eq (+ ?id1 1) ?mid2))
(id-Apertium_output ?aid $?anu_mng)
(id-Apertium_output ?aid1 $?anu_mng1)
(test (and (neq (length $?r) 0)(neq (length $?vib) 0)(neq (length $?man_mng) 0)))
(test (and (neq (length $?r1) 0)(neq (length $?vib1) 0)(neq (length $?man_mng1) 0)))
=>
        (retract ?f ?f1 ?f2 ?f3)
        (if (< ?mid ?mid1) then
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -)))
        (assert (mng_has_been_aligned ?mid))
        (assert (mng_has_been_filled ?aid))
        (assert (phrasal_aligned_mng ?aid  ?mid))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids ?id))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids ?id))
        (if (eq (length $?anu_mng1) 0) then (bind $?anu_mng1 (create$ -)))
        (assert (mng_has_been_aligned ?mid1))
        (assert (mng_has_been_filled ?aid1))
        (assert (phrasal_aligned_mng ?aid1  ?mid1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid1 $?mids1 ?id1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?anu_mng1 - ?mid1 $?mids1 ?id1)))
)



(defrule align_poten_man_id
(declare (salience 1000))
?f<-(man_id-candidate_ids ?mid $?list1 ?aid $?list2)
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid))
(test (or (neq (length $?list1) 0) (neq (length $?list2) 0)))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - $?r - $?vib - $?mids ?id)
(mot-cat-praW_id-largest_group ? NP|PP ? $?grp)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?anu_mng1 - ?mid1 $? )
(test (neq (member$ ?aid $?grp) FALSE))
(test (neq (member$ ?aid1 $?grp) FALSE))
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
(test (neq (member$ ?aid $?grp) FALSE))
(test (neq (member$ ?aid1 $?grp) FALSE))
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
(anu_id-anu_mng-man_mng         ?aid    ?  $?man_mng)
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid))
(test (and (neq (length  $?r) 0) (neq (length  $?vib) 0)))
(id-original_word ?aid ?)
(id-Apertium_output ?aid $?anu_mng)
=>
        (retract ?f)
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -)))
        (assert (mng_has_been_aligned ?mid))
        (assert (mng_has_been_filled ?aid))
        (assert (phrasal_aligned_mng ?aid  ?mid))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mids))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?anu_mng - ?mid $?mids))
)

(defrule align_left_over_wrds_using_phrasal_data1
(declare (salience -200))
?f<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - $?r - $?vib - $?mids)
(anu_id-anu_mng-man_mng         ?aid    ?  $? ?man_mng1 $?)
(test (member$ ?man_mng1 $?man_mng))
(not (mng_has_been_aligned ?mid))
(not (mng_has_been_filled ?aid))
(test (and (neq (length  $?r) 0) (neq (length  $?vib) 0)))
(id-original_word ?aid ?)
(id-Apertium_output ?aid $?anu_mng)
=>
        (retract ?f)
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -)))
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

