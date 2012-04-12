(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))


(defrule get_verb_align
(declare (salience 10))
?f0<-(anu_id-manual_id-a_grp_mng-m_grp_mng  ?aid ?mid $?a_mng - $?mng )
?f<-(manual_id-node-word-root-tam ?mid  VGF $?mng - ? - ?)
?f2<-(pada_info (group_head_id ?aid)(group_ids $?ids))
?f3<-(id-Apertium_output ?id $?)
(test (member$ ?id $?ids))
=>
        (assert (anu_id-man_id-anu_mng-man_mng ?aid ?aid $?a_mng - $?mng))
	(if (eq ?id ?aid) then
		(if (eq (length $?ids) 1) then  (retract ?f3 ?f0 ?f2) 
		else	(retract ?f3)
		)
	)	
        (bind $?ids (delete-member$ $?ids ?aid))
        (loop-for-count (?i 1 (length $?ids))
                (bind ?j (nth$ ?i $?ids))
		(if (eq ?j ?id) then
			(retract ?f0 ?f ?f2 ?f3)
		)
        )
)

;The area has got the digamber jain temple which houses the birds hospital.
;area <==> kRewra "ke pAsa"  <==>  kRewra "meM"
(defrule get_word_align_with_vib
(declare (salience 5))
?f0<-(anu_id-manual_id-a_grp_mng-m_grp_mng  ?aid ?mid $?a ?w $?a1 - $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w $?w2)
?f1<-(manual_id-node-word-root-tam ?mid  $? - ?w - ?v&~0)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
	(retract ?f0 ?f)
	(bind $?a_mng (create$ ?w $?w2))
	(bind $?m_mng (create$ ?w $?m1))
	(bind ?len (length $?w2))
	(if (neq ?len 0) then
		(loop-for-count (?i 0 (length $?w2))
			(bind ?j (nth$ 1 $?a1))
			(bind $?a1 (delete-member$ $?a1 ?j))
		)
	)
	(assert (anu_id-man_id-anu_mng-man_mng ?wid ?wid $?a_mng - $?m_mng))
	(assert (anu_id-manual_id-a_grp_mng-m_grp_mng  ?aid ?mid $?a $?a1 - $?m))
	(modify ?f2 (group_ids $?d $?d1))
)



(defrule get_word_align
(declare (salience 4))
?f0<-(anu_id-manual_id-a_grp_mng-m_grp_mng  ?aid ?mid $?a ?w $?a1 - $?m ?w $?m1)
?f<-(id-Apertium_output ?wid $?w1 ?w $?w2)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f)
        (bind $?a_mng (create$ $?w1 ?w $?w2))
        (assert (anu_id-man_id-anu_mng-man_mng ?wid ?wid $?a_mng - ?w))
        (assert (anu_id-manual_id-a_grp_mng-m_grp_mng  ?aid ?mid $?a $?a1 - $?m $?m1))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
		(retract ?f2)
	else
		(modify ?f2 (group_ids $?d $?d1))
	)
)

;The area has got the digamber jain temple which houses the birds hospital.
; birds  <==>  cidiyA <==> bardsa
(defrule align
?f0<-(anu_id-manual_id-a_grp_mng-m_grp_mng  ?aid ?mid ?w  - ?m)
?f<-(id-Apertium_output ?wid ?w )
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f )
        (assert (anu_id-man_id-anu_mng-man_mng ?wid ?wid ?w - ?m))
	(modify ?f2 (group_ids $?d $?d1))
)

(defrule align1
?f0<-(anu_id-manual_id-a_grp_mng-m_grp_mng  ?aid ?mid $?a  - $?m)
(test (or (eq (length $?a) 1) (eq (length $?m) 1)))
?f<-(id-Apertium_output ?wid $?a )
?f2<-(pada_info (group_head_id ?aid) (group_ids ?wid))
=>
	(if (and (eq (length $?a) 1) (eq (length $?m) 0)) then
		(retract ?f0 ?f ?f2)
		(assert (anu_id-man_id-anu_mng-man_mng ?wid ?wid $?a - --))
	else 	(if (and (eq (length $?a) 0) (eq (length $?m) 1)) then
			(retract ?f0 ?f ?f2)
			(assert (anu_id-man_id-anu_mng-man_mng ?wid ?wid -- - $?m))
	 	)
	)
)

(defrule align2
(declare (salience 3))
?f<-(anu_id-manual_id-a_grp_mng-m_grp_mng ?a_h ?m_h $?a ?w $?a1 - $?m ?w1 $?m1)
(anu_id-man_id-anu_mng-man_mng =(- ?a_h 1) ? ? - ?mng)
(manual_id-node-word-root-tam ?m_h ? $? ?w1 ?mng $? - ? - ?)
?f1<-(id-Apertium_output =(- ?a_h 2) $? ?w $?)
?f2<-(pada_info (group_head_id ?a_h) (group_ids $?d =(- ?a_h 2) $?d1))
=>
	(retract ?f ?f1 ?f2)
	(assert (anu_id-man_id-anu_mng-man_mng =(- ?a_h 2) =(- ?a_h 2) ?w - ?w1))
        (assert (anu_id-manual_id-a_grp_mng-m_grp_mng  ?a_h ?m_h $?a $?a1 - $?m $?m1))
        (modify ?f2 (group_ids $?d $?d1))
)
	
(defrule del_grp_fact
?f0<-(anu_id-manual_id-a_grp_mng-m_grp_mng  ?aid ?mid $?a - $?m )
(test (and (eq (length $?a) 0)(eq (length $?m) 0) ))
=>
	(retract ?f0)
)

; (the birds hospital) <==> cidiyA aspawAla <==> bardsa aspawAla kA  ===> the is droped in both anu and man
(defrule no_mng_for_both
?f<-(pada_info (group_head_id ?h) (group_cat PP) (group_ids ?id) )
(not (anu_id-manual_id-a_grp_mng-m_grp_mng ?h $?))
?f1<-(id-Apertium_output ?id)
=>
	(retract ?f ?f1)
	(assert (anu_id-man_id-anu_mng-man_mng ?id ?id -- - --))
)	
	
