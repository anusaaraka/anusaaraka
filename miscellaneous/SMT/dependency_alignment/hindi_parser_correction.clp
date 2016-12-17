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
;-----------------------------------------------------------------------
;This is a famous abode of [Lord Shiva].
;gaMgA kinAre yaha [BagavAna SaMkara] kI prasixXa purI hE .
;[Lord Krishna] had specially settled this amidst the sea. 
;[BagavAna kqRNa] ne ise samuxra ke bIca meM viSeRa rUpa se basAyA WA 
(defrule get_compound
(relation_name-rel_ids ? ? ?id)
(manual_id-wrd-cat ?id ? NNP|NNPC|NNC)
?f0<-(relation_name-rel_ids ? ? ?id1&:(= (- ?id 1)?id1))
?f<-(manual_id-wrd-cat ?id1	? NNC|NNPC)
=>
	(retract ?f0 ?f)
	(assert (relation_name-rel_ids compound1 ?id ?id1))
)
;-----------------------------------------------------------------------
;pAnI kI [sawaha] [para] spIda bota kI waraha xOdZawe hue yaha kaba havA meM uTa jAwA hE , pawA nahIM calawA .
(defrule get_case_rel
(manual_id-wrd-cat ?id para ?)
?f0<-(relation_name-rel_ids ccof ?id ?id1&:(= (- ?id 1) ?id1))
(manual_id-wrd-cat ?id1 ? ?c&NN|VM)
=>
	(retract ?f0)
	(if (eq ?c NN) then
		(assert (relation_name-rel_ids case ?id1 ?id))
	else
		(assert (relation_name-rel_ids cc ?id ?id1))
	)
	(assert (id-modified_id ?id ?id1))
)
;-----------------------------------------------------------------------
;But when there is a question of the very existence of a unique creation on the earth then this much seriousness was incumbent upon.
(defrule modify_rel_for_lekina
(manual_id-word ?id lekina)
?f0<-(relation_name-rel_ids root 0 ?id)
?f<-(relation_name-rel_ids ccof ?id ?id1)
?f1<-(relation_name-rel_ids ccof ?id1 ?v)
(manual_id-wrd-cat  ?v	?  VM)
=>
	(retract ?f ?f0 ?f1)
	(assert (relation_name-rel_ids root 0 ?v))
	(assert (relation_name-rel_ids cc ?v ?id))
	(assert (relation_name-rel_ids advmod ?v ?id1))
)
	



(defrule replace_id
(id-modified_id ?id ?id1)
?f0<-(relation_name-rel_ids ?r&~case ?h ?id)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids ?r ?h ?id1))
)





