
(defrule warehouse0
(declare (salience 5000))
(id-root ?id warehouse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id goxAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warehouse.clp 	warehouse0   "  ?id "  goxAma )" crlf))
)

;"warehouse","N","1.goxAma"
;The cargo from the ship was transferred to the warehouse
;
(defrule warehouse1
(declare (salience 4900))
(id-root ?id warehouse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id goxAma_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warehouse.clp 	warehouse1   "  ?id "  goxAma_meM_raKa )" crlf))
)

;"warehouse","VT","1.goxAma_meM_raKanA"
;The warehouse articles are for disposal
;
