
(defrule baffle0
(declare (salience 5000))
(id-root ?id baffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  baffle.clp 	baffle0   "  ?id "  parxA )" crlf))
)

;"baffle","N","1.parxA{rukAvata}"
;Since the house is on the main street we need baffles on our windows.
;
(defrule baffle1
(declare (salience 4900))
(id-root ?id baffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asamaMjasa_meM_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  baffle.clp 	baffle1   "  ?id "  asamaMjasa_meM_dAla )" crlf))
)

;"baffle","VT","1.asamaMjasa_meM_dAlanA"
;Sita was baffled when she saw a twin of Ram.
;sIwA asamaMjasa meM padZa gayIM jaba usane rAma ke judZavA ko xeKA.
;--"2.rukAvata_dAlanA"
;Ravi baffled all their efforts to find the thief.
;
