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
(defrule del_man_fact
(declare (salience 20))
?f0<-(manual_id-node-word-root-tam ?id ?n - $?)
=>
	(retract ?f0)
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
; (the birds hospital) <==> cidiyA aspawAla <==> bardsa aspawAla kA  ===> the is droped in both anu and man
(defrule no_mng_for_both
(declare (salience 20))
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
(defrule get_one_word_match
(declare (salience 20))
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
(defrule get_verb_align
(declare (salience 16))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a_mng - ?mid $?mng )
?f2<-(pada_info (group_cat VP)(group_head_id ?aid)(group_ids $?ids))
?f3<-(id-Apertium_output ?aid $?)
?f1<-(manual_id-node-word-root-tam ?mid ? $? - ? - ?)
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng - ?aid $?mng))
        (retract ?f0 ?f2 ?f3 ?f1)
)
;----------------------------------------------------------------------------------------------------------
;2 - 1 isa
(defrule align
(declare (salience 15))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a - ?mid $?m)
(test (or (eq (length $?a) 1) (eq (length $?m) 1)))
?f<-(id-Apertium_output ?wid $?a )
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?mid ? $?m - ? - ?)
=>
        (if (and (eq (length $?a) 1) (eq (length $?m) 0)) then
                (retract ?f0 ?f ?f1)
                (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a - ?wid  -))
                (if (and (eq (length $?d) 0) (eq (length $?d1) 0)) then
                        (retract ?f2)
                else
                        (modify ?f2 (group_ids $?d $?d1))
                )
        else    (if (and (eq (length $?a) 0) (eq (length $?m) 1)) then
                        (retract ?f0 ?f ?f1)
                        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid - - ?wid $?m))
                        (if (and (eq (length $?d) 0) (eq (length $?d1) 0)) then
                                (retract ?f2)
                        else
                                (modify ?f2 (group_ids $?d $?d1))
                        )

                )
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule get_Ora_word_align
(declare (salience 15))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w&Ora $?a1 - ?mid $?m ?w1&Ora|waWA|evaM $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ? ? ?w1 - ? - ?)
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
)
;----------------------------------------------------------------------------------------------------------
;The area has got the digamber jain temple which houses the birds hospital.
;area <==> kRewra "ke pAsa"  <==>  kRewra "meM"
(defrule get_word_align_with_vib
(declare (salience 13))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w $?w1)
?f1<-(manual_id-node-word-root-tam ?id ?n  $?mng ?w $?mng1 - ?h - ?v&~0)
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
; pradesh meM - praxeSa meM
(defrule wx_align_with_vib
(declare (salience 13))
(eng_word-man_wx_word ?word ?w)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?word ?vib $?a1 - ?mid $?m ?w ?vib $?m1)
?f1<-(id-Apertium_output ?wid ?word ?vib)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1)(vibakthi ?vib))
?f0<-(manual_id-node-word-root-tam ?mid ?n  $?mng ?w  ?vib $?mng1 - ?h - ?v&~0)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?word ?vib - ?wid ?w ?vib))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?mid ?n  $?mng $?mng1  - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
;The area has got the digamber jain temple which houses the birds hospital.
;vaha digamber jEna maMxira == xigambara jEna maMxira <===> digamber == xigambara
(defrule wx_align
(declare (salience 12))
(eng_word-man_wx_word ?word ?w)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?word $?a1 - ?mid $?m ?w $?m1)
?f1<-(id-Apertium_output ?wid ?word)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f0<-(manual_id-node-word-root-tam ?mid ?n $?b ?w $?b1 - ?h - ?v&0|-)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?word - ?wid ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
	(assert (manual_id-node-word-root-tam ?mid ?n $?b $?b1 - ?h - ?v))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
 	)
)
;---------------------------------------------------------------------------------------------------------
;saraswati ke sAmane  == sarasvawI ke Age
(defrule wx_align1
(declare (salience 11))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?word $?a1 - ?mid $?m ?w $?m1)
?f0<-(eng_word-man_wx_word ?word ?w)
?f1<-(id-Apertium_output ?wid ?word $?w1)
?f3<-(manual_id-node-word-root-tam ?mid ?n $?b ?w $?w2 - ?h - ?v)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f ?f1 ?f3)
        (bind $?a_mng (create$ ?word $?w1))
	(bind $?m_mng (create$ ?w $?w2))
	(bind $?a1 (subseq$ $?a1 (+ (length $?w1) 1) (length $?a1)))
	(bind $?m1 (subseq$ $?m1 (+ (length $?w2) 1) (length $?m1)))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid $?m_mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?mid ?n $?b - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_word_align
(declare (salience 10))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?mid ?no $?n ?w $?n1 - ?h - ?v&0|-)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?mid ?no $?n $?n1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
;maMxiroM -- maMxira
(defrule get_word_align_with_root
(declare (salience 9))
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
(declare (salience 10))
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
;1 1.2 - 1 1.2 BOwikI kA
(defrule get_word_align2
(declare (salience 9))
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
(defrule Ora_lt_word_align
(declare (salience 10))
(anu_id-anu_mng-sep-man_id-man_mng ?aid Ora - ?aid Ora)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w Ora - ?mid $?m ?w1 ?o&Ora|evaM $?m1)
?f0<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?mid ?n $?b ?w1 $?b1 - ?h - ?v)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a Ora - ?mid $?m ?o $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?mid ?n $?b $?b1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_default_fact
(declare (salience 6))
=>
	(assert (default_fact))
)
;----------------------------------------------------------------------------------------------------------
;narkanda meM - nArUNdA ko
(defrule default_rule
(declare (salience 3))
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?w - ?h1 $?w1)
?f1<-(id-Apertium_output ?wid $?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
?f0<-(manual_id-node-word-root-tam ?id ?n $?w1 - ?h - ?v)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?w -  ?wid  $?w1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;grawhal kufri - kuPrI
(defrule default_wx_rule
(declare (salience 4))
(default_fact)
(eng_word-man_wx_word ?w ?wx)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?a1 - ?h1 $?m ?wx $?m1)
?f1<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f0<-(manual_id-node-word-root-tam ?id ?n $?b ?wx $?b1 - ?h - ?v)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w -  ?wid  ?wx))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?h1 $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
   	(assert (manual_id-node-word-root-tam ?id ?n $?b $?b1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
; usakI ciMwAoM ke pare -  usakI cinwAoM ko pICe
(defrule first_wrd_match
(declare (salience 2))
(default_fact)
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
;Young bacce -  Cote baccoM ko
(defrule first_wrd_match1
(declare (salience 1))
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid ?w1 $?m)
?f1<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
?f0<-(manual_id-node-word-root-tam ?id ?n $?b ?w1 $?b1 - ?h - ?v)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w -  ?wid  ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a - ?mid $?m))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?id ?n $?b $?b1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
(defrule default_rule1
(declare (salience -1))
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?w - ?mid)
?f0<-(id-Apertium_output ?wid $?w)
?f1<-(manual_id-node-word-root-tam ?id ?n $?m - ? - ?)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
?f3<-(manual_hin_sen $?pre $?m $?post)
=>
	(retract ?f ?f1 ?f0 ?f3)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?w -  ?wid  $?m))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_hin_sen $?pre $?post))
)
;----------------------------------------------------------------------------------------------------------
;steSanoM kI apekRA - steSanoM kI ===> steSanoM kI apekRA - steSanoM kI apekRA
(defrule rem_word_from_man
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid - ?mid ?w)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?id $?a ?w - ?id $?m)
?f0<-(manual_id-node-word-root-tam ? ?n ?w - ? - ?)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?id $?a ?w -  ?id  $?m ?w))
)
;-----------------------------------------------------------------------------------------------
; garama -  garama ==> garama - jyAxA garama
(defrule rem_word_from_man1
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid - ?mid ?w1)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?id $?a ?w - ?id $?m ?w)
?f0<-(manual_id-node-word-root-tam ? ?n ?w1 - ?w - ?)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?id $?a ?w -  ?id  $?m ?w1 ?w))
)
;rUpa - prArUpoM ke
(defrule get_mng_with_root
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?vib $?a1 - ?mid)
?f1<-(id-Apertium_output ?wid ?w $?vib)
(id-HM-source ?wid ?a_rt ?)
(id-root ?wid ?root)
?f<-(manual_id-node-word-root-tam ?id ?node  $?m ?w1 $?m1 - ?m_rt - ?v)
(id-node-word-root ? ? ?w1 ?m_rt)
?f2<-(manual_hin_sen $?pre ?w1 $?m1 $?post)
?f3<-(pada_info (group_ids $?d ?wid $?d1))
=>
	(bind ?new_mng "")
        (if (not (numberp ?root)) then
        	(bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?root))
	        (bind ?slh_index (str-index "/" ?mng))
        	(if (neq ?slh_index FALSE) then
                	(while (neq ?slh_index FALSE)
                        	(bind ?new_mng (str-cat ?new_mng (sub-string 1 (- ?slh_index 1) ?mng) " "))
                        	(bind ?mng (sub-string (+ ?slh_index 1) (length ?mng) ?mng))
                        	(bind ?slh_index (str-index "/" ?mng))
                	)
                	(bind ?new_mng (str-cat ?new_mng ?mng))
        	else
                	(bind ?new_mng ?mng)
        	)
        	(bind $?default_mngs (explode$ ?new_mng))
	 ;       (printout t $?default_mngs crlf ?a_word "------" ?m_word crlf)
        	(if (and (member$ ?a_rt $?default_mngs)  (member$ ?m_rt $?default_mngs)) then
			(retract ?f0 ?f1 ?f ?f2)
			(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w $?vib -  ?wid  ?w1 $?m1 ))
			(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid))
			(assert (manual_id-node-word-root-tam ?id ?node  $?m - ?m_rt - ?v))
			(assert (manual_hin_sen $?pre $?post))
			(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
				(retract ?f3)
		        else
		                (modify ?f3 (group_ids $?d $?d1))
		        )
        	)
 	)	
)

;(anu_id-a_grp_mng-sep-manual_id-m_grp_mng 1 - 1 BOwikI)
;(anu_id-a_grp_mng-sep-manual_id-m_grp_mng 4 BOwika vijFAna - 4)
(defrule default_rule2
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid - ?mid ?mng)
(not (pada_info (group_head_id ?aid )))
(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid1 $?a_mng - ?aid1)
?f1<-(id-Apertium_output ?wid $?a_mng)
?f2<-(manual_id-node-word-root-tam ? ? ?mng - ? - ?)
?f3<-(pada_info (group_ids $?d ?wid $?d1))
=>
	(retract ?f1 ?f2 ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng -  ?wid  ?mng ))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
		(retract ?f3)
	else
        	(modify ?f3 (group_ids $?d $?d1))
	)
)
