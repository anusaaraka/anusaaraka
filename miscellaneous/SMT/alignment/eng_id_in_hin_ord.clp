(defglobal ?*fp* = fp3)

(deffunction string_to_integer (?parser_id)
(string-to-field (sub-string 2 10000 ?parser_id)))

(defrule insert_l_p
(declare (salience 300))
?f<-(hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?eng_ids ?e_w)
?f1<-(hid-punc_head-left_punctuation ?id ?dau ?PUNCT)
(test (member$ ?id $?eng_ids))
=>
	(retract ?f ?f1)
        (bind $?eng_ids (create$ ?dau $?eng_ids))
	(assert (hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?eng_ids ?e_w))
)

(defrule insert_r_p
(declare (salience 300))
?f<-(hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?eng_ids ?e_w)
?f1<-(hid-punc_head-right_punctuation ?id ?dau ?PUNCT)
(test (member$ ?id $?eng_ids))
=>
	(retract ?f ?f1)
        (bind $?eng_ids (create$ $?eng_ids ?dau))
	(assert (hin_pos-hin_mng-eng_ids-eng_words ?pos ?h_mng $?eng_ids ?e_w))
)

(defrule create_order
(declare (salience 200))
?f<-(hin_pos-hin_mng-eng_ids-eng_words ?pos ? $?eng_ids ?)
?f1<-(index ?pos)
?f2<-(hindi_order $?hin)
=>
	(retract ?f ?f1 ?f2)
        (bind ?pos (+ ?pos 1))
	(assert (hindi_order $?hin $?eng_ids))
        (assert (index ?pos))
)

(defrule rule1
(declare (salience 100))
;?f<-(hindi_order $?hin ?id $?pos)
?f<-(hindi_order $?hin ?dau $?pos)
;(hid-punc_head-right_punctuation ?id ?dau ?PUNCT)
(Head-Level-Mother-Daughters ? ? ? $? ?dau $?)
?f1<-(Head-Level-Mother-Daughters ? ? ?dau ?p_id)
(Node-Category	?dau	?)
=>
	(retract ?f ?f1) 
	(assert (hindi_order $?hin ?p_id $?pos))
)

;(defrule rule2
;(declare (salience 100))
;?f<-(hindi_order $?hin ?id $?pos)
;(hid-punc_head-left_punctuation ?id ?dau ?PUNCT)
;(Head-Level-Mother-Daughters ? ? ? $? ?dau $?)
;?f1<-(Head-Level-Mother-Daughters ? ? ?dau ?p_id)
;(Node-Category  ?dau    ?)
;=>
;        (retract ?f ?f1)
;        (assert (hindi_order $?hin ?p_id ?id $?pos))
;)

;(defrule rule3
;(declare (salience 90))
;?f<-(hindi_order $?hin)
;?f1<-(hid-last_punctuation ?	?PUNCT-Dot)
;(parserid-word   ?p_id   ?)
;(not (parserid-word   ?p_id1&:(> (string_to_integer ?p_id1)  (string_to_integer ?p_id)) ?))
;=>
;        (retract ?f ?f1)
;        (assert (hindi_order $?hin  ?p_id))
;)

(defrule rule4
(declare (salience 50))
?f<-(hindi_order $?hin ?id $?pos)
?f1<-(parserid-wordid   ?p_id   ?id)
=>
	(retract ?f1 ?f)
	(assert (hindi_order $?hin ?p_id $?pos))
)

(defrule add_possive_id
(declare (salience 49))
?f<-(hindi_order $?hin ?id $?pos)
?f1<-(basic_rel_name-sids possessive ?id1 ?id)
=>
	(retract ?f1 ?f)
        ;(bind ?s_to_int (string_to_integer ?id1))
        (assert (hindi_order $?hin ?id1 ?id $?pos))
)

(defrule cp_hin_ord
?f<-(hindi_order $?ord)
=>
	(retract ?f)
	(assert (order $?ord))
)


(defrule rm_P
(declare (salience -50))
?f<-(order $?pre ?id $?pos)
(test (or (eq (stringp ?id) TRUE)(eq (symbolp ?id) TRUE)))
=>
     (retract ?f)
     (bind ?id (explode$ (sub-string 2 100 ?id)))
     (assert (order $?pre ?id $?pos))
)

(defrule cp_to_file
(declare (salience -100))
?f<-(order $?order)
=>
	(retract ?f)
        (printout ?*fp* "(eng_id_in_hin_ord "(implode$ $?order)")" crlf)
)

