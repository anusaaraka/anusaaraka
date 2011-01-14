
(defrule conjugate0
(declare (salience 5000))
(id-root ?id conjugate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conjugate.clp 	conjugate0   "  ?id "  saMyukwa )" crlf))
)

(defrule conjugate1
(declare (salience 4900))
(id-root ?id conjugate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyA_rUpa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conjugate.clp 	conjugate1   "  ?id "  kriyA_rUpa_kara )" crlf))
)

