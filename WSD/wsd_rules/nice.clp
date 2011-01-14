
(defrule nice0
(declare (salience 5000))
(id-root ?id nice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nice.clp 	nice0   "  ?id "  acCA )" crlf))
)

(defrule nice1
(declare (salience 4900))
(id-root ?id nice)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nice.clp 	nice1   "  ?id "  acCA )" crlf))
)

;"nice","Adj","1.acCA"
;He is a nice man.
;
;
