(defglobal ?*id_count* = 1)

(defrule change_id
(declare (salience 1000))
?f<-(man_id-word-cat	?id	?word	?cat)
(not (man_id-word-cat	?id1&:(> ?id ?id1) ? ?))
(not (id_mng_modified ?id))
=>
	(retract ?f)
	(assert (manual_id-word-cat ?*id_count* ?word ?cat))
        (assert (old_id-new_id ?id ?*id_count*))
        (bind ?*id_count* (+ ?*id_count* 1))
)
;------------------------------------------------------------------------------------------------------------------
(defrule change_id1
(declare (salience 1000))
?f<-(head_id-grp_ids    ?h   $?pre ?id $?pos)
(old_id-new_id ?id ?new_id)
=>
        (retract ?f)
        (assert (head_id-grp_ids ?h $?pre ?new_id $?pos))
)
;------------------------------------------------------------------------------------------------------------------
(defrule change_id2
(declare (salience 1000))
?f<-(id-node-word-root ?id ?node ?word ?root)
(old_id-new_id ?id ?new_id)
=>
        (retract ?f)
        (assert (id-node-word-root ?new_id ?node ?word - ?root))
)
;------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (22-11-12)
;The coordinates (x, y, z) of an object describe the position of the object with respect to this coordinate system.
;kisI vaswu ke nirxeSAfka @PUNCT-OpenParen @x @PUNCT-Comma @y @PUNCT-Comma @z @PUNCT-ClosedParen isa nirxeSAfka nikAya ke sApekRa usa vaswu kI sWiwi nirUpiwa karawe hEM @PUNCT-Dot. ==> kisI vaswu ke nirxeSAfka @PUNCT-OpenParen x @PUNCT-Comma y @PUNCT-Comma z @PUNCT-ClosedParen isa nirxeSAfka nikAya ke sApekRa usa vaswu kI sWiwi nirUpiwa karawe hEM @PUNCT-Dot.
(defrule del_@_from_word
(declare (salience 100))
(manual_id-word-cat ?id ?word ?cat)
(test (neq (str-index "@" (implode$ (create$ ?word))) FALSE))
(test (eq (member$ ?word (create$ @PUNCT-OpenParen @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar)) FALSE))
(not (id_mng_modified ?id))
=>
	(bind ?index (str-index "@" ?word))
	(bind ?str (sub-string 1 (- ?index 1) ?word) )
	(bind ?str1 (sub-string (+ ?index 1) (length ?word) ?word))
	(bind ?nword (explode$ (str-cat ?str ?str1)))
        (assert (man_id-word-cat ?id ?nword ?cat))
	(assert (id_mng_modified ?id))
)

(defrule get_remaining_facts
(declare (salience 10))
(manual_id-word-cat ?id ?word ?cat)
(not (id_mng_modified ?id))
=>
	(assert (man_id-word-cat ?id ?word ?cat))
        (assert (id_mng_modified ?id))
)

