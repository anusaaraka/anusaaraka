
(defrule harp0
(declare (salience 5000))
(id-root ?id harp)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahuwa_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " harp.clp	harp0  "  ?id "  " ?id1 "  bahuwa_bola  )" crlf))
)

;She kept harping on about herself && nobody was listening.
;vaha apane bAre meM bolawI jA rahI WI Ora koI BI use nahIM suna rahA WA
(defrule harp1
(declare (salience 4900))
(id-root ?id harp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hArpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harp.clp 	harp1   "  ?id "  hArpa )" crlf))
)

;"harp","N","1.hArpa{vixeSI_bAjA}"
;Shashi is an expert at playing harp .
;SaSi hArpa vAxana meM xakRa hE.
;
