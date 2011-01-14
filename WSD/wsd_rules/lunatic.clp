
(defrule lunatic0
(declare (salience 5000))
(id-root ?id lunatic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lunatic.clp 	lunatic0   "  ?id "  pAgala )" crlf))
)

;"lunatic","Adj","1.pAgala"
;He is a lunatic.
;
(defrule lunatic1
(declare (salience 4900))
(id-root ?id lunatic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lunatic.clp 	lunatic1   "  ?id "  pAgala )" crlf))
)

;"lunatic","N","1.pAgala"
;Lunatics were sent to the assylum.
;
