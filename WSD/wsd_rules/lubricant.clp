
(defrule lubricant0
(declare (salience 5000))
(id-root ?id lubricant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA_karane_vAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lubricant.clp 	lubricant0   "  ?id "  cikanA_karane_vAlI )" crlf))
)

;"lubricant","Adj","1.cikanA_karane_vAlI"
(defrule lubricant1
(declare (salience 4900))
(id-root ?id lubricant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA_karane_vAlI_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lubricant.clp 	lubricant1   "  ?id "  cikanA_karane_vAlI_vaswu )" crlf))
)

;"lubricant","N","1.cikanA_karane_vAlI_vaswu"
;Use lubricant to grease the lock.
;
