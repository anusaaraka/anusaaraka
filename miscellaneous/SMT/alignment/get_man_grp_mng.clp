; This file is written by shirisha Manju


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
 ?f0<-(position-cat-man_grp_mng   ?id ?node	$?word	- -)
?f1<-(id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n ?r ? ? ? ? ? ?)
 ?f2<-(position-cat-man_grp_mng =(- ?id 1) ?n $?word1 - -)
 (not (modified_word_id ?id))
 =>
	(retract ?f ?f0 ?f1 ?f2)
	(bind ?root (string-to-field (str-cat ?r"_kara")))
	(assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?no ?p ?c ?suf))
	(assert (position-cat-man_grp_mng   ?id ?node $?word1 $?word  - -))
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
	(assert (manual_id-node-word-root-tam ?id ?node $?wrd_mng - ?root - ?suf ))
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
