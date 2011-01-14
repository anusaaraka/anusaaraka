
(defrule corral0
(declare (salience 5000))
(id-root ?id corral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ahAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corral.clp 	corral0   "  ?id "  ahAwA )" crlf))
)

;"corral","N","1.ahAwA/bAdZA"
;The injured horse was sent back to the corral.
;
(defrule corral1
(declare (salience 4900))
(id-root ?id corral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gere_meM_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corral.clp 	corral1   "  ?id "  Gere_meM_lA )" crlf))
)

;"corral","V","1.Gere_meM_lAnA"
;The cattle was corraled under the shed as it was raining. 
;
