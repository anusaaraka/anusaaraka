(defrule rm_punct_rel
?f0<-(relation_name-rel_ids  punct $?)
=>
(retract ?f0)
)


;An insect bit me on the arm.
;eka [kIde] [ne] bAhu para muJe [kAtA] .
(defrule get_k2_rel
(manual_id-word ?id ne)
(relation_name-rel_ids	lwg__psp  ?id1 ?id)
(not (relation_name-rel_ids  k1  ? ?id1))
(relation_name-rel_ids	k2  ?k ? )
=>
	(assert (relation_name-rel_ids k1 ?k ?id1))
)
;-----------------------------------------------------------------------
;If we heat iron it becomes red.
;yaxi [hama] [lohA] garama [karawe] hEM wo yaha lAla howA hE .
;(defrule modify_k1_as_k2
;?f<-(relation_name-rel_ids	k1 ?k ?id )
;?f0<-(relation_name-rel_ids	k1 ?k ?id1)
;(test (neq ?id ?id1))
;(manual_id-word ?id ?w)
;(man_word-root-cat ?w	?r ?)
;=>
;	(retract ?f ?f0)
;	(bind ?val (gdbm_lookup "animate.gdbm" ?w))
;	(if (eq ?val "1") then 
;		(assert (relation_name-rel_ids  k1 ?k ?id ))
;		(assert (relation_name-rel_ids  k2 ?k ?id1 ))
;	else
;		(assert (relation_name-rel_ids  k2 ?k ?id ))
;		(assert (relation_name-rel_ids  k1 ?k ?id1 ))
;	)
;)	
;-----------------------------------------------------------------------
;Mohan fell from the top of the house.
;[mohana] Gara ke sarvocca sWAna se [girA].   Ex: [ajAyab Gara]
(defrule get_k1_rel
(relation_name-rel_ids	k2 ?k ?obj)
(relation_name-rel_ids	r6 ?obj  ?id )
(relation_name-rel_ids	nmod__adj   ?id	?sub )
(not (relation_name-rel_ids  k1 ?k ?))
=>
	(assert (relation_name-rel_ids  k1 ?k ?sub ))
)

