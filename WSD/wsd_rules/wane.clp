
(defrule wane0
(declare (salience 5000))
(id-root ?id wane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wane.clp 	wane0   "  ?id "  GatAva )" crlf))
)

;"wane","N","1.GatAva"
;His fame was on the wane
;
(defrule wane1
(declare (salience 4900))
(id-root ?id wane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wane.clp 	wane1   "  ?id "  Gata )" crlf))
)

;"wane","VI","1.GatanA"
;The moon is waxing && waning
;
