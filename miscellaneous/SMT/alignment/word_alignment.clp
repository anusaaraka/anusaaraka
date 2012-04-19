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
?f2<-(pada_info (group_ids $?d ?wid $?d1 ))
=>
	(retract ?f0 ?f3)
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
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng - ?aid $?mng))
        (retract ?f0 ?f2 ?f3)
)
;----------------------------------------------------------------------------------------------------------
;2 - 1 isa
(defrule align
(declare (salience 15))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a - ?mid $?m)
(test (or (eq (length $?a) 1) (eq (length $?m) 1)))
?f<-(id-Apertium_output ?wid $?a )
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (if (and (eq (length $?a) 1) (eq (length $?m) 0)) then
                (retract ?f0 ?f)
                (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a - ?wid  -))
                (if (and (eq (length $?d) 0) (eq (length $?d1) 0)) then
                        (retract ?f2)
                else
                        (modify ?f2 (group_ids $?d $?d1))
                )
        else    (if (and (eq (length $?a) 0) (eq (length $?m) 1)) then
                        (retract ?f0 ?f)
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
;The area has got the digamber jain temple which houses the birds hospital.
;area <==> kRewra "ke pAsa"  <==>  kRewra "meM"
(defrule get_word_align_with_vib
(declare (salience 13))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w $?w1)
?f1<-(manual_id-node-word-root-tam ? ?  $?mng ?w $?mng1 - ? - ?v&~0)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f)
        (bind $?a_mng (create$ ?w $?w1))
        (bind $?m_mng (create$ ?w $?mng1))
        (bind ?len (length $?w1))
        (bind ?len1 (length $?mng1))
        (if (neq ?len 0) then
                (loop-for-count (?i 1 ?len)
                        (bind ?j (nth$ 1 $?a1))
                        (bind $?a1 (delete-member$ $?a1 ?j))
                )
        )
        (if (neq ?len1 0) then
                (loop-for-count (?i 1 ?len1)
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
; pradesh meM - praxeSa meM
(defrule wx_align_with_vib
(declare (salience 13))
(eng_word-man_wx_word ?word ?w)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?word ?vib $?a1 - ?mid $?m ?w ?vib $?m1)
?f1<-(id-Apertium_output ?wid ?word ?vib)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1)(vibakthi ?vib))
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?word ?vib - ?wid ?w ?vib))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
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
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?word - ?wid ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
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
?f0<-(eng_word-man_wx_word ?word ?w)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?word $?a1 - ?mid $?m ?w $?m1)
?f1<-(id-Apertium_output ?wid ?word $?w1)
(manual_id-node-word-root-tam ? ? $? ?w $?w2 - ? - ?)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f ?f1)
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
)
;----------------------------------------------------------------------------------------------------------
(defrule get_word_align
(declare (salience 10))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w)
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
;----------------------------------------------------------------------------------------------------------
;buxXimawwA Ora - buXxi evaM
(defrule Ora_lt_word_align
(declare (salience 10))
(anu_id-anu_mng-sep-man_id-man_mng ?aid Ora - ?aid Ora)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w Ora - ?mid $?m ?w1 ?o&Ora|evaM $?m1)
?f0<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a Ora - ?mid $?m ?o $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule get_default_fact
(declare (salience 6))
=>
	(assert (default_fact))
)
;----------------------------------------------------------------------------------------------------------
(defrule default_rule
(declare (salience 1))
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?h $?w - ?h1 $?w1)
?f1<-(id-Apertium_output ?wid $?w)
?f2<-(pada_info (group_head_id ?h) (group_ids $?d ?wid $?d1))
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?w -  ?wid  $?w1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;"Young" bacce - "Cote" baccoM ko
(defrule first_wrd_match
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid ?w1 $?m)
?f1<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_head_id ?aid) (group_ids $?d ?wid $?d1))
=>
	(retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w -  ?wid  ?w1))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a - ?mid $?m))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule default_rule1
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?w - ?mid)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid ?word - ?aid ?word $?w1)
?f0<-(id-Apertium_output ?wid $?w)
?f2<-(pada_info (group_head_id ?h) (group_ids $?d ?wid $?d1))
=>
	(retract ?f ?f1 ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?w -  ?wid  $?w1))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid ?word - ?aid ?word))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
