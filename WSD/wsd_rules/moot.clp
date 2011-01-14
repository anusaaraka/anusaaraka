
(defrule moot0
(declare (salience 5000))
(id-root ?id moot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivAxAspaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  moot.clp 	moot0   "  ?id "  vivAxAspaxa )" crlf))
)

;"moot","Adj","1.vivAxAspaxa"
(defrule moot1
(declare (salience 4900))
(id-root ?id moot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA_meM_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  moot.clp 	moot1   "  ?id "  carcA_meM_lA )" crlf))
)

;"moot","V","1.carcA_meM_lAnA"
