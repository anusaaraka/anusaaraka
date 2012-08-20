(defglobal ?*dic_fp*  = dic_fp)

(defrule possible_assignment_for_potential_candidates
(declare (salience 2002))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng)
(hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?anu_ids ?eng_words)
(potential_assignment_vacancy_id-candidate_id ? ?mapped_id)
(manual_id-mapped_id ?mapped_id ?mid)
(test (member$ ?aid $?anu_ids))
(test (neq (length $?anu_mng) 0))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ? $?))
(not (mng_has_been_assigned ?mid))
=>
        (assert (mng_has_been_assigned ?mid))
;       (printout t "eng_word-anu_tran-man_tran "?eng_words"            "?h_mng"                "(implode$ $?man_mng) crlf)
        (printout ?*dic_fp* ?eng_words"	"(implode$ $?man_mng) crlf)
)

(defrule possible_assignment
(declare (salience 2000))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng)
(hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?anu_ids ?eng_words)
(test (member$ ?aid $?anu_ids))
(test (neq (length $?anu_mng) 0))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ? $?))
=>
 ;       (printout t "eng_word-anu_tran-man_tran      "?eng_words"---"?h_mng"---"(implode$ $?man_mng) crlf)
        (printout ?*dic_fp* ?eng_words"	"(implode$ $?man_mng) crlf)
)
