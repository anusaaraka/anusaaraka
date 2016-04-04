;This file is written by Shirisha Manju

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
(id-word-root-tam   ?cc evaM|waWA|Ora|aWavA  ? ?)
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
?f0<-(relation_name-rel_ids ?r&~conj&~cc ?cc ?id1)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids conj ?h ?id1))
)
;------------------------------------------------------------------------
;A precise definition of [this] discipline is neither possible nor necessary. 
;[isa] viRaya kI yaWArWa pariBARA xenA na wo samBava hE Ora na hI AvaSyaka.
(defrule map_det
?f0<-(relation_name-rel_ids  nmod__adj|mod  ?h  ?id)
(manual_id-wrd-cat	?id ? DEM)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids  det ?h  ?id))
)	
;------------------------------------------------------------------------
;[pAzca] ladake A rahe hEM. -- nummod
(defrule map_amod_and_nummod
?f0<-(relation_name-rel_ids  nmod__adj|mod  ?h  ?id)
(manual_id-wrd-cat      ?id ? ?cat)
=>
        (retract ?f0)
        (if (eq ?cat QC) then
                (assert (relation_name-rel_ids  nummod ?h  ?id))
        else
                (assert (relation_name-rel_ids  amod ?h  ?id))
        )
)
;------------------------------------------------------------------------
;Science is ever dynamic.  vijFAna saxEva gawiSIla hE.
(defrule map_cop
?f0<-(relation_name-rel_ids  root_k1s  ?h  ?id)
?f1<-(relation_name-rel_ids  ?r&root|acl 	?in  ?h)
(id-word-root-tam ?h hE|WA ? ?)
=>
	(retract ?f0 ?f1)
	(if (eq ?r acl) then
		(assert (relation_name-rel_ids acl:relcl ?in ?id))
	else
		(assert (relation_name-rel_ids root  ?in ?id))
	)
	(assert (relation_name-rel_ids cop ?id ?h))
	(assert (id-modified_id ?h ?id))
)
;----------------------------------------------------------------------
;[isakA] wulya saMskqwa Sabxa 'BOwikI' hE jisakA upayoga BOwika jagawa ke aXyayana se sambanXiwa hE.
(defrule map_r6
?f0<-(relation_name-rel_ids  r6  ?h  ?id)
(manual_id-wrd-cat      ?id ? ?cat)
=>
	(retract ?f0)
	(if (eq ?cat PRP) then
		(assert (relation_name-rel_ids nmod:poss ?h ?id))
	else
		(assert (relation_name-rel_ids nmod ?h ?id))
	)
)
;------------------------------------------------------------------------
(defrule replace_cop_id
(declare (salience -10))
(id-modified_id ?h ?id)
?f0<-(relation_name-rel_ids ?rel&~cop ?h ?c)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids ?rel ?id ?c))
)

