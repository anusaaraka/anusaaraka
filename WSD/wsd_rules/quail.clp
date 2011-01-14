
(defrule quail0
(declare (salience 5000))
(id-root ?id quail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lavA_batera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quail.clp 	quail0   "  ?id "  lavA_batera )" crlf))
)

;"quail","N","1.lavA_batera"
;I saw a quail near the fence.
;
(defrule quail1
(declare (salience 4900))
(id-root ?id quail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id himmawa_hAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quail.clp 	quail1   "  ?id "  himmawa_hAra )" crlf))
)

;"quail","VTI","1.himmawa_hAra"
;She quailed before giving the speech.
;
