
(defrule quaver0
(declare (salience 5000))
(id-root ?id quaver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMpana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quaver.clp 	quaver0   "  ?id "  kaMpana )" crlf))
)

;"quaver","N","1.kaMpana"
;We could all hear the quaver in her voice.
;
(defrule quaver1
(declare (salience 4900))
(id-root ?id quaver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quaver.clp 	quaver1   "  ?id "  kAzpa )" crlf))
)

;"quaver","V","1.kAzpanA"
;His voice was quavering.
;
