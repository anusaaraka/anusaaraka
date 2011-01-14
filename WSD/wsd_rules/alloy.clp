
(defrule alloy0
(declare (salience 5000))
(id-root ?id alloy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miSraXAwu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alloy.clp 	alloy0   "  ?id "  miSraXAwu )" crlf))
)

;"alloy","N","1.miSraXAwu"
;Brass is an alloy.
;
(defrule alloy1
(declare (salience 4900))
(id-root ?id alloy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alloy.clp 	alloy1   "  ?id "  milA )" crlf))
)

;"alloy","V","1.milAnA"
;Copper && zinc is alloyed to make brass.
;
