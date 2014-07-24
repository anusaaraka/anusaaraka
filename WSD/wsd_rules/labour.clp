;Added by Meena(31.8.09)
;The labour was with the Union leader on this issue .
(defrule labour0
(declare (salience 5001))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?id1)
(kriyA-subject  ?id2 ?id) ;Nandini ji commented this but has of now no sentence no so uncommenting it.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sramika_samAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp    labour0   "  ?id "  Sramika_samAja )" crlf))
)

;$$$ Modified by Nandini(8-1-14)
;Labour has to be done to complete this work.
;yaha kArya pUrA karane ke liye Srama kiyA jA sakawA hE.
(defrule labour1
(declare (salience 4000))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Srama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp 	labour1  "  ?id "  Srama )" crlf))
)

(defrule labour2
(declare (salience 4900))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id labour )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prayAsapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  labour.clp  	;labour2   "  ?id "  prayAsapUrNa )" crlf))
)

;"laboured","Adj","1.prayAsapUrNa"
;She has a laboured style of writing. 
;
;
;"labour","N","1.Srama/pariSrama"
;Labour has to be done to complete this work.
;--"2.Sramika/majaxUra"
;The factory is closed as the labours have gone on strike.
;

;$$$ Modified by Nandini(8-1-14)
;I have been labouring at this report all morning.
(defrule labour3
(declare (salience 4800))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-at_saMbanXI  ?id ?id1)(kriyA-in_saMbanXI  ?id ?id1))
(id-root ?id1 report|field)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp 	labour3   "  ?id "  kadI_mehanawa_kara )" crlf))
)

;"labour","V","1.kadI_mehanawa_karanA"
;--"2.muSkiloM_se_calanA"
;The van laboured up the steep mountain track. 
;

;Add by samapika (29.3.10)
;Labour is satisfied with their salary
;#sramik unake vewana se saMwuRta hE
(defrule labour4
(declare (salience 3000))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sramika)) ;Corrected the spelling "sramik" to "Sramika" by Sukadha (1-04-10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp   labour4   "  ?id "  Sramika )" crlf))
)

;@@@ Added by Nandini(8-1-14)
;The horses laboured up the steep slope. [OLAD]
;Gode KaDZI DalAna muSkiloM_se cale.
(defrule labour5
(declare (salience 4950))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 track|slope)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 muSkiloM_se_cala))
(if ?*debug_flag* then
(printout wsd_fp "(affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	lobour5  "  ?id "  " ?id1 "  muSkiloM_se_cala)" crlf))
)

;@@@ Added by Nandini(9-1-14)
;He's still labouring under the impression that he's written a great book.
;vaha is XAraNA ke nIce aBI BI Brama_kA_SIkAra_ho rahA hE ki vaha eka baDiyA puswaka liKA huA hE.
(defrule labour6
(declare (salience 4700))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(kriyA-under_saMbanXI  ?id ?id1)
(id-root ?id1 impression)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Brama_kA_SIkAra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp 	labour6   "  ?id "  Brama_kA_SIkAra_ho )" crlf))
)

;@@@ Added by Nandini(9-1-14)
;The workers laboured for two days. [Bruhawa vixyArWI koSa by Dr. haradev bahari]
;Sramika xo xina mehanawa karawe rahe.
(defrule labour7
(declare (salience 4750))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 worker)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp 	labour7   "  ?id "  mehanawa_kara )" crlf))
)

;@@@ Added by Nandini(9-1-14)
;Do not labour at the matter. [Bruhawa vixyArWI koSa by Dr. haradev bahari]
;viRaya para jora_mawa xIjie..
(defrule labour8
(declare (salience 4850))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?id1)
(id-root ?id1 matter)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp 	labour8   "  ?id "  jZora_xe )" crlf))
)
