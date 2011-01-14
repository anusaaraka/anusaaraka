
(defrule characteristic0
(declare (salience 5000))
(id-root ?id characteristic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characteristic.clp 	characteristic0   "  ?id "  viSeRa )" crlf))
)

;"characteristic","Adj","1.viSeRa"
;He spoke in his characteristic style.
;
(defrule characteristic1
(declare (salience 4900))
(id-root ?id characteristic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta_lakRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characteristic.clp 	characteristic1   "  ?id "  viSiRta_lakRaNa )" crlf))
)

;"characteristic","N","1.viSiRta_lakRaNa"
;Such remarks are not characteristic of him.
;
