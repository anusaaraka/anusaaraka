(defglobal ?*count* = 0)

(deffunction assert_control_fact(?fact_name $?ids)
                (loop-for-count (?i 1 (length $?ids))
                                (bind ?j (nth$ ?i $?ids))
                                (if (eq ?fact_name delete_manual_fact) then
                                        (assert (delete_manual_fact ?j))
                                )
                 )
)

(defrule get_current_word
(declare (salience 200))
(manual_id-cat-word-root-vib-grp_ids ?mid $?)
(not (manual_id-cat-word-root-vib-grp_ids ?mid1&:(< ?mid1 ?mid) $?))
=>
        (assert (current_id ?mid))
)

(defrule remove_manual_punct_facts
(declare (salience 1001))
?f<-(manual_id-cat-word-root-vib-grp_ids ?mid ? ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - $?)
=>
        (retract ?f)
)
;-------------------------------------------------------------------------------------
(defrule remove_manual_punct_facts1
(declare (salience 1001))
?f<-(manual_id-cat-word-root-vib-grp_ids ?mid SYM $?)
=>
        (retract ?f)
)
;-------------------------------------------------------------------------------------
(defrule rule1
(declare (salience 900))
?f0<-(current_id ?mid)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ? $? - ?h_id $?grp)
(test (member$ ?mid $?grp))
=>
        (retract ?f0 ?f)
	(bind ?*count* (+ ?*count* 1))
	(assert (manual_id-mng ?*count* $?grp))
        (assert_control_fact delete_manual_fact $?grp)
	(assert (manual_id-mapped_id ?mid ?*count*))
)

;-------------------------------------------------------------------------------------
(defrule rule2
(declare (salience 900))
?f0<-(current_id ?mid)
?f<-(manual_id-cat-word-root-vib-grp_ids ?h_id ? $? - $? - $? - $?grp)
(test (member$ ?mid $?grp))
=>
        (retract ?f ?f0)
	(bind ?*count* (+ ?*count* 1))
        (assert (manual_id-mng ?*count* $?grp))
	(assert (manual_id-mapped_id ?mid ?*count*))
)
;-------------------------------------------------------------------------------------
(defrule delete_manual_fact
(declare (salience 2000))
?f1<-(delete_manual_fact ?mid)
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid $?)
=>
	(retract ?f1 ?f2)
)
;-------------------------------------------------------------------------------------
(defrule replace_id_with_word
(declare (salience -10))
?f<-(manual_id-mng ?mid $?pre ?id $?pos)
?f1<-(manual_id-word-cat ?id ?h_mng ?)
=>
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar -)) then
        (assert (manual_id-mng ?mid $?pre $?pos))
        else
        (assert (manual_id-mng ?mid $?pre ?h_mng $?pos)))
)

