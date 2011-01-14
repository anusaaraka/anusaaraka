
(defrule paramilitary0
(declare (salience 5000))
(id-root ?id paramilitary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upasEnika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paramilitary.clp 	paramilitary0   "  ?id "  upasEnika )" crlf))
)

;"paramilitary","Adj","1.upasEnika"
(defrule paramilitary1
(declare (salience 4900))
(id-root ?id paramilitary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saha_sEnika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paramilitary.clp 	paramilitary1   "  ?id "  saha_sEnika )" crlf))
)

;"paramilitary","N","1.saha_sEnika"
;He is the head of paramilitary force.
;
