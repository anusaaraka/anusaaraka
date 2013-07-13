(defglobal ?*id_count* = 1)

(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
;Ex: 3@SYMBOL-DOT1
(deffunction remove_@(?word)
	(bind ?index (str-index "@" ?word))
        (bind ?str (sub-string 1 (- ?index 1) ?word) )
        (bind ?str1 (sub-string (+ ?index 1) (length ?word) ?word))
        (bind ?nword (explode$ (str-cat ?str ?str1)))
        (bind ?nword (remove_character "-" (implode$ (create$  ?nword)) " "))
)
 ;-----------------------------------------------------------------------------------------------------------------------
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
(test (eq (member$ ?word (create$ @PUNCT-OpenParen @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar @PUNCT-RightSquareBracket @PUNCT-LeftSquareBracket)) FALSE))
(not (id_mng_modified ?id))
=>
	(bind ?nword (remove_@ ?word))
        (assert (man_id-word-cat ?id ?nword ?cat))
	(assert (id_mng_modified ?id))
	(assert (mng_with_@_id ?id))
)
;------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (12-07-13)
(defrule modify_root_for_@_word
(declare (salience 96))
?f1<-(mng_with_@_id ?id)
(man_id-word-cat ?id $?word  ?)
?f0<-(id-node-word-root ?id ?n $?w - $?r)
=>
	(retract ?f0 ?f1)
	(assert (id-node-word-root ?id ?n $?word - $?word))
)
;------------------------------------------------------------------------------------------------------------------
;Let us first consider the simple case in which an object is stationary, e.g. a car standing still at x SYMBOL-EQUAL-TO1 40 m .. 
;Generated root for the words containing '@' Ex : @SYMBOL-EQUAL-TO
(defrule del_@_from_shallow_root
(declare (salience 90))
?f<-(id-node-word-root ?id ?node ?word - ?root)
(test (neq (str-index "@" (implode$ (create$ ?root))) FALSE))
(test (eq (member$ ?root (create$ @PUNCT-OpenParen @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar @PUNCT-RightSquareBracket @PUNCT-LeftSquareBracket)) FALSE))
(not (id_root_modified ?id))
=>
	(retract ?f)
	(bind ?nword (remove_@ ?word))
	(bind ?nroot (remove_@ ?root))
        (assert (id-node-word-root ?id ?node ?nword - ?nroot))
        (assert (id_root_modified ?id))
)
;------------------------------------------------------------------------------------------------------------------
(defrule get_remaining_facts
(declare (salience 10))
(manual_id-word-cat ?id ?word ?cat)
(not (id_mng_modified ?id))
=>
	(assert (man_id-word-cat ?id ?word ?cat))
        (assert (id_mng_modified ?id))
)
;------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (08-04-13)
(defrule get_root_if_not_present
(declare (salience 5))
?f<-(id-node-word-root ?id ?node ?word - -)
=>
	(retract ?f)
	(assert (id-node-word-root ?id ?node ?word - ?word))
)
 

