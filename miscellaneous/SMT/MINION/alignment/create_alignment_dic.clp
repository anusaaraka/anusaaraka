(defglobal ?*dic_fp*  = dic_fp)

;(defrule print_eng_and_manual_sen
;(declare (salience 2001))
;(manual_hin_sen $?manual_hin_sen)
;(Eng_sen $?eng_sen)
;=>
;	(printout ?*dic_fp* "Eng_sen     :: "(implode$ $?eng_sen) crlf)
;;	(printout ?*dic_fp* "Anu tran	 :: "$?anu_sen crlf)
;	(printout ?*dic_fp* "Manual_tran :: "(implode$ $?manual_hin_sen) crlf crlf)
;)

;(defrule possible_assignment_for_potential_candidates
;(declare (salience 2002))
;(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng)
;(hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?anu_ids ?eng_words)
;(potential_assignment_vacancy_id-candidate_id ? ?mapped_id)
;(manual_id-mapped_id ?mapped_id ?mid)
;(test (member$ ?aid $?anu_ids))
;(test (neq (length $?anu_mng) 0))
;(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ? $?))
;(not (mng_has_been_assigned ?mid))
;=>
;        (assert (mng_has_been_assigned ?mid))
;;       (printout t "eng_word-anu_tran-man_tran "?eng_words"            "?h_mng"                "(implode$ $?man_mng) crlf)
;        (printout ?*dic_fp* ?eng_words"	"(implode$ $?man_mng)"	POTEN" crlf)
;)

(defrule print_comment
(declare (salience 2500))
=>
	(printout ?*dic_fp*  "------------- minion aligned meanings ---------------" crlf)
)


(defrule possible_assignment
(declare (salience 2000))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mapped_id $?man_mng)
(hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?anu_ids ?eng_words)
(test (member$ ?aid $?anu_ids))
(test (neq (length $?anu_mng) 0))
(manual_id-mapped_id ?mid ?mapped_id)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ? $?))
(not (potential_assignment_vacancy_id-candidate_id ? ?mid))
=>
 ;       (printout t "eng_word-anu_tran-man_tran      "?eng_words"---"?h_mng"---"(implode$ $?man_mng) crlf)
        ;(printout ?*dic_fp* ?eng_words"	"(implode$ $?man_mng)"	MINION" crlf)
        (printout ?*dic_fp* ?eng_words"	"(implode$ $?man_mng) crlf)
)


;(defrule print_EOF
;(declare (salience -100))
;=>
;	(printout ?*dic_fp* crlf ";~~~~~~~~~~" crlf crlf)
;)
