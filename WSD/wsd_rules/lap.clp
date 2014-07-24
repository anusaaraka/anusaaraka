

;$$$ Modified by Nandini (29-11-13)
;The foreigners were lapping up the atmosphere of the city.
;vixeSI Sahara ke mOsama kA Annaxa le rahe We.
(defrule lap1
(declare (salience 300))
(id-root ?id lap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Ananxa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lap.clp	lap1  "  ?id "  " ?id1 "  Ananxa_le  )" crlf))
)

;Added by Meena(29.3.11)
;When you stand on this rock and face the east, the waves of the bay of bengal lap your feet.
(defrule lap2
(declare (salience 400))
(id-root ?id lap)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 water|wave)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XIre_se_takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lap.clp       lap2   "  ?id "  XIre_se_takarA )" crlf))
)




;$$$ Modified by Nandini(29-11-13)
;The dog was very thirsty so It soon lapped up the water.
;kuwwA bahuwa pyAsA WA isiliye vaha jalxi se pAnI lapa lapa karake piyA.
;Salience reduced by Meena(29.3.11) ;Salience incresed by Nandini (29-11-13)
(defrule lap3
;(declare (salience 0))
(declare (salience 300))
(id-root ?id lap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-word ?id2 water)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lapa-lapa_pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lap.clp	lap3  "  ?id "  " ?id1 "  lapa-lapa_pI )" crlf))
)

;@@@ Added by Nandini(29-11-13)
;During the last lap of the race one of the runners began to pull ahead .
;Expected - दौड़ के आखिरी cakkara ke xOrAna में एक धावक सबसे आगे निकलने लगा .
(defrule lap4
(declare (salience 100))
(id-root ?id lap)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?)
;(viSeRya-of_saMbanXI  ?id ?id1)
;(kriyA-during_saMbanXI  ? ?id)
;(kriyA-on_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lap.clp 	lap4   "  ?id "  cakkara )" crlf))
)

;==================default-rule=========
(defrule lap0
(declare (salience 50))
(id-root ?id lap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id goxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lap.clp 	lap0   "  ?id "  goxa )" crlf))
)

;"lap","N","1.goxa"
;--"2.AMcala"
;She gathered the beautiful flowers && carried them in her lap.
;--"3.cakkara"
;He crashed on the tenth lap.
;--"4.yAwrA_kA_eka_hissA"
;The next lap takes us into the mountains.
;"lap","V","1.lapa-lapa_pInA"
;The dog was very thirsty so It soon lapped up the water.
;--"2.Capa-Capa_karanA"
;The noise was coming from the lapping of the waves on the beach against the boats.

;
