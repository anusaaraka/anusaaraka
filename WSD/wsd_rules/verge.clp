
(defrule verge0
(declare (salience 5000))
(id-root ?id verge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  verge.clp 	verge0   "  ?id "  kinArA )" crlf))
)

;"verge","N","1.kinArA[roda_kA]"
;Vehicles may not be parked on the verge of the road.
;--"2.GAsa_kI_pattI"
;There is marsh along the grass verge
;
(defrule verge1
(declare (salience 4900))
(id-root ?id verge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  verge.clp 	verge1   "  ?id "  Juka )" crlf))
)

;"verge","VT","1.JukanA"
;He was treated with ridicule which verged on insult.
;
