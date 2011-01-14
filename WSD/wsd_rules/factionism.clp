
(defrule factionism0
(declare (salience 5000))
(id-root ?id factionism)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gutabAjZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  factionism.clp 	factionism0   "  ?id "  gutabAjZI )" crlf))
)

;"factionism","N","1.gutabAjZI"
(defrule factionism1
(declare (salience 4900))
(id-root ?id factionism)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gutabAjZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  factionism.clp 	factionism1   "  ?id "  gutabAjZI )" crlf))
)

;"factionism","N","1.gutabAjZI"
