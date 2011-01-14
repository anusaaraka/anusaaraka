
(defrule principal0
(declare (salience 5000))
(id-root ?id principal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  principal.clp 	principal0   "  ?id "  pramuKa )" crlf))
)

;"principal","Adj","1.pramuKa"
(defrule principal1
(declare (salience 4900))
(id-root ?id principal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAcArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  principal.clp 	principal1   "  ?id "  prAcArya )" crlf))
)

;"principal","N","1.prAcArya"
;The principal acknowledged our work.
;--"2.praXAna"
;The principal of the insititution is very popular among the members.
;
