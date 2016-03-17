(defrule get_passive_rel
?f0<-(relation_name-rel_ids  ?r&k1|lwg__vaux   ?k  ?id)
(relation_name-rel_ids	root	0  ?k)
(id-word-root-tam   ?k ?  ? yA)
(id-word-root-tam  =(+ ?k 1) ?  jA|hE ?)
=>
	(retract ?f0)
	(if (eq ?r k1) then
		(assert (relation_name-rel_ids  nsubjpass   ?k  ?id))
	else
		(assert (relation_name-rel_ids  auxpass   ?k  ?id))
	)
)
;------------------------------------------------------------------------
(defrule get_nsubj
?f0<-(relation_name-rel_ids  k1   ?k  ?sub)
=>
        (retract ?f0)
        (assert (relation_name-rel_ids  nsubj   ?k  ?sub))
)
;------------------------------------------------------------------------
(defrule get_aux
?f0<-(relation_name-rel_ids  lwg__vaux   ?k  ?aux)
=>
        (retract ?f0)
        (assert (relation_name-rel_ids  aux   ?k  ?aux))
)
;------------------------------------------------------------------------
(defrule map_cc
?f0<-(relation_name-rel_ids  ?rel  ?id  ?cc)
(id-word-root-tam   ?cc evaM|waWA|Ora  ? ?)
?f1<-(relation_name-rel_ids ccof ?cc ?id1)
(not (relation_name-rel_ids ccof ?cc ?id2&:(< ?id2 ?id1)))
=>
	(retract ?f0 ?f1)
	(assert (relation_name-rel_ids  cc  ?id1  ?cc))
	(assert (relation_name-rel_ids  ?rel ?id ?id1))
)
;------------------------------------------------------------------------
(defrule map_conj
(relation_name-rel_ids cc ?h ?cc)
?f0<-(relation_name-rel_ids ?r&~conj ?cc ?id1)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids conj ?h ?id1))
)
;------------------------------------------------------------------------


