
(defrule orange0
(declare (salience 5000))
(id-root ?id orange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAraMgI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  orange.clp 	orange0   "  ?id "  nAraMgI )" crlf))
)

;"orange","Adj","1.nAraMgI"
;Today the sky is of orange color.
;
(defrule orange1
(declare (salience 4900))
(id-root ?id orange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAraMgI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  orange.clp 	orange1   "  ?id "  nAraMgI )" crlf))
)

;"orange","N","1.nAraMgI"
;Orange is a juicy fruit.
;
