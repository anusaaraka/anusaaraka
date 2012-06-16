; This file is written by shirisha Manju

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

 (defglobal ?*vb_file* = vb_fp)

 (defrule delete_lt_rt_punc
 (declare (salience 101))
 ?f0<-(position-cat-man_grp_mng  ?id ?node  ?p&@PUNCT-OpenParen $?wrd_mng  ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - -)
 =>
        (retract ?f0)
        (assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
        (assert (manual_id-left_punc ?id ?p))
	(assert (manual_id-right_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule delete_right_punc
 (declare (salience 100))
 ?f0<-(position-cat-man_grp_mng  ?id ?node $?wrd_mng  ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - -)
 =>
	(retract ?f0)
	(assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
	(assert (manual_id-right_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule delete_left_punc
 (declare (salience 100))
 ?f0<-(position-cat-man_grp_mng  ?id ?node ?punc&@PUNCT-OpenParen  $?wrd_mng - -)
 =>
        (retract ?f0)
        (assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
        (assert (manual_id-left_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;The area has got the digamber jain temple which houses the birds hospital.
 (defrule modify_wrd_mng_for_VP_kriyAmUla
 (declare (salience 90))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN kara ?cat ?g ?no ?p ?c ?suf)
 ?f1<-(head_id-grp_ids ?id $?grp) ;?4
 ?f2<-(position-cat-man_grp_mng   ?id ?node	$?word	- -);f0
 ?f3<-(id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n ?r ? ? ? ? ? ?);f1
 ?f4<-(head_id-grp_ids =(- ?id 1) $?grp1);f3
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $?word1 - -);f2
 ?f7<-(id-node-word-root ?n1 ?cat2 ?word3 - ?root1)
 (test (member$ ?n1 $?grp))
 ?f6<-(id-node-word-root ?n2&=(- ?n1 1) ?cat1 ?word2 - ?root0)
 (test (member$ ?n2 $?grp1))
 (not (modified_word_id ?id))
 =>
;	(retract ?f ?f0 ?f1 ?f2)
	(retract ?f ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7)
	(bind ?root (string-to-field (str-cat ?r"_kara")))
	(assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?no ?p ?c ?suf))
	(assert (position-cat-man_grp_mng   ?id ?node $?word1 $?word  - -))
        (assert (head_id-grp_ids ?id $?grp1 $?grp))
        (printout t ?word2"---"?word3 crlf)
        (bind ?word2 (explode$ (str-cat ?word2 " " ?word3)))
        (assert (id-node-word-root ?n2 ?cat2 ?word2 - ?root))
	(assert (modified_word_id ?id))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;(position-cat-man_grp_mng 5 NP kuCa saMkalpanAoM) |
 ;(position-cat-man_grp_mng 6 CCP evaM )            | (position-cat-man_grp_mng 6 CCP  kuCa saMkalpanAoM evaM niyamoM ke)
 ;(position-cat-man_grp_mng 7 NP niyamoM ke )       |
; (defrule get_conj_grp
; (declare (salience 60))
; ?f1<-(position-cat-man_grp_mng ?conj ?c ?and&evaM|Ora|yA|waWA - -)
; ?f<-(position-cat-man_grp_mng =(- ?conj 1) ?n $?mng - -)
; ?f2<-(position-cat-man_grp_mng =(+ ?conj 1) ?n1 $?mng1 - -)
; =>
;	(retract ?f ?f1 ?f2)
;	(assert (position-cat-man_grp_mng ?conj ?c $?mng ?and $?mng1 - - ))
; )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule get_grp_info
 (declare (salience 50))
 (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ? ? ? ? ?suf)
 (position-cat-man_grp_mng    ?id ?node $?wrd_mng ? ?)
 =>
        (bind ?new_mng (implode$ (create$ $?wrd_mng)))
        (bind ?new_mng (remove_character "_" ?new_mng " "))
        (bind ?new_mng (remove_character "-" (implode$ (create$  ?new_mng)) " "))
        (bind ?root (remove_character "_" (implode$ (create$  ?root)) " "))
        (bind ?root (remove_character "-" (implode$ (create$  ?root)) " "))
        (bind ?suf (remove_character "_" (implode$ (create$  ?suf)) " "))
        (bind ?suf (remove_character "-" (implode$ (create$  ?suf)) " "))
	(assert (manual_id-node-word-root-tam ?id ?node ?new_mng - ?root - ?suf ))
 )

 ;------------------------------------------------------------------------------------------------------------------------ 
 (defrule print_man_grp_mng
 (declare (salience -10))
 ?f0<-(manual_id-node-word-root-tam  ?id  ?node $?d)
 =>
	(retract ?f0 )
	(printout ?*vb_file* "(manual_id-node-word-root-tam  " ?id "   "?node"   "(implode$ $?d) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
