
(defrule indirect0
(declare (salience 5000))
(id-root ?id indirect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indirect.clp 	indirect0   "  ?id "  aprawyakRa )" crlf))
)

(defrule indirect1
(declare (salience 4900))
(id-root ?id indirect)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indirect.clp 	indirect1   "  ?id "  aprawyakRa )" crlf))
)

;"indirect","Adj","1.aprawyakRa"
