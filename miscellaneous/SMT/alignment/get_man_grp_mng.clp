
(defglobal ?*vb_file* = vb_fp)

 (defrule delete_lt_rt_punc
 (declare (salience 101))
 ?f0<-(position-cat-man_grp_mng  ?id ?node  ?p&left_paren $?wrd_mng  ?punc&.|,|right_paren - -)
 =>
        (retract ?f0)
        (assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
        (assert (manual_id-left_punc ?id ?p))
	(assert (manual_id-right_punc ?id ?punc))
 )


 (defrule delete_right_punc
 (declare (salience 100))
 ?f0<-(position-cat-man_grp_mng  ?id ?node $?wrd_mng  ?punc&.|,|right_paren - -)
 =>
	(retract ?f0)
	(assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
	(assert (manual_id-right_punc ?id ?punc))
 )

 (defrule delete_left_punc
 (declare (salience 100))
 ?f0<-(position-cat-man_grp_mng  ?id ?node ?punc&left_paren  $?wrd_mng - -)
 =>
        (retract ?f0)
        (assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
        (assert (manual_id-left_punc ?id ?punc))
 )

  
 (defrule get_verb_info
 (declare (salience 50))
 (id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN ?root ?cat ? ? ? ? ?tam)
 (position-cat-man_grp_mng    ?id ?node $?wrd_mng ? ?)
 =>
	(assert (manual_id-node-word-root-tam ?id ?node $?wrd_mng - ?root - ?tam ))
	(assert (id_decided ?id))
 )

  ;imArawa n f pl 3 o 0_kA)
 (defrule get_NP_mng
 (declare (salience 40))
 (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?n ?p ?c ?vib)
 ?f0<-(position-cat-man_grp_mng  ?id  ?node $?grp_mng - -)
 (not (id_decided ?id))
 =>
        (retract ?f0)
	(assert (manual_id-node-word-root-tam ?id ?node $?grp_mng - ?root - ?vib))
 )
 
 ;Apa pn f sg any d kA)
; (defrule get_NP_mng1
; (declare (salience 40))
; (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?n ?p ?c ?vib&~0&~-)
; ?f0<-(position-cat-man_grp_mng  ?id  ?node $?grp_mng - -)
; (not (id_decided ?id))
; =>
;        (retract ?f0)
;;        (assert (position-cat-man_grp_mng  ?id  ?node $?grp_mng - $?grp_mng ?vib) )
;	(assert (manual_id-node-word-root-tam ?id ?node $?grp_mng  - ?root - ?vib))
; )

; (defrule default_rule
; (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?n ?p ?c ?vib&0|-|any)
; ?f0<-(position-cat-man_grp_mng  ?id  ?node $?grp_mng - -)
; =>
;        (retract ?f0)
; ;       (assert (position-cat-man_grp_mng   ?id  ?node $?grp_mng - $?grp_mng))
;	(assert (manual_id-node-word-root-tam ?id ?node $?grp_mng - ?root - ?vib))
; )
;

 (defrule print_man_grp_mng
 (declare (salience -10))
 ?f0<-(manual_id-node-word-root-tam  ?id  ?node $?d)
 =>
	(retract ?f0 )
	(printout ?*vb_file* "(manual_id-node-word-root-tam  " ?id "   "?node"   "(implode$ $?d) ")" crlf)
 )

;(defrule default_rule
;(declare (salience -10))
;?f0<-(position-cat-man_grp_mng  ?id  ?node $?grp_mng - 0|-|any)
;=>
;        (retract ?f0)
;        (assert (position-cat-man_grp_mng   ?id  ?node $?grp_mng - $?grp_mng))
;)


