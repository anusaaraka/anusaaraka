(defglobal ?*dic_fp*  = dic_fp)
(defglobal ?*minion-mng-file* = mng_fp3)
(defglobal ?*count* = 0)

(defrule print_comment
(declare (salience 2500))
=>
	(printout ?*dic_fp*  "------------- minion aligned meanings ---------------" crlf)
)
;--------------------------------------------------------------------------------------------------
(defrule possible_assignment
(declare (salience 2000))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mapped_id $?man_mng)
?f0<-(id-word ?aid ?)
(hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?anu_ids ?eng_words)
(test (member$ ?aid $?anu_ids))
(test (neq (length $?anu_mng) 0))
(manual_id-mapped_id ?mid ?mapped_id)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ? $?))
(not (potential_assignment_vacancy_id-candidate_id ? ?mid))
=>
	(retract ?f0)
        (printout ?*dic_fp* ?eng_words" = "(implode$ $?man_mng) crlf)
	(assert (root-anu_mng-man_mng ?eng_words ?h_mng - ?mapped_id))
)
;--------------------------------------------------------------------------------------------------
(defrule check_mng_with_multi_dic
(declare (salience 100))
?f0<-(root-anu_mng-man_mng ?eng_words $?anu_mng - ?mid )
(hin_pos-hin_mng-eng_ids-eng_words ? $?anu_mng $? $?ids $? ?eng_words)
(multi_word_expression-grp_ids $?word $?ids)
(multi_word_expression-dbase_name-mng $?word ? $?root)
?f1<-(manual_id-mng ?mid $?root)
(para_id-sent_id-no_of_words ? ?sid ?)
=>
        (retract ?f0 ?f1)
	(printout ?*minion-mng-file*  ?eng_words"       "(implode$ $?anu_mng)"  "(implode$ $?root)"  [ "?sid" ]" crlf)
)
;--------------------------------------------------------------------------------------------------
(defrule check_mng_with_dic
(declare (salience 95))
?f0<-(root-anu_mng-man_mng ?eng_words $?anu_mng - ?mapped_id )
(manual_id-mapped_id ?mid ?mapped_id)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?root - $? - $?)
(id-org_wrd-root-dbase_name-mng ? ?eng_words ? ? $?root)
?f1<-(manual_id-mng ?mapped_id $?m_mng)
(para_id-sent_id-no_of_words ? ?sid ?)
=>
        (retract ?f0 ?f1)
        (printout ?*minion-mng-file* ?eng_words"       "(implode$ $?anu_mng)"  "(implode$ $?m_mng)"  [ "?sid" ]"crlf)
)
;--------------------------------------------------------------------------------------------------
(defrule check_mng_with_dic1
(declare (salience 90))
?f0<-(root-anu_mng-man_mng ?eng_words $?anu_mng - ?mapped_id)
(manual_id-mapped_id ?mid ?mapped_id)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?root - $? - $?)
(id-org_wrd-root-dbase_name-mng ? ?org_w ? ? $?root)
(test (neq (str-index "_" ?eng_words) FALSE))
(test (eq (string-to-field (sub-string 1 (- (str-index "_" ?eng_words) 1) ?eng_words)) ?org_w))
?f1<-(manual_id-mng ?mapped_id $?m_mng)
(para_id-sent_id-no_of_words ? ?sid ?)
=>
	(retract ?f0 ?f1)
	(printout ?*minion-mng-file* ?eng_words"       "(implode$ $?anu_mng)"  "(implode$ $?m_mng)"  [ "?sid" ]"crlf)
)
;--------------------------------------------------------------------------------------------------
(defrule check_mng
(declare (salience 70))
?f0<-(root-anu_mng-man_mng ?eng_words $?anu_mng - ?mapped_id)
?f1<-(manual_id-mng ?mapped_id $?m_mng)
=>
	(retract ?f0 ?f1)
	(assert (eng_wrds-anu_mng-man_mng ?eng_words $?anu_mng - $?m_mng))
)
;--------------------------------------------------------------------------------------------------
(defrule get_count_for_cons_mis_match
(declare (salience 60))
(eng_wrds-anu_mng-man_mng ?e $?a - $?m)
(eng_wrds-anu_mng-man_mng ?e1 $?a1 - $?m1)
(test (neq $?m $?m1))
(not (added_mng ?e1))
?f0<-(count ?c)
=>
	(retract ?f0)
	(bind ?c (+ ?c 1))
	(assert (count ?c))
	(assert (added_mng ?e1))
)
;--------------------------------------------------------------------------------------------------
(defrule check_count_for_const_miss_match
(declare (salience 50))
(manual_hin_sen $?sen)
?f<-(count ?c)
(test (or (and (> ?c 2) (> (length $?sen) 10))(and (= ?c 2) (<= (length $?sen) 10))))
=>
	(retract ?f) 
	(assert (print_mngs))
)
;--------------------------------------------------------------------------------------------------
(defrule print_mng
(declare (salience 40))
(print_mngs)
?f0<-(eng_wrds-anu_mng-man_mng ?e $?a - $?m)
(para_id-sent_id-no_of_words ? ?sid ?)
=>
	(retract ?f0)
	(printout ?*minion-mng-file* ?e"	"(implode$ $?a)"	"(implode$ $?m) " --- Construction miss match (OR) Parse Wrong [ "?sid " ]" crlf)
)
;--------------------------------------------------------------------------------------------------
(defrule print_mngs1
(declare (salience 30))
(count ?c)
(para_id-sent_id-no_of_words ? ?sid ?)
?f0<-(eng_wrds-anu_mng-man_mng ?e $?a - $?m)
(test (<= ?c 2))
=>
	(retract ?f0)
        (printout ?*minion-mng-file* ?e"	"(implode$ $?a)"	"(implode$ $?m) " --- Not Found In Dictionaries  [ " ?sid " ]" crlf)
)
;--------------------------------------------------------------------------------------------------
(defrule rm_mngs_aligned_with_dic_and_anu
(declare (salience 20))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid $?)
(manual_id-mapped_id ?mid ?mapped_id)
?f0<-(manual_id-mng ?mapped_id $?)
?f1<-(id-word ?aid ?)
=>
	(retract ?f0 ?f1)
)
;--------------------------------------------------------------------------------------------------
(defrule rm_mngs_aligned_with_potential
(declare (salience 16))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
(manual_id-mapped_id ?mid ?mapped_id)
?f0<-(manual_id-mng ?mapped_id $?)
?f1<-(id-word ?aid ?)
=>
        (retract ?f0 ?f1)
)
;--------------------------------------------------------------------------------------------------
(defrule rm_mngs_aligned_with_potential1
(declare (salience 15))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f0<-(manual_id-mng ?mapped_id $?)
=>
	(retract ?f0 )
)

(defrule print_left_out_info
(declare (salience 14))
(manual_id-mng ?mapped_id $?)
(not (print_left_out))
=>
	(printout ?*minion-mng-file* crlf "left_out_words : " crlf "---------------" crlf)
	(assert (print_left_out))
)
;--------------------------------------------------------------------------------------------------
(defrule print_left_out_words
(declare (salience 10))
(print_left_out)
?f0<-(manual_id-mng ?mapped_id $?mng)
=>
	(printout ?*minion-mng-file* (implode$ $?mng) crlf)
)
;--------------------------------------------------------------------------------------------------
(defrule rm_ids_not_in_order
(declare (salience 8))
?f0<-(id-word ?id ?)
(hindi_id_order $?ids)
(test (eq (member$ ?id $?ids) FALSE))
=>
	(retract ?f0)
)
;--------------------------------------------------------------------------------------------------
;all the time -- हर_समय
(defrule rm_ids_aligned
(declare (salience 7))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $?ids ?)
?f0<-(id-word ?id ?)
(test (and (member$ ?id $?ids) (member$ ?aid $?ids)))
=>
	(retract ?f0)
)

;--------------------------------------------------------------------------------------------------
(defrule print_left_out_info1
(declare (salience 6))
(id-word ?id ?)
(not (print_left_slot))
=>
        (printout ?*minion-mng-file* crlf "left_out_slots : " crlf "---------------" crlf)
        (assert (print_left_slot))
)
;--------------------------------------------------------------------------------------------------
(defrule print_left_out_slots
(declare (salience 5))
(print_left_slot)
?f0<-(id-word ?id ?word)
=>
	(retract ?f0)
        (printout ?*minion-mng-file* ?word crlf)
)
;--------------------------------------------------------------------------------------------------
(defrule print_end
(declare (salience 4))
(or (print_left_slot)(print_left_out))
(not (done))
=>
	(printout ?*minion-mng-file* "========================================================================" crlf)
	(assert (done))
)

