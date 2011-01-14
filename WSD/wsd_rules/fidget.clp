
(defrule fidget0
(declare (salience 5000))
(id-root ?id fidget)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id culabulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fidget.clp 	fidget0   "  ?id "  culabulA )" crlf))
)

;"fidget","N","1.culabulA"
;He is such a fidget.
;
(defrule fidget1
(declare (salience 4900))
(id-root ?id fidget)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id culabulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fidget.clp 	fidget1   "  ?id "  culabulA )" crlf))
)

;"fidget","V","1.culabulAnA"
;She always fidgets with rings on her fingers.
;
