
(defrule scale0
(declare (salience 5000))
(id-root ?id scale)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " scale.clp	scale0  "  ?id "  " ?id1 "  badZA  )" crlf))
)

(defrule scale1
(declare (salience 4900))
(id-root ?id scale)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " scale.clp	scale1  "  ?id "  " ?id1 "  badZA  )" crlf))
)

(defrule scale2
(declare (salience 4800))
(id-root ?id scale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA_yA_parawa_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scale.clp 	scale2   "  ?id "  CilakA_yA_parawa_uwAra )" crlf))
)

;default_sense && category=verb	CilakA yA parawa uwAra	0
;"scale","V","1.CilakA yA parawa uwAranA"
;He scalled the fish to cook.
;
;LEVEL 
;
;
;                 scale sUwra (nibanXa)
;                 ----- 
;
;`scale' Sabxa ke viviXa prayoga--
;-------------------------
; 
;"scale","N","1.CilakA" 
;Generally all the fishes have scales on their bodies.
;--"2.papadZI"  
;           ------ < CilakA
;Buds with a covering of sticky scales are beautiful to see.
;--"3.mApa" 
;          ----- < pAwra < CilakA 
;The world is facing economic crisis on a global scale.
;--"4.mApakrama" 
;           ---- < pAwra(kramarUpa meM) < CilakA  
;There was corruption on a grand scale.
;--"5.mAnaxaNda"  
;            ----- < pAwra(swara) < CilakA
;Decimal scale was first introduced in India.
;--"6.svaragrAma" 
;            ----- < mApa < pAwra < CilakA 
;Vanya practises scales on the piano.
;--"7.pEmAnA" 
;            ----- < mApa < pAwra < CilakA 
;It was impossible to comprehend the full scale disaster.
;The scale of fees in the schools now a days is very high.
;The Earthquake measured 76 on the Ritcher scale.
;This ruler has one scale in centimetre && another in inches.
;At the other end of the scale we find gross poverty.
;--"8.kIta"
;Scale is a kind of material that deposited inside the kettles.
;
;"scale","V","1.CilakA yA parawa uwAranA"
;                           ----- < CilakA 
;He scalled the fish to cook. 
;--------------------------------------------------
;
;sUwra : mApa`[<_CilakA/kIta]
;
;yA
;
;mApa`[<_CilakA]/kIta
;
;
;
;     `scale' ke Upara xiye gaye viviXa prayogoM ke mUla xo Sabxa hEM . xonoM skela
;Sabxa hI hEM . eka mUla Sabxa kA arWa hE- CilakA . xUsare kA arWa hE- kIta . 
;Cilake ke mUlavAle Sabxa kA anya arWa-viswAra ho rahA hE . 
;(vEse Cilake kA mUla BI kIta mAnA jA sakawA hE cUzki Cilake kA BOwika 
;                                           srowa BI kIta hI hE) . 
;
;-- Cilake ke mUlavAle Sabxa se mApane ke arWavAle SabxoM kA viswAra huA hE . kuCa 
;samaya pahale loga samuxrI-jIva va anya jIvoM ke SarIra ke CilakoM kA, pAwra rUpa meM 
;prayoga kiyA karawe We . (SaMKa Axi jina kItoM ke howe hEM, veM una kItoM ke SarIra
;ke Cilake howe hEM) . veM pAwra, mApane ke kAma meM Ane lage(Ajakala BI loga pAwroM 
;kA prayoga mApane ke lie karawe hEM) . isase yaha Sabxa- 
;         Cilake ke rUpa meM , CilakoM ke rUpa se pAwrarUpa meM, vahAz se mApane ke
;vaswuoM ke rUpa meM prayukwa huA .  
;
;-- mApavAcI saBI Sabxa tippaNiyoM se samaJe jA sakawe hEM . mUla meM mApa hI hE .
;usake viviXarUpoM (sAXana Axi) meM isa Sabxa kA prayoga hE .  
;
;-- svaragrAma Sabxa BI mApane ke mUlavAlA hI hE . svara kI jAnakArI mApane ke 
;xvArA hI samBava hE . (cAhe kisI sAXana xvArA svara mApA jAwA ho) .
;isase yaha Sabxa `svaragrAma' ke rUpa meM socA jA sakawA hE . 
;
;
