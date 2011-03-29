
(defrule lap0
(declare (salience 5000))
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
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lap.clp	lap0  "  ?id "  " ?id1 "  Ananxa_le  )" crlf))
)



;Added by Meena(29.3.11)
;When you stand on this rock and face the east, the waves of the bay of bengal lap your feet.
(defrule lap1
(declare (salience 4800))
(id-root ?id lap)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 water|wave)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XIre_se_takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lap.clp       lap1   "  ?id "  XIre_se_takarA )" crlf))
)



;The foreigners were lapping up the atmosphere of the city.
;vixeSI Sahara ke mOsama kA Annaxa le rahe We
(defrule lap2
(declare (salience 4900))
(id-root ?id lap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id goxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lap.clp 	lap2   "  ?id "  goxa )" crlf))
)

;"lap","N","1.goxa"
;--"2.AMcala"
;She gathered the beautiful flowers && carried them in her lap.
;--"3.cakkara"
;He crashed on the tenth lap.
;--"4.yAwrA_kA_eka_hissA"
;The next lap takes us into the mountains.
;


;Salience reduced by Meena(29.3.11)
(defrule lap3
(declare (salience 0))
;(declare (salience 4800))
(id-root ?id lap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapa-lapa_pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lap.clp 	lap3   "  ?id "  lapa-lapa_pI )" crlf))
)

;"lap","V","1.lapa-lapa_pInA"
;The dog was very thirsty. It soon lapped up the water.
;--"2.Capa-Capa_karanA"
;The noise was coming from the lapping of the waves on the beach && against the boats.
;
