(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

(deftemplate parser_align (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

;For english parser the case ids are not deleted from group ids 
(defrule rm_case_rel
(declare (salience 10))
?f0<-(rel_name-sids case $?)
=>
	(retract ?f0)
)

(defrule align_child
(anu_id-man_id ?ah ?mh)
(rel_name-grouped_rel_eids ? $? ?aid $? ?ah)
(rel_name-grouped_rel_hids ? $? ?mid $? ?mh)
(relation_name-rel_ids ?rel ? ?mid)
(rel_name-sids ?rel ? ?aid)
(not (anu_id-man_id ?aid ?mid))
=>
	(assert (anu_cid-man_cid ?aid ?mid))
)
;-----------------------------------------------------------------------------------
(defrule align_child1
(anu_id-man_id ?ah ?mh)
(rel_name-grouped_rel_eids ? $? ?aid $? ?ah)
(rel_name-grouped_rel_hids ? $? ?mid $? ?mh)
(relation_name-rel_ids ?rel ? ?mid)
(rel_name-sids ?rel1 ? ?aid)
(test (eq (sub-string 1 4 ?rel)(sub-string 1 4 ?rel1)))
(not (anu_id-man_id ?aid ?mid))
(not (anu_cid-man_cid ?aid ?mid))
=>
        (assert (anu_cid-man_cid ?aid ?mid))
)
;-----------------------------------------------------------------------------------
(defrule get_parser_align_info
(declare (salience -9))
(anu_cid-man_cid ?aid ?mid)
(id-Apertium_output ?aid $?amng)
?f0<-(manual_word_info (head_id ?h) (group_ids $?d ?mid $?d1))
=>
        (retract ?f0)
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning @h: $?d ?mid $?d1)))
)
;-----------------------------------------------------------------------------------
(defrule get_parser_align_info1
(declare (salience -10))
(anu_cid-man_cid ?aid ?mid )
(not (id-Apertium_output ?aid $?amng))
?f0<-(manual_word_info (head_id ?h) (group_ids $?d ?mid $?d1))
=>
        (retract ?f0)
        (assert (parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning -)(man_meaning @h: $?d ?mid $?d1)))
)
;-----------------------------------------------------------------------------------
(defrule replace_id_with_word_for_nos
(declare (salience -500))
?f<-(parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
?f1<-(manual_id-word ?id ?h_mng)
(test (numberp ?h_mng))
=>
        (retract ?f1)
        (bind ?h_mng (string-to-field (str-cat @ ?h_mng)))
        (modify ?f (man_meaning $?pre ?h_mng  $?pos))
)
;-----------------------------------------------------------------------------------
(defrule replace_id_with_word
(declare (salience -501))
?f<-(parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
?f1<-(manual_id-word ?id $?h_mng)
=>
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar)) then
        (modify ?f (man_meaning $?pre $?pos))
        else
        (modify ?f (man_meaning $?pre $?h_mng  $?pos))
        )
)


