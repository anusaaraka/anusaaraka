
(defrule ebb0
(declare (salience 5000))
(id-root ?id ebb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ebb.clp 	ebb0   "  ?id "  BAtA )" crlf))
)

;"ebb","N","1.BAtA"
;The rise && ebb of the tide is common.
;
(defrule ebb1
(declare (salience 4900))
(id-root ?id ebb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ebb.clp 	ebb1   "  ?id "  baha_jA )" crlf))
)

;"ebb","VI","1.baha_jAnA"
;The water in the lake ebbed away during the tide.
;--"2.kama_honA"
;Due to hard work all his energy ebbed .
;
