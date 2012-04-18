(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(defrule retract_aux_ids
(declare (salience 20))
?f1<-(pada_info (group_head_id ?h)(group_cat VP) (group_ids $?d ?id $?d1))
?f2<-(id-Apertium_output ?id $?)
(test (neq ?id ?h))
=>
	(retract ?f2)
	(modify ?f1 (group_ids $?d $?d1))
)
;----------------------------------------------------------------------------------------------------------
(defrule del_grp_fact
(declare (salience 20))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a - ?mid $?m )
(test (and (eq (length $?a) 0)(eq (length $?m) 0) ))
=>
        (retract ?f0)
)
;----------------------------------------------------------------------------------------------------------
(defrule get_one_word_match
(declare (salience 20))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid ?a - ?mid ?m )
?f2<-(pada_info (group_ids $?d ?aid $?d1 ))
?f3<-(id-Apertium_output ?aid $?)
=>
	(retract ?f0 ?f3)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid ?a - ?aid ?m))
	(if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
; (the birds hospital) <==> cidiyA aspawAla <==> bardsa aspawAla kA  ===> the is droped in both anu and man
(defrule no_mng_for_both
?f1<-(id-Apertium_output ?id)
?f<-(pada_info (group_ids $?d ?id $?d1) )
(not (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?id $?))
=>
        (retract ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?id - - ?id -))
        (if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f)
        else
                (modify ?f (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule get_verb_align
(declare (salience 15))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a_mng - ?mid $?mng )
;?f<-(manual_id-node-word-root-tam ?mid  VGF $?mng - ? - ?)
;?f2<-(pada_info (group_head_id ?aid)(group_ids $?ids))
?f2<-(pada_info (group_cat VP)(group_head_id ?aid)(group_ids $?ids))
?f3<-(id-Apertium_output ?aid $?)
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng - ?aid $?mng))
	(retract ?f0 ?f2 ?f3)
;	(retract ?f0 ?f ?f2 ?f3)
)
;----------------------------------------------------------------------------------------------------------
(defrule get_Ora_word_align
(declare (salience 15))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w&Ora $?a1 - ?mid $?m ?w1&Ora|waWA|evaM $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a - ?mid $?m))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a1 - ?mid $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
; himachal pradesh meM - himAcala praxeSa meM
(defrule get_vib_align
(declare (salience 14))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 ?vib - ?mid $?m ?w1 ?vib)
?f<-(id-Apertium_output ?wid ?w $?a1 ?vib)
?f1<-(manual_id-node-word-root-tam ?  $? ?w1 ?vib  - ?w1&~Ora - ?v&~0)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f)
        (bind $?a_mng (create$ ?w $?a1 ?vib))
        (bind $?m_mng (create$ ?w1 ?vib))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid $?m_mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a  - ?mid $?m))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;The area has got the digamber jain temple which houses the birds hospital.
;area <==> kRewra "ke pAsa"  <==>  kRewra "meM"
(defrule get_word_align_with_vib
(declare (salience 13))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w $?w2)
?f1<-(manual_id-node-word-root-tam ? ?  $?mng ?w $?mng1 - ?w1&~Ora - ?v&~0)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
	(retract ?f0 ?f)
	(bind $?a_mng (create$ ?w $?w2))
	(bind $?m_mng (create$ ?w $?mng1))
	(bind ?len (length $?w2))
	(bind ?len1 (length $?mng1))
	(if (neq ?len 0) then
		(loop-for-count (?i 1 (length $?w2))
			(bind ?j (nth$ 1 $?a1))
			(bind $?a1 (delete-member$ $?a1 ?j))
		)
	)
	(if (neq ?len1 0) then
                (loop-for-count (?i 1 (length $?mng1))
                        (bind ?j (nth$ 1 $?m1))
                        (bind $?m1 (delete-member$ $?m1 ?j))
                )
        )
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid $?m_mng))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule wx_align
(declare (salience 12))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?word $?a1 - ?mid $?m ?w $?m1)
(E_word-wx_word	?word	?w)
(id-HM-source ?wid ?word Original_word)
?f1<-(id-Apertium_output ?wid ?word $?mng)
(manual_id-node-word-root-tam ? ? $? ?w $?m2 - ? - ?)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
	(retract ?f ?f1 ?f2)
	(bind ?amng (create$ ?word $?mng))
	(bind ?mmng (create$ ?w $?m2))
	(bind ?len (length $?mng))
	(bind ?len1 (length $?m2))
        (if (neq ?len 0) then
                (loop-for-count (?i 1 (length $?mng))
                        (bind ?j (nth$ 1 $?a1))
                        (bind $?a1 (delete-member$ $?a1 ?j))
                )
        )
	(if (neq ?len1 0) then
                (loop-for-count (?i 1 (length $?m2))
                        (bind ?j (nth$ 1 $?m1))
                        (bind $?m1 (delete-member$ $?m1 ?j))
                )
        )
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?amng - ?wid ?mmng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule get_Ora_align
(declare (salience 10))
(anu_id-anu_mng-sep-man_id-man_mng ?a_h Ora - ?a_h Ora|waWA|evaM)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_h $?a $?wrd $?a1 - ?m_h $?m $?mng $?m1)
?f0<-(id-Apertium_output =(+ ?a_h 1) $?wrd)
?f1<-(manual_id-node-word-root-tam =(+ ?m_h 1) ? $?mng - ? - ?)
?f2<-(pada_info (group_head_id ?a_h) (group_ids $?d =(+ ?a_h 1) $?d1))
=>
        (retract ?f0 ?f1 ?f)
        (assert (anu_id-anu_mng-sep-man_id-man_mng =(+ ?a_h 1) $?wrd -  =(+ ?a_h 1) $?mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_h $?a $?a1 - ?m_h $?m $?m1))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule get_Ora_align1
(declare (salience 10))
(anu_id-anu_mng-sep-man_id-man_mng ?a_h Ora - ?a_h Ora|waWA|evaM)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_h $?a $?wrd $?a1 - ?m_h $?m $?mng $?m1)
?f0<-(id-Apertium_output =(- ?a_h 1) $?wrd)
?f1<-(manual_id-node-word-root-tam =(- ?m_h 1) ? $?mng - ? - ?)
?f2<-(pada_info (group_head_id ?a_h) (group_ids $?d =(- ?a_h 1) $?d1))
=>
        (retract ?f0 ?f1 ?f)
        (assert (anu_id-anu_mng-sep-man_id-man_mng =(- ?a_h 1) $?wrd - =(- ?a_h 1) $?mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_h $?a $?a1 - ?m_h $?m $?m1))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;Cochin is the commercial capital of "kerala", and is sometimes referred to as the queen of the arabian sea.
(defrule get_Org_word_align
(declare (salience 9))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
(id-HM-source ?wid ?w Original_word)
?f<-(id-Apertium_output ?wid $?)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)

(defrule get_word_align
(declare (salience 9))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid $?w1 ?w $?w2)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f)
        (bind $?a_mng (create$ $?w1 ?w $?w2))
        (bind ?len (length $?w2))(bind ?len1 (length $?w1))
        (if (neq ?len 0) then
                (loop-for-count (?i 1 ?len) (bind $?a1 (delete-member$ $?a1 (nth$ 1 $?a1))) )
        )
	(if (neq ?len1 0) then 
		(loop-for-count (?i 1 ?len) (bind $?a (delete-member$ $?a (nth$ 1 $?a))) )
        )
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
		(retract ?f2)
	else
		(modify ?f2 (group_ids $?d $?d1))
	)
)
;----------------------------------------------------------------------------------------------------------
;The area has got the digamber jain temple which houses the birds hospital.
; birds  <==>  cidiyA <==> bardsa
(defrule align
(declare (salience 8))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  ?w - ?mid ?m)
?f<-(id-Apertium_output ?wid ?w )
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f )
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?m))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule align1
(declare (salience 2))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a - ?mid $?m)
(test (or (eq (length $?a) 1) (eq (length $?m) 1)))
?f<-(id-Apertium_output ?wid $?a )
?f2<-(pada_info (group_head_id ?aid) (group_ids ?wid))
=>
	(if (and (eq (length $?a) 1) (eq (length $?m) 0)) then
		(retract ?f0 ?f ?f2)
		(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a - ?wid  -))
	else 	(if (and (eq (length $?a) 0) (eq (length $?m) 1)) then
			(retract ?f0 ?f ?f2)
			(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid - - ?wid $?m))
	 	)
	)
)
;----------------------------------------------------------------------------------------------------------
(defrule align2
(declare (salience 2))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_h  $?a ?w $?a1 - ?m_h $?m ?w1 $?m1)
(anu_id-anu_mng-sep-man_id-man_mng =(- ?a_h 1) ? - ?  ?mng)
(manual_id-node-word-root-tam ?m_h ? $? ?w1 ?mng $? - ? - ?)
?f1<-(id-Apertium_output =(- ?a_h 2) $? ?w $?)
?f2<-(pada_info (group_head_id ?a_h) (group_ids $?d =(- ?a_h 2) $?d1))
=>
        (retract ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng =(- ?a_h 2) ?w -  =(- ?a_h 2)  ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_h  $?a $?a1 - ?m_h  $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)

;----------------------------------------------------------------------------------------------------------	
(defrule rem_mng
(declare (salience 1))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng - ?aid $?mng)
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid - ?id $?w)
(manual_id-node-word-root-tam ?id ? $?w $?mng - ? - ?)
=>
	(retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng -  ?aid $?w $?mng ))
)
;----------------------------------------------------------------------------------------------------------
(defrule rem_mng1
(declare (salience 1))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng - ?aid $?mng)
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid - ?id $?w)
(manual_id-node-word-root-tam ?id ? $? $?mng $?w - ? - ?)
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng -  ?aid $?mng $?w))
)
;----------------------------------------------------------------------------------------------------------
;The Prayag Sangeet Samiti organizes dance and music evenings in the city.
;  Prayag Sangeet Samiti ====  prayAga saMgIwa samiwi
(defrule same_grp_length
(declare (salience 1))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid ?w1 $?m)
(id-HM-source ?wid ?w ?)
(test (= (length $?a) (length $?m)))
?f1<-(id-Apertium_output ?wid ?)
?f2<-(pada_info (group_head_id ?h) (group_ids $?d ?wid $?d1))
=>
        (retract ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w -  ?wid  ?w1))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a - ?mid $?m))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
	else
                (modify ?f2 (group_ids $?d $?d1))
        )
)


(defrule default_rule
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?h $?w - ?h1 $?w1)
?f1<-(id-Apertium_output ?wid $?w)
?f2<-(pada_info (group_head_id ?h) (group_ids $?d ?wid $?d1))
=>
        (retract ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?w -  ?wid  $?w1))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)

(defrule default_rule1
(declare (salience -1))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?h $?w - ?h1 $?w1)
?f1<-(id-Apertium_output ?wid $?w)
?f2<-(pada_info (group_head_id ?h) (group_ids $?d ?wid $?d1))
=>
        (retract ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?w -  ?wid  $?w1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)


;----------------------------------------------------------------------------------------------------------	
