;This file is added by Mahalaxmi
(defglobal ?*pos* = 1)

;(defrule remove_punct
;(declare (salience 1001))
;?f<-(manual_hin_sen $?man_sen)
;(not (sentence_checked_for_punctuation))
;=>
;	(retract ?f)
;        (if (member$ @PUNCT-Comma $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-Comma)))
;        (if (member$ @PUNCT-Dot $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-Dot)))
;        (if (member$ @PUNCT-QuestionMark $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-QuestionMark)))
;        (if (member$ @PUNCT-DoubleQuote $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-DoubleQuote)))
;        (if (member$ @PUNCT-Semicolon $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-Semicolon)))
;        (if (member$ @PUNCT-Colon $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-Colon)))
;        (if (member$ @PUNCT-SingleQuote $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-SingleQuote)))
;	(if (member$ @PUNCT-OpenParen $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-OpenParen)))
;        (if (member$ @PUNCT-ClosedParen $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-ClosedParen)))
;        (if (member$ @PUNCT-Exclamation $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @PUNCT-Exclamation)))
;        (if (member$ @SYM-Dollar $?man_sen) then (bind $?man_sen (delete-member$ $?man_sen @SYM-Dollar)))
;        (assert (manual_hin_sen $?man_sen))
;	(assert (sentence_checked_for_punctuation))
;)
;--------------------------------------------------------------------------------------------------------

(defrule cp_manual_sen
(declare (salience 1000))
(manual_hin_sen $?man_sen)
=>
	(assert (manual_hin_sen_tmp $?man_sen))
)
;--------------------------------------------------------------------------------------------------------

(defrule get_current_word
?f<-(manual_hin_sen_tmp ?first_word $?rem_sen)
=>
        (retract ?f)
        (assert (current_word-position ?first_word ?*pos*))
        (bind ?*pos* (+ ?*pos* 1))
        (assert (manual_hin_sen_tmp $?rem_sen))
)
;--------------------------------------------------------------------------------------------------------

(defrule possible_match_for_current_word
(declare (salience 100))
(current_word-position ?first_word ?pos)
(id-org_wrd-root-dbase_name-mng ? ? ?word ? ?first_word $?db_mng)
(id-word ?id ?word)
=>
        (assert (anu_id-man-position-candidate_match ?id ?pos ?first_word $?db_mng))
)


(defrule possible_match_for_current_word1
(declare (salience 100))
(current_word-position ?first_word ?pos)
(id-org_wrd-root-dbase_name-mng ? ?word ? ? ?first_word $?db_mng)
(id-root ?id ?word)
=>
        (assert (anu_id-man-position-candidate_match ?id ?pos ?first_word $?db_mng))
)

;--------------------------------------------------------------------------------------------------------

(defrule retract_current_word
(declare (salience 90))
?f<-(current_word-position ?first_word ?)
=>
        (retract ?f)
)
;--------------------------------------------------------------------------------------------------------

(defrule test_for_occurence_of_match_in_sen
(declare (salience -100))
(manual_hin_sen $?man_sen)
?f<-(anu_id-man-position-candidate_match ?id ?pos $?db_mng)
(test (> (length $?db_mng) 1))
=>
        (bind ?len (+ (length $?db_mng) (- ?pos 1)))
        (loop-for-count (?i ?pos ?len)
                        (bind ?m_word (nth$ ?i $?man_sen))
 			(if (eq ?i ?pos) then
                        (bind ?mng  ?m_word)
                        else
                        (bind ?mng (str-cat ?mng " " ?m_word)))
        )
        (if (neq ?mng (implode$ $?db_mng)) then (retract ?f))
)

;--------------------------------------------------------------------------------------------------------
(defrule get_poss_anu_ids_for_man_rt_thr_dic_match
(declare (salience 71))
(id-node-word-root ?man_id ? ?word - ?man_root)
(id-org_wrd-root-dbase_name-mng ? ?e_word ? ? ?man_root)
(id-word ?id ?e_word)
=>
        (assert (manual_id-root-anu_id ?man_id ?man_root ?id))
)

(defrule get_poss_anu_ids_for_man_rt_thr_dic_match1
(declare (salience 71))
(id-node-word-root ?man_id ? ?word - ?man_root)
(id-org_wrd-root-dbase_name-mng ? ? ?e_word ? ?man_root)
(id-root ?id ?e_word)
=>
        (assert (manual_id-root-anu_id ?man_id ?man_root ?id))
)

;--------------------------------------------------------------------------------------------------------
