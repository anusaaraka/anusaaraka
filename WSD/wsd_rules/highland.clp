
(defrule highland0
(declare (salience 5000))
(id-root ?id highland)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_BUmi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  highland.clp 	highland0   "  ?id "  ucca_BUmi )" crlf))
)

;"highland","Adj","1.ucca_BUmi"
;'highland'para sIDZInumA Kewa banAwe hEM.
;
(defrule highland1
(declare (salience 4900))
(id-root ?id highland)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parvawIya_BUBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  highland.clp 	highland1   "  ?id "  parvawIya_BUBAga )" crlf))
)

;"highland","N","1.parvawIya_BUBAga"
