(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

;----------------------------------------------------------------------------------------------------------
(defrule retract_aux_ids
(declare (salience 150))
?f1<-(pada_info (group_head_id ?h)(group_cat VP) (group_ids $?d ?id $?d1))
?f2<-(id-Apertium_output ?id $?)
(test (neq ?id ?h))
=>
	(retract ?f2)
	(modify ?f1 (group_ids $?d $?d1))
)
;----------------------------------------------------------------------------------------------------------
(defrule del_man_fact
(declare (salience 145))
?f0<-(manual_id-node-word-root-tam ?id ?n - $?)
=>
	(retract ?f0)
)
;----------------------------------------------------------------------------------------------------------
(defrule del_grp_fact
(declare (salience 145))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  - ?mid )
=>
        (retract ?f0)
)
;----------------------------------------------------------------------------------------------------------
(defrule del_grp_fact1
(declare (salience 145))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  - ?mid - )
=>
        (retract ?f0)
)
;----------------------------------------------------------------------------------------------------------
; (the birds hospital) <==> cidiyA aspawAla <==> bardsa aspawAla kA  ===> the is droped in both anu and man
(defrule no_mng_for_both
(declare (salience 145))
?f1<-(id-Apertium_output ?id)
?f<-(pada_info (group_ids $?d ?id $?d1) )
(not (anu_id-a_grp_mng-sep-manual_id-m_grp_mng $?))
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
;hama -  hama
(defrule get_one_word_match
(declare (salience 140))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid ?a - ?mid ?m )
?f3<-(id-Apertium_output ?wid ?a)
?f2<-(pada_info (group_head_id ?aid)(group_ids $?d ?wid $?d1 ))
?f1<-(manual_id-node-word-root-tam ? ? ?m - ? - ?)
=>
	(retract ?f0 ?f3 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?a - ?wid ?m))
	(if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;A precise definition of this discipline is neither possible nor necessary .
;na hI - na hI   ; na wo - na wo
(defrule get_one_word_match1
(declare (salience 135))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a - ?mid $?a )
?f3<-(id-Apertium_output ?wid $?a)
?f2<-(pada_info (group_head_id ?aid)(group_ids $?d ?wid $?d1 ))
?f1<-(manual_id-node-word-root-tam ? ? $?a - ? - ?)
=>
        (retract ?f0 ?f3 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a - ?wid $?a))
        (if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;2 - 1 isa
(defrule align
(declare (salience 125))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a - ?mid $?m)
(test (or (eq (length $?a) 1) (eq (length $?m) 1)))
?f<-(id-Apertium_output ?wid $?a )
?f2<-(pada_info (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?mid ? $?m - ? - ?)
=>
        (if (and (eq (length $?a) 1) (eq (length $?m) 0)) then
                (retract ?f0 ?f ?f1)
                (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a - ?wid  -))
        else    (if (and (eq (length $?a) 0) (eq (length $?m) 1)) then
                        (retract ?f0 ?f ?f1)
                        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid - - ?wid $?m))
                )
        )
	(if (and (eq (length $?d) 0) (eq (length $?d1) 0)) then
                        (retract ?f2)
                else
                        (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;kuCa saMkalpanAez Ora niyama
(defrule get_Ora_word_align
(declare (salience 125))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w&Ora $?a1 - ?mid $?m ?w1&Ora|waWA|evaM $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?id ?no $?n ?w1 $?n1 - ?r - ?s)
=>
        (retract ?f0 ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a - ?mid $?m))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a1 - ?mid $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?id ?no $?n $?n1 - ?r - ?s))
)
;----------------------------------------------------------------------------------------------------------
;The area has got the digamber jain temple which houses the birds hospital.
;area <==> kRewra "ke pAsa"  <==>  kRewra "meM"
(defrule get_word_align_with_vib
(declare (salience 120))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w $?w1)
?f1<-(manual_id-node-word-root-tam ?id ?n  $?mng ?w $?mng1 - ?h - ?v&~0&~-)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
(test (neq (length $?w1) 0))
=>
	(retract ?f0 ?f ?f1)
        (bind $?a_mng (create$ ?w $?w1))
        (bind $?m_mng (create$ ?w $?mng1))
	(bind $?a1 (subseq$ $?a1 (+ (length $?w1) 1) (length $?a1)))
	(bind $?m1 (subseq$ $?m1 (+ (length $?mng1) 1) (length $?m1)))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid $?m_mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?id ?n  $?mng - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_word_align
(declare (salience 100))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?mid1 ?no $?n ?w $?n1 - ?h - ?v&0|-)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?mid1 ?no $?n $?n1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
;maMxiroM -- maMxira
(defrule get_word_align_with_root
(declare (salience 95))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
?f<-(id-Apertium_output ?wid ?w)
(id-HM-source ?wid ?w1 ?)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?id ?no $?n ?w1 $?n1 - ?h - ?v&0|-)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?id ?no $?n $?n1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
; saMgIwa - saMgIwa kI 
(defrule get_word_align1
(declare (salience 101))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?mid ?n $?b ?w $?vib - ?w - ?v)
=>
        (retract ?f0 ?f ?f1)
	(bind $?m1 (subseq$ $?m1 ( + (length $?vib) 1) (length $?m1)))
	(bind $?mng (create$ ?w $?vib))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid $?mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?mid ?n $?b  - ?w - ?v))
)
;----------------------------------------------------------------------------------------------------------
;1 1.2 - 1 1.2 BOwikI kA   ==> 1.2 - 1.2
(defrule get_word_align2
(declare (salience 85))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?mid ?n $?b ?w $?b1 - ?h - ?v)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?mid ?n $?b $?b1  - ?h - ?v))
)

;----------------------------------------------------------------------------------------------------------
;buxXimawwA Ora - buXxi evaM
;saMkalpanAez Ora - saMkalpanAoM evaM
(defrule Ora_lt_word_align
(declare (salience 80))
(anu_id-anu_mng-sep-man_id-man_mng ?aid Ora - ?aid Ora|waWA|evaM)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w - ?mid $?m ?w1)
?f0<-(id-Apertium_output =(- ?aid 1) ?w)
?f2<-(pada_info (group_ids $?d =(- ?aid 1) $?d1))
?f1<-(manual_id-node-word-root-tam =(- ?mid 1) ?n $?b ?w1 $?b1 - ?h - ?v)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng =(- ?aid 1) ?w - =(- ?aid 1) ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a - ?mid $?m ))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?mid ?n $?b $?b1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
;Here we remark on two principal thrusts in physics : unification and reduction .
;katOwI - nyUnIkaraNa para hI
;niyama -  niyamoM ke
(defrule Ora_rt_word_align
(declare (salience 79))
(anu_id-anu_mng-sep-man_id-man_mng ?aid Ora - ?aid Ora|evaM|waWA)
?f0<-(id-Apertium_output =(+ ?aid 1) $?w)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?id $?w - ?mid ?mng $?m1)
(id-node-word-root ? ? ?mng ?root)
?f1<-(manual_id-node-word-root-tam =(+ ?mid 1) ?node $?n ?mng $?n1 - ?root - ?v)
?f2<-(pada_info (group_ids $?d =(+ ?aid 1) $?d1))
=>
	(retract ?f0 ?f ?f1)	
	(assert (anu_id-anu_mng-sep-man_id-man_mng =(+ ?aid 1) $?w - =(+ ?aid 1) ?mng $?n1))
	(bind $?m1 (subseq$ $?m1 (+ (length $?n1) 1) (length $?m1)))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  - ?mid $?m1))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam =(+ ?mid 1) ?node $?n  - ?root - ?v))
)
;----------------------------------------------------------------------------------------------------------
; usakI ciMwAoM ke pare -  usakI cinwAoM ko pICe
(defrule first_wrd_match
(declare (salience 70))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid ?w $?m)
?f1<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f0<-(manual_id-node-word-root-tam ?id ?n $?b ?w $?b1 - ?h - ?v)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w -  ?wid  ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a - ?mid $?m))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?id ?n $?b $?b1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
;saMkRipwa rUpa meM -  saMkRipwa
(defrule first_wrd_match1
(declare (salience 69))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid ?w $?m)
?f1<-(id-Apertium_output ?wid ?w $?a)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f0<-(manual_id-node-word-root-tam ?id ?n $?b ?w $?b1 - ?h - ?v)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w $?a -  ?wid  ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid - ?mid $?m))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?id ?n $?b $?b1 - ?h - ?v))
)
;---------------------------------------------------------------------------------------------------------
(defrule get_mng_with_wrd_fact_with_vib
(declare (salience 67))
(eng_root-anu_mng-man_mng ?root ?mng ?m_mng)
(id-org_wrd-root-dbase_name-mng ?aid ? ?root $?)
?f1<-(id-Apertium_output ?aid $?w1 ?mng $?w)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?mng $?a1 - ?mid $?m ?m_mng $?m1)
?f2<-(manual_id-node-word-root-tam ?id ?node  $?n ?m_mng $?n1 - ?m_rt - ?v)
?f3<-(pada_info (group_ids $?d ?aid $?d1))
=>
        (retract  ?f0 ?f1 ?f2)
        (bind $?a (subseq$ $?a ( + (length $?w1) 1) (length $?a)))
        (bind $?a1 (subseq$ $?a1 ( + (length $?w) 1) (length $?a1)))
        (bind $?m1 (subseq$ $?m1 ( + (length $?n1) 1) (length $?m1)))
        (bind $?a_mng (create$ $?w1 ?mng $?w))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng - ?aid ?m_mng $?n1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid $?m $?m1))
        (assert (manual_id-node-word-root-tam ?id ?node  $?n  - ?m_rt - ?v))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f3)
        else
                (modify ?f3 (group_ids $?d $?d1))
        )
)
;---------------------------------------------------------------------------------------------------------
;(eng_root-anu_root-man_root Physics physics BOwikI) => physics meM -  BOwikI ke aMwargawa
(defrule get_mng_with_rt_fact_with_vib
(declare (salience 65))
(eng_root-anu_root-man_root ?root ?a_root ?m_root)
(id-HM-source ?wid ?a_root ?)
(id-node-word-root ? ? ?m_mng ?m_root)
?f1<-(id-Apertium_output ?wid $?w1 ?mng $?w)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?wid $?a ?mng $?a1 - ?mid $?m ?m_mng $?m1)
?f2<-(manual_id-node-word-root-tam ?id ?node  $?n ?m_mng $?n1 - ?m_rt - ?v)
?f3<-(pada_info (group_ids $?d ?wid $?d1))
=>
        (retract  ?f0 ?f1 ?f2)
        (bind $?a (subseq$ $?a ( + (length $?w1) 1) (length $?a)))
        (bind $?a1 (subseq$ $?a1 ( + (length $?w) 1) (length $?a1)))
        (bind $?m1 (subseq$ $?m1 ( + (length $?n1) 1) (length $?m1)))
        (bind $?a_mng (create$ $?w1 ?mng $?w))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid ?m_mng $?n1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?wid $?a $?a1 - ?mid $?m $?m1))
        (assert (manual_id-node-word-root-tam ?id ?node  $?n  - ?m_rt - ?v))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f3)
        else
                (modify ?f3 (group_ids $?d $?d1))
        )
)
;---------------------------------------------------------------------------------------------------------
;Binna Binna -  viviXa
(defrule get_mng_with_wrd_fact
(declare (salience 60))
(eng_root-anu_mng-man_mng ?root ?mng ?m_mng)
(id-org_wrd-root-dbase_name-mng ?wid ? ?root $?)
?f1<-(id-Apertium_output ?wid ?mng $?w1)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?mng $?a1 - ?mid $?m ?m_mng $?m1)
?f2<-(manual_id-node-word-root-tam ?id ?node  $?n ?m_mng $?n1 - ?m_rt - ?v)
?f3<-(pada_info (group_ids $?d ?wid $?d1))
(test (member$ $?w1 $?a1))
=>
        (retract  ?f0 ?f1 ?f2)
        (bind $?a1 (subseq$ $?a1 ( + (length $?w1) 1) (length $?a1)))
        (bind $?a_mng (create$ ?mng $?w1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid ?m_mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid $?m $?m1))
        (assert (manual_id-node-word-root-tam ?id ?node  $?n $?n1 - ?m_rt - ?v))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f3)
        else
                (modify ?f3 (group_ids $?d $?d1))
        )
)
;---------------------------------------------------------------------------------------------------------
;xqgviRaya -  pariGatanAoM kI
;pariGatanA -  pariGatanAoM kI
(defrule head_mng
(declare (salience 51))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w - ?mid ?m ?v)
?f1<-(id-Apertium_output ?aid ?w)
(id-node-word-root ? ? ?m ?m_rt)
?f2<-(manual_id-node-word-root-tam ?mid ? ?m ?v - ?m_rt - ?)
?f3<-(pada_info (group_ids $?d ?wid $?d1)(vibakthi 0))
=>
        (retract ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid ?w - ?aid ?m ?v))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f3)
        else
                (modify ?f3 (group_ids $?d $?d1))
        )
)
;---------------------------------------------------------------------------------------------------------
(defrule get_dbase_fact
(declare (salience 50))
=>
	(assert (dbase_fact))
)
;---------------------------------------------------------------------------------------------------------
;SArIrika -  BOwika
(defrule get_mng_using_dbase_mng
(declare (salience 50))
(dbase_fact)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
?f1<-(id-Apertium_output ?wid ?w $?b)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root ? $?def_mngs)
?f2<-(manual_id-node-word-root-tam ?id ?node  $?n ?w1 $?n1 - ?h - ?v)
(id-node-word-root ? ? ?w1 ?m_rt)
?f3<-(pada_info (group_ids $?d ?wid $?d1)(vibakthi 0))
(test (member$ $?b $?a1))
=>
	(if (member$ ?m_rt $?def_mngs) then
                (retract ?f0 ?f1 ?f2)
                (bind $?a1 (subseq$ $?a1 ( + (length $?b) 1) (length $?a1)))
                (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w $?b - ?wid ?w1))
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid $?m $?m1))
                (assert (manual_id-node-word-root-tam ?id ?node  $?n $?n1 - ?h - ?v))
                (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                        (retract ?f3)
                else
                        (modify ?f3 (group_ids $?d $?d1))
                )
        )
 )
;----------------------------------------------------------------------------------------------------------
(defrule get_default_fact
(declare (salience 40))
=>
        (assert (default_fact))
)
;----------------------------------------------------------------------------------------------------------

