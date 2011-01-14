
(defrule boost0
(declare (salience 5000))
(id-root ?id boost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boost.clp 	boost0   "  ?id "  baDZAvA )" crlf))
)

;"boost","N","1.baDZAvA"
;This small gift as a token will be a boost for the child's improvement. 
;
(defrule boost1
(declare (salience 4900))
(id-root ?id boost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZAvA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boost.clp 	boost1   "  ?id "  baDZAvA_xe )" crlf))
)

;"boost","V","1.baDZAvA_xenA"
;The unexpected increase in share prices helped to boost the market.
;
