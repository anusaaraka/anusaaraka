;This file is written by Shirisha Manju

;Science is ever dynamic.  vijFAna saxEva gawiSIla hE.
;First, it was realized that for scientific progress, only qualitative thinking, though no doubt important, is not enough.
;pahale yaha anuBava kiyA gayA ki vEjFAnika pragawi ke lie kevala guNAwmaka soca honA, yaxyapi nisanxeha yaha mahawvapUrNa hE, [paryApwa] nahIM [hE] . 
(defrule map_cop
(declare (salience 2))
?f0<-(relation_name-rel_ids  root_k1s  ?h  ?id)
(relation_name-rel_ids k1 ?h ?)
(id-word-root-tam ?h ? hE|WA|ho ?)
?f1<-(relation_name-rel_ids root 0 ?h)
=>
	(retract ?f0 ?f1)
	(assert (relation_name-rel_ids cop ?id ?h))
	(assert (relation_name-rel_ids root 0 ?id))
        (assert (id-modified_id ?h ?id))
)
;------------------------------------------------------------------------
;Axi kAla se mAnava kI eka prakAra kI prawikriyA [yaha rahI hE ki] usane apane BOwika paryAvaraNa kA sAvaXAnIpUrvaka [prekRaNa kiyA hE], prAkqwika pariGatanAoM meM arWapUrNa pEtarna waWA sambanXa Koje hEM, waWA prakqwi ke sAWa prawikriyA kara sakane ke lie nae OjAroM ko banAyA waWA unakA upayoga kiyA hE.
(defrule map_xcomp
(declare (salience 2))
(relation_name-rel_ids root 0 ?h)
(relation_name-rel_ids k1 ?h ?s)
(relation_name-rel_ids ? ?s ?ki)
(manual_id-wrd-cat ?ki ki ?)
?f0<-(relation_name-rel_ids ccof ?ki ?v)
(manual_id-wrd-cat ?v ? VM)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids xcomp ?h ?v))
)
;------------------------------------------------------------------------
;saMsAra ke bAre meM sIKane kI jijFAsA, prakqwi ke rahasyoM ko [sulaJAnA] vijFAna kI Koja kI ora pahalA [caraNa hE] 
(defrule map_xcomp1
(declare (salience 1))
(relation_name-rel_ids root 0 ?h)
(relation_name-rel_ids  cop ?h  ?k)
?f0<-(relation_name-rel_ids  parataxis  ?k  ?h1)
(manual_id-wrd-cat   ?h1 ? VM)
=>
        (retract ?f0)
        (assert (relation_name-rel_ids xcomp ?h ?h1))
)
;------------------------------------------------------------------------
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
(declare (salience 3))
?f0<-(relation_name-rel_ids  ?rel  ?id  ?cc)
(id-word-root-tam   ?cc evaM|waWA|Ora|aWavA|yA|va  ? ?)
?f1<-(relation_name-rel_ids ccof ?cc ?id1)
(not (relation_name-rel_ids ccof ?cc ?id2&:(< ?id2 ?id1)))
(not (mapped_id ?cc))
=>
	(retract ?f0 ?f1)
	(assert (relation_name-rel_ids  cc  ?id1  ?cc))
	(assert (relation_name-rel_ids  ?rel ?id ?id1))
	(assert (mapped_id ?cc))
)
;------------------------------------------------------------------------
(defrule map_conj
(relation_name-rel_ids cc ?h ?cc)
?f0<-(relation_name-rel_ids ?r&~conj&~cc ?cc ?id1)
(not (replaced_id ?))
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
;First, it was realized that for scientific progress, only qualitative thinking, though no doubt important, is not enough.
;pahale yaha anuBava kiyA gayA ki vEjFAnika pragawi ke lie kevala guNAwmaka soca honA, yaxyapi nisanxeha yaha mahawvapUrNa hE, [paryApwa] nahIM [hE] . 
;(defrule map_cop
;?f0<-(relation_name-rel_ids  root_k1s  ?h  ?id)
;?f1<-(relation_name-rel_ids  ?r&root|acl|ccof 	?in  ?h)
;(id-word-root-tam ?h ? hE|WA ?)
;=>
;	(retract ?f0 ?f1)
;	(if (eq ?r acl) then
;		(assert (relation_name-rel_ids acl:relcl ?in ?id))
;	else
;		(assert (relation_name-rel_ids ?r  ?in ?id))
;	)
;	(assert (relation_name-rel_ids cop ?id ?h))
;	(assert (id-modified_id ?h ?id))
;)
;----------------------------------------------------------------------
;What is Science and what is the so-called Scientific Method?
;vijFAna kyA hE, evaM waWAkaWiwa vEjFAnika viXi kyA howI hE?
;(defrule map_cop1
;?f0<-(relation_name-rel_ids  root_k1s  ?h  ?id)
;?f<-(relation_name-rel_ids ccof ?r ?h)
;?f1<-(relation_name-rel_ids  root   ?in  ?r)
;(id-word-root-tam ?h ? hE|WA ?)
;=>
;        (retract ?f ?f0 ?f1)
;       `(assert (relation_name-rel_ids root  ?in ?id))
;        (assert (relation_name-rel_ids cop ?id ?h))
;        (assert (id-modified_id ?r ?id))
;)

;(defrule map_cop2
;(declare (salience 2))
;?f0<-(relation_name-rel_ids  root_k1s  ?h  ?id) ; hEM   viswqwa
;?f<-(relation_name-rel_ids ccof ?ki ?h) ;         
;(relation_name-rel_ids acl ?r ?ki)
;?f1<-(relation_name-rel_ids  root   ?in  ?r)
;(id-word-root-tam ?h ? hE|WA ?)
;=>
;        (retract ?f ?f0 ?f1)
;       `(assert (relation_name-rel_ids root  ?in ?id))
;        (assert (relation_name-rel_ids cop ?id ?h))
;        (assert (id-modified_id ?r ?id))
;)



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
;Dev Anand [said] [that] his film would be [released] on the 30th of November 
;xevAnanxa ne [bawAyA] [ki] unakI yaha Pilma 30 navambara ko rilIja [hogI] .
(defrule map_ccof
(declare (salience -1))
(relation_name-rel_ids root 0 ?h)
(relation_name-rel_ids  ?  ?h  ?ki)
(manual_id-wrd-cat   ?ki ki ?)
?f0<-(relation_name-rel_ids ccof ?ki ?h1)
(manual_id-wrd-cat   ?h1 ? VM)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids ccomp ?h ?h1))
)
;------------------------------------------------------------------------
;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena.
;mote wOra [para] hama BOwikI kA varNana prakqwi ke mUlaBUwa niyamoM kA aXyayana waWA viBinna prAkqwika pariGatanAoM meM inakI aBivyakwi ke rUpa meM [kara] sakawe hEM .
;[waWApi], yaxA-kaxA supracaliwa sixXAnwa nae prekRaNoM kA spaRtIkaraNa karane meM asamarWa [howe] hEM.
;[jabaki] sUkRma praBAva kRewra ke anwargawa paramANvIya, ANvika waWA nABikIya pariGatanAez [AwI] hEM .
;(defrule map_ccof1
;(declare (salience -5))
;?f0<-(relation_name-rel_ids root 0 ?vib)
;(manual_id-wrd-cat   ?vib para|waWApi|jabaki ?)
;?f1<-(relation_name-rel_ids ccof ?vib ?h)
;(manual_id-wrd-cat   ?h ? VM)
;=>
;        (retract ?f0 ?f1)
;        (assert (relation_name-rel_ids root 0 ?h))
;        (assert (id-modified_id ?vib ?h))
;)

(defrule modify_root_if_yA
(declare (salience -5))
?f0<-(relation_name-rel_ids root 0 ?vib)
(manual_id-wrd-cat   ?vib yA ?)
?f1<-(relation_name-rel_ids ccof ?vib ?h)
=>
        (retract ?f0 ?f1)
        (assert (relation_name-rel_ids root 0 ?h))
        (assert (id-modified_id ?vib ?h))
)




;------------------------------------------------------------------------
(defrule replace_cop_id
(declare (salience -10))
(id-modified_id ?h ?id)
?f0<-(relation_name-rel_ids ?rel&~cop ?h ?c)
=>
	(retract ?f0)
	(assert (relation_name-rel_ids ?rel ?id ?c))
	(assert (replaced_id ?id))
)

