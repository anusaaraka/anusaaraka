
(defrule groove0
(declare (salience 5000))
(id-root ?id groove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id grUva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  groove.clp 	groove0   "  ?id "  grUva )" crlf))
)

;"groove","N","1.grUva{nAlI_jEsA}"
;The doors have grooves on the side.
;
(defrule groove1
(declare (salience 4900))
(id-root ?id groove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id grUva_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  groove.clp 	groove1   "  ?id "  grUva_banA )" crlf))
)

;"groove","VT","1.grUva_banAnA"
